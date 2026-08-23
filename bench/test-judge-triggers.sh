#!/usr/bin/env bash
# Offline checks for bench/judge.sh's trigger logic: which packages a judge
# run looks at, and what it calls the reason. Costs nothing: the functions
# are lifted out of judge.sh and run against reports written here.
#
# Usage: bash bench/test-judge-triggers.sh [-q]
set -euo pipefail

cd "$(dirname "$0")/.."

QUIET=false
[[ "${1:-}" == "-q" ]] && QUIET=true
fails=0
ok()  { $QUIET || printf '  ok    %s\n' "$1"; }
bad() { printf '  FAIL  %s\n' "$1"; fails=$(( fails + 1 )); }

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT

JUDGE="bench/judge.sh"
eval "$(sed -n '/^fm()/,/^}/p' "$JUDGE")"
eval "$(sed -n '/^collect_reports()/,/^}/p' "$JUDGE")"
eval "$(sed -n '/^already_judged()/,/^}/p' "$JUDGE")"
eval "$(sed -n '/^check_triggers()/,/^}/p' "$JUDGE")"

# Read by the functions above, through the eval.
# shellcheck disable=SC2034
REPORTS_DIR="$tmp/reports"
# shellcheck disable=SC2034
JUDGE_DIR="$tmp/judge"
# shellcheck disable=SC2034
FORCE=false
mkdir -p "$JUDGE_DIR"

# report MODEL PKG RESULT COST [FILES]
report() {
    local model="$1" pkg="$2" result="$3" cost="$4" files="${5:-5}"
    mkdir -p "$REPORTS_DIR/$model"
    printf -- '---\npackage: %s\nmodel: %s\ndate: 2026-08-23T10:00:00Z\nresult: %s\ncost: %s\nfiles_reviewed: %s\n---\nbody\n' \
        "$pkg" "$model" "$result" "$cost" "$files" \
        > "$REPORTS_DIR/$model/aur-sleuth-report-${pkg}.txt"
}

# trigger PKG -> "<rc> <reason>"
trigger() {
    local out rc=0
    out="$(check_triggers "$1")" || rc=$?
    echo "$rc $out"
}

echo "== an error report is an error, whatever else it says =="
report a pkg-err inconclusive 0
got="$(trigger pkg-err)"
if [[ "$got" == 0\ error* ]]; then
    ok "one inconclusive report with no spend is 'error', not 'agreed'"
else
    bad "expected an error trigger, got: $got"
fi

echo "== agreed means more than one model =="
report a pkg-one unsafe 0.01
got="$(trigger pkg-one)"
if [[ "$got" == "0 warned (single unsafe)" ]]; then
    ok "one unsafe report is a single warning"
else
    bad "expected 'warned (single unsafe)', got: $got"
fi
report a pkg-two unsafe 0.01
report b pkg-two unsafe 0.02
got="$(trigger pkg-two)"
if [[ "$got" == "0 warned (agreed unsafe)" ]]; then
    ok "two unsafe reports are an agreed warning"
else
    bad "expected 'warned (agreed unsafe)', got: $got"
fi
report a pkg-split safe 0.01
report b pkg-split unsafe 0.02
got="$(trigger pkg-split)"
if [[ "$got" == 0\ disagreement* ]]; then
    ok "safe against unsafe is a disagreement"
else
    bad "expected a disagreement, got: $got"
fi
report a pkg-clean safe 0.01
report b pkg-clean safe 0.02
got="$(trigger pkg-clean)"
if [[ "$got" == "1 " ]]; then
    ok "agreed safe triggers nothing (rc 1, which --all turns into a routine review)"
else
    bad "expected rc 1 and no reason, got: $got"
fi

echo "== a package already judged on these reports is rc 2, unless forced =="
# The judge report names the audits it read as <date>-<model>.md.
printf '{"audits_judged": ["20260823-100000-a.md", "20260823-100000-b.md"]}\n' > "$JUDGE_DIR/pkg-two.json"
got="$(trigger pkg-two)"
if [[ "$got" == "2 " ]]; then
    ok "already judged is rc 2, distinct from 'no trigger'"
else
    bad "expected rc 2, got: $got"
fi
# shellcheck disable=SC2034  # read by check_triggers, via the eval
FORCE=true
got="$(trigger pkg-two)"
# shellcheck disable=SC2034
FORCE=false
if [[ "$got" == "0 warned (agreed unsafe)" ]]; then
    ok "--force judges it again"
else
    bad "expected the trigger under --force, got: $got"
fi
# A new audit gets a new date, so it is judged again without --force.
report c pkg-two unsafe 0.03
got="$(trigger pkg-two)"
if [[ "$got" == "0 warned (agreed unsafe)" ]]; then
    ok "a report the judge has not read makes the package eligible again"
else
    bad "expected the trigger after a new report, got: $got"
fi

echo "== the main loop does not turn rc 2 into a routine review =="
# The --all branch must only fire on rc 1. Checked on the source: the loop is
# too entangled with judge_package to run here.
if grep -q 'rc == 2' "$JUDGE" && grep -q 'rc != 0' "$JUDGE"; then
    ok "the loop separates 'already judged' from 'no trigger'"
else
    bad "judge.sh's main loop no longer distinguishes rc 2"
fi

echo
if (( fails > 0 )); then
    echo "FAILED: $fails check(s)"
    exit 1
fi
echo "judge triggers: all checks passed"
