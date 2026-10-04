---
package: linuxqq-wayland-fix
pkgver: 0.2.13
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7500
completion_tokens: 871
total_tokens: 8371
cost: 0.000258776
execution_time: 20.76
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-03T11:09:17Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksum; no security issues.
---

Materializing linuxqq-wayland-fix from local mirror...
Materialized linuxqq-wayland-fix
Analyzing linuxqq-wayland-fix AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable definitions and function definitions for `build()` and `package()`. No command substitutions, no eval, no HTTP requests, no file operations, and no obfuscated code are present at the global scope. Sourcing this PKGBUILD for `makepkg --printsrcinfo` does not execute any dangerous operations.
</details>
<evidence></evidence>
<summary>No dangerous top-level code present.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code present.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It contains only declarative fields such as package name, version, dependencies, source URL, and checksum. There is no executable code, no obfuscated content, no network requests beyond the expected upstream source, and no system modification commands. The file is purely informational and follows normal AUR packaging conventions.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file with no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR packaging file for a helper library that fixes Wayland compatibility issues with the Linux QQ desktop application. It downloads a tagged release tarball from the project&#39;s own GitHub repository (with a pinned SHA256 checksum), builds it with `make`, and installs files under `/usr`. There are no obfuscated commands, no unexpected network requests, no execution of unchecked content, and no system modifications outside the package&#39;s own scope. All operations are typical for a well-maintained AUR package. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksum; no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksum; no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,500
  Completion Tokens: 871
  Total Tokens: 8,371
  Total Cost: $0.000259
  Execution Time: 20.76 seconds

Final Status: SAFE


No issues found.
