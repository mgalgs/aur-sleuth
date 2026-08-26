#!/usr/bin/env bash
# review-audit.sh — Feed an aur-sleuth report to Claude for review and improvement
#
# Usage: bench/review-audit.sh <report-file> <scratch-dir>
#   report-file: path to an aur-sleuth report (e.g. /tmp/aur-sleuth/aur-sleuth-report-foo.txt)
#   scratch-dir: writable directory for outputs (commit-msg.txt, etc.)

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

if [[ $# -lt 2 ]]; then
    echo "Usage: $0 <report-file> <scratch-dir>" >&2
    echo "  report-file:  path to aur-sleuth report" >&2
    echo "  scratch-dir:  writable directory for outputs (commit-msg.txt, etc.)" >&2
    exit 1
fi

REPORT_FILE="$1"
SCRATCH_DIR="$2"
if [[ ! -f "$REPORT_FILE" ]]; then
    echo "Error: report file not found: $REPORT_FILE" >&2
    exit 1
fi

REPORT_CONTENT="$(cat "$REPORT_FILE")"

PROMPT="$(cat <<'PROMPT_END'
You are reviewing the output of aur-sleuth, an LLM-powered security auditor for
Arch User Repository (AUR) packages. Your job is to identify quality issues in
this audit and, if warranted, improve the aur-sleuth tool itself.

The aur-sleuth source is a single Python script at: ./aur-sleuth
Key areas to know about (use Read/grep to find exact locations):
- SYSTEM_PROMPTS dict: the system prompts sent to the auditing LLM
- audit_file() function: where individual files are audited
- The XML response format prompt: what we ask the LLM to produce
- maintainer_files(): the review set -- every file in the AUR repository, and
  nothing makepkg downloaded (see CLAUDE.md, "The boundary")

Analyze the audit report below for:

1. FALSE POSITIVES: Files marked UNSAFE that are actually fine. Look for:
   - Hallucinated threats (inventing suspicious interpretations of benign code)
   - Common AUR patterns flagged as malicious (e.g. sha256sums=('SKIP') is
     extremely common and not inherently malicious)
   - Overly creative suspicion (e.g. interpreting npm scope names as wordplay)

2. FALSE NEGATIVES: Legitimately suspicious patterns that were missed or marked
   SAFE. Think about what a skilled attacker would actually do.

3. COVERAGE: Every file in the AUR repository is reviewed, and nothing makepkg
   downloaded is. Did the report say what it covered and what it did not (the
   downloaded file count, the upstream files the PKGBUILD names)?

4. EXPLANATION QUALITY: Are the explanations clear and actionable? Would a user
   understand what's actually risky vs what's noise?

If you identify actionable issues, improve aur-sleuth to address them. Focus on
the system prompts and audit prompt — that's where the biggest leverage is.

After making changes, verify with the synthetic test packages:
  bash bench/run-synthetic-tests.sh -q
Expected: every benign fixture exits 0, every malicious one exits 1.

If you make changes, write a git commit message to SCRATCH_DIR/commit-msg.txt:
- First line: conventional commit subject (e.g. "fix: Unescape HTML entities in XML response parsing")
- Blank line, then body describing what changed and why

If the audit looks good, say so briefly and explain why. Do NOT write a commit message file if you made no changes.

Here is the audit report:
<report>
PROMPT_END
)"

PROMPT="${PROMPT//SCRATCH_DIR/$SCRATCH_DIR}
${REPORT_CONTENT}
</report>"

cd "$PROJECT_DIR"
exec claude -p \
    --model opus \
    --allowedTools "Read" "Edit" "Bash(./aur-sleuth *)" "Write(${SCRATCH_DIR}/*)" \
    <<< "$PROMPT"
