#!/usr/bin/env bash
# Run synthetic test packages and verify expected exit codes.
# Usage: run-synthetic-tests.sh [-q]
#   -q  Quiet mode: suppress aur-sleuth output (only show PASS/FAIL)
set -euo pipefail

cd "$(dirname "$0")/.."

quiet=false
if [[ "${1:-}" == "-q" ]]; then
    quiet=true
fi

pass=0
fail=0

run_test() {
    local pkgdir="$1" expected_exit="$2" label="$3"
    local actual_exit=0

    # A fixture may carry extra flags in a .args file beside its directory
    # (never inside it: everything inside is the package under audit).
    local -a extra=()
    local argsfile="${pkgdir%/}.args"
    if [[ -f "$argsfile" ]]; then
        # shellcheck disable=SC2207  # deliberate word splitting: it is a flag list
        extra=($(grep -v '^\s*#' "$argsfile" | tr '\n' ' '))
    fi

    echo "--- $label ---"
    if "$quiet"; then
        AUDIT_FAILURE_FATAL=true AUR_SLEUTH_ASCII_ICONS=1 \
            ./aur-sleuth --pkgdir "$pkgdir" --output plain "${extra[@]}" >/dev/null 2>&1 \
            || actual_exit=$?
    else
        AUDIT_FAILURE_FATAL=true AUR_SLEUTH_ASCII_ICONS=1 \
            ./aur-sleuth --pkgdir "$pkgdir" --output plain "${extra[@]}" 2>&1 \
            || actual_exit=$?
        echo ""
    fi

    if [[ "$actual_exit" -eq "$expected_exit" ]]; then
        echo "PASS: $label (exit $actual_exit)"
        ((pass++)) || true
    else
        echo "FAIL: $label (expected exit $expected_exit, got $actual_exit)"
        ((fail++)) || true
    fi
    echo ""
}

# Every fixture, found by the naming convention rather than by a list. A list
# went stale: benign-npm-postinstall sat in bench/synthetics/ unrun, and a
# fixture nobody runs is the same as no fixture. bench/benchmark.sh has always
# discovered them this way.
found=0
for fixture in bench/synthetics/*/; do
    name="$(basename "$fixture")"
    case "$name" in
        benign-*)    run_test "$fixture" 0 "$name (should be safe)" ;;
        malicious-*) run_test "$fixture" 1 "$name (should be unsafe)" ;;
        *) echo "SKIP: $name is named neither benign-* nor malicious-*"; continue ;;
    esac
    found=$(( found + 1 ))
done

if (( found == 0 )); then
    echo "FAIL: no fixtures found under bench/synthetics/"
    exit 1
fi

echo "Results: $pass passed, $fail failed"
[[ "$fail" -eq 0 ]]
