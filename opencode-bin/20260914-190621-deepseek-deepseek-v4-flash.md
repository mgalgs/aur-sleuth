---
package: opencode-bin
pkgver: 1.18.31
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 7357
completion_tokens: 869
total_tokens: 8226
cost: 0.00073596740
execution_time: 30.54
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-14T19:06:21Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD with pinned checksums.
---

Materializing opencode-bin from local mirror...
Materialized opencode-bin
Analyzing opencode-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and a function definition. No top-level command substitutions, evals, or external command executions are present. The source URLs are static strings pointing to the official GitHub releases. Sourcing this file for `makepkg --printsrcinfo` does not execute any malicious code.
</details>
<evidence></evidence>
<summary>No top-level code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risk.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is standard package metadata for an Arch User Repository (AUR) package. It declares the package name, version, description, upstream URL, architecture support, dependencies, and source tarballs with SHA-256 checksums. The source URLs point to the official GitHub releases of the opencode project (`https://github.com/anomalyco/opencode/releases/download/...`), which is the expected upstream location. There are no embedded scripts, obfuscated code, or suspicious network destinations. The presence of SHA-256 checksums (not `SKIP`) indicates integrity verification of the downloaded archives. No evidence of supply-chain tampering or malicious intent is present.</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard binary AUR package. It downloads the upstream binary tarball from the official GitHub releases of the `anomalyco/opencode` project. Checksums are provided and pinned (not SKIP). The `package()` function simply installs the binary to `/usr/bin/opencode` with appropriate permissions. There are no obfuscated commands, unexpected network requests, or system modifications outside normal packaging. No evidence of malicious code injection.
</details>
<evidence></evidence>
<summary>Standard binary PKGBUILD with pinned checksums.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD with pinned checksums.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,357
  Completion Tokens: 869
  Total Tokens: 8,226
  Total Cost: $0.000736
  Execution Time: 30.54 seconds

Final Status: SAFE


No issues found.
