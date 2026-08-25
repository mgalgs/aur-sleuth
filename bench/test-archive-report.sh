#!/usr/bin/env bash
# A report no model answered is never archived.
#
# A run that crashes before its first LLM call -- the clone fails because the
# package was deleted, say -- once left a report file holding nothing but the
# tool's own lines, and archive-report.sh archived it under model "unknown"
# and verdict "unknown". That called the package audited: its version entered
# the audited index and the retry was suppressed. Now aur-sleuth removes the
# stub itself, and the archiver refuses one regardless.
#
# Usage: bash bench/test-archive-report.sh [-q]
set -euo pipefail

cd "$(dirname "$0")/.."

QUIET=false
[[ "${1:-}" == "-q" ]] && QUIET=true

fails=0
ok()  { $QUIET || printf '  ok    %s\n' "$1"; }
bad() { printf '  FAIL  %s\n' "$1"; fails=$(( fails + 1 )); }

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT

# The archiver writes the audit-reports branch of the repo it lives in, so it
# runs from a copy inside a throwaway repo, never against this one.
repo="$tmp/repo"
mkdir -p "$repo/bench"
cp bench/archive-report.sh "$repo/bench/"
git -C "$repo" init -q
git -C "$repo" -c user.name=t -c user.email=t@t commit -q --allow-empty -m init

echo "== a report without frontmatter is refused =="
printf 'Cloning https://aur.archlinux.org/gone.git...\n' > "$tmp/stub.txt"
rc=0
out="$(bash "$repo/bench/archive-report.sh" gone "$tmp/stub.txt" 2>&1)" || rc=$?
if (( rc != 0 )); then
    ok "the archiver exits non-zero ($rc)"
else
    bad "the archiver accepted a report with no frontmatter: $out"
fi
if grep -q 'no frontmatter' <<< "$out"; then
    ok "and says why"
else
    bad "the refusal does not name the reason: $out"
fi
if ! git -C "$repo" rev-parse --verify --quiet refs/heads/audit-reports >/dev/null; then
    ok "nothing was written to the branch"
else
    bad "the branch was created for a refused report"
fi

echo "== a finished report is archived as before =="
printf -- '---\npackage: fine\nresult: safe\nmodel: m/x\n---\n\nNo issues found.\n' > "$tmp/fine.txt"
out="$(bash "$repo/bench/archive-report.sh" fine "$tmp/fine.txt" 2>&1)" || true
if grep -q '^Stored: audit-reports:fine/.*-m-x\.md$' <<< "$out"; then
    ok "the report is stored under its package and model"
else
    bad "unexpected archiver output: $out"
fi
if git -C "$repo" ls-tree --name-only -r audit-reports | grep -q '^fine/'; then
    ok "and the branch holds it"
else
    bad "the branch does not hold the report"
fi

echo "== aur-sleuth leaves no report behind when the clone fails =="
# A local clone URL that does not exist fails at once, offline. Pricing is
# switched off so the client makes no request either.
reports="$tmp/reports"
mkdir -p "$reports"
rc=0
out="$(AUR_SLEUTH_REPORT_DIR="$reports" AUR_SLEUTH_PRICING=none \
        OPENAI_API_KEY=unused-no-completion-is-made \
        ./aur-sleuth --output plain --clone-url "$tmp/no-such-repo" gonepkg 2>&1)" || rc=$?
if (( rc != 0 )); then
    ok "the run fails ($rc)"
else
    bad "a clone of a missing repository should fail"
fi
if [[ ! -e "$reports/aur-sleuth-report-gonepkg.txt" ]]; then
    ok "and no report file remains"
else
    bad "a stub report was left behind:"
    sed 's/^/        /' "$reports/aur-sleuth-report-gonepkg.txt"
fi

echo "== a clone with no PKGBUILD is not a package, and leaves no report =="
# The AUR serves an empty repository for any name it does not know -- a
# split package's own name included -- and git clones it without complaint.
# An audit of that once reported "Skipping binary file: PKGBUILD" as a
# verdict. A local repository with one empty commit stands in for it.
empty="$tmp/empty.git"
git init -q "$empty"
git -C "$empty" -c user.name=t -c user.email=t@t commit -q --allow-empty -m init
rc=0
out="$(AUR_SLEUTH_REPORT_DIR="$reports" AUR_SLEUTH_PRICING=none \
        OPENAI_API_KEY=unused-no-completion-is-made \
        ./aur-sleuth --output plain --clone-url "$empty" nopkg 2>&1)" || rc=$?
if (( rc == 5 )); then
    ok "the run exits 5, the status for a package that is not there"
else
    bad "expected exit 5, got $rc: $(tail -3 <<< "$out")"
fi
if grep -q 'nopkg: not on the AUR' <<< "$out"; then
    ok "and says so in one line"
else
    bad "no plain line about the missing package: $(tail -3 <<< "$out")"
fi
if [[ ! -e "$reports/aur-sleuth-report-nopkg.txt" ]]; then
    ok "and no report file remains"
else
    bad "a report was left behind for a package that does not exist"
fi
if ! grep -q 'Traceback' <<< "$out"; then
    ok "and no traceback: this is an answer, not a crash"
else
    bad "a missing package printed a traceback"
fi

echo
if (( fails > 0 )); then
    echo "FAILED: $fails check(s)"
    exit 1
fi
echo "archive report: all checks passed"
