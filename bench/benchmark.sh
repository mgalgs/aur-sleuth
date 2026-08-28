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
# Usage: benchmark.sh --models a,b[,c] [--role audit|judge] [--target NAME]
#                     [--sample N] [--packages p,q,...] [--budget USD] [--jobs N]
#                     [--audit-timeout SECONDS] [--no-synthetics] [--run-id ID]
#
# --sample 0 with no --packages is a SCREEN: the synthetic fixtures alone, the
# cheap behavioural filter in front of a full benchmark. Three benign fixtures
# that must exit 0 and four malicious ones that must exit 1 reject both
# degenerate answers -- "everything is safe" misses all four, "everything is
# unsafe" fails all three -- for a few cents rather than a few dollars. A
# screen reads no sample, so it needs no settled verdicts on the branch, and
# it has no deltas to measure, so the seat holder does not join it.
#
# --role picks the task. "audit" (the default) re-audits the sampled packages,
# which is what both the audit seat and the re-audit seat do. "judge" hands
# each candidate the package's existing audit reports from the branch and
# scores its ruling, which is the judge seat's task; it has no synthetic
# fixtures. --target is a free label recorded in the result (which seat the
# run is for), so the page can show the right promote button.
#
# The last line printed is BENCH_JSON followed by one JSON object: the table
# in machine-readable form, for a caller reading the log.
set -euo pipefail

cd "$(dirname "$0")/.."

DATA_DIR="${AUR_SLEUTH_DATA_DIR:-$HOME/aur-sleuth-data}"
MODELS=""
ROLE="audit"
TARGET=""
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
        --role) ROLE="$2"; shift 2 ;;
        --target) TARGET="$2"; shift 2 ;;
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
[[ "$MODELS" =~ ^[A-Za-z0-9._/:-]+(,[A-Za-z0-9._/:-]+)*$ ]] \
    || { echo "--models is not a comma-separated model list: '$MODELS'" >&2; exit 1; }
[[ "$ROLE" =~ ^(audit|judge)$ ]] || { echo "--role must be audit or judge" >&2; exit 1; }
[[ -z "$TARGET" || "$TARGET" =~ ^[a-z-]+$ ]] || { echo "--target must be a short lowercase word" >&2; exit 1; }
[[ "$SAMPLE" =~ ^[0-9]+$ ]] || { echo "--sample must be a whole number" >&2; exit 1; }
[[ "$JOBS" =~ ^[1-9][0-9]*$ ]] || { echo "--jobs must be a positive number" >&2; exit 1; }
[[ "$AUDIT_TIMEOUT" =~ ^[1-9][0-9]*$ ]] || { echo "--audit-timeout must be a positive number" >&2; exit 1; }
[[ "$BUDGET" =~ ^[0-9]+(\.[0-9]+)?$ ]] || { echo "--budget must be a number" >&2; exit 1; }
[[ "$RUN_ID" =~ ^[A-Za-z0-9._-]+$ ]] || { echo "--run-id may only hold letters, digits, . _ -" >&2; exit 1; }
[[ -n "${OPENAI_API_KEY:-}" ]] || { echo "OPENAI_API_KEY is not set" >&2; exit 1; }

IFS=',' read -ra MODEL_LIST <<< "$MODELS"
[[ "$ROLE" == "judge" ]] && SYNTHETICS=false

# A screen: no packages asked for, so the fixtures are the whole run.
SCREEN_ONLY=false
if (( 10#$SAMPLE == 0 )) && [[ -z "$PACKAGES" ]]; then
    SCREEN_ONLY=true
    $SYNTHETICS || { echo "--sample 0 without synthetics would run nothing" >&2; exit 1; }
fi

RUN_DIR="$DATA_DIR/bench/$RUN_ID"
PIPELINE_DIR="$DATA_DIR/pipeline"
mkdir -p "$RUN_DIR/reports" "$PIPELINE_DIR"
ROWS="$RUN_DIR/rows.jsonl"
SYNTH="$RUN_DIR/synthetics.jsonl"
SAMPLE_FILE="$RUN_DIR/sample.jsonl"
: > "$ROWS"
: > "$SYNTH"

log() { echo "[$(date '+%H:%M:%S')] $*"; }

# --- baseline seat holder ---------------------------------------------------
# Cost and accuracy deltas need a same-run baseline: the incumbent's
# branch-derived numbers come from old rulings over old report sets, and the
# one time a seat holder was re-run fresh it disagreed markedly with its own
# branch figure. So the holder of the seat this run auditions for (judge for
# a judge run, re-audit otherwise) always answers the sample beside the
# candidates. Prepended, not appended: a budget that truncates the run
# should cost a candidate its tail, never the baseline every delta is
# measured against. Resolution mirrors the ops page: the settings override
# first, else what the last scheduled run recorded.
seat_holder() {
    local key="AUR_SLEUTH_REAUDIT_MODEL"
    [[ "$ROLE" == "judge" ]] && key="AUR_SLEUTH_JUDGE_MODEL"
    local holder="${!key:-}"
    if [[ -z "$holder" && -f "$PIPELINE_DIR/effective.json" ]]; then
        holder="$(python3 -c 'import json,sys; print(json.load(open(sys.argv[1])).get(sys.argv[2], ""))' \
            "$PIPELINE_DIR/effective.json" "$key" 2>/dev/null || true)"
    fi
    printf '%s' "$holder"
}

HOLDER=""
$SCREEN_ONLY || HOLDER="$(seat_holder)"
if $SCREEN_ONLY; then
    log "Screen: the synthetic fixtures only. No sample, so no delta to baseline; the seat holder sits this one out rather than paying for its own fixtures again"
elif [[ -n "$HOLDER" ]]; then
    holder_present=false
    for m in "${MODEL_LIST[@]}"; do
        [[ "$m" == "$HOLDER" ]] && holder_present=true
    done
    if ! $holder_present; then
        MODEL_LIST=("$HOLDER" "${MODEL_LIST[@]}")
        log "Baseline: $HOLDER, the current seat holder, joins the run so every delta is same-sample; it spends its share of the budget first"
    fi
else
    log "WARNING: no seat holder known (no setting, no effective.json); deltas will fall back to branch-derived numbers, which are approximate"
fi

# --- spend ------------------------------------------------------------------
# The pipeline's own ledger, so the day's total on the ops page is the whole
# truth about what was spent -- but tagged `manual`, which is what exempts a
# benchmark from the schedule's budget.
#
# pipeline.sh keeps two sums over the same file: get_daily_spent() adds every
# line, and scheduled_spent() adds only the untagged ones, which is the figure
# --daily-budget gates on. Its rule, in its own words, is that a person
# pressing Run must not spend the schedule's day. Pressing "Queue benchmark"
# is the same act -- a person asking for an experiment -- and the tag was
# simply never applied here, so every benchmark dollar read as the schedule's.
# A $2 benchmark took $2 of audits out of the next scheduled run, silently.
#
# The run's own --budget still bounds the benchmark, tracked separately from
# the rows. That ceiling is the one a person set on the form; this is only
# about whose day pays for it.
TODAY=$(date +%Y-%m-%d)
SPEND_FILE="$PIPELINE_DIR/spend-${TODAY}.log"
touch "$SPEND_FILE"

record_cost() {
    (
        flock -x 201
        echo "$1 manual" >> "$SPEND_FILE"
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
                    r = json.loads(line)
                    # Rows copied from the branch are the incumbents' old
                    # spend, not this run's.
                    if not r.get("from_branch"):
                        total += float(r.get("cost") or 0)
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
    # Same explicit pin as pipeline.sh: a benchmark must never translate
    # verdicts, whatever the surrounding environment enables.
    AUDIT_FAILURE_FATAL=true AUR_SLEUTH_ASCII_ICONS=1 \
        AUR_SLEUTH_TRANSLATE_VERDICTS=0 \
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
        rc="$(audit_one "$model" "$report_dir" "$name" --pkgdir "$fixture")"
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
    local ref_source support
    # Split on the unit separator, not a tab: tab is IFS whitespace, so two
    # tabs in a row collapse and every field after an empty one shifts left.
    # pkgver and reference_source are legitimately empty for some rows.
    IFS=$'\x1f' read -r pkg reference ref_pkgver overridden ref_source support < <(printf '%s' "$line" | python3 -c '
import json, sys
r = json.load(sys.stdin)
print("\x1f".join([r["package"], r.get("reference", "unknown"), r.get("pkgver", ""),
                   "1" if r.get("overridden") else "0", r.get("reference_source", ""),
                   str(r.get("support", 0))]))')

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
        --package "$pkg" --reference "$reference" --reference-source "$ref_source" \
        --support "$support" --ref-pkgver "$ref_pkgver" \
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

# --- one package, as a judge -------------------------------------------------------
# The candidate judge gets the package's audit reports as they are on the
# branch -- the same reports the incumbent judge ruled on -- materialised into
# this run's own reports directory, and writes its ruling into this run's own
# judge directory. bench/judge.sh does the judging; --no-archive keeps the
# ruling off the branch.
judge_package() {
    local model="$1" line="$2" slug="${1//\//-}"
    local pkg reference ref_pkgver overridden ref_source support paths
    # The unit separator, for the same reason as in bench_package.
    IFS=$'\x1f' read -r pkg reference ref_pkgver overridden ref_source support paths < <(printf '%s' "$line" | python3 -c '
import json, sys
r = json.load(sys.stdin)
print("\x1f".join([r["package"], r.get("reference", "unknown"), r.get("pkgver", ""),
                   "1" if r.get("overridden") else "0", r.get("reference_source", ""),
                   str(r.get("support", 0)),
                   " ".join(b["path"] for b in r.get("branch") or [] if b.get("path"))]))')

    local reports_dir="$RUN_DIR/reports/$slug/judge-input/$pkg"
    local judge_dir="$RUN_DIR/reports/$slug/judge"
    local n=0 path
    for path in $paths; do
        # One directory per report, as the pipeline lays them out: judge.sh
        # finds reports by name under any subdirectory of --reports-dir.
        mkdir -p "$reports_dir/$n"
        git show "audit-reports:$path" > "$reports_dir/$n/aur-sleuth-report-${pkg}.txt" 2>/dev/null || rm -rf "${reports_dir:?}/$n"
        n=$(( n + 1 ))
    done
    mkdir -p "$judge_dir"

    local start rc=0 seconds
    start=$(date +%s)
    if [[ -n "$(find "$reports_dir" -name 'aur-sleuth-report-*.txt' 2>/dev/null)" ]]; then
        timeout --kill-after=30s "$AUDIT_TIMEOUT" \
            bash bench/judge.sh --package "$pkg" --all --no-archive --judge-model "$model" \
            --reports-dir "$reports_dir" --judge-dir "$judge_dir" \
            >"$RUN_DIR/reports/$slug/log-judge-$pkg.txt" 2>&1 </dev/null || rc=$?
    else
        rc=2
    fi
    seconds=$(( $(date +%s) - start ))

    local flag=()
    [[ "$overridden" == 1 ]] && flag=(--overridden)
    local row
    row="$(python3 bench/benchmark-report.py judgerow --judge-file "$judge_dir/$pkg.json" \
        --model "$model" --package "$pkg" --reference "$reference" --reference-source "$ref_source" \
        --support "$support" --ref-pkgver "$ref_pkgver" --seconds "$seconds" --exit "$rc" "${flag[@]}")"
    printf '%s\n' "$row" | append_row "$ROWS"
    record_cost "$(printf '%s' "$row" | python3 -c 'import json,sys; print(json.load(sys.stdin)["cost"])')"

    local result
    result="$(printf '%s' "$row" | python3 -c 'import json,sys; print(json.load(sys.stdin)["result"])')"
    local mark="  "
    if [[ "$reference" == "safe" || "$reference" == "unsafe" ]]; then
        [[ "$result" == "$reference" ]] && mark="ok" || mark="!!"
    fi
    log "  [$model] $mark $pkg: judged $result (reference $reference, ${seconds}s)"
}

# --- main -------------------------------------------------------------------------
log "Benchmark $RUN_ID: role $ROLE${TARGET:+ for $TARGET} | models ${MODEL_LIST[*]} | sample $SAMPLE | budget \$$BUDGET | jobs $JOBS"
log "Reports under $RUN_DIR (never archived)"

if $SCREEN_ONLY; then
    # Not "sample nothing" but "do not read the branch at all": the sampler
    # loads the whole dashboard to pick packages, and a screen has no use for
    # a settled verdict. This is what lets a screen run on a volume that has
    # no reports yet.
    : > "$SAMPLE_FILE"
elif [[ -n "$PACKAGES" ]]; then
    python3 bench/benchmark-sample.py --packages "$PACKAGES" > "$SAMPLE_FILE"
else
    python3 bench/benchmark-sample.py --size "$SAMPLE" > "$SAMPLE_FILE"
fi
nsample="$(wc -l < "$SAMPLE_FILE")"
log "Sample: $nsample package(s)"

# The current models' own latest report on each sampled package, from the
# branch, as rows of their own. Costs nothing, and gives the table the
# incumbents on the same packages: the delta a promotion has to beat.
BENCH_ROLE="$ROLE" python3 - "$SAMPLE_FILE" <<'PYROWS' | append_row "$ROWS"
import json, os, sys
for line in open(sys.argv[1]):
    line = line.strip()
    if not line:
        continue
    r = json.loads(line)
    key = "branch_judges" if os.environ.get("BENCH_ROLE") == "judge" else "branch"
    for b in r.get(key) or []:
        print(json.dumps({
            "model": b["model"], "package": r["package"], "reference": r["reference"],
            "reference_source": r.get("reference_source", ""), "support": r.get("support", 0),
            "ref_pkgver": r.get("pkgver", ""), "overridden": bool(r.get("overridden")),
            "result": b["result"], "cost": b["cost"], "pkgver": b.get("pkgver", ""),
            "seconds": None, "exit": 0, "summary": "", "from_branch": True,
        }, separators=(",", ":"), sort_keys=True))
PYROWS
log "Incumbents: $(grep -c '"from_branch":true' "$ROWS" || true) row(s) from the branch"

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
        if [[ "$ROLE" == "judge" ]]; then
            judge_package "$model" "$line" </dev/null &
        else
            bench_package "$model" "$line" </dev/null &
        fi
    done < "$SAMPLE_FILE"
    wait
    $stopped_early && break
done

meta="$(BENCH_RUN_ID="$RUN_ID" BENCH_STARTED="$STARTED" BENCH_MODELS="$MODELS" \
    BENCH_SAMPLE="$nsample" BENCH_BUDGET="$BUDGET" BENCH_STOPPED="$stopped_early" \
    BENCH_SYNTHETICS="$SYNTHETICS" BENCH_ROLE="$ROLE" BENCH_TARGET="$TARGET" python3 - <<'PY'
import datetime, json, os
e = os.environ
print(json.dumps({
    "run_id": e["BENCH_RUN_ID"],
    "role": e["BENCH_ROLE"],
    "target": e["BENCH_TARGET"],
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
