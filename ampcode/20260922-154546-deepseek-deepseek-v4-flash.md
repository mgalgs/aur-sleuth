---
package: ampcode
pkgver: 0.0.1790064360_g301b53
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9732
completion_tokens: 1327
total_tokens: 11059
cost: 0.000606914
execution_time: 22.12
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-22T15:45:45Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard binary package, pinned sources with checksums, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned checksums, no red flags.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file; no security issues.
---

Materializing ampcode from local mirror...
Materialized ampcode
Analyzing ampcode AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope consists only of variable definitions (including source URLs and checksums) and a function definition (`latestver`). No command substitutions or function calls execute during sourcing. The `latestver` function is defined but not invoked at the top level—it would only run if explicitly called in a later phase (e.g., `pkgver()`). All value assignments use parameter expansion or literal strings, not backticks or `$()` that could trigger code execution. Therefore, running `makepkg --printsrcinfo` is safe.
</details>
<evidence>
</evidence>
<summary>No risky code executes at top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No risky code executes at top-level scope.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file describes a standard AUR package that downloads a prebuilt binary from the project&#39;s own official domain (`static.ampcode.com`). The source URLs are pinned to a specific version string, and each is accompanied by a SHA256 checksum, ensuring integrity. There are no suspicious operations, no obfuscated code, no unexpected network requests, and no system modifications beyond normal packaging. All practices (proprietary license, `!strip`, `!debug`, binary sources) are conventional for this type of package and do not indicate malice.
</details>
<evidence></evidence>
<summary>Standard binary package, pinned sources with checksums, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard binary package, pinned sources with checksums, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR practices for distributing a prebuilt binary. It downloads a specific version of the `amp` CLI from the project's own static domain (`static.ampcode.com`) with pinned checksums for both x86_64 and aarch64 architectures. The `latestver()` helper function is normal for maintainers who update the version, but it does not execute during package build or installation. The `package()` function simply installs the downloaded binary into `/usr/bin/amp` with appropriate permissions. No obfuscation, unexpected network requests, or system modifications beyond installing the binary. No evidence of supply-chain injection or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned checksums, no red flags.</summary>
</security_assessment>

[2/3] Reviewing .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned checksums, no red flags.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file used in Git repositories to specify intentionally untracked files. It ignores everything by default and then selectively whitelists commonly needed files for an AUR package (PKGBUILD, .SRCINFO, install scripts, patches, service files, etc.). There are no commands, scripts, or any executable content. No network requests, obfuscation, or file operations outside of normal Git ignore patterns are present. This file does not introduce any security risks.
</details>
<evidence></evidence>
<summary>Standard .gitignore file; no security issues.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file; no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,732
  Completion Tokens: 1,327
  Total Tokens: 11,059
  Total Cost: $0.000607
  Execution Time: 22.12 seconds

Final Status: SAFE


No issues found.
