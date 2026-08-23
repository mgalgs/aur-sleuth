#!/usr/bin/env bash
# Benchmark candidate models against the verdicts already settled on the branch.
#
# For each candidate: run the synthetic fixtures (benign must pass, malicious
# must fail), then re-audit a sample of real packages whose verdict is settled
# and compare. The interesting output is the disagreements. The cheapest model
# that passes every synthetic, misses no confirmed package, and agrees with the
# settled verdicts is the one to promote.
#
# Writes nothing to the audit-reports branch: every report lands under
# $DATA_DIR/bench/<run-id>/ and stays there. Spend is recorded in the same
# daily ledger the pipeline keeps, so the day's budget sees it.
#
# Usage: benchmark.sh --models a,b[,c] [--sample N] [--packages p,q,...]
#                     [--budget USD] [--jobs N] [--audit-timeout SECONDS]
#                     [--no-synthetics] [--run-id ID]
#
# The last line printed is BENCH_JSON followed by one JSON object: the table
# in machine-readable form, for a caller reading the log.
set -euo pipefail

cd "$(dirname "$0")/.."

DATA_DIR="${AUR_SLEUTH_DATA_DIR:-$HOME/aur-sleuth-data}"
MODELS=""
SAMPLE=20
PACKAGES=""
BUDGET="2.00"
JOBS=4
AUDIT_TIMEOUT=900
SYNTHETICS=true
RUN_ID="$(date -u +%Y%m%d-%H%M%S)"

while [[ $# -gt 0 ]]; do
    case "$1" in
        --models) MODELS="$2"; shift 2 ;;
        --sample) SAMPLE="$2"; shift 2 ;;
        --packages) PACKAGES="$2"; shift 2 ;;
        --budget) BUDGET="$2"; shift 2 ;;
        --jobs) JOBS="$2"; shift 2 ;;
        --audit-timeout) AUDIT_TIMEOUT="$2"; shift 2 ;;
        --no-synthetics) SYNTHETICS=false; shift ;;
        --run-id) RUN_ID="$2"; shift 2 ;;
        *) echo "Unknown option: $1" >&2; exit 1 ;;
    esac
done

[[ -n "$MODELS" ]] || { echo "--models is required" >&2; exit 1; }
[[ "$MODELS" =~ ^[A-Za-z0-9._/-]+(,[A-Za-z0-9._/-]+)*$ ]] \
    || { echo "--models is not a comma-separated model list: '$MODELS'" >&2; exit 1; }
[[ "$SAMPLE" =~ ^[0-9]+$ ]] || { echo "--sample must be a whole number" >&2; exit 1; }
[[ "$JOBS" =~ ^[1-9][0-9]*$ ]] || { echo "--jobs must be a positive number" >&2; exit 1; }
[[ "$AUDIT_TIMEOUT" =~ ^[1-9][0-9]*$ ]] || { echo "--audit-timeout must be a positive number" >&2; exit 1; }
[[ "$BUDGET" =~ ^[0-9]+(\.[0-9]+)?$ ]] || { echo "--budget must be a number" >&2; exit 1; }
[[ "$RUN_ID" =~ ^[A-Za-z0-9._-]+$ ]] || { echo "--run-id may only hold letters, digits, . _ -" >&2; exit 1; }
[[ -n "${OPENAI_API_KEY:-}" ]] || { echo "OPENAI_API_KEY is not set" >&2; exit 1; }

IFS=',' read -ra MODEL_LIST <<< "$MODELS"

RUN_DIR="$DATA_DIR/bench/$RUN_ID"
PIPELINE_DIR="$DATA_DIR/pipeline"
mkdir -p "$RUN_DIR/reports" "$PIPELINE_DIR"
ROWS="$RUN_DIR/rows.jsonl"
SYNTH="$RUN_DIR/synthetics.jsonl"
SAMPLE_FILE="$RUN_DIR/sample.jsonl"
: > "$ROWS"
: > "$SYNTH"

log() { echo "[$(date '+%H:%M:%S')] $*"; }

# --- spend ------------------------------------------------------------------
# The pipeline's own ledger, so --daily-budget in the next scheduled run counts
# what this spent. The run's own --budget is tracked separately, from the rows.
TODAY=$(date +%Y-%m-%d)
SPEND_FILE="$PIPELINE_DIR/spend-${TODAY}.log"
touch "$SPEND_FILE"

record_cost() {
    (
        flock -x 201
        echo "$1" >> "$SPEND_FILE"
    ) 201>"$SPEND_FILE.lock"
}

run_spent() {
    python3 - "$ROWS" "$SYNTH" <<'PY'
import json, sys
total = 0.0
for path in sys.argv[1:]:
    try:
        with open(path) as f:
            for line in f:
                try:
                    total += float(json.loads(line).get("cost") or 0)
                except (ValueError, AttributeError):
                    pass
    except OSError:
        pass
print(f"{total:.6f}")
PY
}

over_budget() {
    python3 -c "import sys; sys.exit(0 if $(run_spent) >= $BUDGET else 1)"
}

append_row() {
    (
        flock -x 202
        cat >> "$1"
    ) 202>"$1.lock"
}

report_field() {
    sed -n '/^---$/,/^---$/p' "$1" 2>/dev/null | grep "^$2:" | head -1 | sed "s/^$2: *//" || true
}

# --- one audit ----------------------------------------------------------------
# The same invocation the pipeline makes, into this run's own report directory.
# Prints the exit status; the caller turns the report into a row.
audit_one() {
    local model="$1" report_dir="$2" logname="$3" rc=0
    shift 3
    mkdir -p "$report_dir"
    AUDIT_FAILURE_FATAL=true AUR_SLEUTH_ASCII_ICONS=1 \
        OPENAI_MODEL="$model" \
        AUR_SLEUTH_REPORT_DIR="$report_dir" \
        timeout --kill-after=30s "$AUDIT_TIMEOUT" \
        ./aur-sleuth --output plain "$@" >"$report_dir/log-$logname.txt" 2>&1 </dev/null || rc=$?
    echo "$rc"
}

# --- synthetics -----------------------------------------------------------------
run_synthetics() {
    local model="$1" slug="${1//\//-}"
    local fixture name expected rc cost report report_dir
    for fixture in bench/synthetics/*/; do
        name="$(basename "$fixture")"
        case "$name" in
            benign-*) expected=0 ;;
            malicious-*) expected=1 ;;
            *) continue ;;
        esac
        # One directory per fixture: --pkgdir names the report after pkgname,
        # not the directory, so this is how the report is found again.
        report_dir="$RUN_DIR/reports/$slug/synthetics/$name"
        rc="$(audit_one "$model" "$report_dir" "$name" --pkgdir "$fixture" -n 0)"
        report="$(find "$report_dir" -maxdepth 1 -name 'aur-sleuth-report-*.txt' | head -1)"
        cost="$(report_field "${report:-/dev/null}" cost)"
        cost="${cost:-0}"
        record_cost "$cost"
        local pass=false
        [[ "$rc" -eq "$expected" ]] && pass=true
        printf '{"model":"%s","fixture":"%s","expected":%s,"exit":%s,"pass":%s,"cost":%s}\n' \
            "$model" "$name" "$expected" "$rc" "$pass" "$cost" | append_row "$SYNTH"
        log "  [$model] synthetic $name: exit $rc, want $expected ($pass, \$$cost)"
    done
}

# --- one package -----------------------------------------------------------------
bench_package() {
    local model="$1" line="$2" slug="${1//\//-}"
    local pkg reference ref_pkgver overridden
    IFS=$'\t' read -r pkg reference ref_pkgver overridden < <(printf '%s' "$line" | python3 -c '
import json, sys
r = json.load(sys.stdin)
print("\t".join([r["package"], r.get("reference", "unknown"), r.get("pkgver", ""),
                 "1" if r.get("overridden") else "0"]))')

    local report_dir="$RUN_DIR/reports/$slug"
    local report="$report_dir/aur-sleuth-report-${pkg}.txt"
    local start rc seconds
    start=$(date +%s)
    rc="$(audit_one "$model" "$report_dir" "$pkg" "$pkg")"
    seconds=$(( $(date +%s) - start ))

    local flag=()
    [[ "$overridden" == 1 ]] && flag=(--overridden)
    local row
    row="$(python3 bench/benchmark-report.py row --report "$report" --model "$model" \
        --package "$pkg" --reference "$reference" --ref-pkgver "$ref_pkgver" \
        --seconds "$seconds" --exit "$rc" "${flag[@]}")"
    printf '%s\n' "$row" | append_row "$ROWS"
    record_cost "$(printf '%s' "$row" | python3 -c 'import json,sys; print(json.load(sys.stdin)["cost"])')"

    local result
    result="$(printf '%s' "$row" | python3 -c 'import json,sys; print(json.load(sys.stdin)["result"])')"
    local mark="  "
    if [[ "$reference" == "safe" || "$reference" == "unsafe" ]]; then
        [[ "$result" == "$reference" ]] && mark="ok" || mark="!!"
    fi
    log "  [$model] $mark $pkg: $result (reference $reference, ${seconds}s)"
}

# --- main -------------------------------------------------------------------------
log "Benchmark $RUN_ID: models ${MODEL_LIST[*]} | sample $SAMPLE | budget \$$BUDGET | jobs $JOBS"
log "Reports under $RUN_DIR (never archived)"

if [[ -n "$PACKAGES" ]]; then
    python3 bench/benchmark-sample.py --packages "$PACKAGES" > "$SAMPLE_FILE"
else
    python3 bench/benchmark-sample.py --size "$SAMPLE" > "$SAMPLE_FILE"
fi
nsample="$(wc -l < "$SAMPLE_FILE")"
log "Sample: $nsample package(s)"

STARTED="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
stopped_early=false

for model in "${MODEL_LIST[@]}"; do
    log "--- $model ---"
    if $SYNTHETICS; then
        run_synthetics "$model"
    fi
    while IFS= read -r line; do
        [[ -n "$line" ]] || continue
        if over_budget; then
            log "  budget \$$BUDGET reached (spent \$$(run_spent)); stopping"
            stopped_early=true
            break
        fi
        while (( $(jobs -rp | wc -l) >= JOBS )); do
            wait -n || true
        done
        # stdin closed: a background audit must not eat the sample file.
        bench_package "$model" "$line" </dev/null &
    done < "$SAMPLE_FILE"
    wait
    $stopped_early && break
done

meta="$(BENCH_RUN_ID="$RUN_ID" BENCH_STARTED="$STARTED" BENCH_MODELS="$MODELS" \
    BENCH_SAMPLE="$nsample" BENCH_BUDGET="$BUDGET" BENCH_STOPPED="$stopped_early" \
    BENCH_SYNTHETICS="$SYNTHETICS" python3 - <<'PY'
import datetime, json, os
e = os.environ
print(json.dumps({
    "run_id": e["BENCH_RUN_ID"],
    "started": e["BENCH_STARTED"],
    "finished": datetime.datetime.now(datetime.timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ"),
    "models": e["BENCH_MODELS"].split(","),
    "sample": int(e["BENCH_SAMPLE"]),
    "budget": float(e["BENCH_BUDGET"]),
    "stopped_early": e["BENCH_STOPPED"] == "true",
    "synthetics": e["BENCH_SYNTHETICS"] == "true",
}))
PY
)"

log "Results:"
python3 bench/benchmark-report.py --rows "$ROWS" --synthetics "$SYNTH" \
    --meta "$meta" --json "$RUN_DIR/result.json"
cp -f "$RUN_DIR/result.json" "$DATA_DIR/bench/latest.json"
log "Spent \$$(run_spent) on this run; written to $RUN_DIR/result.json"
