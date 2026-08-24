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

echo "== a failed audit is absence: soft failure =="
# A report with no spend is a rate limit, a quota wall, or a crash -- not a
# ruling. It must not trigger a paid judge read (it used to, as 'error'),
# and it must not smuggle a cost-0 'inconclusive' into 'agreed'. This is
# what makes a free model in an audit seat costless when it is throttled.
report a pkg-err inconclusive 0
got="$(trigger pkg-err)"
if [[ "$got" == "1 " ]]; then
    ok "one failed report alone triggers nothing"
else
    bad "a lone failed report should be absence, got: $got"
fi
report a pkg-mixed unsafe 0.01
report free pkg-mixed unknown 0
got="$(trigger pkg-mixed)"
if [[ "$got" == "0 warned (single unsafe)" ]]; then
    ok "a failed free voice beside a real verdict changes nothing"
else
    bad "expected the real verdict's own trigger, got: $got"
fi
report a pkg-freeok safe 0.01
report b pkg-freeok safe 0.02
report free pkg-freeok unsafe 0.0001
got="$(trigger pkg-freeok)"
if [[ "$got" == 0\ disagreement* ]]; then
    ok "a free voice that actually answered is a real verdict, and may disagree"
else
    bad "expected a disagreement from the free voice, got: $got"
fi
# A failed report reviewed nothing; that is not 'shallow coverage' either.
report a pkg-notshallow safe 0.01 5
report free pkg-notshallow unknown 0 0
got="$(trigger pkg-notshallow)"
if [[ "$got" == "1 " ]]; then
    ok "a failed report does not read as shallow coverage"
else
    bad "expected no trigger, got: $got"
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

echo "== an advisory report is information, never a trigger =="
# advreport MODEL PKG RESULT COST -- like report, plus advisory: true.
advreport() {
    local model="$1" pkg="$2" result="$3" cost="$4"
    mkdir -p "$REPORTS_DIR/$model"
    printf -- '---\npackage: %s\nmodel: %s\ndate: 2026-08-23T11:00:00Z\nresult: %s\ncost: %s\nfiles_reviewed: 5\nadvisory: true\n---\nbody\n' \
        "$pkg" "$model" "$result" "$cost" \
        > "$REPORTS_DIR/$model/aur-sleuth-report-${pkg}.txt"
}
# An advisory unsafe beside an agreed-safe pair: no disagreement, no warning.
# The advisory voice has not earned a vote; it waits in the pile as context.
report a pkg-adv safe 0.01
report b pkg-adv safe 0.02
advreport freeadv pkg-adv unsafe 0.0001
got="$(trigger pkg-adv)"
if [[ "$got" == "1 " ]]; then
    ok "an advisory unsafe cannot out-vote agreed safe reports"
else
    bad "expected no trigger beside real agreement, got: $got"
fi
# A package with only advisory reports has not been audited at all.
advreport freeadv pkg-advonly unsafe 0.0001
got="$(trigger pkg-advonly)"
if [[ "$got" == "1 " ]]; then
    ok "advisory-only is absence: nothing to judge"
else
    bad "expected no trigger for advisory-only, got: $got"
fi
# The judged fingerprint covers real reports only, so an advisory report
# arriving later must not re-summon the judge through the back door.
report a pkg-advlate unsafe 0.01
report b pkg-advlate unsafe 0.02
printf '{"audits_judged": ["20260823-100000-a.md", "20260823-100000-b.md"]}\n' > "$JUDGE_DIR/pkg-advlate.json"
advreport freeadv pkg-advlate safe 0.0001
got="$(trigger pkg-advlate)"
if [[ "$got" == "2 " ]]; then
    ok "a new advisory report leaves 'already judged' standing"
else
    bad "expected rc 2 despite the late advisory report, got: $got"
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
