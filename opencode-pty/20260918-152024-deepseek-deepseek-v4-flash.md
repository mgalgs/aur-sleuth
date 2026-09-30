---
package: opencode-pty
pkgver: 0.4.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 11735
completion_tokens: 1966
total_tokens: 13701
cost: 0.00078084328
execution_time: 54.7
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-18T15:20:24Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore; no security concerns.
  - file: opencode-pty.install
    status: safe
    summary: "Safe: purely informational install script with no malicious code."
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package with no signs of malicious code.
  - file: .SRCINFO
    status: safe
    summary: Manifest-only metadata, pinned checksum, official npm source; no malicious behavior found.
---

Materializing opencode-pty from local mirror...
Materialized opencode-pty
Analyzing opencode-pty AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and function definitions in its top-level scope. No command substitutions, backticks, or dynamic executions occur during sourcing. All values are literal strings or arrays. The `latestver()` and `package()` functions are defined but not invoked. Therefore, running `makepkg --printsrcinfo` which only sources the top-level code is safe.</details>
<evidence></evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files by default and then explicitly whitelists common packaging files (PKGBUILD, .SRCINFO, install scripts, patches, systemd units, etc.). Such a configuration is typical and expected for AUR Git repos. There is no executable code, no network operations, no obfuscation, and no deviation from normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore; no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, opencode-pty.install...
[1/4] Reviewing .SRCINFO, PKGBUILD, opencode-pty.install...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore; no security concerns.
LLM auditresponse for opencode-pty.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux `.install` script that runs during package installation and upgrade. It contains only simple `echo` commands that display instructions to the user about how to enable the PTY plugin in an opencode configuration file. There are no network requests, file modifications, execution of downloaded content, obfuscated code, or any other suspicious operations. The script is entirely informational and poses no security threat.
</details>
<evidence></evidence>
<summary>Safe: purely informational install script with no malicious code.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed opencode-pty.install. Status: SAFE -- Safe: purely informational install script with no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux packaging practices for a Node.js/npm package. The source is downloaded from the official npm registry with a pinned SHA-256 checksum. The `package()` function extracts the tarball, runs `npm install` with production-only flags, removes architecture-specific files from the bundled package, and installs the result into the proper plugin directory. The `latestver()` helper defines a maintainer utility (not executed during build) that queries the npm registry. There is no obfuscation, unexpected network destinations, or dangerous command usage.
</details>
<evidence>
</evidence>
<summary>Standard AUR package with no signs of malicious code.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package with no signs of malicious code.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` is a metadata-only package manifest. It contains no code, no shell commands, no network operations, and no file-system manipulation — it simply declares the package name, description, version, URL, dependencies (npm build tool, `opencode` runtime), and one source tarball fetched from the official npm registry (`registry.npmjs.org`), which is the canonical host for the stated upstream project.

The single source is pinned with a specific SHA-256 checksum (`605625af...c81d0cde`) rather than `SKIP`, so there is no supply-chain integrity gap from the manifest side. The URL points to the package's own upstream project, and nothing in the file references unexpected hosts, encodes data, or executes anything.

Two small caveats worth noting (hygiene, not evidence of malice): the referenced `opencode-pty.install` script is not visible in this manifest and would need separate review to fully audit the package install-time behavior, and the genuine risk surface lives inside the fetched tarball, which cannot be assessed from this file. Neither observation changes the assessment of this file itself.
</details>
<evidence>
</evidence>
<summary>
Manifest-only metadata, pinned checksum, official npm source; no malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Manifest-only metadata, pinned checksum, official npm source; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,735
  Completion Tokens: 1,966
  Total Tokens: 13,701
  Total Cost: $0.000781
  Execution Time: 54.70 seconds

Final Status: SAFE


No issues found.
