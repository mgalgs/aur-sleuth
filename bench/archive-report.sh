#!/usr/bin/env bash
# Archive an aur-sleuth report to the audit-reports orphan branch.
# Usage: archive-report.sh <package-name> [report-file]
#   report-file defaults to /tmp/aur-sleuth/aur-sleuth-report-<package-name>.txt
set -euo pipefail

cd "$(dirname "$0")/.."
REPORTS_BRANCH="audit-reports"

pkg="${1:?Usage: archive-report.sh <package-name> [report-file]}"
report_file="${2:-/tmp/aur-sleuth/aur-sleuth-report-${pkg}.txt}"

if [[ ! -f "$report_file" ]]; then
    echo "Error: report file not found: $report_file" >&2
    exit 1
fi

# Extract metadata from report
model="$(grep -oP '^\s*Models?:\s*\K\S+' "$report_file" | head -1 || echo "unknown")"
tokens="$(grep -oP 'Total Tokens:\s*\K[\d,]+' "$report_file" | tr -d ',' || echo "0")"
cost="$(grep -oP 'Total Cost:\s*\K\S+' "$report_file" || echo "unknown")"
result="$(grep -oP 'Final Status:\s*\K\S+' "$report_file" || echo "unknown")"
result_lower="$(echo "$result" | tr '[:upper:]' '[:lower:]')"
base_url="$(grep -oP 'with \S+ from \K\S+' "$report_file" | head -1 || echo "unknown")"
provider="unknown"
if [[ "$base_url" != "unknown" ]]; then
    provider="$(echo "$base_url" | sed -E 's|https?://([^/]+).*|\1|')"
fi

sleuth_rev="$(git rev-parse HEAD)"
filename="$(date -u +%Y%m%d-%H%M%S)-${model//\//-}.md"

# Build markdown with YAML frontmatter
md_content="---
package: ${pkg}
result: ${result_lower}
model: ${model}
provider: ${provider}
base_url: ${base_url}
aur_sleuth_rev: ${sleuth_rev}
tokens: ${tokens}
cost: ${cost}
date: $(date -u +%Y-%m-%dT%H:%M:%SZ)
---

$(cat "$report_file")"

# Git plumbing: add to audit-reports branch without checking it out
tmpindex="$(mktemp)"
rm -f "$tmpindex"

if git rev-parse --verify "$REPORTS_BRANCH" &>/dev/null; then
    GIT_INDEX_FILE="$tmpindex" git read-tree "$REPORTS_BRANCH"
fi

blob_hash="$(echo "$md_content" | git hash-object -w --stdin)"
GIT_INDEX_FILE="$tmpindex" git update-index --add \
    --cacheinfo "100644,${blob_hash},${pkg}/${filename}"
tree_hash="$(GIT_INDEX_FILE="$tmpindex" git write-tree)"

parent_args=()
if git rev-parse --verify "$REPORTS_BRANCH" &>/dev/null; then
    parent_args=(-p "$REPORTS_BRANCH")
fi

commit_hash="$(git commit-tree "$tree_hash" \
    "${parent_args[@]}" \
    -m "audit: ${pkg} (${result_lower}) [${provider}/${model}]")"

git update-ref "refs/heads/${REPORTS_BRANCH}" "$commit_hash"
rm -f "$tmpindex"

echo "Stored: ${REPORTS_BRANCH}:${pkg}/${filename}"
