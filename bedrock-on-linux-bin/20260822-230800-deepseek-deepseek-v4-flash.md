---
package: bedrock-on-linux-bin
pkgver: 2.2.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: ab8f04a045309f11c3e319d8a061c88f7bc8df51
prompt_tokens: 6574
completion_tokens: 722
total_tokens: 7296
cost: 0.00045911068
execution_time: 19.96
files_reviewed: 1
files_skipped: 1
files_unauditable: 0
unpinned_sources: 0
date: 2026-08-22T23:07:59Z
file_verdicts:
  - file: BedrockOnLinux-2.2.2-x86_64.AppImage
    status: skipped
    summary: "Skipping binary file: BedrockOnLinux-2.2.2-x86_64.AppImage"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package with verified source; no malicious behavior detected.
---

Cloning https://aur.archlinux.org/bedrock-on-linux-bin.git...
Cloned bedrock-on-linux-bin
Analyzing bedrock-on-linux-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions (pkgname, pkgver, source, checksums, etc.) and function bodies for prepare/package which are not executed during `makepkg --nobuild --nodeps --noprepare` or `--printsrcinfo`. The `source` array points to a fixed GitHub release URL with a pinned SHA256 checksum; no VCS, SKIP, or mutable sources are present. There are no top-level command substitutions, code executions, or `pkgver()` function that could run arbitrary commands when sourced. The download and extraction of the AppImage archive is the intended action of these commands and poses no immediate security risk.
</details>
<summary>Safe: standard PKGBUILD with pinned source and no executable top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: standard PKGBUILD with pinned source and no executable top-level code.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, BedrockOnLinux-2.2.2-x86_64.AppImage...
[1/2] Reviewing PKGBUILD...
! Reviewed BedrockOnLinux-2.2.2-x86_64.AppImage. Status: SKIPPED -- Skipping binary file: BedrockOnLinux-2.2.2-x86_64.AppImage
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads a fixed-version AppImage from the project's official GitHub releases page, with a hardcoded SHA256 checksum for integrity verification. The `prepare()` function extracts the AppImage using its built-in `--appimage-extract` flag, which is standard for AppImage-based packages. The `package()` function installs the binary, symlinks, desktop file, icons, and license—all routine operations. There are no hidden network requests, obfuscated code, dangerous commands (curl, wget, eval, base64), or unexpected system modifications. The only external network interaction is the declared source download, which is the package's own upstream. No supply-chain attack indicators are present.
</details>
<summary>Standard AUR binary package with verified source; no malicious behavior detected.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package with verified source; no malicious behavior detected.
Reviewed all required files.
Deciding which files to review next...
Decided to review 0 additional files: 
Reviewing additional files...
Reviewing additional files...
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: BedrockOnLinux-2.2.2-x86_64.AppImage)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 6,574
  Completion Tokens: 722
  Total Tokens: 7,296
  Total Cost: $0.000459
  Execution Time: 19.96 seconds

Final Status: SAFE


No issues found.


Audit Skips:

/data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-mq0zx3o9/BedrockOnLinux-2.2.2-x86_64.AppImage: [SKIPPED] Skipping binary file: BedrockOnLinux-2.2.2-x86_64.AppImage
