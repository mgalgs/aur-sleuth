#!/usr/bin/env bash
# Generate the static dashboard and commit it to the audit-reports branch.
# Usage: generate-dashboard.sh
set -euo pipefail
cd "$(dirname "$0")/.."

python3 bench/generate-dashboard.py "$@"
