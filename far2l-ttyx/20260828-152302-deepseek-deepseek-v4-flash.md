---
package: far2l-ttyx
pkgbase: far2l
pkgver: 2.9.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 11733
completion_tokens: 1498
total_tokens: 13231
cost: 0.0012784772
execution_time: 85.2
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 2782
upstream_named_files: 2
unpinned_sources: 0
date: 2026-08-28T15:23:01Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR build artifacts.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for far2l, no malicious code detected.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no malicious content.
---

far2l-ttyx is built from far2l
Cloning https://aur.archlinux.org/far2l.git...
Cloned far2l-ttyx
Analyzing far2l-ttyx AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard split package for the far2l terminal emulator. The source is a pinned tarball from the official GitHub repository with a valid SHA256 checksum. There is no `pkgver()` function. The top-level scope contains only variable assignments (package metadata, source URL, checksum). No code execution occurs during `makepkg --nobuild --nodeps --noprepare` beyond sourcing these static definitions and fetching the source. The `build()` and `package_*()` functions are not executed in this narrow gate. No obfuscated commands, unexpected network requests, or malicious payloads are present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned source; no dangerous execution at fetch/parse stage.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD with pinned source; no dangerous execution at fetch/parse stage.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 2 file(s) in the downloaded sources (src/far2l-v_2.9.0/far2l/DE/far2l.desktop, src/far2l-v_2.9.0/far2l/DE/far2ledit.desktop); they are upstream content and were not reviewed.
Reviewing the 3 file(s) in the AUR repository. The 2782 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in git repositories. It lists common build artifacts (`src`, `pkg`, `*.tar.gz`, `*.pkg.tar*`) that should not be tracked by version control. There is no executable code, no network requests, no obfuscation, and no deviation from normal packaging practices. It poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR build artifacts.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR build artifacts.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
No malicious code or suspicious behavior found. The PKGBUILD uses a standard approach: fetching the source tarball from the official GitHub releases with a fixed SHA-256 checksum, building with CMake, and splitting artifacts into subpackages. The `env -C` + `find` approach in `package_far2l-python` is merely a way to install files while preserving directory structure within `$pkgdir` — it does not introduce any security risk. All file operations are contained within the package build directory and installation prefix. No obfuscation, network requests outside the declared source, backdoors, or data exfiltration are present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for far2l, no malicious code detected.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for far2l, no malicious code detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO file for the far2l AUR package. It defines metadata only: package names, descriptions, dependencies, source URL, and checksums. The source is pinned to a specific upstream release archive (`v_2.9.0.tar.gz`) from the official GitHub repository, with a non-SKIP SHA256 checksum. No executable code, obfuscation, network requests, or unusual operations are present. The file is consistent with normal AUR packaging practices and shows no evidence of supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata, no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,733
  Completion Tokens: 1,498
  Total Tokens: 13,231
  Total Cost: $0.001278
  Execution Time: 85.20 seconds

Final Status: SAFE


No issues found.
