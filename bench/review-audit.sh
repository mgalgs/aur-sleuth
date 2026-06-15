#!/usr/bin/env bash
# review-audit.sh — Feed an aur-sleuth report to Claude for review and improvement
#
# Usage: bench/review-audit.sh <report-file>
#   report-file: path to an aur-sleuth report (e.g. /tmp/aur-sleuth/aur-sleuth-report-foo.txt)

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
Key areas to know about:
- SYSTEM_PROMPTS dict (~line 220): the system prompts sent to the auditing LLM
- audit_file() function (~line 848): where individual files are audited
- The XML response format prompt (~line 891): what we ask the LLM to produce
- gen_user_prompt_for_agentic_audit() (~line 953): the file selection prompt

Analyze the audit report below for:

1. FALSE POSITIVES: Files marked UNSAFE that are actually fine. Look for:
   - Hallucinated threats (inventing suspicious interpretations of benign code)
   - Common AUR patterns flagged as malicious (e.g. sha256sums=('SKIP') is
     extremely common and not inherently malicious)
   - Overly creative suspicion (e.g. interpreting npm scope names as wordplay)

2. FALSE NEGATIVES: Legitimately suspicious patterns that were missed or marked
   SAFE. Think about what a skilled attacker would actually do.

3. FILE SELECTION: Were the "additional files to review" choices sensible? Did
   the LLM pick obviously important files (install scripts, build scripts,
   configs with URLs) or waste reviews on READMEs and LICENSE files?

4. EXPLANATION QUALITY: Are the explanations clear and actionable? Would a user
   understand what's actually risky vs what's noise?

If you identify actionable issues, improve aur-sleuth to address them. Focus on
the system prompts and audit prompt — that's where the biggest leverage is.

After making changes, verify with the synthetic test packages:
  AUDIT_FAILURE_FATAL=true AUR_SLEUTH_ASCII_ICONS=1 ./aur-sleuth --pkgdir bench/synthetics/benign-skip-checksums --output plain -n 0
  AUDIT_FAILURE_FATAL=true AUR_SLEUTH_ASCII_ICONS=1 ./aur-sleuth --pkgdir bench/synthetics/malicious-obfuscated-install --output plain -n 0
  AUDIT_FAILURE_FATAL=true AUR_SLEUTH_ASCII_ICONS=1 ./aur-sleuth --pkgdir bench/synthetics/malicious-curl-exfil --output plain -n 0
Expected: benign passes (exit 0), both malicious fail (exit 1).

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
