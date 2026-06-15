#!/usr/bin/env bash
# review-audit.sh — Feed an aur-sleuth report to Claude for review and improvement
#
# Usage: bench/review-audit.sh <report-file>
#   report-file: path to an aur-sleuth report (e.g. /tmp/aur-sleuth/aur-sleuth-report-foo.txt)

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

if [[ $# -lt 1 ]]; then
    echo "Usage: $0 <report-file>" >&2
    echo "  report-file: path to aur-sleuth report (e.g. /tmp/aur-sleuth/aur-sleuth-report-foo.txt)" >&2
    exit 1
fi

REPORT_FILE="$1"
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
  ./aur-sleuth --pkgdir bench/synthetics/benign-skip-checksums --output plain -n 0
  ./aur-sleuth --pkgdir bench/synthetics/malicious-obfuscated-install --output plain -n 0
  ./aur-sleuth --pkgdir bench/synthetics/malicious-curl-exfil --output plain -n 0
Expected: benign passes, both malicious fail.

If the audit looks good, say so briefly and explain why.

Here is the audit report:
<report>
PROMPT_END
)"

PROMPT="${PROMPT}
${REPORT_CONTENT}
</report>"

cd "$PROJECT_DIR"
exec claude -p \
    --allowedTools "Read" "Edit" "Bash(./aur-sleuth *)" \
    <<< "$PROMPT"
