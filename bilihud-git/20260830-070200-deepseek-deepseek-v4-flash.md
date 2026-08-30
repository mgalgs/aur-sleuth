---
package: bilihud-git
pkgver: 0.7.0.r152.g71e14ee
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 8897
completion_tokens: 1813
total_tokens: 10710
cost: 0.00100985472
execution_time: 27.14
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: ok
upstream_files: 252
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-30T07:02:00Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS PKGBUILD, no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
---

Cloning https://aur.archlinux.org/bilihud-git.git...
Cloned bilihud-git
Analyzing bilihud-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR VCS package for a Bilibili danmaku overlay application. The `source` array contains two git repositories from GitHub (the project's own repository and a dependency repository), both using HTTPS. The `pkgver()` function runs `python` to parse a local `pyproject.toml` file (which is part of the cloned source) and then uses `git` commands to produce a version string. This is normal behavior for a VCS package. No top-level code or `pkgver()` executes any network requests, obfuscated commands, or system modifications beyond the expected git operations. The `sha256sums` are set to `SKIP` as required for VCS sources. No malicious payloads, data exfiltration, or dangerous operations are present in the scope of the commands being run (source fetch, top-level sourcing, and `pkgver()`).
</details>
<evidence>
</evidence>
<summary>Standard AUR VCS package; no malicious code in scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard AUR VCS package; no malicious code in scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/bilihud/src/bilihud/assets/icon.png); they are upstream content and were not reviewed.
Reviewing the 2 file(s) in the AUR repository. The 252 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a VCS-based package. It clones the upstream repository and a dependency (`blivedm`) from their official GitHub URLs. The `prepare()` function initializes git submodules and overrides the submodule URL to point to the local copy of `blivedm` in `$srcdir`, which prevents an extra network fetch — a legitimate and common technique. The build uses `python -m build` with CMake and Ninja, and installs files normally. No obfuscated code, hidden network requests, dangerous commands (curl, wget, eval, base64), or attempts to exfiltrate data are present. The SKIP checksums are expected for VCS sources and are not a security concern. The file shows no signs of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR VCS PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS PKGBUILD, no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` file for the `bilihud-git` package. It declares metadata, dependencies, and two VCS source repositories (the main project and a library dependency). Both sources use `sha256sums = SKIP`, which is normal and expected for VCS-based packages. There are no encoded commands, suspicious network requests, or any behavior that deviates from standard packaging practices. The file contains only declarative information; no malicious code is present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,897
  Completion Tokens: 1,813
  Total Tokens: 10,710
  Total Cost: $0.001010
  Execution Time: 27.14 seconds

Final Status: SAFE


No issues found.
