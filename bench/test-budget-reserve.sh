#!/usr/bin/env bash
# Test that the audit phase leaves budget for the phases after it, and that
# the phases after it are never gated on the budget at all.
#
# The audit loop is the only phase the daily budget caps. Judge and re-audit
# work has top priority: both phases run to completion even when they push
# the day past --daily-budget, and the overrun is logged and written to
# runs.log for trend-watching. The test proves the reserve stops the audit
# early, the judge runs, the re-audit runs past an exhausted budget, and the
# overrun is reported.
#
# Costs nothing to run: the audit loop is made to stop before its first package,
# and the judge finds no reports to judge, so no completion is ever requested.
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

echo "== the ceiling is reported and computed =="
out="$(AUR_SLEUTH_DATA_DIR="$tmp/d1" bash bench/pipeline.sh \
        --daily-budget 2.00 --packages-file /dev/null \
        --dry-run --skip-judge --skip-dashboard --no-push 2>&1 || true)"
# shellcheck disable=SC2016  # matching a literal dollar sign in the log line
if grep -q 'Audit phase stops at \$1.6' <<< "$out"; then
    ok "a \$2.00 budget at the default share stops the audit at \$1.6"
else
    bad "expected an audit ceiling of \$1.6; got: $(grep -m1 'Audit phase' <<< "$out")"
fi

echo "== the audit stops at the reserve, and the judge still runs =="
# Spend that is past the audit ceiling but not past the day's budget. Before the
# reserve existed this was simply "under budget", so the audit loop kept going
# until nothing was left and the judge was skipped.
data="$tmp/d2"
mkdir -p "$data/pipeline" "$data/bulk-reports" "$data/judge"
echo "1.70" > "$data/pipeline/spend-$(date +%Y-%m-%d).log"
printf 'somepackage\nanotherpackage\n' > "$tmp/candidates.txt"

out="$(AUR_SLEUTH_DATA_DIR="$data" OPENAI_API_KEY="unused-no-completion-is-made" \
        bash bench/pipeline.sh --daily-budget 2.00 \
        --packages-file "$tmp/candidates.txt" \
        --skip-dashboard --no-push 2>&1 || true)"

if grep -q 'Audit budget reached' <<< "$out"; then
    ok "the audit phase stopped at the reserve"
else
    bad "the audit phase did not stop at the reserve"
fi
if grep -q 'after 0 packages' <<< "$out"; then
    ok "it stopped before auditing anything, so nothing was spent"
else
    bad "it should have stopped before the first package"
fi
if grep -q '=== Judge Phase ===' <<< "$out"; then
    ok "the judge phase ran with the reserved budget"
else
    bad "the judge phase did not run -- the reserve bought nothing"
fi
if grep -q 'Daily budget already exhausted' <<< "$out"; then
    bad "the run exited early; the reserve must not look like exhaustion"
else
    ok "the run did not mistake the reserve for an exhausted budget"
fi

echo "== the judge may overrun the budget, and the re-audit still runs =="
# The judge phase itself can push the day's spend past --daily-budget. That
# must not gate the re-audit phase: the re-audit is what settles a flag, and
# skipping it once left every flagged package in limbo for a day. A fake
# judge report with a future mtime makes sum_judge_costs_since bill a judge
# cost without any API call: the pipeline records it, goes over budget, and
# must run the re-audit phase anyway and report the overrun.
data="$tmp/d4"
mkdir -p "$data/pipeline" "$data/bulk-reports" "$data/judge"
echo "1.70" > "$data/pipeline/spend-$(date +%Y-%m-%d).log"
printf '{"_judge_usage": {"cost": 0.50}}\n' > "$data/judge/fake.json"
touch -d "@$(( $(date +%s) + 3600 ))" "$data/judge/fake.json"

out="$(AUR_SLEUTH_DATA_DIR="$data" OPENAI_API_KEY="unused-no-completion-is-made" \
        bash bench/pipeline.sh --daily-budget 2.00 \
        --packages-file /dev/null \
        --skip-dashboard --no-push 2>&1 || true)"

if grep -q '=== Re-audit Phase ===' <<< "$out"; then
    ok "the re-audit phase ran past the exhausted budget"
else
    bad "the re-audit phase was gated on the spent budget"
fi
# The fake file's future mtime makes both phase markers count it, so the
# exact amount is an artifact of the trick. The contract under test is that
# a positive overrun is reported, not its value.
# shellcheck disable=SC2016  # literal dollar sign in the log line
if grep -Eq 'Budget overrun: \$0\.[0-9]+' <<< "$out"; then
    ok "the overrun is reported in the log"
else
    bad "expected a reported overrun; got: $(grep -m1 -i 'overrun' <<< "$out" || echo 'nothing')"
fi
# shellcheck disable=SC2016  # literal dollar sign in the runs.log field
if grep -Eq 'overrun=\$0\.[1-9]' "$data/pipeline/runs.log"; then
    ok "runs.log carries the overrun for trend-watching"
else
    bad "runs.log should carry overrun=; got: $(cat "$data/pipeline/runs.log" 2>/dev/null || echo 'no runs.log')"
fi

echo "== a genuinely exhausted budget still ends the run =="
data="$tmp/d3"
mkdir -p "$data/pipeline"
echo "2.50" > "$data/pipeline/spend-$(date +%Y-%m-%d).log"
out="$(AUR_SLEUTH_DATA_DIR="$data" bash bench/pipeline.sh --daily-budget 2.00 \
        --packages-file "$tmp/candidates.txt" --skip-dashboard --no-push 2>&1 || true)"
if grep -q 'Daily budget already exhausted' <<< "$out"; then
    ok "spending past the day's budget still exits"
else
    bad "spending past the day's budget should exit"
fi

echo
if (( fails > 0 )); then
    echo "FAILED: $fails check(s)"
    exit 1
fi
echo "budget reserve: all checks passed"
