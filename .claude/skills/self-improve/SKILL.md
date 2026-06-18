---
name: self-improve
description: Run aur-sleuth on a package, then review the audit report for quality issues and improve the tool. Analyzes false positives/negatives, file selection, and explanation quality inline.
argument-hint: [--recent|--popular|--package <name>|--pkgdir <path>] [--dry-run]
---

# Self-Improve

Audit a package with aur-sleuth, review the report for quality, and improve the tool — all inline in this session.

## Step 1: Pick the package

Parse the user's arguments:
- `--recent` (default if no args): pick from AUR RSS feed
- `--popular`: pick from most popular AUR packages
- `--package <name>`: audit a specific AUR package by name
- `--pkgdir <path>`: audit a local package directory (e.g. `bench/synthetics/malicious-curl-exfil`)
- `--dry-run`: show what would be audited without running

For `--recent`, fetch the RSS and pick the first package:
```bash
curl -sS --max-time 30 https://aur.archlinux.org/rss/ | grep -oP '<item><title>\K[^<]+' | head -5
```
Let the user confirm the pick or choose a different one from the list.

For `--popular`, use the metadata cache:
```bash
# Downloads ~15MB if not cached
curl -sS --max-time 120 -o /tmp/aur-sleuth/packages-meta-ext-v1.json.gz https://aur.archlinux.org/packages-meta-ext-v1.json.gz
zcat /tmp/aur-sleuth/packages-meta-ext-v1.json.gz | python3 -c "import json,sys; pkgs=json.load(sys.stdin); pkgs.sort(key=lambda p: p.get('NumVotes',0), reverse=True); [print(p['Name']) for p in pkgs[:20]]"
```

## Step 2: Run the audit

Run aur-sleuth on the selected package:
```bash
AUDIT_FAILURE_FATAL=true AUR_SLEUTH_ASCII_ICONS=1 ./aur-sleuth <package-name> --output plain
# or for local dirs:
AUDIT_FAILURE_FATAL=true AUR_SLEUTH_ASCII_ICONS=1 ./aur-sleuth --pkgdir <path> --output plain -n 0
```
Use a 300s timeout — audits with many files can take a couple minutes.

Note the exit code (0 = safe, non-zero = unsafe) and read the report file from `/tmp/aur-sleuth/aur-sleuth-report-<pkgname>.txt`.

## Step 3: Review the audit report

Read the full report file, then analyze it across these dimensions:

### 3a. False Positives
Files marked UNSAFE that are actually fine:
- Hallucinated threats (inventing suspicious interpretations of benign code)
- Common AUR patterns flagged as malicious (e.g. `sha256sums=('SKIP')` is extremely common and not inherently malicious for VCS packages)
- Overly creative suspicion (e.g. interpreting npm scope names as wordplay)
- Standard packaging operations misread as exfiltration or backdoors

### 3b. False Negatives
Legitimately suspicious patterns that were missed or marked SAFE. Think about what a skilled attacker would actually do:
- Data exfiltration (curl/wget sending local files to external hosts)
- Obfuscated commands (hex/octal/base64 encoded shell commands)
- Downloading and executing remote scripts
- Backdoors or reverse shells hidden in install hooks
- `.install` file hooks that run arbitrary code post-install

### 3c. File Selection
Were the "additional files to review" choices sensible?
- Did the LLM pick obviously important files (install scripts, build scripts, configs with URLs)?
- Did it waste reviews on READMEs, LICENSE files, or other non-executable docs?
- Did it spread reviews across distinct files or waste slots on near-duplicates?

### 3d. Explanation Quality
- Are the explanations clear and actionable?
- Would a user understand what's actually risky vs what's noise?
- Are UNSAFE verdicts backed by specific evidence (code snippets, URLs)?

## Step 4: Present findings to the user

Summarize your analysis as a structured assessment:
- **Package**: name, what it does
- **Audit result**: safe/unsafe, exit code
- **Quality assessment**: your overall rating (good / has issues / needs work)
- **False positives found**: list with explanation
- **False negatives found**: list with explanation
- **File selection quality**: good/bad, what was missed or wasted
- **Suggested improvements**: what to change in aur-sleuth

Wait for the user to discuss and agree on which improvements to make before editing code.

## Step 5: Implement improvements (if agreed)

The aur-sleuth source is a single Python script at `./aur-sleuth`. Key areas (use grep to find exact locations — line numbers drift):
- `SYSTEM_PROMPTS` dict: the system prompts sent to the auditing LLM — highest leverage
- `audit_file()` function: where individual files are audited
- The XML response format prompt inside `audit_file()`: what we ask the LLM to produce
- `gen_user_prompt_for_agentic_audit()`: the file selection prompt
- `file_security_priority()`: heuristic ranking for file review ordering
- `check_pkgbuild()`: the initial PKGBUILD safety gate

Focus changes on the system prompts and audit instructions — that's where the biggest leverage is for fixing false positives/negatives.

## Step 6: Verify changes

After making changes, verify in two ways:

**1. Regression tests** — run the synthetic test suite:
```bash
bash bench/run-synthetic-tests.sh -q
```
Expected: all 3 pass (benign → exit 0, both malicious → exit 1).

**2. Re-run on the package where the issue was found** — this is mandatory, not optional. The synthetic tests verify nothing regressed, but only a re-run against the original package confirms the fix actually works for the case that motivated it. Compare the relevant output (file selection, verdicts, error messages) against the original run.

## Step 7: Archive the report

Archive the report to the `audit-reports` orphan branch:
```bash
bash bench/archive-report.sh <package-name>
```
This extracts metadata from the report and commits it with YAML frontmatter.
