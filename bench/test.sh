#!/usr/bin/env bash
# Run every offline test suite, and say which failed.
#
# Each bench/test-*.sh is a suite of its own and can be run alone; this runs
# all of them, plus the script's selftest, and exits non-zero if any did not
# pass. A suite nobody runs is the same as no suite -- one of these sat red
# for a day before anyone noticed.
#
# The synthetic fixtures (bench/run-synthetic-tests.sh) call a model and cost
# money, so they run only with --live. CLAUDE.md says when they are required:
# after any prompt or audit-logic change.
#
# Usage: bash bench/test.sh [--live] [-v]
set -uo pipefail

cd "$(dirname "$0")/.." || exit 2

LIVE=false
VERBOSE=false
for arg in "$@"; do
    case "$arg" in
        --live) LIVE=true ;;
        -v) VERBOSE=true ;;
        *) echo "usage: bash bench/test.sh [--live] [-v]" >&2; exit 2 ;;
    esac
done

failed=()
passed=0

run() {
    local name="$1"; shift
    local out rc=0
    if $VERBOSE; then
        "$@" || rc=$?
    else
        out="$("$@" 2>&1)" || rc=$?
    fi
    if (( rc == 0 )); then
        printf '  ok    %s\n' "$name"
        passed=$(( passed + 1 ))
    else
        printf '  FAIL  %s (exit %d)\n' "$name" "$rc"
        $VERBOSE || printf '%s\n' "$out" | sed 's/^/        /' | tail -20
        failed+=("$name")
    fi
}

for suite in bench/test-*.sh; do
    run "$(basename "$suite" .sh)" bash "$suite" -q
done
run "aur-sleuth selftest" env SELFTEST=1 ./aur-sleuth
if $LIVE; then
    run "synthetics (live)" bash bench/run-synthetic-tests.sh -q
fi

echo
if (( ${#failed[@]} > 0 )); then
    echo "FAILED: ${#failed[@]} suite(s): ${failed[*]}"
    exit 1
fi
echo "all $passed suite(s) passed"
