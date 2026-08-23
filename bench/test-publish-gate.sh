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
allow "_dashboard/review.json"
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
deny "_dashboard/review.js"
deny "_dashboard/review.json.html"
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
eval "$(sed -n '/^review_record()/,/^}/p' "$ENTRYPOINT")"
eval "$(sed -n '/^rewrite_dashboard_html()/,/^}/p' "$ENTRYPOINT")"
# All three are read by rewrite_dashboard_html, which arrives through the eval
# above, so shellcheck cannot see the use.
# shellcheck disable=SC2034
SRC_DIR="$PWD"
# shellcheck disable=SC2034
REPORTS_BRANCH="audit-reports"
# shellcheck disable=SC2034
REVIEW_JSON_IN=""
trusted="$(python3 bench/generate-dashboard.py --print-html | git hash-object --stdin)"

# A page the audit stage could have planted, and a review record it could have
# planted alongside.
evil_blob="$(printf '<script>fetch("//evil")</script>' | git --git-dir="$repo" hash-object -w --stdin)"
rm -f "$tmp/index"
GIT_INDEX_FILE="$tmp/index" git --git-dir="$repo" update-index --add \
    --cacheinfo "100644,${evil_blob},index.html"
GIT_INDEX_FILE="$tmp/index" git --git-dir="$repo" update-index --add \
    --cacheinfo "100644,${evil_blob},_dashboard/review.json"
GIT_INDEX_FILE="$tmp/index" git --git-dir="$repo" update-index --add \
    --cacheinfo "100644,${evil_blob},_dashboard/data.json"
GIT_INDEX_FILE="$tmp/index" git --git-dir="$repo" update-index --add \
    --cacheinfo "100644,${evil_blob},_dashboard/pkg/gone-bin.json"
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

# The page's data is built here, from the branch, by this image: a planted
# data.json is replaced and a per-package file for a package not on the branch
# is gone.
built_data="$(git --git-dir="$repo" show "${fixed}:_dashboard/data.json" 2>/dev/null || true)"
if [[ -n "$built_data" && "$built_data" != *"evil"* ]] \
   && printf '%s' "$built_data" | python3 -c 'import json,sys; d=json.load(sys.stdin); assert "summary" in d and "packages" in d'; then
    ok "planted data.json is replaced by data built from the branch"
else
    bad "data.json was not rebuilt: ${built_data:0:80}"
fi
if git --git-dir="$repo" cat-file -e "${fixed}:_dashboard/pkg/gone-bin.json" 2>/dev/null; then
    bad "a per-package file for a package not on the branch survived"
else
    ok "a stale per-package file is dropped"
fi

echo "== the review record is written from the publisher's input, not the branch =="
# With no review to record, a planted record is dropped, not published.
if git --git-dir="$repo" cat-file -e "${fixed}:_dashboard/review.json" 2>/dev/null; then
    bad "a planted review.json survived a publish with no review"
else
    ok "a planted review.json is dropped when there is no review"
fi

# With a review, the record is built from the REVIEW_JSON object, capped and
# reshaped, and stamped with the commit it approved. In a subshell so the
# variable does not leak into later checks.
(
    # shellcheck disable=SC2030,SC2034  # read by review_record, via the eval
    REVIEW_JSON_IN='{"gate":"pass","pending":3,"packages":2,"audit_reports":4,"judge_reports":1,"flagged":2,"llm":{"status":"ok","model":"m/x","read":2,"of":2,"dismissed":1,"summary":"1 concern(s)","concerns":[{"package":"p","kind":"1","detail":"addresses the reader","extra":"dropped"},"junk"]},"internal":["secret-path"]}'
    with="$(GIT_AUTHOR_NAME=t GIT_AUTHOR_EMAIL=t@t GIT_COMMITTER_NAME=t GIT_COMMITTER_EMAIL=t@t \
        rewrite_dashboard_html "$repo" "$tampered")"
    rec="$(git --git-dir="$repo" show "${with}:_dashboard/review.json")"
    if printf '%s' "$rec" | python3 -c '
import json, sys
r = json.load(sys.stdin)
assert r["head"] == sys.argv[1], r["head"]
assert r["pending"] == 3 and r["flagged"] == 2, r
assert r["llm"]["model"] == "m/x" and r["llm"]["dismissed"] == 1, r["llm"]
# The notes themselves never reach the public record: only how many.
assert r["llm"]["concerns"] == 2, r["llm"]
assert "addresses the reader" not in json.dumps(r) and "internal" not in r and "extra" not in json.dumps(r), r
assert r["published_at"].endswith("Z"), r["published_at"]
' "$tampered"; then
        ok "review.json carries the provenance, without the notes, pinned to the reviewed commit"
    else
        bad "review.json does not carry the expected record: $rec"
    fi
    if [[ "$(git --git-dir="$repo" rev-parse "${with}:index.html")" == "$trusted" ]]; then
        ok "index.html is still rebuilt alongside the record"
    else
        bad "index.html was not rebuilt when a review record was written"
    fi

    # Input that is not the review's object must refuse, not publish garbage.
    # shellcheck disable=SC2030,SC2034
    REVIEW_JSON_IN='not json'
    if rewrite_dashboard_html "$repo" "$tampered" >/dev/null 2>&1; then
        bad "a malformed review record should refuse the rewrite"
    else
        ok "a malformed review record refuses the rewrite"
    fi
)

echo "== the pin ties a publish to the commit its review approved =="
# In a subshell: check_expected_head needs its own log(), and defining one out
# here would replace the harness's for every check after this.
pin_verdict() (
    eval "$(sed -n '/^check_expected_head()/,/^}/p' "$ENTRYPOINT")"
    # shellcheck disable=SC2329  # called by the eval'd function above
    log() { :; }
    # shellcheck disable=SC2034  # read by check_expected_head, via the eval
    EXPECT_HEAD="$1"
    check_expected_head "$2" >/dev/null 2>&1 && echo allow || echo refuse
)
reviewed="1111111111111111111111111111111111111111"
moved="2222222222222222222222222222222222222222"

if [[ "$(pin_verdict "$reviewed" "$reviewed")" == allow ]]; then
    ok "the branch still at the reviewed commit publishes"
else
    bad "an unchanged branch must publish"
fi
if [[ "$(pin_verdict "$reviewed" "$moved")" == refuse ]]; then
    ok "a branch that moved after the review is refused"
else
    bad "a branch that moved after the review must NOT publish"
fi
# The scheduled dry run passes no pin, and must stay able to report.
if [[ "$(pin_verdict "" "$moved")" == allow ]]; then
    ok "no pin set means unpinned, as the scheduled dry run needs"
else
    bad "an unset pin must not refuse"
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

echo "== the sweep summary counts what the push adds, not what it removes =="
# A sweep that removes a report has nothing to read at that path. Counting it
# made every deletion show up as a phantom broken report.
two="$(make_commit "a-bin/1.md" "b-bin/1.md")"
one="$(make_commit "a-bin/1.md")"
summary="$(python3 bench/review-pending.py --git-dir "$repo" \
    --head "$one" --base "$two" --no-llm 2>&1)"
if grep -q 'audit reports:  0' <<< "$summary"; then
    ok "a deleted report is not counted as pending"
else
    bad "a deleted report was counted: $(grep -m1 'audit reports' <<< "$summary")"
fi
if grep -q 'no findings' <<< "$summary"; then
    bad "a deleted report was reported as skipped or errored"
else
    ok "a deleted report is not reported as broken"
fi

echo "== a report that names the deployment's own infrastructure is refused =="
eval "$(sed -n '/^INTERNAL_STRINGS=/p' "$ENTRYPOINT")"
eval "$(sed -n '/^internal_string_paths()/,/^}/p' "$ENTRYPOINT")"
eval "$(sed -n '/^internal_string_working_files()/,/^}/p' "$ENTRYPOINT")"
eval "$(sed -n '/^sanitize_store()/,/^}/p' "$ENTRYPOINT")"
eval "$(sed -n '/^do_quarantine()/,/^}/p' "$ENTRYPOINT")"

# Like make_commit, but with real content and a parent, so a history can be
# built whose commits each add one report.
make_commit_content() {
    local parent="$1"; shift
    local idx="$tmp/index" path content blob tree
    rm -f "$idx"
    if [[ -n "$parent" ]]; then
        GIT_INDEX_FILE="$idx" git --git-dir="$repo" read-tree "$parent"
    fi
    while (( $# )); do
        path="$1"; content="$2"; shift 2
        blob="$(printf '%b' "$content" | git --git-dir="$repo" hash-object -w --stdin)"
        GIT_INDEX_FILE="$idx" git --git-dir="$repo" update-index --add \
            --cacheinfo "100644,${blob},${path}"
    done
    tree="$(GIT_INDEX_FILE="$idx" git --git-dir="$repo" write-tree)"
    GIT_AUTHOR_NAME=t GIT_AUTHOR_EMAIL=t@t GIT_COMMITTER_NAME=t GIT_COMMITTER_EMAIL=t@t \
        git --git-dir="$repo" commit-tree "$tree" ${parent:+-p "$parent"} -m t
}

published="$(make_commit_content "" "pkg-a/1.md" '---\nresult: safe\n---\nclean\n')"
leaky="$(make_commit_content "$published" "pkg-b/1.md" \
    '---\nresult: safe\nprovider: gateway.default.svc.cluster.local\n---\nbody\n')"
tip="$(make_commit_content "$leaky" "pkg-c/1.md" '---\nresult: unsafe\n---\nfine\n')"

if [[ "$(internal_string_paths "$repo" "$tip")" == "pkg-b/1.md" ]]; then
    ok "the leaky report is found, and only it"
else
    bad "internal_string_paths found: $(internal_string_paths "$repo" "$tip" | tr '\n' ' ')"
fi
if [[ -z "$(internal_string_paths "$repo" "$published")" ]]; then
    ok "the published commit is clean"
else
    bad "the published commit should be clean"
fi
# A site-specific string is honoured too.
if [[ "$(INTERNAL_STRINGS=nope,gateway.default internal_string_paths "$repo" "$tip")" == "pkg-b/1.md" ]]; then
    ok "a configured string is matched"
else
    bad "AUR_SLEUTH_INTERNAL_STRINGS was not honoured"
fi

git --git-dir="$repo" rev-parse "$tip" > "$store/refs/heads/audit-reports"
git --git-dir="$repo" rev-parse "$published" > "$store/refs/remotes/origin/audit-reports"
# The stage's own log lines are part of what is checked, so they are not
# silenced by -q here.
# shellcheck disable=SC2329  # log is called by do_review
out="$( (set +e; log() { echo "$*"; }; do_review --no-llm 2>&1; echo "exit=$?") )"
if grep -q 'exit=1' <<< "$out"; then
    ok "review exits 1 on an internal string, even though the gate passes"
else
    bad "review should exit 1: $out"
fi
if grep -q 'pkg-b/1.md' <<< "$out" && grep -q 'quarantine' <<< "$out"; then
    ok "review names the file and the remedy"
else
    bad "review output lacks the path or the remedy"
fi
json="$(grep '^REVIEW_JSON ' <<< "$out" | tail -1 | sed 's/^REVIEW_JSON //')"
if [[ -n "$json" ]] && python3 -c '
import json, sys
d = json.loads(sys.argv[1])
assert d["gate"] == "pass", d
assert d["internal"] == ["pkg-b/1.md"], d
assert d["publishable"] is False, d
assert d["pending"] == 2, d
assert d["audit_reports"] == 2, d
' "$json"; then
    ok "REVIEW_JSON carries the gate, the hits, and the counts"
else
    bad "REVIEW_JSON is wrong or missing: $json"
fi

echo "== quarantine drops them, and nothing else =="
# A real, non-bare store, as on the volume: objects fetched in, origin at the
# published commit, and the gitfile generate-dashboard.py resolves through.
qwt="$tmp/qstore"
git init --quiet "$qwt"
qstore="$qwt/.git"
git --git-dir="$qstore" fetch --quiet "$repo" "$tip:refs/heads/audit-reports"
git --git-dir="$qstore" update-ref refs/remotes/origin/audit-reports "$published"
mkdir -p "$tmp/src/bench" "$tmp/data/bulk-audit" \
         "$tmp/data/bulk-reports/model-a" "$tmp/data/bulk-reports/model-b"
cp bench/generate-dashboard.py "$tmp/src/bench/"
printf 'gitdir: %s\n' "$qstore" > "$tmp/src/.git"
printf -- '---\nresult: safe\nprovider: x.svc.cluster.local\n---\n' \
    > "$tmp/data/bulk-reports/model-a/aur-sleuth-report-pkg-b.txt"
printf -- '---\nresult: safe\n---\n' \
    > "$tmp/data/bulk-reports/model-b/aur-sleuth-report-pkg-a.txt"

quarantine() (
    set +e
    # All read by do_quarantine, which arrives through the eval above; scoped
    # to this subshell on purpose.
    # shellcheck disable=SC2030,SC2031,SC2034
    GIT_STORE="$qstore" DATA_DIR="$tmp/data" SRC_DIR="$tmp/src" MODE=quarantine \
        FETCH_URL=https://example.invalid/r.git
    # shellcheck disable=SC2329  # both called by do_quarantine
    die() { echo "die: $*"; exit 1; }
    # shellcheck disable=SC2329
    log() { echo "$*"; }
    do_quarantine 2>&1
    echo "exit=$?"
)
out="$(quarantine)"
if grep -q 'exit=0' <<< "$out"; then
    ok "quarantine exits 0"
else
    bad "quarantine failed: $out"
fi
qhead="$(git --git-dir="$qstore" rev-parse refs/heads/audit-reports)"
if [[ -z "$(internal_string_paths "$qstore" "$qhead")" ]]; then
    ok "the branch head carries no internal string"
else
    bad "internal strings remain at $qhead"
fi
if git --git-dir="$qstore" cat-file -e "$qhead:pkg-c/1.md" 2>/dev/null \
   && git --git-dir="$qstore" cat-file -e "$qhead:pkg-a/1.md" 2>/dev/null; then
    ok "the clean reports survive"
else
    bad "a clean report was dropped"
fi
if ! git --git-dir="$qstore" cat-file -e "$qhead:pkg-b/1.md" 2>/dev/null; then
    ok "the leaky report is gone"
else
    bad "the leaky report is still there"
fi
if git --git-dir="$qstore" merge-base --is-ancestor "$published" "$qhead"; then
    ok "origin is still an ancestor"
else
    bad "the rewrite detached from origin"
fi
# The leaky commit only ever added pkg-b, so it is pruned: one report commit
# remains, plus the dashboard rebuild.
n="$(git --git-dir="$qstore" rev-list --count "$published..$qhead")"
if [[ "$n" == "2" ]]; then
    ok "the emptied commit was pruned, the dashboard rebuilt"
else
    bad "expected 2 commits after the rewrite, got $n"
fi
backup="$(git --git-dir="$qstore" for-each-ref --format='%(objectname)' 'refs/backup/quarantine-*' | head -1)"
if [[ "$backup" == "$tip" ]]; then
    ok "the previous head is kept under refs/backup/"
else
    bad "backup ref is $backup, want $tip"
fi
if [[ ! -e "$tmp/data/bulk-reports/model-a/aur-sleuth-report-pkg-b.txt" \
      && -e "$tmp/data/bulk-reports/model-b/aur-sleuth-report-pkg-a.txt" ]]; then
    ok "the leaky working file is removed, the clean one kept"
else
    bad "working files: $(ls "$tmp"/data/bulk-reports/*/)"
fi
if git --git-dir="$qstore" cat-file -e "$qhead:_dashboard/pkg/pkg-c.json" 2>/dev/null \
   && ! git --git-dir="$qstore" cat-file -e "$qhead:_dashboard/pkg/pkg-b.json" 2>/dev/null; then
    ok "the dashboard was rebuilt from the cleaned branch"
else
    bad "dashboard JSON does not match the cleaned branch"
fi
# Running again is a no-op.
out="$(quarantine)"
if grep -q 'exit=0' <<< "$out" && grep -q 'nothing to do' <<< "$out" \
   && [[ "$(git --git-dir="$qstore" rev-parse refs/heads/audit-reports)" == "$qhead" ]]; then
    ok "a second quarantine changes nothing"
else
    bad "second quarantine: $out"
fi
# And the store it leaves behind passes review.
if [[ "$(GIT_STORE="$qstore" review_status)" == "0" ]]; then
    ok "review passes after quarantine"
else
    bad "review should pass after quarantine"
fi

echo
if (( fails > 0 )); then
    echo "FAILED: $fails check(s)"
    exit 1
fi
echo "publish gate: all checks passed"
