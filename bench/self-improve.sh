#!/usr/bin/env bash
# self-improve.sh — Orchestrate the aur-sleuth self-improvement loop
#
# Picks a package (from AUR RSS, popularity, or explicit), runs aur-sleuth,
# feeds the report to Claude for review/improvement, commits, and pushes.
# Every audit report is archived on the `audit-reports` orphan branch.
#
# Usage:
#   bench/self-improve.sh --recent              # pick from recently updated AUR packages
#   bench/self-improve.sh --popular             # pick from most popular AUR packages
#   bench/self-improve.sh --package yay-bin     # audit a specific package
#   bench/self-improve.sh --recent --auto-pr    # also create a GitHub PR

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
AUR_SLEUTH="${PROJECT_DIR}/aur-sleuth"
CACHE_DIR="/tmp/aur-sleuth"
METADATA_CACHE="${CACHE_DIR}/packages-meta-ext-v1.json.gz"
METADATA_CACHE_MAX_AGE=$((86400))  # 1 day in seconds
AUR_RSS_URL="https://aur.archlinux.org/rss/"
AUR_METADATA_URL="https://aur.archlinux.org/packages-meta-ext-v1.json.gz"
REPORTS_BRANCH="audit-reports"

# --- Argument parsing ---
MODE=""
PACKAGE=""
AUTO_PR=0
DRY_RUN=0

usage() {
    cat >&2 <<EOF
Usage: $0 <--recent|--popular|--package PKG> [--auto-pr] [--dry-run]

Package selection (exactly one required):
  --recent          Pick from recently updated AUR packages (RSS feed)
  --popular         Pick from most popular AUR packages (metadata dump)
  --package PKG     Audit a specific package

Options:
  --auto-pr         Create a GitHub PR after pushing
  --dry-run         Show what would be done without running the audit
EOF
    exit 1
}

while [[ $# -gt 0 ]]; do
    case "$1" in
        --recent)  MODE="recent"; shift ;;
        --popular) MODE="popular"; shift ;;
        --package)
            MODE="package"
            if [[ $# -lt 2 ]]; then
                echo "Error: --package requires a package name" >&2
                exit 1
            fi
            PACKAGE="$2"
            shift 2
            ;;
        --auto-pr)  AUTO_PR=1; shift ;;
        --dry-run)  DRY_RUN=1; shift ;;
        -h|--help)  usage ;;
        *)
            echo "Error: unknown argument: $1" >&2
            usage
            ;;
    esac
done

if [[ -z "$MODE" ]]; then
    echo "Error: must specify --recent, --popular, or --package PKG" >&2
    usage
fi

# --- Helper functions ---

already_audited() {
    local pkg="$1"
    git -C "$PROJECT_DIR" branch -a 2>/dev/null \
        | grep -qE "(^|\s)remotes/origin/self-improvement-audits/${pkg}\$" \
        || git -C "$PROJECT_DIR" branch 2>/dev/null \
        | grep -qE "(^|\s)self-improvement-audits/${pkg}\$"
}

pick_recent_package() {
    local rss
    rss="$(curl -sS --max-time 30 "$AUR_RSS_URL")"

    local candidates
    candidates="$(echo "$rss" | grep -oP '<item><title>\K[^<]+')"

    while IFS= read -r pkg; do
        [[ -z "$pkg" ]] && continue
        if ! already_audited "$pkg"; then
            echo "$pkg"
            return 0
        fi
    done <<< "$candidates"

    echo "Error: all recent packages already audited" >&2
    return 1
}

pick_popular_package() {
    local need_download=1
    if [[ -f "$METADATA_CACHE" ]]; then
        local age
        age=$(( $(date +%s) - $(stat -c %Y "$METADATA_CACHE") ))
        if [[ $age -lt $METADATA_CACHE_MAX_AGE ]]; then
            need_download=0
        fi
    fi

    if [[ $need_download -eq 1 ]]; then
        echo "Downloading AUR metadata (~15MB)..." >&2
        curl -sS --max-time 120 -o "$METADATA_CACHE" "$AUR_METADATA_URL"
    fi

    local candidates
    candidates="$(zcat "$METADATA_CACHE" \
        | python3 -c "
import json, sys
pkgs = json.load(sys.stdin)
pkgs.sort(key=lambda p: p.get('NumVotes', 0), reverse=True)
for p in pkgs[:200]:
    print(p['Name'])
")"

    while IFS= read -r pkg; do
        [[ -z "$pkg" ]] && continue
        if ! already_audited "$pkg"; then
            echo "$pkg"
            return 0
        fi
    done <<< "$candidates"

    echo "Error: top 200 popular packages already audited" >&2
    return 1
}

# Parse audit metadata from a report file + captured stdout.
# Sets: AUDIT_RESULT, MODEL, BASE_URL, PROVIDER, TOKENS, COST
parse_report_metadata() {
    local report="$1"
    local stdout_log="$2"

    AUDIT_RESULT="unknown"
    if grep -q 'Final Status: UNSAFE' "$report" 2>/dev/null; then
        AUDIT_RESULT="unsafe"
    elif grep -q 'Final Status: SAFE' "$report" 2>/dev/null; then
        AUDIT_RESULT="safe"
    fi

    MODEL="$(grep -oP '^\s*Models?:\s*\K\S+' "$stdout_log" 2>/dev/null | head -1 || echo "unknown")"
    BASE_URL="$(grep -oP ' with \S+ from \K\S+' "$stdout_log" 2>/dev/null | head -1 || echo "unknown")"
    TOKENS="$(grep -oP '^\s*Total Tokens:\s*\K[\d,]+' "$stdout_log" 2>/dev/null | head -1 || echo "unknown")"
    COST="$(grep -oP '^\s*Total Cost:\s*\K\S+' "$stdout_log" 2>/dev/null | head -1 || echo "unknown")"

    # Derive provider from base URL hostname (e.g. https://openrouter.ai/api/v1 -> openrouter)
    PROVIDER="unknown"
    if [[ "$BASE_URL" != "unknown" ]]; then
        local host
        host="$(echo "$BASE_URL" | sed -E 's|https?://([^/]+).*|\1|')"
        PROVIDER="$(echo "$host" | sed -E 's/\..*//')"
    fi
}

# Build the report filename: <provider>-<model_sanitized>-<aur_sleuth_short_rev>.md
build_report_filename() {
    local sleuth_rev
    sleuth_rev="$(git -C "$PROJECT_DIR" rev-parse --short HEAD)"
    local model_sanitized
    model_sanitized="$(echo "$MODEL" | tr '/' '-')"
    echo "${PROVIDER}-${model_sanitized}-${sleuth_rev}.md"
}

# Store a report on the audit-reports orphan branch using git plumbing.
# This avoids any branch checkout — it writes directly to the ref.
store_report() {
    local pkg="$1"
    local report_file="$2"
    local filename="$3"
    local sleuth_rev
    sleuth_rev="$(git -C "$PROJECT_DIR" rev-parse HEAD)"

    # Build markdown with YAML frontmatter
    local md_content
    md_content="$(cat <<EOF
---
package: ${pkg}
result: ${AUDIT_RESULT}
model: ${MODEL}
provider: ${PROVIDER}
base_url: ${BASE_URL}
aur_sleuth_rev: ${sleuth_rev}
tokens: ${TOKENS}
cost: ${COST}
date: $(date -u +%Y-%m-%dT%H:%M:%SZ)
---

$(cat "$report_file")
EOF
)"

    local blob_hash tree_hash commit_hash
    local tmpindex
    tmpindex="$(mktemp)"
    rm -f "$tmpindex"  # git needs a missing file to create a fresh index

    # Start from existing tree if the branch exists
    if git -C "$PROJECT_DIR" rev-parse --verify "$REPORTS_BRANCH" &>/dev/null; then
        GIT_INDEX_FILE="$tmpindex" git -C "$PROJECT_DIR" read-tree "$REPORTS_BRANCH"
    fi

    blob_hash="$(echo "$md_content" | git -C "$PROJECT_DIR" hash-object -w --stdin)"
    GIT_INDEX_FILE="$tmpindex" git -C "$PROJECT_DIR" update-index --add \
        --cacheinfo "100644,${blob_hash},${pkg}/${filename}"
    tree_hash="$(GIT_INDEX_FILE="$tmpindex" git -C "$PROJECT_DIR" write-tree)"

    local parent_args=()
    if git -C "$PROJECT_DIR" rev-parse --verify "$REPORTS_BRANCH" &>/dev/null; then
        parent_args=(-p "$REPORTS_BRANCH")
    fi

    commit_hash="$(git -C "$PROJECT_DIR" commit-tree "$tree_hash" \
        "${parent_args[@]}" \
        -m "audit: ${pkg} (${AUDIT_RESULT}) [${PROVIDER}/${MODEL}]")"

    git -C "$PROJECT_DIR" update-ref "refs/heads/${REPORTS_BRANCH}" "$commit_hash"
    rm -f "$tmpindex"

    echo "==> Stored report: ${REPORTS_BRANCH}:${pkg}/${filename}"
}

# --- Main flow ---

cd "$PROJECT_DIR"
mkdir -p "$CACHE_DIR"

# 1. Pick the package
case "$MODE" in
    recent)
        echo "==> Picking a recently updated package from AUR RSS..."
        PACKAGE="$(pick_recent_package)"
        ;;
    popular)
        echo "==> Picking a popular package from AUR metadata..."
        PACKAGE="$(pick_popular_package)"
        ;;
    package)
        # Already set via --package
        ;;
esac

echo "==> Selected package: $PACKAGE"
BRANCH="self-improvement-audits/${PACKAGE}"

if [[ $DRY_RUN -eq 1 ]]; then
    echo "[dry-run] Would audit: $PACKAGE"
    echo "[dry-run] Branch: $BRANCH"
    echo "[dry-run] Exiting."
    exit 0
fi

# 2. Git branch management
echo "==> Setting up git branch: $BRANCH"
git fetch origin

if git show-ref --verify --quiet "refs/heads/${BRANCH}" 2>/dev/null; then
    git checkout "$BRANCH"
    git rebase origin/master
elif git show-ref --verify --quiet "refs/remotes/origin/${BRANCH}" 2>/dev/null; then
    git checkout -b "$BRANCH" "origin/${BRANCH}"
    git rebase origin/master
else
    git checkout -b "$BRANCH" origin/master
fi

# 3. Run the audit
echo "==> Running aur-sleuth on: $PACKAGE"
AUDIT_EXIT=0
AUDIT_FAILURE_FATAL=true AUR_SLEUTH_ASCII_ICONS=1 \
    "$AUR_SLEUTH" "$PACKAGE" --output plain 2>&1 \
    | tee "${CACHE_DIR}/last-run.txt" \
    || AUDIT_EXIT=$?

REPORT_FILE="${CACHE_DIR}/aur-sleuth-report-${PACKAGE}.txt"
if [[ ! -f "$REPORT_FILE" ]]; then
    echo "Warning: report file not found at $REPORT_FILE, using captured output" >&2
    REPORT_FILE="${CACHE_DIR}/last-run.txt"
fi

echo ""
echo "==> Audit exit code: $AUDIT_EXIT"
echo "==> Report: $REPORT_FILE"

# 4. Archive the report on the orphan branch
parse_report_metadata "$REPORT_FILE" "${CACHE_DIR}/last-run.txt"
REPORT_FILENAME="$(build_report_filename)"
store_report "$PACKAGE" "$REPORT_FILE" "$REPORT_FILENAME"

# 5. Run the review loop
echo ""
echo "==> Sending report to Claude for review..."
"$SCRIPT_DIR/review-audit.sh" "$REPORT_FILE" || true

# 6. Commit if there are changes
if git diff --quiet && git diff --cached --quiet; then
    echo "==> No changes from review. Cleaning up branch."
    git push origin "$REPORTS_BRANCH" 2>/dev/null || true
    git checkout master
    git branch -d "$BRANCH" 2>/dev/null || true
    echo "==> Done (no improvements needed)."
    exit 0
fi

REPORT_CONTENT="$(cat "$REPORT_FILE")"

git add -A
git commit -m "$(cat <<EOF
self-improve: audit ${PACKAGE} (${AUDIT_RESULT})

Package: ${PACKAGE}
Model: ${MODEL}
API: ${BASE_URL}
Tokens: ${TOKENS}
Cost: ${COST}
Audit Result: ${AUDIT_RESULT}

--- Audit Report ---
${REPORT_CONTENT}
EOF
)"

# 7. Push if there are commits ahead of origin/master
if git log origin/master..HEAD --oneline | grep -q .; then
    echo "==> Pushing to origin/${BRANCH}..."
    git push -u origin "$BRANCH"
fi

# Push the audit-reports branch too
echo "==> Pushing audit-reports branch..."
git push origin "$REPORTS_BRANCH" 2>/dev/null || true

# 8. Optionally create a PR
if [[ $AUTO_PR -eq 1 ]]; then
    echo "==> Creating pull request..."
    gh pr create \
        --title "self-improve: improvements from auditing ${PACKAGE}" \
        --body "$(cat <<EOF
## Self-improvement audit: ${PACKAGE}

**Result**: ${AUDIT_RESULT}
**Model**: ${MODEL}

Claude reviewed the audit output and made improvements to aur-sleuth.

<details>
<summary>Full audit report</summary>

\`\`\`
${REPORT_CONTENT}
\`\`\`
</details>
EOF
)"
fi

# 9. Return to master
echo "==> Returning to master branch"
git checkout master

echo "==> Done! Branch: $BRANCH"
