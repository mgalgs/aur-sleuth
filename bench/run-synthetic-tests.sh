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

    echo "--- $label ---"
    if "$quiet"; then
        AUDIT_FAILURE_FATAL=true AUR_SLEUTH_ASCII_ICONS=1 \
            ./aur-sleuth --pkgdir "$pkgdir" --output plain -n 0 >/dev/null 2>&1 \
            || actual_exit=$?
    else
        AUDIT_FAILURE_FATAL=true AUR_SLEUTH_ASCII_ICONS=1 \
            ./aur-sleuth --pkgdir "$pkgdir" --output plain -n 0 2>&1 \
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

run_test bench/synthetics/benign-skip-checksums       0 "benign-skip-checksums (should be safe)"
run_test bench/synthetics/malicious-obfuscated-install 1 "malicious-obfuscated-install (should be unsafe)"
run_test bench/synthetics/malicious-curl-exfil         1 "malicious-curl-exfil (should be unsafe)"

echo "Results: $pass passed, $fail failed"
[[ "$fail" -eq 0 ]]
