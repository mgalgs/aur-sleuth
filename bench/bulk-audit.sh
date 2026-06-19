#!/usr/bin/env bash
# Bulk-audit AUR packages with multiple models, pushing reports as they complete.
# Usage: bulk-audit.sh [--budget DOLLARS] [--models MODEL1,MODEL2,...] [--dry-run]
#
# Selects packages in a 50/50 mix of popular (by votes) and recently modified.
# Each package is audited by a primary + secondary model for redundancy.
# Reports are archived to the audit-reports branch and pushed after each audit.
set -euo pipefail

cd "$(dirname "$0")/.."

# --- Defaults ---
BUDGET=20.00
MODELS="qwen/qwen3-235b-a22b-2507,deepseek/deepseek-v4-flash"
DRY_RUN=false
METADATA_CACHE="/tmp/aur-sleuth/packages-meta-ext-v1.json.gz"
METADATA_URL="https://aur.archlinux.org/packages-meta-ext-v1.json.gz"
STATE_DIR="/tmp/aur-sleuth/bulk-audit"
COST_LOG="$STATE_DIR/cost.log"

# --- Parse args ---
while [[ $# -gt 0 ]]; do
    case "$1" in
        --budget) BUDGET="$2"; shift 2 ;;
        --models) MODELS="$2"; shift 2 ;;
        --dry-run) DRY_RUN=true; shift ;;
        *) echo "Unknown arg: $1" >&2; exit 1 ;;
    esac
done

IFS=',' read -ra MODEL_LIST <<< "$MODELS"

mkdir -p "$STATE_DIR"
touch "$COST_LOG"

# --- Helpers ---
log() { echo "[$(date '+%H:%M:%S')] $*"; }

get_spent() {
    awk '{s+=$1} END {printf "%.6f", s+0}' "$COST_LOG"
}

budget_remaining() {
    python3 -c "print(f'{$BUDGET - $(get_spent):.6f}')"
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

# --- Select next package ---
# Reads the already-audited list and picks from popular or recent (alternating).
select_package() {
    local mode="$1"  # "popular" or "recent"
    python3 << PYEOF
import json, gzip, sys, os

state_dir = "$STATE_DIR"
audited_file = os.path.join(state_dir, "audited.txt")
audited = set()
if os.path.exists(audited_file):
    audited = set(open(audited_file).read().strip().split("\n"))
audited.discard("")

with gzip.open("$METADATA_CACHE", "rt") as f:
    packages = json.load(f)

# Filter: must have a maintainer, not out-of-date, not already audited
candidates = [
    p for p in packages
    if p.get("Maintainer")
    and p["Name"] not in audited
    and not p.get("OutOfDate")
]

if "$mode" == "popular":
    candidates.sort(key=lambda p: p.get("NumVotes", 0), reverse=True)
else:
    candidates.sort(key=lambda p: p.get("LastModified", 0), reverse=True)

if not candidates:
    print("EXHAUSTED", file=sys.stderr)
    sys.exit(1)

pick = candidates[0]
print(pick["Name"])
PYEOF
}

mark_audited() {
    echo "$1" >> "$STATE_DIR/audited.txt"
}

# --- Run one audit ---
run_audit() {
    local pkg="$1"
    local model="$2"
    local report_file="/tmp/aur-sleuth/aur-sleuth-report-${pkg}.txt"

    log "Auditing $pkg with $model..."

    if $DRY_RUN; then
        log "[DRY RUN] Would audit $pkg with $model"
        return 0
    fi

    local start_time
    start_time=$(date +%s)

    # Run the audit, capture exit code
    local exit_code=0
    AUDIT_FAILURE_FATAL=true AUR_SLEUTH_ASCII_ICONS=1 \
        OPENAI_MODEL="$model" \
        ./aur-sleuth --output plain "$pkg" 2>&1 || exit_code=$?

    local end_time
    end_time=$(date +%s)
    local elapsed=$(( end_time - start_time ))

    # Extract cost from the report frontmatter
    local cost
    cost=$(sed -n '/^---$/,/^---$/p' "$report_file" 2>/dev/null \
        | grep "^cost:" | head -1 | sed 's/^cost: *//' || echo "0")
    if [[ -z "$cost" || "$cost" == "0" ]]; then
        # Fall back to body parsing
        cost=$(grep -oP 'Total Cost: \$\K\S+' "$report_file" 2>/dev/null || echo "0")
    fi

    record_cost "$cost"

    local result
    result=$(sed -n '/^---$/,/^---$/p' "$report_file" 2>/dev/null \
        | grep "^result:" | head -1 | sed 's/^result: *//' || echo "unknown")

    log "  -> $pkg [$model]: $result  cost=\$$cost  time=${elapsed}s  spent=\$$(get_spent)/\$$BUDGET"

    # Archive and push
    bash bench/archive-report.sh "$pkg" "$report_file"
    if git push origin audit-reports 2>/dev/null; then
        log "  -> Pushed to origin/audit-reports"
    else
        log "  -> Push failed (will retry later)"
    fi

    return $exit_code
}

# --- Main loop ---
main() {
    refresh_metadata

    log "Bulk audit starting. Budget: \$$BUDGET, Models: ${MODEL_LIST[*]}"
    log "Spent so far: \$$(get_spent)"

    local round=0
    while ! is_over_budget; do
        round=$((round + 1))

        # Alternate between popular and recent
        if (( round % 2 == 1 )); then
            mode="popular"
        else
            mode="recent"
        fi

        local pkg
        pkg=$(select_package "$mode") || { log "No more packages to audit"; break; }

        log "=== Round $round: $pkg ($mode) ==="

        # Audit with each model
        for model in "${MODEL_LIST[@]}"; do
            if is_over_budget; then
                log "Budget exhausted after \$$(get_spent)"
                break 2
            fi
            run_audit "$pkg" "$model" || true
        done

        mark_audited "$pkg"

        # Refresh metadata every 50 rounds to pick up new packages
        if (( round % 50 == 0 )); then
            refresh_metadata
        fi
    done

    log "=== Bulk audit complete ==="
    log "Rounds: $round"
    log "Total spent: \$$(get_spent)"
    log "Packages audited: $(wc -l < "$STATE_DIR/audited.txt" 2>/dev/null || echo 0)"
}

main "$@"
