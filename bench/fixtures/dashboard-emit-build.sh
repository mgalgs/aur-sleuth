#!/usr/bin/env bash
# Build the fixture reports branch bench/test-dashboard-emit.sh reads, as a
# bare repository at $1, deterministically: fixed identities and dates, no
# user or system git config. The same script built the golden output under
# bench/fixtures/dashboard-emit/, so the two cannot drift apart.
#
# Usage: bash bench/fixtures/dashboard-emit-build.sh <repo-dir>
set -euo pipefail

repo="$1"
work="$(mktemp -d)"
trap 'rm -rf "$work"' EXIT

export GIT_CONFIG_GLOBAL=/dev/null GIT_CONFIG_NOSYSTEM=1
export GIT_AUTHOR_NAME=fixture GIT_AUTHOR_EMAIL=fixture@example.invalid
export GIT_COMMITTER_NAME=fixture GIT_COMMITTER_EMAIL=fixture@example.invalid
export GIT_AUTHOR_DATE=2026-10-01T12:00:00Z GIT_COMMITTER_DATE=2026-10-01T12:00:00Z

git init -q -b audit-reports "$work"
cd "$work"

# report <path> <package> <result> <model> <date> [body]
report() {
    mkdir -p "$(dirname "$1")"
    cat > "$1" <<MD
---
package: $2
pkgver: 1.0
pkgrel: 1
result: $3
model: $4
provider: custom
prompt_tokens: 4000
completion_tokens: 500
total_tokens: 4500
cost: 0.0012
execution_time: 20.5
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
unpinned_sources: 0
injection_attempts: 0
date: $5
file_verdicts:
  - file: PKGBUILD
    status: $3
    summary: "The PKGBUILD for $2"
  - file: .SRCINFO
    status: safe
    summary: Standard metadata
---

${6:-Body of the $2 report by $4.}
MD
}

# judge <path> <package> <verdict>
judge() {
    mkdir -p "$(dirname "$1")"
    cat > "$1" <<JSON
{"package": "$2", "correct_verdict": "$3", "confidence": "high",
 "reasoning": "Judged $2", "disagreement_analysis": "none",
 "coverage_issues": []}
JSON
}

# Two audits and a judge, with the judge settling a disagreement.
report alpha/20260928-100000-model-a.md alpha safe model/a 2026-09-28T10:00:00Z
report alpha/20260928-100100-model-b.md alpha unsafe model/b 2026-09-28T10:01:00Z
judge alpha/20260928-100500-judge.json alpha safe
# A report one level down still belongs to its top-level package.
report alpha/sub/20260929-000000-model-a.md alpha safe model/a 2026-09-29T00:00:00Z
# Not a report and not a judge: ignored.
echo '{"note": true}' > alpha/notes.json

# A .txt report, a .md report, and a judge file that does not parse.
report beta/20260920-080000-model-a.md beta inconclusive model/a 2026-09-20T08:00:00Z
mkdir -p beta && printf 'plain text report, no frontmatter\n' > beta/20260920-080001-model-b.txt
printf '{"package": "beta", "correct_verdict": ' > beta/20260920-090000-judge.json

# A judge with no audits beside it.
judge gamma/20260925-000000-judge.json gamma unsafe

# CRLF and a lone CR in a body; a report that is not UTF-8 (unreadable, so
# skipped); a report with no frontmatter at all.
report delta/20260926-000000-model-a.md delta safe model/a 2026-09-26T00:00:00Z \
    "$(printf 'line one\r\nline two\rline three')"
mkdir -p delta && printf -- '---\npackage: delta\n---\n\xe9\xff\n' > delta/20260926-000001-model-b.md
printf 'No frontmatter here.\n' > delta/20260926-000002-model-c.md

# Neighbours that sort around one another: foo-bar/, foo.md, foo/.
report foo/20260927-000000-model-a.md foo safe model/a 2026-09-27T00:00:00Z
report foo-bar/20260927-000000-model-a.md foo-bar unsafe model/a 2026-09-27T00:00:00Z
printf 'top-level file\n' > foo.md
printf 'readme\n' > README.md
judge x-judge.json x safe

# Paths only hostile code would write. git quotes these in a plain ls-tree,
# so the loader never read them; a colon it did.
mkdir -p eta
report 'eta/we"ird.md' eta unsafe model/a 2026-09-27T00:00:00Z
report "eta/new
line.md" eta unsafe model/a 2026-09-27T00:00:00Z
report "eta/tab	bed.md" eta unsafe model/a 2026-09-27T00:00:00Z
report "épsilon/20260927-000000-model-a.md" épsilon unsafe model/a 2026-09-27T00:00:00Z
report "eta/a:b.md" eta safe model/a 2026-09-27T00:00:00Z
# A symlink is a blob holding its target; it reads as that text.
ln -s ../alpha/20260928-100000-model-a.md eta/link.md

# Only ignored files: no package file at all.
mkdir -p zeta && echo '{}' > zeta/foo.json

# Published output and page files on the branch: skipped.
mkdir -p _dashboard/pkg
echo '{"stale": true}' > _dashboard/data.json
echo '{"stale": true}' > _dashboard/pkg/alpha.json
echo '<html></html>' > index.html
: > .nojekyll

git add -A
# A submodule entry: a commit id, not a blob.
git update-index --add --cacheinfo 160000,1111111111111111111111111111111111111111,kappa/sub
git commit -q -m fixture

rm -rf "$repo"
git clone -q --bare "$work" "$repo"
