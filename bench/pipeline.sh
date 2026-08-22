#!/usr/bin/env bash
# Automated pipeline for auditing recently updated AUR packages.
# Runs: discover → audit → judge → re-audit → dashboard → push
#
# Usage: pipeline.sh [--min-votes N] [--daily-budget AMOUNT] [--lookback-hours N]
#                     [--seed-top N] [--updated-share FRACTION] [--jobs N]
#                     [--dry-run] [--skip-judge]
#                     [--skip-dashboard] [--no-push] [--packages-file FILE]
#                     [--audit-timeout SECONDS] [--audit-models LIST]
#                     [--judge-model MODEL] [--reaudit-model MODEL]
#                     [--audit-budget-share FRACTION]
#
# State is derived from the audit-reports branch (no local state files needed).
# Daily spend is tracked in $DATA_DIR/pipeline/spend-YYYY-MM-DD.log.
set -euo pipefail

cd "$(dirname "$0")/.."

# --- Defaults ---
# MIN_VOTES is a hard floor on an updated package's vote count. It defaults to 0
# because the updated stream is ranked and cut by Popularity, not votes: a new or
# niche package with no votes is exactly the kind of fresh push we want to see.
MIN_VOTES=0
DAILY_BUDGET=2.00
LOOKBACK_HOURS=24
JOBS=8
# Hard ceiling on one package/model audit. Typical is a few minutes; this is
# loose enough not to cut off a big package on a slow link, tight enough that a
# hung mirror or a wedged API call costs one audit instead of the whole run.
# Without it a single stalled download can consume the entire job deadline.
AUDIT_TIMEOUT=900
# Share of the day's budget the audit phase may spend, leaving the rest for the
# phases after it.
#
# Without a reserve the judge never runs at all. It is gated on the same budget
# as the audit loop, and the audit loop runs until that budget is gone, so by
# the time the judge is reached there is nothing left. This is measured, not
# predicted: a run that completed normally went audit -> "Daily budget
# exhausted" -> dashboard, with no judge phase in between.
AUDIT_BUDGET_SHARE=0.8
DRY_RUN=false
SKIP_JUDGE=false
SKIP_DASHBOARD=false
NO_PUSH=false
SEED_TOP=1000
# Share of the audited packages that come from the updated stream, the rest from
# the popularity seed. The updated stream runs far past the daily budget on its
# own, so without a reserved share the seed is never reached. See discover_packages.
UPDATED_SHARE=0.8
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
        --no-push) NO_PUSH=true; shift ;;
        --seed-top) SEED_TOP="$2"; shift 2 ;;
        --updated-share) UPDATED_SHARE="$2"; shift 2 ;;
        --audit-timeout) AUDIT_TIMEOUT="$2"; shift 2 ;;
        --audit-budget-share) AUDIT_BUDGET_SHARE="$2"; shift 2 ;;
        --audit-models) AUDIT_MODELS="$2"; shift 2 ;;
        --judge-model) JUDGE_MODEL="$2"; shift 2 ;;
        --reaudit-model) REAUDIT_MODEL="$2"; shift 2 ;;
        --packages-file) PACKAGES_FILE="$2"; shift 2 ;;
        *) echo "Unknown arg: $1" >&2; exit 1 ;;
    esac
done

IFS=',' read -ra MODEL_LIST <<< "$AUDIT_MODELS"

# Accept 0.1 through 1.0 inclusive, with any number of trailing zeros. The first
# decimal digit of the 0.x form must be 1-9, so 0.00-0.09 (below the minimum, and
# enough to zero the audit budget) is refused. Kept a syntactic allowlist because
# this value is interpolated straight into a `python3 -c` below.
if [[ ! "$AUDIT_BUDGET_SHARE" =~ ^(0\.[1-9][0-9]*|1(\.0+)?)$ ]]; then
    echo "--audit-budget-share must be between 0.1 and 1.0, got '$AUDIT_BUDGET_SHARE'" >&2
    exit 1
fi
AUDIT_BUDGET="$(python3 -c "print(round($DAILY_BUDGET * $AUDIT_BUDGET_SHARE, 6))")"

# The updated-vs-seed split. Accepts 0 through 1 inclusive: 1.0 is updated-only
# (the seed never runs), 0.0 is seed-only. Read as a float in discover_packages,
# not interpolated into code, but validated here so a bad value fails fast.
if [[ ! "$UPDATED_SHARE" =~ ^(0(\.[0-9]+)?|1(\.0+)?)$ ]]; then
    echo "--updated-share must be between 0 and 1, got '$UPDATED_SHARE'" >&2
    exit 1
fi

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

# The `cost:` field from a report's frontmatter; 0 when the report or the
# field is missing.
report_cost() {
    local cost
    cost=$(sed -n '/^---$/,/^---$/p' "$1" 2>/dev/null \
        | grep "^cost:" | head -1 | sed 's/^cost: *//' || true)
    echo "${cost:-0}"
}

budget_remaining() {
    python3 -c "print(max(0, $DAILY_BUDGET - $(get_daily_spent)))"
}

# True when the day's spend has reached a ceiling. With no argument the ceiling
# is the whole budget; the audit phase passes its own, lower one.
is_over_budget() {
    local ceiling="${1:-$DAILY_BUDGET}"
    python3 -c "import sys; sys.exit(0 if $(get_daily_spent) >= $ceiling else 1)"
}

# --- Refresh AUR metadata (at most once per hour) ---
refresh_metadata() {
    local age=999999
    if [[ -f "$METADATA_CACHE" ]]; then
        age=$(( $(date +%s) - $(stat -c%Y "$METADATA_CACHE") ))
    fi
    if (( age > 3600 )); then
        log "Refreshing AUR package metadata..."
        # Bounded, and written beside the cache first: a stalled or failed
        # download must neither hang the run nor replace a good cache with a
        # partial file that then looks fresh for an hour.
        if curl -sSfL --connect-timeout 15 --max-time 300 \
                "$METADATA_URL" -o "$METADATA_CACHE.tmp"; then
            mv -f "$METADATA_CACHE.tmp" "$METADATA_CACHE"
            log "Downloaded $(stat -c%s "$METADATA_CACHE") bytes"
        else
            rm -f "$METADATA_CACHE.tmp"
            [[ -f "$METADATA_CACHE" ]] || { log "ERROR: metadata download failed and no cache exists"; return 1; }
            log "WARNING: metadata download failed; using the cache from $(( age / 60 )) minutes ago"
        fi
    fi
}

# --- Build index of already-audited packages from audit-reports branch ---
# Each line is "name<TAB>pkgver-pkgrel". The AUR metadata "Version" is
# [epoch:]pkgver-pkgrel; a report records pkgver and pkgrel separately (never an
# epoch), so the index joins them here and discover_packages strips any epoch off
# the AUR side before comparing. Storing bare pkgver here was a latent bug: it
# never equalled the AUR Version, so no package was ever seen as already audited.
build_audited_index() {
    if git show "${REPORTS_BRANCH}:_dashboard/data.json" &>/dev/null; then
        git show "${REPORTS_BRANCH}:_dashboard/data.json" | python3 -c "
import json, sys
d = json.load(sys.stdin)
for name, pkg in d.get('packages', {}).items():
    pkgver = pkg.get('pkgver', '')
    pkgrel = pkg.get('pkgrel', '')
    if pkgver:
        print(f'{name}\t{pkgver}-{pkgrel}' if pkgrel else f'{name}\t{pkgver}')
"
    else
        # No dashboard yet — scan branch directly
        git ls-tree -r "$REPORTS_BRANCH" --name-only 2>/dev/null \
            | grep -v '^_dashboard/' | grep -v '^index.html' | grep -v '^\.nojekyll' \
            | while read -r path; do
                pkg="${path%%/*}"
                fm=$(git show "${REPORTS_BRANCH}:${path}" 2>/dev/null \
                    | sed -n '/^---$/,/^---$/p')
                pkgver=$(printf '%s\n' "$fm" | grep '^pkgver:' | head -1 | sed 's/^pkgver: *//')
                pkgrel=$(printf '%s\n' "$fm" | grep '^pkgrel:' | head -1 | sed 's/^pkgrel: *//')
                if [[ -n "$pkgver" && -n "$pkgrel" ]]; then
                    printf '%s\t%s-%s\n' "$pkg" "$pkgver" "$pkgrel"
                elif [[ -n "$pkgver" ]]; then
                    printf '%s\t%s\n' "$pkg" "$pkgver"
                fi
            done | sort -t$'\t' -k1,1 -u
    fi
}

# --- Discover packages needing audit ---
#
# Two candidate streams, both ranked by AUR Popularity (a time-decayed vote
# score, closer to "installed right now" than the raw all-time vote count):
#
#   updated -- every package changed within the lookback window that is not
#              already audited at its current version. This is the threat we care
#              about most: a fresh push, a brand-new package, a maintainer
#              takeover. A new package has no votes, so this stream is NOT gated
#              on votes; MIN_VOTES is only a hard floor (default 0).
#   seed    -- the top SEED_TOP most popular packages overall, so the
#              long-established set is not a permanent blind spot.
#
# The updated stream alone runs far past the daily budget (roughly 850 packages
# change per day against a budget of a few dozen), so the budget always binds
# inside it and the seed would never be reached. The two streams are therefore
# interleaved to a fixed ratio: UPDATED_SHARE of the audited packages come from
# the updated stream, the rest from the seed. Because each stream is sorted by
# Popularity first, the point where the budget cuts the interleaved list off acts
# as an effective popularity floor -- the highest-popularity packages that fit
# the budget get audited, and that floor is as high as the split allows.
discover_packages() {
    local audited_index="$1"

    MIN_VOTES="$MIN_VOTES" \
    LOOKBACK_HOURS="$LOOKBACK_HOURS" \
    SEED_TOP="$SEED_TOP" \
    UPDATED_SHARE="$UPDATED_SHARE" \
    AUDITED_INDEX="$audited_index" \
    python3 << 'PYEOF'
import json, gzip, os, sys, time

metadata_cache = os.environ.get("METADATA_CACHE", "")
min_votes = int(os.environ["MIN_VOTES"])
lookback_hours = int(os.environ["LOOKBACK_HOURS"])
seed_top = int(os.environ.get("SEED_TOP", "0"))
updated_share = float(os.environ.get("UPDATED_SHARE", "0.8"))
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

def eligible(p):
    """Maintained, in-date, and not already audited at its current version."""
    if not p.get("Maintainer"):
        return False
    if p.get("OutOfDate"):
        return False
    name = p.get("Name", "")
    # The audited index stores pkgver-pkgrel; the AUR "Version" is
    # [epoch:]pkgver-pkgrel. Strip the epoch (pkgver cannot contain a colon) so
    # the two are comparable. A rare epoch-only bump that leaves pkgver-pkgrel
    # unchanged is not re-audited -- an accepted limitation, since reports carry
    # no epoch.
    aur_ver = p.get("Version", "").split(":", 1)[-1]
    return not (name in audited and audited[name] == aur_ver)

def popularity(p):
    return p.get("Popularity", 0.0)

# Stream 1: recently updated packages, most popular first.
updated = [
    p.get("Name", "")
    for p in sorted(
        (p for p in packages
         if eligible(p)
         and p.get("LastModified", 0) >= cutoff
         and p.get("NumVotes", 0) >= min_votes),
        key=popularity, reverse=True)
]

# Stream 2: the top SEED_TOP most popular packages overall, minus anything
# already in the updated stream.
seed = []
if seed_top > 0:
    seen = set(updated)
    for p in sorted((p for p in packages if eligible(p)),
                    key=popularity, reverse=True):
        if len(seed) >= seed_top:
            break
        name = p.get("Name", "")
        if name in seen:
            continue
        seed.append(name)
        seen.add(name)

# Interleave the two streams so the audited set holds roughly UPDATED_SHARE
# updated packages to (1 - UPDATED_SHARE) seed packages, wherever the budget cuts
# the list off.
seed_share = 1.0 - updated_share
if seed_share <= 0:
    candidates = updated + seed            # updated-only; seed as a fallback tail
elif updated_share <= 0:
    candidates = seed + updated            # seed-only; updated as a fallback tail
else:
    # Stride merge: the k-th item of a stream with target share f gets a virtual
    # position (k + 0.5) / f, and the two streams merge by position. This holds
    # the ratio near UPDATED_SHARE at every prefix -- so wherever the daily budget
    # cuts the list, the mix is right. Two positions can tie exactly for some
    # shares (e.g. 0.75), so the sort key carries a stream tag: a tie always falls
    # to updated (tag 0 before tag 1), which keeps the order deterministic.
    tagged = [((i + 0.5) / updated_share, 0, name) for i, name in enumerate(updated)]
    tagged += [((j + 0.5) / seed_share, 1, name) for j, name in enumerate(seed)]
    tagged.sort()
    candidates = [name for _, _, name in tagged]

print(f"# {len(updated)} updated + {len(seed)} seed, interleaved "
      f"{round(updated_share * 100)}/{round((1 - updated_share) * 100)}",
      file=sys.stderr)

for name in candidates:
    if name:
        print(name)
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

    local rc=0
    # --kill-after gives aur-sleuth a moment to die on TERM before SIGKILL, so a
    # wedged makepkg child cannot keep the process alive past the deadline.
    AUDIT_FAILURE_FATAL=true AUR_SLEUTH_ASCII_ICONS=1 \
        OPENAI_MODEL="$model" \
        AUR_SLEUTH_REPORT_DIR="$report_dir" \
        timeout --kill-after=30s "$AUDIT_TIMEOUT" \
        ./aur-sleuth --output plain "$pkg" 2>&1 || rc=$?

    local cost
    cost=$(report_cost "$report_file")

    # 124 is timeout(1)'s own signal that the deadline expired; 137 is SIGKILL
    # after --kill-after. Anything else is aur-sleuth's own exit code, which the
    # report check below already handles.
    if [[ $rc -eq 124 || $rc -eq 137 ]]; then
        # The LLM calls already made still cost money. aur-sleuth writes its
        # frontmatter on SIGTERM, so the cost is usually there; only a SIGKILL
        # loses it. The partial report itself must not survive: judge.sh globs
        # this directory and would judge the stub.
        record_cost "$cost"
        rm -f "$report_file"
        log "  [$pkg] $model: TIMED OUT after ${AUDIT_TIMEOUT}s, abandoning (\$$cost)"
        return 1
    fi

    if [[ ! -f "$report_file" ]]; then
        log "  [$pkg] No report produced by $model"
        return 1
    fi

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
# --no-push leaves the branch on the local clone. A caller that runs this pipeline
# next to untrusted code uses it to keep the git write credential out of this
# process: the commits stay local, and a separate trusted step pushes them.
push_reports() {
    if $DRY_RUN || $NO_PUSH; then return 0; fi
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
    log "Audit phase stops at \$$AUDIT_BUDGET, leaving the rest for judge and re-audit"
    if [[ "$SEED_TOP" -gt 0 ]]; then
        log "Candidates: updated + top $SEED_TOP by popularity, interleaved at updated-share=$UPDATED_SHARE"
    fi
    log "Models: ${MODEL_LIST[*]} | Judge: $JUDGE_MODEL | Re-audit: $REAUDIT_MODEL"
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
            if is_over_budget "$AUDIT_BUDGET"; then
                log "Audit budget reached (\$$(get_daily_spent) >= \$$AUDIT_BUDGET) after $audited_n packages"
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
        if [[ ${#batch[@]} -gt 0 ]] && ! is_over_budget "$AUDIT_BUDGET"; then
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

            bash bench/judge.sh --re-audit-pending --audit-model "$REAUDIT_MODEL" \
                --audit-timeout "$AUDIT_TIMEOUT" 2>&1

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
    if $NO_PUSH && ! $DRY_RUN; then
        log "--no-push: $REPORTS_BRANCH left unpushed for a separate publish step"
    fi

    # Append to run log
    echo "$(date -u +%Y-%m-%dT%H:%M:%SZ) spent=\$$(get_daily_spent) budget=\$$DAILY_BUDGET candidates=$candidate_count" \
        >> "$PIPELINE_DIR/runs.log"
}

main "$@"
