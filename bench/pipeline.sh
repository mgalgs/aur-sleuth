#!/usr/bin/env bash
# Automated pipeline for auditing recently updated AUR packages.
# Runs: discover → audit → judge → re-audit → dashboard → push
#
# Usage: pipeline.sh [--min-votes N] [--daily-budget AMOUNT] [--lookback-hours N]
#                     [--seed-top N] [--jobs N] [--dry-run] [--skip-judge]
#                     [--skip-dashboard] [--packages-file FILE]
#
# State is derived from the audit-reports branch (no local state files needed).
# Daily spend is tracked in $DATA_DIR/pipeline/spend-YYYY-MM-DD.log.
set -euo pipefail

cd "$(dirname "$0")/.."

# --- Defaults ---
MIN_VOTES=5
DAILY_BUDGET=2.00
LOOKBACK_HOURS=24
JOBS=8
DRY_RUN=false
SKIP_JUDGE=false
SKIP_DASHBOARD=false
SEED_TOP=0
AUDIT_MODELS="qwen/qwen3-235b-a22b-2507,deepseek/deepseek-v4-flash"
JUDGE_MODEL="deepseek/deepseek-r1"
REAUDIT_MODEL="anthropic/claude-sonnet-4.6"
PACKAGES_FILE=""

DATA_DIR="${AUR_SLEUTH_DATA_DIR:-$HOME/aur-sleuth-data}"
METADATA_CACHE="$DATA_DIR/packages-meta-ext-v1.json.gz"
METADATA_URL="https://aur.archlinux.org/packages-meta-ext-v1.json.gz"
PIPELINE_DIR="$DATA_DIR/pipeline"
LOCK_FILE="$DATA_DIR/bulk-audit/archive.lock"
REPORTS_BRANCH="audit-reports"

# --- Parse args ---
while [[ $# -gt 0 ]]; do
    case "$1" in
        --min-votes) MIN_VOTES="$2"; shift 2 ;;
        --daily-budget) DAILY_BUDGET="$2"; shift 2 ;;
        --lookback-hours) LOOKBACK_HOURS="$2"; shift 2 ;;
        --jobs|-j) JOBS="$2"; shift 2 ;;
        --dry-run) DRY_RUN=true; shift ;;
        --skip-judge) SKIP_JUDGE=true; shift ;;
        --skip-dashboard) SKIP_DASHBOARD=true; shift ;;
        --seed-top) SEED_TOP="$2"; shift 2 ;;
        --audit-models) AUDIT_MODELS="$2"; shift 2 ;;
        --judge-model) JUDGE_MODEL="$2"; shift 2 ;;
        --packages-file) PACKAGES_FILE="$2"; shift 2 ;;
        *) echo "Unknown arg: $1" >&2; exit 1 ;;
    esac
done

IFS=',' read -ra MODEL_LIST <<< "$AUDIT_MODELS"

mkdir -p "$PIPELINE_DIR" "$DATA_DIR/bulk-reports" "$DATA_DIR/judge"

log() { echo "[$(date '+%H:%M:%S')] $*"; }

# --- Daily spend tracking ---
TODAY=$(date +%Y-%m-%d)
SPEND_FILE="$PIPELINE_DIR/spend-${TODAY}.log"
touch "$SPEND_FILE"

get_daily_spent() {
    awk '{s+=$1} END {printf "%.6f", s+0}' "$SPEND_FILE"
}

record_cost() {
    (
        flock -x 201
        echo "$1" >> "$SPEND_FILE"
    ) 201>"$SPEND_FILE.lock"
}

budget_remaining() {
    python3 -c "print(max(0, $DAILY_BUDGET - $(get_daily_spent)))"
}

is_over_budget() {
    python3 -c "import sys; sys.exit(0 if $(get_daily_spent) >= $DAILY_BUDGET else 1)"
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

# --- Build index of already-audited packages from audit-reports branch ---
build_audited_index() {
    if git show "${REPORTS_BRANCH}:_dashboard/data.json" &>/dev/null; then
        git show "${REPORTS_BRANCH}:_dashboard/data.json" | python3 -c "
import json, sys
d = json.load(sys.stdin)
for name, pkg in d.get('packages', {}).items():
    pkgver = pkg.get('pkgver', '')
    if pkgver:
        print(f'{name}\t{pkgver}')
"
    else
        # No dashboard yet — scan branch directly
        git ls-tree -r "$REPORTS_BRANCH" --name-only 2>/dev/null \
            | grep -v '^_dashboard/' | grep -v '^index.html' | grep -v '^\.nojekyll' \
            | while read -r path; do
                pkg="${path%%/*}"
                pkgver=$(git show "${REPORTS_BRANCH}:${path}" 2>/dev/null \
                    | sed -n '/^---$/,/^---$/p' | grep '^pkgver:' | head -1 | sed 's/^pkgver: *//')
                [[ -n "$pkgver" ]] && printf '%s\t%s\n' "$pkg" "$pkgver"
            done | sort -t$'\t' -k1,1 -u
    fi
}

# --- Discover packages needing audit ---
discover_packages() {
    local audited_index="$1"

    MIN_VOTES="$MIN_VOTES" \
    LOOKBACK_HOURS="$LOOKBACK_HOURS" \
    SEED_TOP="$SEED_TOP" \
    AUDITED_INDEX="$audited_index" \
    python3 << 'PYEOF'
import json, gzip, os, sys, time

metadata_cache = os.environ.get("METADATA_CACHE", "")
min_votes = int(os.environ["MIN_VOTES"])
lookback_hours = int(os.environ["LOOKBACK_HOURS"])
seed_top = int(os.environ.get("SEED_TOP", "0"))
audited_index = os.environ["AUDITED_INDEX"]

# Load audited versions
audited = {}
if os.path.exists(audited_index):
    for line in open(audited_index):
        parts = line.strip().split("\t", 1)
        if len(parts) == 2:
            audited[parts[0]] = parts[1]

# Load AUR metadata
with gzip.open(metadata_cache, "rt") as f:
    packages = json.load(f)

cutoff = time.time() - lookback_hours * 3600

# Recently updated packages with min votes
recent = []
for p in packages:
    name = p.get("Name", "")
    if not p.get("Maintainer"):
        continue
    if p.get("OutOfDate"):
        continue
    aur_ver = p.get("Version", "")
    if name in audited and audited[name] == aur_ver:
        continue

    if p.get("NumVotes", 0) >= min_votes and p.get("LastModified", 0) >= cutoff:
        recent.append({"name": name, "votes": p.get("NumVotes", 0)})

# Seed: top N most popular unaudited packages (regardless of update time)
seed = []
if seed_top > 0:
    seen = {c["name"] for c in recent}
    all_by_votes = sorted(packages, key=lambda p: p.get("NumVotes", 0), reverse=True)
    for p in all_by_votes:
        if len(seed) >= seed_top:
            break
        name = p.get("Name", "")
        if not p.get("Maintainer"):
            continue
        if p.get("OutOfDate"):
            continue
        aur_ver = p.get("Version", "")
        if name in audited and audited[name] == aur_ver:
            continue
        if name in seen:
            continue
        seed.append({"name": name, "votes": p.get("NumVotes", 0)})
        seen.add(name)

# Combine: recent first (by votes), then seed (by votes)
candidates = sorted(recent, key=lambda c: -c["votes"]) + seed

if seed:
    print(f"# {len(recent)} recently updated + {len(seed)} seed packages", file=sys.stderr)

for c in candidates:
    print(c["name"])
PYEOF
}

# --- Run one audit ---
run_audit() {
    local pkg="$1"
    local model="$2"
    local model_slug="${model//\//-}"
    local report_dir="$DATA_DIR/bulk-reports/${model_slug}"
    local report_file="${report_dir}/aur-sleuth-report-${pkg}.txt"

    if $DRY_RUN; then
        log "  [$pkg] [DRY RUN] Would audit with $model"
        return 0
    fi

    mkdir -p "$report_dir"

    AUDIT_FAILURE_FATAL=true AUR_SLEUTH_ASCII_ICONS=1 \
        OPENAI_MODEL="$model" \
        AUR_SLEUTH_REPORT_DIR="$report_dir" \
        ./aur-sleuth --output plain "$pkg" 2>&1 || true

    if [[ ! -f "$report_file" ]]; then
        log "  [$pkg] No report produced by $model"
        return 1
    fi

    # Extract and record cost
    local cost
    cost=$(sed -n '/^---$/,/^---$/p' "$report_file" 2>/dev/null \
        | grep "^cost:" | head -1 | sed 's/^cost: *//' || echo "0")
    [[ -z "$cost" ]] && cost="0"
    record_cost "$cost"

    local result
    result=$(sed -n '/^---$/,/^---$/p' "$report_file" 2>/dev/null \
        | grep "^result:" | head -1 | sed 's/^result: *//' || echo "unknown")

    log "  [$pkg] $model: $result (\$$cost)"

    # Archive to audit-reports branch
    (
        flock -x 200
        bash bench/archive-report.sh "$pkg" "$report_file"
    ) 200>"$LOCK_FILE"
}

# --- Audit one package with all models ---
audit_package() {
    local pkg="$1"
    log "--- Auditing $pkg ---"

    local pids=()
    for model in "${MODEL_LIST[@]}"; do
        run_audit "$pkg" "$model" &
        pids+=($!)
    done
    for pid in "${pids[@]}"; do
        wait "$pid" || true
    done
}

# --- Push audit-reports branch ---
push_reports() {
    if $DRY_RUN; then return 0; fi
    (
        flock -x 200
        if git push origin "$REPORTS_BRANCH" 2>/dev/null; then
            log "Pushed audit-reports (daily spend: \$$(get_daily_spent)/\$$DAILY_BUDGET)"
        else
            log "Push failed (will retry next batch)"
        fi
    ) 200>"$LOCK_FILE"
}

# --- Sum judge costs for reports modified after a given timestamp ---
sum_judge_costs_since() {
    local since="$1"
    find "$DATA_DIR/judge" -name '*.json' -newer "$since" 2>/dev/null \
        | while read -r f; do
            python3 -c "
import json
d = json.load(open('$f'))
print(d.get('_judge_usage', {}).get('cost') or 0)
" 2>/dev/null
        done | awk '{s+=$1} END {printf "%.6f", s+0}'
}

# --- Main ---
main() {
    log "=== AUR Sleuth Pipeline ==="
    log "Config: min-votes=$MIN_VOTES, lookback=${LOOKBACK_HOURS}h, budget=\$$DAILY_BUDGET/day, jobs=$JOBS"
    if [[ "$SEED_TOP" -gt 0 ]]; then
        log "Seed: top $SEED_TOP most popular unaudited packages"
    fi
    log "Models: ${MODEL_LIST[*]} | Judge: $JUDGE_MODEL"
    log "Daily spend so far: \$$(get_daily_spent)"

    if is_over_budget; then
        log "Daily budget already exhausted (\$$(get_daily_spent) >= \$$DAILY_BUDGET). Exiting."
        return 0
    fi

    local candidates_file="$PIPELINE_DIR/candidates.txt"

    if [[ -n "$PACKAGES_FILE" ]]; then
        log "Using package list from $PACKAGES_FILE"
        cp "$PACKAGES_FILE" "$candidates_file"
    else
        # Step 1: Refresh metadata
        refresh_metadata

        # Step 2: Build index of already-audited packages
        log "Building audited package index..."
        local audited_index="$PIPELINE_DIR/audited-versions.tsv"
        build_audited_index > "$audited_index"
        local audited_count
        audited_count=$(wc -l < "$audited_index")
        log "  $audited_count packages already audited"

        # Step 3: Discover packages needing audit
        log "Discovering candidates..."
        METADATA_CACHE="$METADATA_CACHE" discover_packages "$audited_index" > "$candidates_file"
    fi

    local candidate_count
    candidate_count=$(wc -l < "$candidates_file")
    log "  $candidate_count packages need auditing"

    if [[ "$candidate_count" -eq 0 ]]; then
        log "Nothing to audit."
    else
        # Step 4: Audit in parallel batches
        local audited_n=0
        local batch=()

        while IFS= read -r pkg; do
            if is_over_budget; then
                log "Daily budget exhausted after $audited_n packages"
                break
            fi

            batch+=("$pkg")

            # Launch batch when full
            if [[ ${#batch[@]} -ge $JOBS ]]; then
                log "--- Batch of ${#batch[@]} ---"
                local pids=()
                for p in "${batch[@]}"; do
                    audit_package "$p" &
                    pids+=($!)
                done
                for pid in "${pids[@]}"; do
                    wait "$pid" || true
                done
                audited_n=$(( audited_n + ${#batch[@]} ))
                batch=()

                # Push periodically
                if (( audited_n % 20 == 0 )); then
                    push_reports
                fi
            fi
        done < <(head -n 500 "$candidates_file")

        # Flush remaining batch
        if [[ ${#batch[@]} -gt 0 ]] && ! is_over_budget; then
            log "--- Batch of ${#batch[@]} (final) ---"
            local pids=()
            for p in "${batch[@]}"; do
                audit_package "$p" &
                pids+=($!)
            done
            for pid in "${pids[@]}"; do
                wait "$pid" || true
            done
            audited_n=$(( audited_n + ${#batch[@]} ))
        fi

        log "Audited $audited_n packages"
        push_reports
    fi

    # Step 5: Judge triggered packages
    if ! $SKIP_JUDGE && ! is_over_budget; then
        log ""
        log "=== Judge Phase ==="
        local judge_marker="$PIPELINE_DIR/.judge-start-marker"
        touch "$judge_marker"

        bash bench/judge.sh --judge-model "$JUDGE_MODEL" 2>&1

        local judge_cost
        judge_cost=$(sum_judge_costs_since "$judge_marker")
        record_cost "$judge_cost"
        log "Judge phase cost: \$$judge_cost"

        # Step 6: Re-audit flagged packages
        if ! is_over_budget; then
            log ""
            log "=== Re-audit Phase ==="
            local reaudit_marker="$PIPELINE_DIR/.reaudit-start-marker"
            touch "$reaudit_marker"

            bash bench/judge.sh --re-audit-pending --audit-model "$REAUDIT_MODEL" 2>&1

            # Re-audit costs are in audit reports, not judge reports —
            # track via judge report updates (re-audit metadata gets added)
            local reaudit_cost
            reaudit_cost=$(sum_judge_costs_since "$reaudit_marker")
            if python3 -c "import sys; sys.exit(0 if float('$reaudit_cost') > 0 else 1)" 2>/dev/null; then
                record_cost "$reaudit_cost"
                log "Re-audit phase cost: \$$reaudit_cost"
            fi
        fi

        push_reports
    fi

    # Step 7: Regenerate dashboard
    if ! $SKIP_DASHBOARD; then
        log ""
        log "=== Dashboard Phase ==="
        python3 bench/generate-dashboard.py 2>&1
        push_reports
    fi

    # Summary
    log ""
    log "=== Pipeline Complete ==="
    log "Daily spend: \$$(get_daily_spent) / \$$DAILY_BUDGET"
    log "Budget remaining: \$$(budget_remaining)"

    # Append to run log
    echo "$(date -u +%Y-%m-%dT%H:%M:%SZ) spent=\$$(get_daily_spent) budget=\$$DAILY_BUDGET candidates=$candidate_count" \
        >> "$PIPELINE_DIR/runs.log"
}

main "$@"
