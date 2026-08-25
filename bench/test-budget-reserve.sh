#!/usr/bin/env bash
# Test how a run's slice of the daily budget is spent, and that the phases
# after the audit loop are never gated on it.
#
# A scheduled run's ceiling is its slice of the day (bench/budget-slice.py;
# bench/test-budget-slice.sh pins the arithmetic). Within the slice, the
# audit loop stops at --audit-budget-share; judge and escalation work has
# top priority and runs to completion even past the slice, and the overrun
# is logged and written to runs.log for trend-watching. A manual run spends
# from its own ceiling and is charged to the ledger as "manual", which the
# schedule's arithmetic leaves out. The clock cannot be pinned here, so the
# runs that must be deterministic pass --runs-per-day 1: one run of a
# one-run day gets everything left, whatever the hour.
#
# Costs nothing to run: no audit is ever started, and the judge finds no
# reports to judge, so no completion is ever requested.
#
# Usage: bash bench/test-budget-reserve.sh [-q]
set -euo pipefail

cd "$(dirname "$0")/.."

QUIET=false
[[ "${1:-}" == "-q" ]] && QUIET=true

fails=0
ok()  { $QUIET || printf '  ok    %s\n' "$1"; }
bad() { printf '  FAIL  %s\n' "$1"; fails=$(( fails + 1 )); }

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT
# Every git command the pipeline runs -- the judge's archive, the escalation
# worklist's read of the reports branch -- goes to a throwaway repository,
# never this checkout. A developer's checkout carries a REAL audit-reports
# branch, and an escalation phase that read it once found ten flagged
# packages and audited them on the developer's machine. Audits execute
# PKGBUILDs; CLAUDE.md says cluster only.
git init -q --bare "$tmp/git"
export GIT_DIR="$tmp/git"

today="$(date +%Y-%m-%d)"

# A judge report with a future mtime makes sum_judge_costs_since bill a
# judge cost without any API call. Both phase markers count it, so a run
# records it twice; the exact total is an artifact of the trick, and the
# checks below look at the shape of what is recorded, not its value.
fake_judge_cost() {
    printf '{"_judge_usage": {"cost": 0.50}}\n' > "$1/judge/fake.json"
    touch -d "@$(( $(date +%s) + 3600 ))" "$1/judge/fake.json"
}

echo "== the share is validated =="
# 0.05 and 0.00 are below the minimum; the old glob accepted them, and 0.00
# silently zeroed the audit budget. A bare 0. is not a number either.
for bad_share in "abc" "2.0" "-0.5" '1) or 1' "0.05" "0.00" "0." "0.1.1"; do
    if bash bench/pipeline.sh --audit-budget-share "$bad_share" \
            --packages-file /dev/null --dry-run --skip-judge --skip-dashboard \
            >/dev/null 2>&1; then
        bad "should have refused --audit-budget-share '$bad_share'"
    else
        ok "refused --audit-budget-share '$bad_share'"
    fi
done
# The whole range with trailing zeros is legitimate. 1.00 used to be refused.
for good_share in "0.1" "0.10" "0.75" "0.999" "1" "1.0" "1.00"; do
    if AUR_SLEUTH_DATA_DIR="$tmp/share-ok" bash bench/pipeline.sh \
            --audit-budget-share "$good_share" \
            --packages-file /dev/null --dry-run --skip-judge --skip-dashboard \
            --no-push >/dev/null 2>&1; then
        ok "accepted --audit-budget-share '$good_share'"
    else
        bad "should have accepted --audit-budget-share '$good_share'"
    fi
done

echo "== the run counts and the escalation cap are validated =="
for bad_n in "0" "abc" "-1" "1.5" '1) or 1'; do
    if bash bench/pipeline.sh --runs-per-day "$bad_n" \
            --packages-file /dev/null --dry-run --skip-judge --skip-dashboard \
            >/dev/null 2>&1; then
        bad "should have refused --runs-per-day '$bad_n'"
    else
        ok "refused --runs-per-day '$bad_n'"
    fi
done
for bad_n in "abc" "-1" "1.5"; do
    if bash bench/pipeline.sh --escalations-per-run "$bad_n" \
            --packages-file /dev/null --dry-run --skip-judge --skip-dashboard \
            >/dev/null 2>&1; then
        bad "should have refused --escalations-per-run '$bad_n'"
    else
        ok "refused --escalations-per-run '$bad_n'"
    fi
done

echo "== the ceiling is reported and computed =="
out="$(AUR_SLEUTH_DATA_DIR="$tmp/d1" bash bench/pipeline.sh \
        --daily-budget 2.00 --runs-per-day 1 --packages-file /dev/null \
        --dry-run --skip-judge --skip-dashboard --no-push 2>&1 || true)"
# shellcheck disable=SC2016  # matching a literal dollar sign in the log line
if grep -q 'Audit phase stops at \$1.6' <<< "$out"; then
    ok "a \$2.00 budget, one run a day, stops the audit at \$1.6"
else
    bad "expected an audit ceiling of \$1.6; got: $(grep -m1 'Audit phase' <<< "$out")"
fi
# shellcheck disable=SC2016  # literal dollar signs in the log line
if grep -q "This run's slice: \$2.000000 of the \$2.0 left today, with 1 run(s) still to come" <<< "$out"; then
    ok "the header names the slice, the day's room, and the runs still to come"
else
    bad "no slice line; got: $(grep -m1 'slice' <<< "$out" || echo nothing)"
fi
# shellcheck disable=SC2016  # literal dollar signs in the log line
if grep -q 'Daily spend so far: \$0.000000 scheduled of \$2.00, plus \$0.000000 manual' <<< "$out"; then
    ok "the header splits scheduled from manual spend"
else
    bad "no split spend line; got: $(grep -m1 'spend so far' <<< "$out" || echo nothing)"
fi

echo "== the reserve is a share of the slice, not of the day =="
# 1.70 of 2.00 spent: the one remaining run's slice is the 0.30 left, and
# the audit loop may take 0.8 of that. Before the slices, the audit ceiling
# was a fixed 1.60 and this run would have audited nothing.
data="$tmp/d2"
mkdir -p "$data/pipeline"
echo "1.70" > "$data/pipeline/spend-$today.log"
out="$(AUR_SLEUTH_DATA_DIR="$data" bash bench/pipeline.sh \
        --daily-budget 2.00 --runs-per-day 1 --packages-file /dev/null \
        --dry-run --skip-judge --skip-dashboard --no-push 2>&1 || true)"
# shellcheck disable=SC2016  # literal dollar sign in the log line
if grep -q 'Audit phase stops at \$1.94' <<< "$out"; then
    ok "with \$0.30 left, the audit may spend 0.8 of it: stops at \$1.94"
else
    bad "expected an audit ceiling of \$1.94; got: $(grep -m1 'Audit phase' <<< "$out")"
fi
# shellcheck disable=SC2016  # literal dollar signs in the log line
if grep -q "This run's slice: \$0.300000 of the \$0.3" <<< "$out"; then
    ok "the slice is what is left"
else
    bad "wrong slice; got: $(grep -m1 'slice' <<< "$out" || echo nothing)"
fi
if grep -q 'Daily budget already exhausted' <<< "$out"; then
    bad "a run with room left must not read as exhaustion"
else
    ok "room left is not exhaustion"
fi

echo "== the judge may overrun the slice, and the escalation phase still runs =="
# The judge phase itself can push the run past its slice. That must not gate
# the escalation phase: it is what settles a flag, and skipping it once left
# every flagged package in limbo for a day.
data="$tmp/d4"
mkdir -p "$data/pipeline" "$data/bulk-reports" "$data/judge"
echo "1.70" > "$data/pipeline/spend-$today.log"
fake_judge_cost "$data"

out="$(AUR_SLEUTH_DATA_DIR="$data" OPENAI_API_KEY="unused-no-completion-is-made" \
        bash bench/pipeline.sh --daily-budget 2.00 --runs-per-day 1 \
        --packages-file /dev/null \
        --skip-dashboard --no-push 2>&1 || true)"

if grep -q '=== Judge Phase ===' <<< "$out"; then
    ok "the judge phase ran"
else
    bad "the judge phase did not run"
fi
if grep -q '=== Escalation Phase ===' <<< "$out"; then
    ok "the escalation phase ran past the exhausted slice"
else
    bad "the escalation phase was gated on the spent slice"
fi
# shellcheck disable=SC2016  # literal dollar sign in the log line
if grep -Eq 'Budget overrun: \$0\.[0-9]+ past this run.s slice' <<< "$out"; then
    ok "the overrun is reported in the log, as an overrun of the slice"
else
    bad "expected a reported overrun; got: $(grep -m1 -i 'overrun' <<< "$out" || echo 'nothing')"
fi
# shellcheck disable=SC2016  # literal dollar signs in the runs.log fields
if grep -Eq 'scheduled=\$2\.[0-9]+ .*slice=\$0\.300000 overrun=\$0\.[1-9]' "$data/pipeline/runs.log"; then
    ok "runs.log carries the scheduled spend, the slice, and the overrun"
else
    bad "runs.log fields; got: $(cat "$data/pipeline/runs.log" 2>/dev/null || echo 'no runs.log')"
fi
if grep -q ' manual$' "$data/pipeline/spend-$today.log"; then
    bad "a scheduled run's costs must not be tagged manual"
else
    ok "a scheduled run's costs count against the day"
fi

echo "== escalations can be turned off for the scheduled run =="
data="$tmp/d4b"
mkdir -p "$data/pipeline" "$data/bulk-reports" "$data/judge"
out="$(AUR_SLEUTH_DATA_DIR="$data" OPENAI_API_KEY="unused-no-completion-is-made" \
        bash bench/pipeline.sh --daily-budget 2.00 --runs-per-day 1 \
        --escalations-per-run 0 --packages-file /dev/null \
        --skip-dashboard --no-push 2>&1 || true)"
if grep -q 'Escalations are off' <<< "$out"; then
    ok "--escalations-per-run 0 skips the phase and says so"
else
    bad "the phase should have been skipped; got: $(grep -m1 -i 'escalat' <<< "$out" || echo nothing)"
fi

echo "== a genuinely exhausted budget still ends the run =="
data="$tmp/d3"
mkdir -p "$data/pipeline"
echo "2.50" > "$data/pipeline/spend-$today.log"
printf 'somepackage\nanotherpackage\n' > "$tmp/candidates.txt"
out="$(AUR_SLEUTH_DATA_DIR="$data" bash bench/pipeline.sh --daily-budget 2.00 \
        --packages-file "$tmp/candidates.txt" --skip-dashboard --no-push 2>&1 || true)"
# shellcheck disable=SC2016  # literal dollar signs in the log line
if grep -q 'Daily budget already exhausted (\$2.500000 >= \$2.00)' <<< "$out"; then
    ok "spending past the day's budget still exits, naming the day's budget"
else
    bad "spending past the day's budget should exit; got: $(grep -m1 'exhausted' <<< "$out" || echo nothing)"
fi
if grep -q "This run's slice: \$0.000000" <<< "$out"; then
    ok "and the slice is zero"
else
    bad "the slice should be zero on a spent day; got: $(grep -m1 'slice' <<< "$out" || echo nothing)"
fi

echo "== a manual run's own budget outranks the exhausted daily ledger =="
# The same exhausted ledger, but the run carries --run-budget: the person
# asked, so it runs, gated by its own ceiling instead of the day's.
fake_judge_cost "$data"
mkdir -p "$data/bulk-reports"
out="$(AUR_SLEUTH_DATA_DIR="$data" OPENAI_API_KEY="unused-no-completion-is-made" \
        bash bench/pipeline.sh --daily-budget 2.00 --run-budget 1.00 \
        --packages-file /dev/null --skip-dashboard --no-push 2>&1 || true)"
if grep -q 'Daily budget already exhausted' <<< "$out"; then
    bad "a manual run must not be refused by the daily ledger"
else
    ok "the exhausted ledger did not stop the manual run"
fi
if grep -q '=== Judge Phase ===' <<< "$out"; then
    ok "the manual run reached its phases"
else
    bad "the manual run did not get to work"
fi
# shellcheck disable=SC2016  # literal dollar signs in the log line
if grep -q 'This run: \$1.000000 / \$1.00' <<< "$out"; then
    ok "the summary reports the run's own spend against its own ceiling"
else
    bad "no per-run spend line; got: $(grep -m1 'This run' <<< "$out" || echo nothing)"
fi
if bash bench/pipeline.sh --run-budget 0 --packages-file /dev/null \
        --dry-run --skip-judge --skip-dashboard --no-push >/dev/null 2>&1; then
    bad "should have refused --run-budget 0"
else
    ok "refused a zero run budget"
fi

echo "== a manual run is charged to the ledger as manual, not to the schedule =="
if grep -q '^0.500000 manual$' "$data/pipeline/spend-$today.log"; then
    ok "the manual run's costs are on the ledger, tagged"
else
    bad "expected '0.500000 manual' lines; ledger is: $(tr '\n' '|' < "$data/pipeline/spend-$today.log")"
fi
# The schedule's next look at the ledger: the day's 2.50 is still what
# counts, and the manual spend is named beside it, not added to it.
out="$(AUR_SLEUTH_DATA_DIR="$data" bash bench/pipeline.sh --daily-budget 2.00 \
        --packages-file /dev/null --dry-run --skip-judge --skip-dashboard --no-push 2>&1 || true)"
# shellcheck disable=SC2016  # literal dollar signs in the log line
if grep -q 'Daily spend so far: \$2.500000 scheduled of \$2.00, plus \$1.000000 manual' <<< "$out"; then
    ok "the schedule sees its own 2.50 and names the 1.00 of manual spend"
else
    bad "wrong split; got: $(grep -m1 'spend so far' <<< "$out" || echo nothing)"
fi

echo "== a person's escalation run is charged as manual too =="
data="$tmp/d5"
mkdir -p "$data/pipeline" "$data/bulk-reports" "$data/judge"
fake_judge_cost "$data"
out="$(AUR_SLEUTH_DATA_DIR="$data" OPENAI_API_KEY="unused-no-completion-is-made" \
        bash bench/pipeline.sh --daily-budget 2.00 --escalate-pending true \
        --skip-dashboard --no-push 2>&1 || true)"
if grep -q '=== Escalation ===' <<< "$out"; then
    ok "the escalation run ran"
else
    bad "the escalation run did not run"
fi
if grep -q ' manual$' "$data/pipeline/spend-$today.log"; then
    ok "its cost is tagged manual: the schedule's day is untouched"
else
    bad "an escalation run's cost should be tagged manual; ledger is: $(tr '\n' '|' < "$data/pipeline/spend-$today.log" 2>/dev/null || echo empty)"
fi

echo
if (( fails > 0 )); then
    echo "FAILED: $fails check(s)"
    exit 1
fi
echo "budget reserve: all checks passed"
