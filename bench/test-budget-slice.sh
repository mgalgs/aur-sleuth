#!/usr/bin/env bash
# Test the even-spread slice arithmetic in bench/budget-slice.py.
#
# The pipeline reads the hour off the container's clock, so the pipeline
# suites cannot pin it; this one calls the script with every input explicit
# and checks the numbers that decide what a run may spend. The contract:
# a run gets what is left of the day divided over the runs still to come,
# an overrun shrinks the runs after it, a skipped run hands its share on,
# the last run gets the rest, and a spent day gets nothing.
#
# Usage: bash bench/test-budget-slice.sh [-q]
set -euo pipefail

cd "$(dirname "$0")/.."

QUIET=false
[[ "${1:-}" == "-q" ]] && QUIET=true

fails=0
ok()  { $QUIET || printf '  ok    %s\n' "$1"; }
bad() { printf '  FAIL  %s\n' "$1"; fails=$(( fails + 1 )); }

# slice DAILY SPENT RUNS HOUR SHARE -> "gate audit slice remaining"
slice() {
    python3 bench/budget-slice.py --daily "$1" --spent "$2" \
        --runs-per-day "$3" --hour "$4" --share "$5"
}

expect() {
    local name="$1" want="$2"; shift 2
    local got
    got="$(slice "$@")"
    if [[ "$got" == "$want" ]]; then
        ok "$name"
    else
        bad "$name: got '$got', want '$want'"
    fi
}

echo "== a fresh day is shared evenly =="
expect "midnight, six runs: one sixth" "0.166667 0.133333 0.166667 6" 1.00 0 6 0 0.8
expect "the audit share is of the slice, not the day" "0.400000 0.200000 0.400000 5" 2.00 0 5 0 0.5
expect "runs per day is the hour's period: 04:00 is still run 1 of a 4-hour cadence" \
    "0.200000 0.160000 0.200000 5" 1.00 0 6 4 0.8
expect "03:59 is still the first period" "0.166667 0.133333 0.166667 6" 1.00 0 6 3 0.8

echo "== an overrun shrinks the runs after it =="
# Run 1 was entitled to 0.166667 and spent 0.45; the five after it share
# what is left.
expect "after a 0.45 first run, 0.11 each for the rest" "0.560000 0.538000 0.110000 5" 1.00 0.45 6 4 0.8

echo "== a skipped run hands its share forward =="
# Nothing spent by 08:00: the four remaining runs share the whole day.
expect "nothing spent by 08:00: a quarter each" "0.250000 0.200000 0.250000 4" 1.00 0 6 8 0.8

echo "== the last run gets the rest =="
expect "20:00 is the last of six: everything left" "1.000000 0.860000 0.700000 1" 1.00 0.30 6 20 0.8
expect "23:59 on a one-run day: everything" "2.000000 1.940000 0.300000 1" 2.00 1.70 1 23 0.8

echo "== a spent day gets nothing =="
expect "past the budget: a slice of zero, the gate where it stands" "1.144446 1.144446 0.000000 1" 1.00 1.144446 6 20 0.8
expect "exactly the budget: zero" "1.000000 1.000000 0.000000 3" 1.00 1.00 6 12 0.8
expect "under half a cent of room is no room" "0.998000 0.998000 0.000000 6" 1.00 0.998 6 0 0.8

echo "== a manual run is one run of a one-run day =="
expect "the whole ceiling, audits to the share of it" "1.000000 0.800000 1.000000 1" 1.00 0 1 0 0.8

echo "== inputs out of range are refused =="
for args in "0 0 6 0 0.8" "1 -1 6 0 0.8" "1 0 0 0 0.8" "1 0 6 24 0.8" "1 0 6 0 0.05" "1 0 6 0 1.5"; do
    # shellcheck disable=SC2086  # the args are five words on purpose
    if slice $args >/dev/null 2>&1; then
        bad "should have refused: $args"
    else
        ok "refused: $args"
    fi
done
if slice 1 0 6 1e3 0.8 >/dev/null 2>&1; then
    bad "an hour that is not a whole number should be refused"
else
    ok "a non-integer hour is refused"
fi

echo
if (( fails > 0 )); then
    echo "FAILED: $fails check(s)"
    exit 1
fi
echo "budget slice: all checks passed"
