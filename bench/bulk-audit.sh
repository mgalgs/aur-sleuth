#!/usr/bin/env bash
# Bulk-audit AUR packages with multiple models, pushing reports as they complete.
# Usage: bulk-audit.sh [--budget DOLLARS] [--models MODEL1,MODEL2,...] [--jobs N] [--dry-run]
#
# Selects packages in a 50/50 mix of popular (by votes) and recently modified.
# Each package is audited by a primary + secondary model for redundancy.
# Reports are archived to the audit-reports branch and pushed periodically.
set -euo pipefail

cd "$(dirname "$0")/.."

# --- Defaults ---
BUDGET=20.00
MODELS="qwen/qwen3-235b-a22b-2507,deepseek/deepseek-v4-flash"
JOBS=4
DRY_RUN=false
METADATA_CACHE="/tmp/aur-sleuth/packages-meta-ext-v1.json.gz"
METADATA_URL="https://aur.archlinux.org/packages-meta-ext-v1.json.gz"
STATE_DIR="/tmp/aur-sleuth/bulk-audit"
COST_LOG="$STATE_DIR/cost.log"
LOCK_FILE="$STATE_DIR/archive.lock"

# --- Parse args ---
while [[ $# -gt 0 ]]; do
    case "$1" in
        --budget) BUDGET="$2"; shift 2 ;;
        --models) MODELS="$2"; shift 2 ;;
        --jobs|-j) JOBS="$2"; shift 2 ;;
        --dry-run) DRY_RUN=true; shift ;;
        *) echo "Unknown arg: $1" >&2; exit 1 ;;
    esac
done

IFS=',' read -ra MODEL_LIST <<< "$MODELS"
NUM_MODELS=${#MODEL_LIST[@]}

mkdir -p "$STATE_DIR"
touch "$COST_LOG"

# --- Helpers ---
log() { echo "[$(date '+%H:%M:%S')] $*"; }

get_spent() {
    awk '{s+=$1} END {printf "%.6f", s+0}' "$COST_LOG"
}

is_over_budget() {
    python3 -c "import sys; sys.exit(0 if $(get_spent) >= $BUDGET else 1)"
}

record_cost() {
    local cost="$1"
    echo "$cost" >> "$COST_LOG"
}

# --- Refresh AUR metadata (at most once per hour) ---
refresh_metadata() {
    local age=999999
    if [[ -f "$METADATA_CACHE" ]]; then
        age=$(( $(date +%s) - $(stat -c%Y "$METADATA_CACHE") ))
    fi
    if (( age > 3600 )); then
        log "Refreshing AUR package metadata..."
        curl -sL "$METADATA_URL" -o "$METADATA_CACHE"
        log "Downloaded $(stat -c%s "$METADATA_CACHE") bytes"
    fi
}

# --- Select next N packages ---
# Returns N package names, alternating popular/recent. Marks them as claimed
# immediately (via audited.txt) so concurrent calls don't double-pick.
select_packages() {
    local count="$1"
    local start_round="$2"
    python3 << PYEOF
import json, gzip, sys, os, fcntl

state_dir = "$STATE_DIR"
audited_file = os.path.join(state_dir, "audited.txt")
count = $count
start_round = $start_round

# Atomic read-and-append with file lock
lock_path = os.path.join(state_dir, "select.lock")
lock_fd = open(lock_path, "w")
fcntl.flock(lock_fd, fcntl.LOCK_EX)

try:
    audited = set()
    if os.path.exists(audited_file):
        audited = set(open(audited_file).read().strip().split("\n"))
    audited.discard("")

    with gzip.open("$METADATA_CACHE", "rt") as f:
        packages = json.load(f)

    candidates = [
        p for p in packages
        if p.get("Maintainer")
        and p["Name"] not in audited
        and not p.get("OutOfDate")
    ]

    by_popular = sorted(candidates, key=lambda p: p.get("NumVotes", 0), reverse=True)
    by_recent = sorted(candidates, key=lambda p: p.get("LastModified", 0), reverse=True)

    picks = []
    pop_idx = 0
    rec_idx = 0
    seen = set()
    for i in range(count):
        r = start_round + i
        if r % 2 == 1:
            while pop_idx < len(by_popular) and by_popular[pop_idx]["Name"] in seen:
                pop_idx += 1
            if pop_idx < len(by_popular):
                picks.append(by_popular[pop_idx]["Name"])
                seen.add(by_popular[pop_idx]["Name"])
                pop_idx += 1
        else:
            while rec_idx < len(by_recent) and by_recent[rec_idx]["Name"] in seen:
                rec_idx += 1
            if rec_idx < len(by_recent):
                picks.append(by_recent[rec_idx]["Name"])
                seen.add(by_recent[rec_idx]["Name"])
                rec_idx += 1

    # Mark as claimed immediately
    if picks:
        with open(audited_file, "a") as f:
            for p in picks:
                f.write(p + "\n")

    for p in picks:
        print(p)
finally:
    fcntl.flock(lock_fd, fcntl.LOCK_UN)
    lock_fd.close()
PYEOF
}

# --- Run one audit (writes result to a model-specific report file) ---
run_audit() {
    local pkg="$1"
    local model="$2"
    local model_slug="${model//\//-}"
    local report_dir="/tmp/aur-sleuth/bulk-reports/${model_slug}"
    local report_file="${report_dir}/aur-sleuth-report-${pkg}.txt"

    log "  [$pkg] Starting $model"

    if $DRY_RUN; then
        log "  [$pkg] [DRY RUN] Would audit with $model"
        return 0
    fi

    mkdir -p "$report_dir"

    local start_time
    start_time=$(date +%s)

    local exit_code=0
    AUDIT_FAILURE_FATAL=true AUR_SLEUTH_ASCII_ICONS=1 \
        OPENAI_MODEL="$model" \
        AUR_SLEUTH_REPORT_DIR="$report_dir" \
        ./aur-sleuth --output plain "$pkg" 2>&1 || exit_code=$?

    local end_time
    end_time=$(date +%s)
    local elapsed=$(( end_time - start_time ))

    # Extract cost from the report frontmatter
    local cost
    cost=$(sed -n '/^---$/,/^---$/p' "$report_file" 2>/dev/null \
        | grep "^cost:" | head -1 | sed 's/^cost: *//' || echo "0")
    if [[ -z "$cost" || "$cost" == "0" ]]; then
        cost=$(grep -oP 'Total Cost: \$\K\S+' "$report_file" 2>/dev/null || echo "0")
    fi

    record_cost "$cost"

    local result
    result=$(sed -n '/^---$/,/^---$/p' "$report_file" 2>/dev/null \
        | grep "^result:" | head -1 | sed 's/^result: *//' || echo "unknown")

    log "  [$pkg] Done $model: $result  \$$cost  ${elapsed}s"

    # Serialize archive operations with flock
    (
        flock -x 200
        bash bench/archive-report.sh "$pkg" "$report_file"
    ) 200>"$LOCK_FILE"

    return $exit_code
}

# --- Audit one package with all models (runs models in parallel) ---
audit_package() {
    local pkg="$1"
    local mode="$2"

    log "=== $pkg ($mode) ==="

    local pids=()
    for model in "${MODEL_LIST[@]}"; do
        run_audit "$pkg" "$model" &
        pids+=($!)
    done
    for pid in "${pids[@]}"; do
        wait "$pid" || true
    done
}

# --- Push accumulated reports ---
push_reports() {
    if $DRY_RUN; then return 0; fi
    (
        flock -x 200
        if git push origin audit-reports 2>/dev/null; then
            log "Pushed to origin/audit-reports (spent: \$$(get_spent)/\$$BUDGET)"
        else
            log "Push failed (will retry)"
        fi
    ) 200>"$LOCK_FILE"
}

# --- Main loop ---
main() {
    refresh_metadata

    local total_slots=$(( JOBS * NUM_MODELS ))
    log "Bulk audit starting. Budget: \$$BUDGET, Models: ${MODEL_LIST[*]}, Jobs: $JOBS (${total_slots} concurrent audits)"
    log "Spent so far: \$$(get_spent)"

    local round=0
    while ! is_over_budget; do
        # Select a batch of packages
        local batch_size=$JOBS
        round=$((round + 1))

        local packages
        packages=$(select_packages "$batch_size" "$round") || { log "No more packages to audit"; break; }

        if [[ -z "$packages" ]]; then
            log "No more packages to audit"
            break
        fi

        local pkg_count
        pkg_count=$(echo "$packages" | wc -l)
        round=$(( round + pkg_count - 1 ))

        log "--- Batch: $pkg_count packages ---"

        # Launch all packages in parallel
        local pkg_pids=()
        local mode_idx=0
        while IFS= read -r pkg; do
            mode_idx=$((mode_idx + 1))
            if (( mode_idx % 2 == 1 )); then
                mode="popular"
            else
                mode="recent"
            fi
            audit_package "$pkg" "$mode" &
            pkg_pids+=($!)
        done <<< "$packages"

        # Wait for all packages in this batch
        for pid in "${pkg_pids[@]}"; do
            wait "$pid" || true
        done

        # Push after each batch
        push_reports

        if is_over_budget; then
            log "Budget exhausted after \$$(get_spent)"
            break
        fi

        # Refresh metadata every 50 rounds
        if (( round % 50 == 0 )); then
            refresh_metadata
        fi
    done

    # Final push
    push_reports

    log "=== Bulk audit complete ==="
    log "Total spent: \$$(get_spent)"
    log "Packages audited: $(wc -l < "$STATE_DIR/audited.txt" 2>/dev/null || echo 0)"
}

main "$@"
