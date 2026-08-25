#!/usr/bin/env bash
# Check that a dry run measures the loop without calling anything.
#
# The dry run is the yardstick a token-saving change is judged by, so it has
# to hold two properties that are easy to lose: it must reach every stage of
# the loop (a canned verdict that failed to parse would end the audit at the
# required files and quietly measure half a run), and it must send nothing --
# no key, no model call, no price lookup.
#
# Offline: it runs against a synthetic fixture whose sources are local files.
#
# Usage: bash bench/test-token-ledger.sh [-q]
set -uo pipefail

cd "$(dirname "$0")/.." || exit 2

QUIET=false
[[ "${1:-}" == "-q" ]] && QUIET=true

fails=0
ok()  { $QUIET || printf '  ok    %s\n' "$1"; }
bad() { printf '  FAIL  %s\n' "$1"; fails=$(( fails + 1 )); }

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

cp -r bench/synthetics/benign-npm-postinstall "$TMP/pkg"
LEDGER="$TMP/ledger.json"

# No API key in the environment at all: a dry run that needs one is a dry run
# that could have spent something.
if env -u OPENAI_API_KEY -u OPENAI_BASE_URL \
       AUR_SLEUTH_REPORT_DIR="$TMP/reports" \
       ./aur-sleuth --pkgdir "$TMP/pkg" --output plain \
           --dry-run --call-ledger "$LEDGER" >"$TMP/run.log" 2>&1; then
    ok "a dry run completes with no API key set"
else
    bad "the dry run failed (exit $?); see below"
    $QUIET || sed 's/^/        /' "$TMP/run.log" | tail -20
fi

if [[ -s "$LEDGER" ]]; then
    ok "the ledger was written"
else
    bad "no ledger at $LEDGER"
    echo "  (skipping the rest)"
    exit 1
fi

check_json() {
    local expr="$1"
    local got
    got="$(python3 -c '
import json, sys
d = json.load(open(sys.argv[1]))
calls = d["calls"]
print(eval(sys.argv[2]))
' "$LEDGER" "$expr" 2>/dev/null)"
    printf '%s' "$got"
    [[ -n "$got" ]] || return 1
}

# Every stage the fixture can reach. It has a PKGBUILD, one more required file,
# and a leftover for the additional pass; with so few candidates the selection
# call is skipped by design, so "select" is not required here.
for stage in gate required additional; do
    if [[ "$(check_json "any(c['stage'] == '$stage' for c in calls)")" == "True" ]]; then
        ok "the ledger has a '$stage' call"
    else
        bad "no '$stage' call in the ledger -- the dry run ended early"
    fi
done

if [[ "$(check_json "all(c['prompt_tokens'] > 0 for c in calls)")" == "True" ]]; then
    ok "every call carries a prompt-token count"
else
    bad "a call has no prompt tokens"
fi

if [[ "$(check_json "all(c['estimated'] for c in calls)")" == "True" ]]; then
    ok "every dry-run count is marked estimated"
else
    bad "a dry-run count is not marked estimated"
fi

if [[ "$(check_json "all(c['system_chars'] > 0 and c['user_chars'] > 0 for c in calls)")" == "True" ]]; then
    ok "system and user halves are counted separately"
else
    bad "a call is missing its system/user split"
fi

# The ledger is measurement, not an audit artifact: without the flag nothing
# lands beside the report, which the pipeline publishes wholesale.
rm -rf "$TMP/reports"
env -u OPENAI_API_KEY -u AUR_SLEUTH_CALL_LEDGER \
    AUR_SLEUTH_REPORT_DIR="$TMP/reports" \
    ./aur-sleuth --pkgdir "$TMP/pkg" --output plain --dry-run \
    >"$TMP/run2.log" 2>&1
if compgen -G "$TMP/reports/aur-sleuth-calls-*.json" >/dev/null; then
    bad "a ledger was written into the report directory without being asked for"
else
    ok "no ledger is written unless asked for"
fi

# The analyser has to read what the run wrote.
if bench/token-ledger.py "$LEDGER" >"$TMP/table.txt" 2>&1 \
   && grep -q "TOTAL prompt tokens" "$TMP/table.txt"; then
    ok "token-ledger.py reads the ledger"
else
    bad "token-ledger.py could not read the ledger"
    $QUIET || sed 's/^/        /' "$TMP/table.txt"
fi

if bench/token-ledger.py "$LEDGER" --compare "$(dirname "$LEDGER")" >/dev/null 2>&1; then
    ok "token-ledger.py --compare runs"
else
    bad "token-ledger.py --compare failed"
fi

echo
if (( fails > 0 )); then
    echo "FAILED: $fails check(s)"
    exit 1
fi
echo "token ledger: all checks passed"
