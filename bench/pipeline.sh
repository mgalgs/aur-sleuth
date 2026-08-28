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
#                     [--tiebreak-model MODEL]
#                     [--audit-budget-share FRACTION] [--runs-per-day N]
#                     [--escalations-per-run N]
#                     [--updated-count N] [--seed-count N]
#                     [--packages LIST] [--escalate LIST]
#                     [--escalate-pending true|false] [--run-budget USD]
#                     [--free-models LIST] [--free-timeout SECONDS]
#                     [--advisory true|false]
#                     [--advisory-sweep N] [--advisory-models LIST]
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
# How the day's budget is shared out. Each scheduled run gets a SLICE: what
# is left of the day, divided evenly over the runs still to come (this one
# included) -- bench/budget-slice.py, from the ledger and the clock. Within
# the slice, the audit loop stops at AUDIT_BUDGET_SHARE of it; judge and
# escalation work has top priority and is never gated: a flagged package
# must not sit in "worth a closer look" because new audits spent the money
# first. So those phases run to completion even past the slice, and the
# overrun shrinks the slices after it instead of gating them. It is logged,
# and written as overrun= in runs.log. When it trends up, tune this share
# or ESCALATIONS_PER_RUN down; never gate the judge.
#
# History, all measured: first the judge shared the audit loop's gate and
# never ran (the audit loop spent everything). Then a reserve existed but
# judge and re-audit still checked the total budget, and one run had the
# judge spend past it and starve the re-audit phase -- the flagged packages
# waited a day. Then the reserve was a share of the DAY, so the first run
# of a day was entitled to all of it and the five runs after it found the
# day spent: one judge phase a day, and every flag waited for it. Hence:
# cap the audits, never the settling, and give every run a share.
AUDIT_BUDGET_SHARE=0.8
# Scheduled runs a day, for the slice arithmetic. Match the CronJob's
# schedule; more than the schedule runs leaves budget unspent, fewer
# front-loads it onto the early runs.
RUNS_PER_DAY=6
# Escalations one scheduled run may start (each is a fresh paid audit plus
# a forced ruling, ~$0.15 with a frontier model). The backlog drains over
# the day's runs instead of in one burst that spends the day in the first
# run. 0 skips the phase. A person's own escalation run is never capped.
ESCALATIONS_PER_RUN=3
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
# The second escalation model. An escalation is a fresh opinion, so it goes
# to a model that has not read the package: REAUDIT_MODEL first, this one
# when REAUDIT_MODEL already has. A different vendor from every other seat,
# priced like the escalation seat.
TIEBREAK_MODEL="openai/gpt-5.4"
# One last, bounded audit after the ordinary escalation and tiebreak did not
# settle the package. Its ruling uses a separate strongest-judge seat. After
# this cycle the package is terminal `disputed`; there is no retry loop.
FINAL_AUDIT_MODEL="@final"
FINAL_JUDGE_MODEL="openai/gpt-5.4"
# Optional semantic references, e.g. `cheap=deepseek/deepseek-v4-flash;final=openai/gpt-5.4`.
# Seats may then use `@cheap`/`@final`. Reports retain the alias and concrete id.
MODEL_ALIASES="final=gpt-5.6-sol"
# Opportunistic free voices: extra audit models run beside the paid seats,
# best effort. Their failures are soft everywhere -- no judge trigger, no
# audited-index mark, no cost -- so a rate-limited free tier contributes
# when its pipes are open and costs nothing in every sense when they are
# not. They get their own, shorter timeout: a throttled free call must not
# hold a batch the way a real audit may.
FREE_MODELS=""
FREE_TIMEOUT=180
# An advisory run records reports that are data, never verdicts: marked in
# their frontmatter, excluded from judge triggers, package state and the
# audited index, and the run itself skips the judge and escalation phases.
# The way to point an untrusted model at real packages with a guarantee
# that it cannot summon a judge, escalate, or flip a state -- now or in any
# later run.
ADVISORY="false"
PACKAGES_FILE=""
# Sized runs: cap each discovery stream instead of letting the budget cut the
# interleaved list. 0 means uncapped -- the full-run default.
UPDATED_COUNT=0
SEED_COUNT=0
# A run over named packages only (comma-separated). Skips discovery, and
# audits them even at an already-audited version: naming a package is asking.
PACKAGES=""
# Escalation: a fresh audit by a model that has not read the package
# (REAUDIT_MODEL, then TIEBREAK_MODEL, then one final-resolution model) and a
# forced judge ruling over
# the enlarged report set. The scheduled run does this itself, in rounds,
# for everything worth a closer look (see run_escalation_rounds); these
# flags are the operator's own run of it. --escalate names packages;
# --escalate-pending true sweeps everything currently worth a closer look
# (the page's own state rule, via bench/pending-escalations.py).
ESCALATE=""
ESCALATE_PENDING="false"
# A manual run's own spend ceiling. When set, the gates in this run compare
# against the run's own spend instead of the day's ledger: a person asking
# for a run gets one, whatever the schedule already spent. The ledger still
# records every cost, so the scheduled runs' daily cap sees it all.
RUN_BUDGET=""
# The recurring free coverage: after an unshaped (scheduled full) run, sweep
# this many popular packages in a child advisory run with the free models
# below. $0 by definition, so it runs even on a spent day, and its reports
# are informational only -- the advisory rules above apply. 0 is off.
ADVISORY_SWEEP=0
ADVISORY_MODELS="openrouter/free"

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
        --runs-per-day) RUNS_PER_DAY="$2"; shift 2 ;;
        --escalations-per-run) ESCALATIONS_PER_RUN="$2"; shift 2 ;;
        --audit-models) AUDIT_MODELS="$2"; shift 2 ;;
        --judge-model) JUDGE_MODEL="$2"; shift 2 ;;
        --reaudit-model) REAUDIT_MODEL="$2"; shift 2 ;;
        --tiebreak-model) TIEBREAK_MODEL="$2"; shift 2 ;;
        --final-audit-model) FINAL_AUDIT_MODEL="$2"; shift 2 ;;
        --final-judge-model) FINAL_JUDGE_MODEL="$2"; shift 2 ;;
        --model-aliases) MODEL_ALIASES="$2"; shift 2 ;;
        --packages-file) PACKAGES_FILE="$2"; shift 2 ;;
        --updated-count) UPDATED_COUNT="$2"; shift 2 ;;
        --seed-count) SEED_COUNT="$2"; shift 2 ;;
        --packages) PACKAGES="$2"; shift 2 ;;
        --escalate) ESCALATE="$2"; shift 2 ;;
        --escalate-pending) ESCALATE_PENDING="$2"; shift 2 ;;
        --run-budget) RUN_BUDGET="$2"; shift 2 ;;
        --free-models) FREE_MODELS="$2"; shift 2 ;;
        --free-timeout) FREE_TIMEOUT="$2"; shift 2 ;;
        --advisory) ADVISORY="$2"; shift 2 ;;
        --advisory-sweep) ADVISORY_SWEEP="$2"; shift 2 ;;
        --advisory-models) ADVISORY_MODELS="$2"; shift 2 ;;
        *) echo "Unknown arg: $1" >&2; exit 1 ;;
    esac
done

[[ "$ESCALATE_PENDING" =~ ^(true|false)$ ]] \
    || { echo "--escalate-pending must be true or false, got '$ESCALATE_PENDING'" >&2; exit 1; }
[[ "$ADVISORY" =~ ^(true|false)$ ]] \
    || { echo "--advisory must be true or false, got '$ADVISORY'" >&2; exit 1; }
if [[ "$ADVISORY" == "true" ]]; then
    # Advisory reports are marked by the auditor itself (frontmatter), and
    # the run holds no court: no judge, no escalation. Later runs' judges
    # will find the reports in the pile as context, never as triggers.
    export AUR_SLEUTH_ADVISORY=true
    SKIP_JUDGE=true
    if [[ -n "$ESCALATE" || "$ESCALATE_PENDING" == "true" ]]; then
        echo "--advisory cannot combine with escalation: an advisory run holds no court" >&2
        exit 1
    fi
fi
# A positive number; zero would be a run that cannot start. Interpolated into
# python3 -c strings below, so the shape check is the security check too.
[[ -z "$RUN_BUDGET" || "$RUN_BUDGET" =~ ^(0*[1-9][0-9]*(\.[0-9]+)?|0*\.[0-9]*[1-9][0-9]*)$ ]] \
    || { echo "--run-budget must be a positive number, got '$RUN_BUDGET'" >&2; exit 1; }

[[ "$UPDATED_COUNT" =~ ^[0-9]+$ ]] \
    || { echo "--updated-count must be a whole number, got '$UPDATED_COUNT'" >&2; exit 1; }
[[ "$SEED_COUNT" =~ ^[0-9]+$ ]] \
    || { echo "--seed-count must be a whole number, got '$SEED_COUNT'" >&2; exit 1; }
# Package names, comma-separated. The AUR's own charset; checked here because
# each name ends up as a shell argument and a path segment.
PKG_LIST_RE='^[A-Za-z0-9@._+][A-Za-z0-9@._+-]*(,[A-Za-z0-9@._+][A-Za-z0-9@._+-]*)*$'
[[ -z "$PACKAGES" || "$PACKAGES" =~ $PKG_LIST_RE ]] \
    || { echo "--packages is not a comma-separated package list: '$PACKAGES'" >&2; exit 1; }
[[ -z "$ESCALATE" || "$ESCALATE" =~ $PKG_LIST_RE ]] \
    || { echo "--escalate is not a comma-separated package list: '$ESCALATE'" >&2; exit 1; }

MODEL_REF_RE='^(@[A-Za-z][A-Za-z0-9_-]{0,39}|[A-Za-z0-9._/:-]+)$'
MODEL_LIST_RE='^(@[A-Za-z][A-Za-z0-9_-]{0,39}|[A-Za-z0-9._/:-]+)(,(@[A-Za-z][A-Za-z0-9_-]{0,39}|[A-Za-z0-9._/:-]+))*$'
[[ "$AUDIT_MODELS" =~ $MODEL_LIST_RE ]] \
    || { echo "--audit-models is not a comma-separated model/reference list: '$AUDIT_MODELS'" >&2; exit 1; }
for value in "$JUDGE_MODEL" "$REAUDIT_MODEL" "$TIEBREAK_MODEL" "$FINAL_AUDIT_MODEL" "$FINAL_JUDGE_MODEL"; do
    [[ "$value" =~ $MODEL_REF_RE ]] \
        || { echo "invalid model/reference: '$value'" >&2; exit 1; }
done
[[ -z "$FREE_MODELS" || "$FREE_MODELS" =~ $MODEL_LIST_RE ]] \
    || { echo "--free-models is not a comma-separated model list: '$FREE_MODELS'" >&2; exit 1; }
[[ "$FREE_TIMEOUT" =~ ^0*[1-9][0-9]*$ ]] \
    || { echo "--free-timeout must be a whole number of at least 1, got '$FREE_TIMEOUT'" >&2; exit 1; }
[[ "$ADVISORY_SWEEP" =~ ^[0-9]+$ ]] \
    || { echo "--advisory-sweep must be a whole number, got '$ADVISORY_SWEEP'" >&2; exit 1; }
[[ "$ADVISORY_MODELS" =~ $MODEL_LIST_RE ]] \
    || { echo "--advisory-models is not a comma-separated model list: '$ADVISORY_MODELS'" >&2; exit 1; }

declare -A MODEL_ALIAS_TARGETS=() ACTIVE_MODEL_ALIAS_BY_ID=()
if [[ -n "$MODEL_ALIASES" ]]; then
    IFS=';' read -ra alias_entries <<< "$MODEL_ALIASES"
    for entry in "${alias_entries[@]}"; do
        [[ "$entry" =~ ^([A-Za-z][A-Za-z0-9_-]{0,39})=([A-Za-z0-9._/:-]+)$ ]] \
            || { echo "--model-aliases must be name=model entries separated by semicolons" >&2; exit 1; }
        alias_name="${BASH_REMATCH[1]}"; alias_model="${BASH_REMATCH[2]}"
        [[ -z "${MODEL_ALIAS_TARGETS[$alias_name]+x}" ]] \
            || { echo "duplicate model alias: $alias_name" >&2; exit 1; }
        MODEL_ALIAS_TARGETS[$alias_name]="$alias_model"
    done
fi
resolve_model_ref() {
    local ref="$1" name
    if [[ "$ref" == @* ]]; then
        name="${ref#@}"
        [[ -n "${MODEL_ALIAS_TARGETS[$name]+x}" ]] \
            || { echo "unknown model alias: $ref" >&2; return 1; }
        printf '%s\n' "${MODEL_ALIAS_TARGETS[$name]}"
    else
        printf '%s\n' "$ref"
    fi
}

AUDIT_MODELS_REQUESTED="$AUDIT_MODELS"
JUDGE_MODEL_REQUESTED="$JUDGE_MODEL"
REAUDIT_MODEL_REQUESTED="$REAUDIT_MODEL"
TIEBREAK_MODEL_REQUESTED="$TIEBREAK_MODEL"
FINAL_AUDIT_MODEL_REQUESTED="$FINAL_AUDIT_MODEL"
FINAL_JUDGE_MODEL_REQUESTED="$FINAL_JUDGE_MODEL"
IFS=',' read -ra requested_models <<< "$AUDIT_MODELS"
MODEL_LIST=()
for ref in "${requested_models[@]}"; do
    resolved="$(resolve_model_ref "$ref")"
    MODEL_LIST+=("$resolved")
    [[ "$ref" == @* ]] && ACTIVE_MODEL_ALIAS_BY_ID[$resolved]="${ref#@}"
done
AUDIT_MODELS="$(IFS=,; echo "${MODEL_LIST[*]}")"
JUDGE_MODEL="$(resolve_model_ref "$JUDGE_MODEL")"
REAUDIT_MODEL="$(resolve_model_ref "$REAUDIT_MODEL")"
TIEBREAK_MODEL="$(resolve_model_ref "$TIEBREAK_MODEL")"
FINAL_AUDIT_MODEL="$(resolve_model_ref "$FINAL_AUDIT_MODEL")"
FINAL_JUDGE_MODEL="$(resolve_model_ref "$FINAL_JUDGE_MODEL")"
for pair in \
    "$JUDGE_MODEL_REQUESTED"$'\t'"$JUDGE_MODEL" \
    "$REAUDIT_MODEL_REQUESTED"$'\t'"$REAUDIT_MODEL" \
    "$TIEBREAK_MODEL_REQUESTED"$'\t'"$TIEBREAK_MODEL" \
    "$FINAL_AUDIT_MODEL_REQUESTED"$'\t'"$FINAL_AUDIT_MODEL" \
    "$FINAL_JUDGE_MODEL_REQUESTED"$'\t'"$FINAL_JUDGE_MODEL"; do
    ref="${pair%%$'\t'*}"; resolved="${pair#*$'\t'}"
    [[ "$ref" == @* ]] && ACTIVE_MODEL_ALIAS_BY_ID[$resolved]="${ref#@}"
done
FREE_MODEL_LIST=()
if [[ -n "$FREE_MODELS" ]]; then
    IFS=',' read -ra requested_free_models <<< "$FREE_MODELS"
    for ref in "${requested_free_models[@]}"; do
        resolved="$(resolve_model_ref "$ref")"
        FREE_MODEL_LIST+=("$resolved")
        [[ "$ref" == @* ]] && ACTIVE_MODEL_ALIAS_BY_ID[$resolved]="${ref#@}"
    done
fi

# Accept 0.1 through 1.0 inclusive, with any number of trailing zeros. The first
# decimal digit of the 0.x form must be 1-9, so 0.00-0.09 (below the minimum, and
# enough to zero the audit budget) is refused. A syntactic allowlist, because
# the value reaches python3 -c strings below.
if [[ ! "$AUDIT_BUDGET_SHARE" =~ ^(0\.[1-9][0-9]*|1(\.0+)?)$ ]]; then
    echo "--audit-budget-share must be between 0.1 and 1.0, got '$AUDIT_BUDGET_SHARE'" >&2
    exit 1
fi
[[ "$RUNS_PER_DAY" =~ ^0*[1-9][0-9]*$ ]] \
    || { echo "--runs-per-day must be a whole number of at least 1, got '$RUNS_PER_DAY'" >&2; exit 1; }
[[ "$ESCALATIONS_PER_RUN" =~ ^[0-9]+$ ]] \
    || { echo "--escalations-per-run must be a whole number, got '$ESCALATIONS_PER_RUN'" >&2; exit 1; }

# The updated-vs-seed split. Accepts 0 through 1 inclusive: 1.0 is updated-only
# (the seed never runs), 0.0 is seed-only. Read as a float in discover_packages,
# not interpolated into code, but validated here so a bad value fails fast.
if [[ ! "$UPDATED_SHARE" =~ ^(0(\.[0-9]+)?|1(\.0+)?)$ ]]; then
    echo "--updated-share must be between 0 and 1, got '$UPDATED_SHARE'" >&2
    exit 1
fi

mkdir -p "$PIPELINE_DIR" "$DATA_DIR/bulk-reports" "$DATA_DIR/judge"

# The configuration this run resolved to, for anything that wants to know
# what is actually in use: the models come from defaults in this file unless
# a flag overrode them, and nothing outside this process can see that
# otherwise. The ops page reads this to name the models in each seat --
# and calls it "the default", so ONLY an unshaped run may write it. A
# shaped run (named packages, counts, escalation, advisory, a manual
# budget) carries one-off overrides; recording those here once made the
# ops page present a single free-model test run as the standing audit
# seat, which read as "something changed the default".
if [[ "$ADVISORY" != "true" && -z "$PACKAGES" && -z "$PACKAGES_FILE" \
      && -z "$ESCALATE" && "$ESCALATE_PENDING" != "true" && -z "$RUN_BUDGET" \
      && "$UPDATED_COUNT" -eq 0 && "$SEED_COUNT" -eq 0 ]]; then
PIPE_AUDIT_MODELS="$AUDIT_MODELS" PIPE_JUDGE_MODEL="$JUDGE_MODEL" PIPE_REAUDIT_MODEL="$REAUDIT_MODEL" \
PIPE_TIEBREAK_MODEL="$TIEBREAK_MODEL" PIPE_FINAL_AUDIT_MODEL="$FINAL_AUDIT_MODEL" \
PIPE_FINAL_JUDGE_MODEL="$FINAL_JUDGE_MODEL" PIPE_MODEL_ALIASES="$MODEL_ALIASES" \
PIPE_AUDIT_MODELS_REF="$AUDIT_MODELS_REQUESTED" PIPE_JUDGE_MODEL_REF="$JUDGE_MODEL_REQUESTED" \
PIPE_REAUDIT_MODEL_REF="$REAUDIT_MODEL_REQUESTED" PIPE_TIEBREAK_MODEL_REF="$TIEBREAK_MODEL_REQUESTED" \
PIPE_FINAL_AUDIT_MODEL_REF="$FINAL_AUDIT_MODEL_REQUESTED" PIPE_FINAL_JUDGE_MODEL_REF="$FINAL_JUDGE_MODEL_REQUESTED" \
PIPE_DAILY_BUDGET="$DAILY_BUDGET" PIPE_JOBS="$JOBS" PIPE_OUT="$PIPELINE_DIR/effective.json" \
PIPE_RUNS_PER_DAY="$RUNS_PER_DAY" PIPE_ESCALATIONS_PER_RUN="$ESCALATIONS_PER_RUN" \
python3 - <<'PY'
import datetime, json, os
e = os.environ
out = {
    "AUR_SLEUTH_AUDIT_MODELS": e["PIPE_AUDIT_MODELS"],
    "AUR_SLEUTH_JUDGE_MODEL": e["PIPE_JUDGE_MODEL"],
    "AUR_SLEUTH_REAUDIT_MODEL": e["PIPE_REAUDIT_MODEL"],
    "AUR_SLEUTH_TIEBREAK_MODEL": e["PIPE_TIEBREAK_MODEL"],
    "AUR_SLEUTH_FINAL_AUDIT_MODEL": e["PIPE_FINAL_AUDIT_MODEL"],
    "AUR_SLEUTH_FINAL_JUDGE_MODEL": e["PIPE_FINAL_JUDGE_MODEL"],
    "AUR_SLEUTH_MODEL_ALIASES": e["PIPE_MODEL_ALIASES"],
    "AUR_SLEUTH_AUDIT_MODELS_REF": e["PIPE_AUDIT_MODELS_REF"],
    "AUR_SLEUTH_JUDGE_MODEL_REF": e["PIPE_JUDGE_MODEL_REF"],
    "AUR_SLEUTH_REAUDIT_MODEL_REF": e["PIPE_REAUDIT_MODEL_REF"],
    "AUR_SLEUTH_TIEBREAK_MODEL_REF": e["PIPE_TIEBREAK_MODEL_REF"],
    "AUR_SLEUTH_FINAL_AUDIT_MODEL_REF": e["PIPE_FINAL_AUDIT_MODEL_REF"],
    "AUR_SLEUTH_FINAL_JUDGE_MODEL_REF": e["PIPE_FINAL_JUDGE_MODEL_REF"],
    "AUR_SLEUTH_DAILY_BUDGET": e["PIPE_DAILY_BUDGET"],
    "AUR_SLEUTH_RUNS_PER_DAY": e["PIPE_RUNS_PER_DAY"],
    "AUR_SLEUTH_ESCALATIONS_PER_RUN": e["PIPE_ESCALATIONS_PER_RUN"],
    "AUR_SLEUTH_JOBS": e["PIPE_JOBS"],
    "written": datetime.datetime.now(datetime.timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ"),
}
tmp = e["PIPE_OUT"] + ".tmp"
with open(tmp, "w") as f:
    json.dump(out, f, separators=(",", ":"), sort_keys=True)
os.replace(tmp, e["PIPE_OUT"])
PY
fi

log() { echo "[$(date '+%H:%M:%S')] $*"; }

# --- Daily spend tracking ---
TODAY=$(date +%Y-%m-%d)
SPEND_FILE="$PIPELINE_DIR/spend-${TODAY}.log"
touch "$SPEND_FILE"

# The ledger is one cost per line. A line from a run the day's budget does
# not gate -- a manual run under its own --run-budget, or a person's
# escalation run -- carries the word "manual" after the cost, and the
# scheduled runs' arithmetic leaves those lines out: a person pressing Run
# must not spend the schedule's day. The ops page sums the first field of
# every line, so the tag costs it nothing.
get_daily_spent() {
    awk '{s+=$1} END {printf "%.6f", s+0}' "$SPEND_FILE"
}
scheduled_spent() {
    awk '$2 != "manual" {s+=$1} END {printf "%.6f", s+0}' "$SPEND_FILE"
}
manual_spent() {
    awk '$2 == "manual" {s+=$1} END {printf "%.6f", s+0}' "$SPEND_FILE"
}

# True when the day's ledger gates this run and this run's spend counts
# toward it: the scheduled run and anything shaped like one. A run with its
# own ceiling, or an escalation a person asked for, is neither gated by the
# day nor charged to it.
day_gated() {
    [[ -z "$RUN_BUDGET" && -z "$ESCALATE" && "$ESCALATE_PENDING" != "true" ]]
}
LEDGER_TAG=""
day_gated || LEDGER_TAG=" manual"

# What was already on the ledger when this run started: the baseline a
# manual run's own ceiling is measured from.
RUN_START_SPENT="$(get_daily_spent)"

# The spend the gates compare. A day-gated run answers for the schedule's
# day; a manual run (--run-budget) answers only for itself -- the person
# asked, so the schedule's spending must not refuse them.
gate_spent() {
    if day_gated; then
        scheduled_spent
    else
        python3 -c "print('%.6f' % max(0, $(get_daily_spent) - $RUN_START_SPENT))"
    fi
}

record_cost() {
    (
        flock -x 201
        echo "$1$LEDGER_TAG" >> "$SPEND_FILE"
    ) 201>"$SPEND_FILE.lock"
}

# This run's ceilings. A day-gated run gets its slice of the day (see the
# RUNS_PER_DAY comment and bench/budget-slice.py); a manual run's slice is
# its whole --run-budget, which the same arithmetic yields for one run of a
# one-run day with nothing spent. A person's escalation run carries no
# ceiling and nothing gates it; it gets the day's budget as a nominal one
# so its summary has a number to report against. The hour is the
# container's local clock, the same clock that names the ledger file.
if day_gated; then
    read -r GATE_TOTAL AUDIT_BUDGET RUN_SLICE RUNS_REMAINING < <(
        python3 bench/budget-slice.py --daily "$DAILY_BUDGET" --spent "$(scheduled_spent)" \
            --runs-per-day "$RUNS_PER_DAY" --hour "$(date +%H)" --share "$AUDIT_BUDGET_SHARE")
else
    read -r GATE_TOTAL AUDIT_BUDGET RUN_SLICE RUNS_REMAINING < <(
        python3 bench/budget-slice.py --daily "${RUN_BUDGET:-$DAILY_BUDGET}" --spent 0 \
            --runs-per-day 1 --hour 0 --share "$AUDIT_BUDGET_SHARE")
fi
[[ "$GATE_TOTAL" =~ ^[0-9]+\.[0-9]+$ && "$AUDIT_BUDGET" =~ ^[0-9]+\.[0-9]+$ ]] \
    || { echo "bench/budget-slice.py gave no slice; refusing to guess a budget" >&2; exit 1; }

# The `cost:` field from a report's frontmatter; 0 when the report or the
# field is missing.
report_cost() {
    local cost
    cost=$(sed -n '/^---$/,/^---$/p' "$1" 2>/dev/null \
        | grep "^cost:" | head -1 | sed 's/^cost: *//' || true)
    echo "${cost:-0}"
}

# What is left of this run's slice (a manual run: of its ceiling).
budget_remaining() {
    python3 -c "print(max(0, $GATE_TOTAL - $(gate_spent)))"
}

# What is left of the schedule's day, after every run so far.
day_remaining() {
    python3 -c "print(max(0, $DAILY_BUDGET - $(scheduled_spent)))"
}

# --- The free tier's daily cap -----------------------------------------------
# An audit whose provider said its per-DAY allowance is spent exits 4 and
# leaves the reset epoch in this file (aur-sleuth reads the path from the
# environment). While that moment is ahead, the free work -- the advisory
# sweep and the free voices -- is skipped outright instead of probing a dead
# cap: each probe still clones and sources a PKGBUILD before its first call
# fails, and one scheduled run spent 40 minutes doing exactly that. The
# two-dry-batches breaker below stays, for a provider that does not say.
QUOTA_RESET_FILE="$PIPELINE_DIR/free-quota-reset"
export AUR_SLEUTH_QUOTA_RESET_FILE="$QUOTA_RESET_FILE"

# Prints the reset epoch while it is still ahead; nothing otherwise.
free_quota_reset() {
    local epoch
    epoch=$(cat "$QUOTA_RESET_FILE" 2>/dev/null || true)
    [[ "$epoch" =~ ^[0-9]+$ ]] || return 0
    (( epoch > $(date +%s) )) || return 0
    echo "$epoch"
}

free_quota_until() {
    date -u -d "@$1" +%Y-%m-%dT%H:%M:%SZ
}

# True when this run's audits are all free work that a spent cap makes
# pointless: an advisory run, while the reset is ahead.
advisory_quota_spent() {
    [[ "$ADVISORY" == "true" && -n "$(free_quota_reset)" ]]
}

# How far past its slice this run's gate spend is. Nonzero is expected, not
# an error: the judge and escalation phases are allowed to overrun. This is
# the number to watch when tuning AUDIT_BUDGET_SHARE and ESCALATIONS_PER_RUN.
budget_overrun() {
    python3 -c "print(max(0, round($(gate_spent) - $GATE_TOTAL, 6)))"
}

# True when the gate spend has reached a ceiling. With no argument the
# ceiling is the whole slice; the audit phase passes its own, lower one. A
# day-gated run on a spent day has a slice of zero, so its gate is where it
# already stands, and this is true at once.
is_over_budget() {
    local ceiling="${1:-$GATE_TOTAL}"
    python3 -c "import sys; sys.exit(0 if $(gate_spent) >= $ceiling else 1)"
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
        # bench/audited-index.py applies the soft-failure rule: a package
        # whose every audit failed is not audited, so discovery retries it.
        # An advisory run also skips what already has advisory coverage, so
        # a recurring sweep digs deeper instead of re-covering the head.
        local index_flags=()
        [[ "$ADVISORY" == "true" ]] && index_flags+=(--include-advisory)
        git show "${REPORTS_BRANCH}:_dashboard/data.json" \
            | python3 bench/audited-index.py ${index_flags[@]+"${index_flags[@]}"}
    else
        # No dashboard yet — scan branch directly
        git ls-tree -r "$REPORTS_BRANCH" --name-only 2>/dev/null \
            | grep -v '^_dashboard/' | grep -v '^index.html' | grep -v '^\.nojekyll' \
            | while read -r path; do
                pkg="${path%%/*}"
                fm=$(git show "${REPORTS_BRANCH}:${path}" 2>/dev/null \
                    | sed -n '/^---$/,/^---$/p')
                # Every path on the branch comes through here, judge.json
                # and dashboard data included, and those carry no pkgver at
                # all. grep matching nothing exits 1, and under pipefail
                # that would end the whole bootstrap; the empty answer is
                # the wanted one, and the test below already expects it.
                pkgver=$(printf '%s\n' "$fm" | grep '^pkgver:' | head -1 | sed 's/^pkgver: *//') || true
                pkgrel=$(printf '%s\n' "$fm" | grep '^pkgrel:' | head -1 | sed 's/^pkgrel: *//') || true
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
    UPDATED_COUNT="$UPDATED_COUNT" \
    SEED_COUNT="$SEED_COUNT" \
    AUDITED_INDEX="$audited_index" \
    python3 << 'PYEOF'
import json, gzip, os, sys, time

metadata_cache = os.environ.get("METADATA_CACHE", "")
min_votes = int(os.environ["MIN_VOTES"])
lookback_hours = int(os.environ["LOOKBACK_HOURS"])
seed_top = int(os.environ.get("SEED_TOP", "0"))
updated_share = float(os.environ.get("UPDATED_SHARE", "0.8"))
# Sized runs: a positive count caps its stream outright. The seed count also
# stands in for SEED_TOP, so "Y popular packages" works even when the seed is
# configured off.
updated_count = int(os.environ.get("UPDATED_COUNT", "0"))
seed_count = int(os.environ.get("SEED_COUNT", "0"))
if seed_count > 0:
    seed_top = seed_count
elif updated_count > 0:
    # A sized updated stream with no sized seed means exactly those packages.
    # Without this, the seed still rode along as a fallback tail, and the
    # advisory sweep -- whose $0 audits never trip the budget -- audited the
    # whole tail: a 40-package sweep became 500.
    seed_top = 0
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
if updated_count > 0:
    updated = updated[:updated_count]

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
    # "free" runs under the short free-voice deadline; anything else gets the
    # real audit timeout.
    local tier="${3:-paid}"
    local deadline="$AUDIT_TIMEOUT"
    [[ "$tier" == "free" ]] && deadline="$FREE_TIMEOUT"
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
    # The deployment never translates verdicts: the pin is explicit so a
    # container-wide AUR_SLEUTH_TRANSLATE_VERDICTS=1 cannot leak into audits.
    AUDIT_FAILURE_FATAL=true AUR_SLEUTH_ASCII_ICONS=1 \
        AUR_SLEUTH_TRANSLATE_VERDICTS=0 \
        OPENAI_MODEL="$model" \
        AUR_SLEUTH_MODEL_ALIASES="$MODEL_ALIASES" \
        AUR_SLEUTH_MODEL_ALIAS="${ACTIVE_MODEL_ALIAS_BY_ID[$model]:-}" \
        AUR_SLEUTH_REPORT_DIR="$report_dir" \
        timeout --kill-after=30s "$deadline" \
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

    # 4 is aur-sleuth saying the provider's per-day allowance is spent; it
    # has noted the reset in QUOTA_RESET_FILE and withdrawn its report. The
    # loops read the note; here it is one more missing report.
    if [[ $rc -eq 4 ]]; then
        log "  [$pkg] $model: the free tier's daily cap is spent; no report"
        return 1
    fi

    if [[ ! -f "$report_file" ]]; then
        log "  [$pkg] No report produced by $model"
        return 1
    fi

    local result
    result=$(sed -n '/^---$/,/^---$/p' "$report_file" 2>/dev/null \
        | grep "^result:" | head -1 | sed 's/^result: *//' || true)

    # No frontmatter means no model answered: aur-sleuth removes such a stub
    # itself, so one here is a regression. It is treated as no report --
    # archive-report.sh would refuse it anyway, and judge.sh globs this
    # directory and would judge it.
    if [[ -z "$result" ]]; then
        rm -f "$report_file"
        log "  [$pkg] $model: report has no frontmatter, abandoning"
        return 1
    fi

    record_cost "$cost"

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
    # The free voices, in the same breath: they run beside the paid seats and
    # their shorter deadline means waiting for them never outlasts a real
    # audit. A throttled one leaves nothing behind, by the soft-failure rule.
    # While the free tier's daily cap is known to be spent they are not even
    # asked: the answer is known, and asking costs a clone.
    if [[ -z "$(free_quota_reset)" ]]; then
        for model in "${FREE_MODEL_LIST[@]}"; do
            run_audit "$pkg" "$model" free &
            pids+=($!)
        done
    fi
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

# --- Scout the model catalog -----------------------------------------------
# Code only, seconds, no API call; the operations page shows the result and a
# person decides what to benchmark. Runs even on a budget-exhausted day: it
# spends nothing, and the page's shortlist and spend shares should not go
# stale because the audits were done for the day. A missing catalog is fine.
run_scout() {
    [[ -f "$DATA_DIR/models-catalog.json" ]] || return 0
    log ""
    log "=== Scout Phase ==="
    python3 bench/scout.py --catalog "$DATA_DIR/models-catalog.json" \
        --out "$DATA_DIR/bench/scout.json" --bench-dir "$DATA_DIR/bench" \
        --data-dir "$DATA_DIR" \
        --seats "audit=$AUDIT_MODELS;judge=$JUDGE_MODEL,$FINAL_JUDGE_MODEL;reaudit=$REAUDIT_MODEL,$TIEBREAK_MODEL,$FINAL_AUDIT_MODEL" 2>&1 \
        || log "WARNING: the scout failed; the page keeps the old shortlist"
}

# --- The recurring free coverage: a child advisory run ----------------------
# After a scheduled full run (and only then: a shaped run is someone asking
# for something specific), sweep ADVISORY_SWEEP recently UPDATED packages
# with the free advisory models -- updated only, no popularity seed: the
# threat model is malice arriving in updates, so free coverage extends the
# paid run's reach down the updated list instead of re-reading the stale
# popular tail. The child run is advisory by construction -- its reports
# inform, never rule -- and free by model choice, so it runs even on a
# spent day under a nominal ceiling of its own. Its failure must never
# fail the run that carried it.
run_advisory_sweep() {
    [[ "$ADVISORY_SWEEP" -gt 0 ]] || return 0
    # Only piggyback on an unshaped run, and never on another advisory run:
    # the child gets --advisory-sweep 0 by default, so this cannot recurse.
    if [[ "$ADVISORY" == "true" || -n "$PACKAGES" || -n "$PACKAGES_FILE" \
          || -n "$ESCALATE" || "$ESCALATE_PENDING" == "true" || -n "$RUN_BUDGET" \
          || "$UPDATED_COUNT" -gt 0 || "$SEED_COUNT" -gt 0 ]]; then
        return 0
    fi
    log ""
    log "=== Advisory Sweep ==="
    # The cap is known to be spent: the sweep would clone and source up to
    # ADVISORY_SWEEP PKGBUILDs to hear "no" from the first call of each.
    local reset
    reset=$(free_quota_reset)
    if [[ -n "$reset" ]]; then
        log "The free tier's daily cap is spent until $(free_quota_until "$reset"); sweep skipped"
        return 0
    fi
    log "Free coverage pass: up to $ADVISORY_SWEEP recently updated package(s) with $ADVISORY_MODELS, informational only"
    if $DRY_RUN; then
        log "DRY RUN: sweep skipped"
        return 0
    fi
    local sweep_flags=(--advisory true --audit-models "$ADVISORY_MODELS"
        --updated-share 1.0 --updated-count "$ADVISORY_SWEEP" --run-budget 1
        --jobs "$JOBS" --audit-timeout "$AUDIT_TIMEOUT"
        --lookback-hours "$LOOKBACK_HOURS" --min-votes "$MIN_VOTES")
    $NO_PUSH && sweep_flags+=(--no-push)
    $SKIP_DASHBOARD && sweep_flags+=(--skip-dashboard)
    # Free tiers throttle per minute; a sweep is in no hurry, so its audits
    # retry through the blips (the client's exponential backoff) instead of
    # failing the file. The daily free-request cap still fails soft.
    AUR_SLEUTH_LLM_RETRIES="${AUR_SLEUTH_LLM_RETRIES:-5}" \
        bash bench/pipeline.sh "${sweep_flags[@]}" 2>&1 \
        || log "WARNING: the advisory sweep failed; the run that carried it is already complete"
}

# --- Escalation: one package, one fresh opinion, one fresh ruling ----------
# bench/judge.sh --escalate audits the package with the named model and then
# forces a judge ruling over every report there is. The audit's own cost is
# in its report, which the judge-cost sum below never sees; it is recorded
# here. (It was not, before: Sonnet's re-audits never reached the ledger.)
# A present report is this run's -- aur-sleuth truncates the file on open
# and withdraws it when no model answered, and judge.sh removes a timed-out
# one -- so its cost is never a stale one.
escalate_one() {
    local pkg="$1" model="$2" judge_model="${3:-$JUDGE_MODEL}"
    AUR_SLEUTH_MODEL_ALIASES="$MODEL_ALIASES" \
    AUR_SLEUTH_AUDIT_MODEL_ALIAS="${ACTIVE_MODEL_ALIAS_BY_ID[$model]:-}" \
    AUR_SLEUTH_JUDGE_MODEL_ALIAS="${ACTIVE_MODEL_ALIAS_BY_ID[$judge_model]:-}" \
    bash bench/judge.sh --package "$pkg" --escalate \
        --audit-model "$model" --judge-model "$judge_model" \
        --audit-timeout "$AUDIT_TIMEOUT" 2>&1
    local report="$DATA_DIR/bulk-reports/${model//\//-}/aur-sleuth-report-${pkg}.txt"
    if [[ -f "$report" ]]; then
        record_cost "$(report_cost "$report")"
    fi
}

ruling_model_for_audit() {
    local model="$1"
    if [[ "$model" == "$FINAL_AUDIT_MODEL" ]]; then
        printf '%s\n' "$FINAL_JUDGE_MODEL"
    else
        printf '%s\n' "$JUDGE_MODEL"
    fi
}

# --- Escalation rounds: settle what the judge phase left flagged ----------
# Each round asks bench/pending-escalations.py which packages are "look" by
# the page's own state rule, and which escalation model each has not yet
# heard from; then each gets escalate_one. A package the fresh ruling
# settles leaves the list; one that is still "look" gets the next round with
# the next model; after ESCALATION_CAP escalations (the state rule's own
# constant) it is "disputed", terminal, and never listed again -- so the
# rounds are bounded by the cap, not by this loop. Named packages get one
# round only: a person asked for one more look, not a campaign.
#
# The second argument caps how many escalations this call may start, empty
# for no cap. The scheduled phase passes ESCALATIONS_PER_RUN so a backlog
# drains over the day's runs; a person's own escalation run passes nothing.
run_escalation_rounds() {
    local named="${1:-}" cap="${2:-}"
    local rounds=3 started=0
    [[ -n "$named" ]] && rounds=1
    local pick_flags=(--models "$REAUDIT_MODEL,$TIEBREAK_MODEL,$FINAL_AUDIT_MODEL")
    [[ -n "$named" ]] && pick_flags+=(--packages "$named")
    local round line pkg model
    local notes="$PIPELINE_DIR/.escalation-notes"
    for (( round = 1; round <= rounds; round++ )); do
        local work=()
        while IFS= read -r line; do
            [[ -n "$line" ]] && work+=("$line")
        done < <(python3 bench/pending-escalations.py "${pick_flags[@]}" 2>"$notes")
        while IFS= read -r line; do log "  $line"; done < "$notes"
        rm -f "$notes"
        if [[ ${#work[@]} -eq 0 ]]; then
            log "Round $round: nothing needs a second look."
            break
        fi
        log "Round $round: ${#work[@]} package(s)"
        for line in "${work[@]}"; do
            if [[ -n "$cap" && "$started" -ge "$cap" ]]; then
                log "Escalation cap reached ($cap this run); the rest wait for the next run"
                return 0
            fi
            pkg="${line%%$'\t'*}"
            model="${line#*$'\t'}"
            local ruling_model
            ruling_model="$(ruling_model_for_audit "$model")"
            log "--- Escalating $pkg with $model; ruling with $ruling_model ---"
            escalate_one "$pkg" "$model" "$ruling_model"
            started=$(( started + 1 ))
        done
    done
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
    if [[ -n "$RUN_BUDGET" ]]; then
        log "Manual run: its own \$$RUN_BUDGET ceiling gates it, not the day's ledger; the ledger still records the spend"
    fi
    if day_gated; then
        log "This run's slice: \$$RUN_SLICE of the \$$(day_remaining) left today, with $RUNS_REMAINING run(s) still to come; up to $ESCALATIONS_PER_RUN escalation(s)"
    fi
    log "Audit phase stops at \$$AUDIT_BUDGET; judge and escalations run to completion even past the slice"
    if [[ "$SEED_TOP" -gt 0 ]]; then
        log "Candidates: updated + top $SEED_TOP by popularity, interleaved at updated-share=$UPDATED_SHARE"
    fi
    log "Models: ${MODEL_LIST[*]} | Judge: $JUDGE_MODEL | Escalation: $REAUDIT_MODEL, then $TIEBREAK_MODEL | Final: $FINAL_AUDIT_MODEL + $FINAL_JUDGE_MODEL judge"
    if [[ ${#FREE_MODEL_LIST[@]} -gt 0 ]]; then
        log "Free voices: ${FREE_MODEL_LIST[*]} (best effort, ${FREE_TIMEOUT}s deadline, failures are soft)"
    fi
    if [[ "$ADVISORY" == "true" ]]; then
        log "ADVISORY RUN: reports are informational only -- no judge, no escalation, no state changes, now or later"
    fi
    if [[ "$ADVISORY_SWEEP" -gt 0 ]]; then
        log "Advisory sweep configured: $ADVISORY_SWEEP package(s) with $ADVISORY_MODELS after an unshaped run"
    fi
    if [[ -n "$(free_quota_reset)" ]]; then
        log "Free tier: the daily cap is spent until $(free_quota_until "$(free_quota_reset)"); free voices and the sweep sit this run out"
    fi
    log "Daily spend so far: \$$(scheduled_spent) scheduled of \$$DAILY_BUDGET, plus \$$(manual_spent) manual"

    # Escalation is its own run: no discovery, no audit loop. The same rounds
    # the scheduled run ends with (run_escalation_rounds), over the named
    # packages or everything worth a closer look. It is judge work, so it has
    # top priority in the budget: an explicit escalation runs even on a spent
    # day, and the overrun rules above apply.
    if [[ -n "$ESCALATE" || "$ESCALATE_PENDING" == "true" ]]; then
        log ""
        log "=== Escalation ==="
        local esc_marker="$PIPELINE_DIR/.escalate-marker"
        touch "$esc_marker"
        run_escalation_rounds "$ESCALATE"
        local esc_cost
        esc_cost=$(sum_judge_costs_since "$esc_marker")
        if python3 -c "import sys; sys.exit(0 if float('$esc_cost') > 0 else 1)" 2>/dev/null; then
            record_cost "$esc_cost"
            log "Escalation cost: \$$esc_cost"
        fi
        push_reports
        if ! $SKIP_DASHBOARD; then
            log ""
            log "=== Dashboard Phase ==="
            python3 bench/generate-dashboard.py 2>&1
            push_reports
        fi
        run_scout
        log ""
        log "=== Escalation Complete ==="
        log "Daily spend: \$$(scheduled_spent) scheduled / \$$DAILY_BUDGET, plus \$$(manual_spent) manual (this run's included)"
        return 0
    fi

    if is_over_budget; then
        log "Daily budget already exhausted (\$$(gate_spent) >= \$$DAILY_BUDGET). Exiting."
        # The shortlist and the spend shares still refresh: the scout costs
        # nothing, and the page must not go stale on a spent day. Neither
        # does the free coverage stop: the sweep spends nothing by definition.
        run_scout
        run_advisory_sweep
        return 0
    fi

    local candidates_file="$PIPELINE_DIR/candidates.txt"

    if [[ -n "$PACKAGES" ]]; then
        # Named packages skip discovery and its already-audited filter both:
        # naming a package is asking for a fresh audit of it.
        log "Auditing the named packages: $PACKAGES"
        tr ',' '\n' <<< "$PACKAGES" > "$candidates_file"
    elif [[ -n "$PACKAGES_FILE" ]]; then
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
        local dry_batches=0

        while IFS= read -r pkg; do
            if is_over_budget "$AUDIT_BUDGET"; then
                log "Audit budget reached (\$$(gate_spent) >= \$$AUDIT_BUDGET) after $audited_n packages"
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

                # Free-tier circuit breaker, advisory runs only. An audit
                # always leaves a report unless every one of its LLM calls
                # failed, so a whole batch with no report means the free tier
                # is refusing everything -- a spent daily cap, not a blip
                # (blips are retried inside each audit). Two dry batches in a
                # row, and the rest of the list would only hammer the same
                # wall for an hour; one scheduled run died on its deadline
                # doing exactly that.
                if [[ "$ADVISORY" == "true" ]]; then
                    local produced=false p m
                    for p in "${batch[@]}"; do
                        for m in "${MODEL_LIST[@]}"; do
                            if [[ -f "$DATA_DIR/bulk-reports/${m//\//-}/aur-sleuth-report-${p}.txt" ]]; then
                                produced=true
                                break 2
                            fi
                        done
                    done
                    if $produced; then
                        dry_batches=0
                    else
                        dry_batches=$(( dry_batches + 1 ))
                    fi
                fi
                batch=()

                # The provider said when its cap resets: stop now, no
                # second batch to confirm what it already told us.
                if advisory_quota_spent; then
                    log "The free tier's daily cap is spent until $(free_quota_until "$(free_quota_reset)") -- stopping after $audited_n package(s)"
                    break
                fi

                if (( dry_batches >= 2 )); then
                    log "Two audit batches produced no report at all; the free tier looks exhausted -- stopping after $audited_n package(s)"
                    break
                fi

                # Push periodically
                if (( audited_n % 20 == 0 )); then
                    push_reports
                fi
            fi
        done < <(head -n 500 "$candidates_file")

        # Flush remaining batch
        if [[ ${#batch[@]} -gt 0 ]] && ! is_over_budget "$AUDIT_BUDGET" && ! advisory_quota_spent; then
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

    # Step 5: Judge triggered packages. No budget gate: judge work has top
    # priority, and the audit phase above is already capped to leave room.
    # See the AUDIT_BUDGET_SHARE comment for why this may overrun the budget.
    if ! $SKIP_JUDGE; then
        log ""
        log "=== Judge Phase ==="
        local judge_marker="$PIPELINE_DIR/.judge-start-marker"
        touch "$judge_marker"

        AUR_SLEUTH_JUDGE_MODEL_ALIAS="${ACTIVE_MODEL_ALIAS_BY_ID[$JUDGE_MODEL]:-}" \
        bash bench/judge.sh --judge-model "$JUDGE_MODEL" 2>&1

        local judge_cost
        judge_cost=$(sum_judge_costs_since "$judge_marker")
        record_cost "$judge_cost"
        log "Judge phase cost: \$$judge_cost"

        # Step 6: Escalate what the judge left flagged, in rounds, until each
        # package settles or hits the cap. Same rule as the judge: no budget
        # gate. This phase is what settles a flag, so skipping it is the most
        # expensive saving there is -- one run did exactly that and left every
        # flagged package in limbo for a day. Before the rounds, a re-audit
        # was one audit with no ruling to weigh it: the ruling came a run
        # later, if a run with budget ever came, and pcloud-drive waited on
        # one that never did.
        log ""
        log "=== Escalation Phase ==="
        local reaudit_marker="$PIPELINE_DIR/.reaudit-start-marker"
        touch "$reaudit_marker"

        if [[ "$ESCALATIONS_PER_RUN" -eq 0 ]]; then
            log "Escalations are off (--escalations-per-run 0); flagged packages wait"
        else
            run_escalation_rounds "" "$ESCALATIONS_PER_RUN"
        fi

        # The forced rulings' cost; each escalation audit's own cost is
        # recorded by escalate_one as it lands.
        local reaudit_cost
        reaudit_cost=$(sum_judge_costs_since "$reaudit_marker")
        if python3 -c "import sys; sys.exit(0 if float('$reaudit_cost') > 0 else 1)" 2>/dev/null; then
            record_cost "$reaudit_cost"
            log "Escalation phase judge cost: \$$reaudit_cost"
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

    # Step 8: Scout the model catalog for candidates that undercut a seat.
    run_scout

    # Step 9: the recurring free coverage, when configured. Last, so the paid
    # work of the slot is settled and pushed before the $0 pass begins.
    run_advisory_sweep

    # Summary
    log ""
    log "=== Pipeline Complete ==="
    log "Daily spend: \$$(scheduled_spent) scheduled / \$$DAILY_BUDGET, plus \$$(manual_spent) manual"
    if [[ -n "$RUN_BUDGET" ]]; then
        log "This run: \$$(gate_spent) / \$$RUN_BUDGET"
    else
        log "This run's slice: \$$RUN_SLICE; \$$(day_remaining) left for the $(( RUNS_REMAINING - 1 )) run(s) after it today"
    fi
    log "Budget remaining: \$$(budget_remaining)"
    local overrun
    overrun=$(budget_overrun)
    if python3 -c "import sys; sys.exit(0 if float('$overrun') > 0 else 1)" 2>/dev/null; then
        log "Budget overrun: \$$overrun past this run's slice (judge and escalations run past it by design; tune --audit-budget-share or --escalations-per-run when this trends up)"
    fi
    if $NO_PUSH && ! $DRY_RUN; then
        log "--no-push: $REPORTS_BRANCH left unpushed for a separate publish step"
    fi

    # Append to run log. run_budget marks manual runs, so the overrun trend
    # for tuning the share can be read from the scheduled runs alone.
    echo "$(date -u +%Y-%m-%dT%H:%M:%SZ) spent=\$$(get_daily_spent) scheduled=\$$(scheduled_spent) budget=\$$DAILY_BUDGET slice=\$$RUN_SLICE overrun=\$$overrun run_budget=\$${RUN_BUDGET:-0} candidates=$candidate_count" \
        >> "$PIPELINE_DIR/runs.log"
}

main "$@"
