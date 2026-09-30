---
package: prompt-exporter-git
pkgver: 2.0.1.r15.ge6b01fb
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7818
completion_tokens: 1616
total_tokens: 9434
cost: 0.00080908100
execution_time: 33.22
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-24T19:06:58Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard VCS Node.js package, no security issues.
---

Materializing prompt-exporter-git from local mirror...
Materialized prompt-exporter-git
Analyzing prompt-exporter-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static top-level variable definitions and comments. There are no command substitutions, function calls, or any executable statements at the global scope that would run during `makepkg --printsrcinfo`. The function bodies (`pkgver()`, `prepare()`, `build()`, `package()`) are defined but not invoked during this parsing step. No obfuscated code, suspicious network requests, or exfiltration attempts are present in the top-level scope. The source uses an unpinned git branch URL and SKIP checksum, but these are standard for VCS packages and do not execute any code during `makepkg --printsrcinfo`.</details>
<evidence>
</evidence>
<summary>No malicious top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to parse.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, .SRCINFO...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR metadata file containing package descriptions, dependencies, source URL, and checksum declarations. It contains no executable code, no network requests, no obfuscated content, and no file operations. The `sha256sums = SKIP` is standard for VCS (git) sources and not a security issue. There is no evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS-based Node.js package. It clones the upstream git repository (the maintainer is also the upstream author), installs npm dependencies, builds the project, and copies the results into standard system directories. There are no unexpected network requests, obfuscated commands, file operations outside the package's own scope, or attempts to exfiltrate data. The use of `npm install` without a lockfile is a reproducibility concern but is common for `-git` packages and does not constitute evidence of a supply-chain attack — the build system is the upstream's own. No malicious or suspicious behavior is present.</details>
<evidence></evidence>
<summary>Standard VCS Node.js package, no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard VCS Node.js package, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,818
  Completion Tokens: 1,616
  Total Tokens: 9,434
  Total Cost: $0.000809
  Execution Time: 33.22 seconds

Final Status: SAFE


No issues found.
