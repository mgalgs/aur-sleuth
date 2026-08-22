#!/usr/bin/env bash
# Test that the audit phase leaves budget for the phases after it.
#
# The judge is gated on the same daily budget as the audit loop. When the audit
# loop is allowed to spend all of it, the judge never runs -- not rarely, never.
# This reserves a share, and the test proves the reserve both stops the audit
# early and lets the judge through.
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
for bad_share in "abc" "2.0" "-0.5" '1) or 1'; do
    if bash bench/pipeline.sh --audit-budget-share "$bad_share" \
            --packages-file /dev/null --dry-run --skip-judge --skip-dashboard \
            >/dev/null 2>&1; then
        bad "should have refused --audit-budget-share '$bad_share'"
    else
        ok "refused --audit-budget-share '$bad_share'"
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
