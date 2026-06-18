#!/usr/bin/env bash
# Run an aur-sleuth audit on a package.
# Usage: audit.sh <package-name> [extra-args...]
#        audit.sh --pkgdir <path> [extra-args...]
# Exit code: 0 = safe, 1 = unsafe/inconclusive
set -euo pipefail

cd "$(dirname "$0")/.."

AUDIT_FAILURE_FATAL=true AUR_SLEUTH_ASCII_ICONS=1 \
    ./aur-sleuth --output plain "$@"
