#!/usr/bin/env bash
# run-audit.sh — Run aur-sleuth on a package, then feed the report to Claude for review
#
# Usage: bench/run-audit.sh <package-name-or-pkgdir> [aur-sleuth-args...]
#
# Examples:
#   bench/run-audit.sh yay-bin                          # audit AUR package, then review
#   bench/run-audit.sh --pkgdir bench/synthetics/foo    # audit local dir, then review
#   bench/run-audit.sh yay-bin --model anthropic/claude-sonnet-4-6  # specific model

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
AUR_SLEUTH="${PROJECT_DIR}/aur-sleuth"

if [[ $# -lt 1 ]]; then
    echo "Usage: $0 <package-name-or-pkgdir> [aur-sleuth-args...]" >&2
    echo "Examples:" >&2
    echo "  $0 yay-bin" >&2
    echo "  $0 --pkgdir bench/synthetics/malicious-curl-exfil" >&2
    echo "  $0 yay-bin --model anthropic/claude-sonnet-4-6" >&2
    exit 1
fi

# Determine the package name for finding the report file.
# If --pkgdir is used, we need to extract pkgname from the PKGBUILD.
REPORT_PKG_NAME=""
for i in "$@"; do
    if [[ "$i" == "--pkgdir" ]]; then
        PKGDIR_MODE=1
    elif [[ "${PKGDIR_MODE:-}" == "1" ]]; then
        PKGDIR_PATH="$i"
        PKGDIR_MODE=
    fi
done

echo "=== Running aur-sleuth ==="
"$AUR_SLEUTH" --output plain "$@" 2>&1 | tee /tmp/aur-sleuth/last-run.txt || true

# Find the report file. aur-sleuth writes to /tmp/aur-sleuth/aur-sleuth-report-{pkgname}.txt
if [[ -n "${PKGDIR_PATH:-}" ]]; then
    REPORT_PKG_NAME="$(cd "$PKGDIR_PATH" && makepkg --printsrcinfo 2>/dev/null | grep -m1 'pkgbase = ' | sed 's/pkgbase = //')"
else
    # First positional arg that doesn't start with - is the package name
    for arg in "$@"; do
        if [[ "$arg" != -* ]]; then
            REPORT_PKG_NAME="$arg"
            break
        fi
    done
fi

REPORT_FILE="/tmp/aur-sleuth/aur-sleuth-report-${REPORT_PKG_NAME}.txt"
if [[ ! -f "$REPORT_FILE" ]]; then
    echo "Warning: could not find report at $REPORT_FILE" >&2
    echo "Using captured stdout instead" >&2
    REPORT_FILE="/tmp/aur-sleuth/last-run.txt"
fi

echo ""
echo "=== Report: $REPORT_FILE ==="
echo "=== Sending to Claude for review ==="
echo ""

exec "$SCRIPT_DIR/review-audit.sh" "$REPORT_FILE"
