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

Read the full report file, then analyze it across these dimensions.

### 3z. Scope gate — read this before filing any finding

**Read `CLAUDE.md` in the repo root first.** It defines the threat model. Everything
below is judged against that threat model, not against general security practice.

`aur-sleuth` detects **supply-chain attacks that target the AUR**: code injected into the
packaging pipeline by a malicious maintainer, a hijacked maintainer account, or a swapped
upstream artifact. It is not a general security auditor.

The most common way this review goes wrong is scope creep. You find something genuinely
risky, file it as a miss, and propose a prompt change — but the risk belongs to the
upstream application, not to the AUR packaging. That prompt change then fires on every
package of that kind, so it buys one false positive per package and catches nothing.

Before you file any finding, answer:

> Could an AUR maintainer have injected this, and does it serve no purpose the package
> claims?

If the answer is no, it is not a finding. **Risky-but-legitimate is not a finding.**
Out of scope, no matter how alarming it looks:

- Upstream application functionality (a VPN rewriting routes, a browser reading files)
- Vulnerabilities or weak crypto in upstream code
- Upstream telemetry, analytics, or fingerprinting
- Privileges the app needs for its stated purpose (setuid on a bundled network proxy)
- Packaging hygiene alone: unpinned source, plain-http URL, missing checksum on a VCS source

The audit prompts already encode this boundary — `file_auditor` items 5, 6, and 7. If a
verdict says "this is standard upstream behavior, not a supply-chain injection," that is
the tool reasoning **correctly**, not hedging. Do not file it as under-flagging.

### 3a. False Positives
Files marked UNSAFE that are actually fine:
- Hallucinated threats (inventing suspicious interpretations of benign code)
- Overly creative suspicion (e.g. interpreting npm scope names as wordplay)
- Standard packaging operations misread as exfiltration or backdoors
- Upstream application behavior or upstream vulnerabilities flagged as an AUR attack (see 3z)
- `sha256sums=('SKIP')` flagged as malicious, on **any** source type. It is ordinary AUR
  practice. The unpinned-source fact is reported separately by a code check (see 3b), so an
  UNSAFE verdict over a SKIP checksum is always a false positive.

### 3b. False Negatives
Patterns an AUR attacker would actually use, that were missed or marked SAFE:
- Data exfiltration (curl/wget sending local files to external hosts)
- Obfuscated commands (hex/octal/base64 encoded shell commands)
- Downloading and executing remote scripts
- Backdoors or reverse shells hidden in install hooks
- `.install` file hooks that run arbitrary code post-install
- Code injected into the upstream tree via a `.patch` or an added file
- Code injected into an install hook that fetches at *install* time rather than build time

Keep the attacker model in view: they must get code past a maintainer's commit or into a
fetched artifact. A flaw the attacker cannot control is not their attack.

**Already handled — do not re-file these as prompt gaps:**

- **Unpinned remote sources** (`sha256sums=('SKIP')` on an `http(s)` artifact) are detected
  in code by `find_unpinned_remote_sources()` and reported as a note plus an
  `unpinned_sources` frontmatter count. Check that the note appeared; do not add a prompt
  rule for it. Two past attempts to make this a prompt rule both caused false UNSAFE
  verdicts — once at the `makepkg` gate, once at the full review — because a vivid risk
  description makes models escalate even when told the decision stays SAFE. Separate
  "must document" from "must block".
- **Unauditable binary payload** is counted in `files_unauditable` with a report note.

That pattern generalizes: **if a finding is decidable by parsing, propose a code check,
not a prompt rule.** Prompt rules for decidable facts vary by model, need a live audit to
test, and leak into verdicts.

### 3c. File Selection
Were the "additional files to review" choices sensible? Judge by one measure: did the
slots go to files on the **AUR-controlled attack surface** — things that execute at build
or install time, or that a maintainer could have injected?
- Did the LLM pick the files that matter (install scripts, build scripts, patches, configs with URLs)?
- Did it waste reviews on READMEs, LICENSE files, or other non-executable docs?
- Did it spread reviews across distinct files or waste slots on near-duplicates?
- Did it burn slots on **vendored upstream bundle content** (`node_modules/`, driver
  manifests, app config templates) that no maintainer touched? For a repackaged `-bin`
  package the AUR surface may be just PKGBUILD + `.install`, both already required
  reviews. Selecting fewer files and saying so beats filling ten slots with
  "this config file is fine."

### 3d. Explanation Quality
- Are the explanations clear and actionable?
- Would a user understand what's actually risky vs what's noise?
- Are UNSAFE verdicts backed by specific evidence (code snippets, URLs)?
- Does the report state what it could **not** see? A prebuilt binary, an `.asar` bundle,
  or a stripped ELF cannot be audited. Silence there reads as coverage the audit never had.
- Scope-correct reasoning is not a defect (see 3z). Critique verbosity and summaries that
  merely restate the status field, not the act of ruling something out as upstream behavior.

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
