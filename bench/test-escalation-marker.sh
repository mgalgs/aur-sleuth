#!/usr/bin/env bash
# Escalating a package that was never judged does not end the run.
#
# The escalation rounds pick their worklist by the page's state rule, and a
# package is "look" on its audit reports alone -- flagged by a model, never
# ruled on. bench/judge.sh named the ruling that asked for the re-audit by
# grepping the branch, and grep matching nothing exits 1: under judge.sh's
# own set -euo pipefail the assignment took the whole run down with it,
# silently, before the audit had started. Every scheduled run died on the
# first package of the worklist.
#
# The lookup runs in a bash of its own here, not a subshell: set -e is
# disabled for any command in an && or || list, and a test that captured the
# exit status in the usual out=$(...) || rc=$? way would suppress the very
# failure it means to catch -- it passed against the broken code.
#
# Usage: bash bench/test-escalation-marker.sh [-q]
set -euo pipefail

cd "$(dirname "$0")/.."

QUIET=false
[[ "${1:-}" == "-q" ]] && QUIET=true

fails=0
ok()  { $QUIET || printf '  ok    %s\n' "$1"; }
bad() { printf '  FAIL  %s\n' "$1"; fails=$(( fails + 1 )); }

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT

# The function under test, lifted out of judge.sh.
sed -n '/^escalation_marker()/,/^}/p' bench/judge.sh > "$tmp/fn.sh"

# The branch it reads is the branch of the repo it runs in, so it runs
# inside a throwaway one, never against this checkout.
repo="$tmp/repo"
mkdir -p "$repo/judged" "$repo/unjudged"
git -C "$repo" init -q -b audit-reports
report() { printf -- '---\npackage: %s\nresult: %s\nmodel: m/x\n---\nbody\n' "$1" "$2"; }
report judged unsafe   > "$repo/judged/20260101-090000-m-x.md"
report unjudged unsafe > "$repo/unjudged/20260101-090000-m-x.md"
printf '{"correct_verdict": "unsafe"}\n' > "$repo/judged/20260102-090000-judge.json"
git -C "$repo" add -A
git -C "$repo" -c user.name=t -c user.email=t@t commit -q -m reports

# A caller with judge.sh's own shell options. The sentinel it prints last is
# what proves the lookup did not end it.
cat > "$tmp/caller.sh" <<'CALLER'
set -euo pipefail
REPORTS_BRANCH=audit-reports
# shellcheck disable=SC1090
. "$1"
cd "$2"
escalation_marker "$3"
printf 'survived\n'
CALLER

# marker PKG -> "<rc> <output...>"
marker() {
    local out rc=0
    out="$(bash "$tmp/caller.sh" "$tmp/fn.sh" "$repo" "$1" 2>&1)" || rc=$?
    printf '%s %s\n' "$rc" "$(tr '\n' ' ' <<< "$out")"
}

echo "== a package with a ruling names it =="
got="$(marker judged)"
if [[ "$got" == "0 judged/20260102-090000-judge.json survived " ]]; then
    ok "the latest ruling on the branch is the trigger"
else
    bad "unexpected marker for a judged package: $got"
fi

echo "== a package with no ruling is still an escalation =="
got="$(marker unjudged)"
if [[ "$got" == "0 escalation survived " ]]; then
    ok "no ruling to name ends in the bare marker, and the run lives"
else
    bad "an unjudged package did not survive the lookup: $got"
fi

echo "== a package with nothing on the branch is the same =="
got="$(marker never-audited)"
if [[ "$got" == "0 escalation survived " ]]; then
    ok "a missing package directory is not an error either"
else
    bad "a package absent from the branch did not survive: $got"
fi

echo "== the marker is never empty =="
# triggered_by is read as a flag: empty would count the escalation audit as
# an ordinary first opinion, and the cap that ends in "disputed" would never
# be reached.
empty=false
for pkg in judged unjudged never-audited; do
    got="$(marker "$pkg")"
    [[ "$got" == "0 survived " ]] && empty=true
done
if ! $empty; then
    ok "every package gets a non-empty trigger, so the escalation counts"
else
    bad "some package produced an empty trigger"
fi

echo
if (( fails > 0 )); then
    echo "FAILED: $fails check(s)"
    exit 1
fi
$QUIET || echo "all checks passed"
