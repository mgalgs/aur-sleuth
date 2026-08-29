---
package: bilihud-git
pkgver: 0.7.0.r152.g71e14ee
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 8897
completion_tokens: 1656
total_tokens: 10553
cost: 0.00101530044
execution_time: 24.37
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: ok
upstream_files: 252
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-29T15:07:09Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS package, no malicious behavior.
---

Cloning https://aur.archlinux.org/bilihud-git.git...
Cloned bilihud-git
Analyzing bilihud-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard VCS (git) package for AUR. The top-level code only contains variable assignments and a `source` array with two git+https URLs (the package's own upstream and a dependency). No top-level command substitution, eval, or other code execution. The `pkgver()` function reads a local `pyproject.toml` file and runs benign git commands on the local repository; it does not fetch any external resources or execute untrusted code. The `--noprepare` and `--nobuild` flags prevent execution of `prepare()`, `build()`, and `package()`, which are out of scope for this gate. There is no evidence of malicious behavior in the scope of these commands. SKIP checksums are expected for VCS sources and are not a security concern at this stage.
</details>
<evidence></evidence>
<summary>Safe for source fetching and pkgver() scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe for source fetching and pkgver() scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/bilihud/src/bilihud/assets/icon.png); they are upstream content and were not reviewed.
Reviewing the 2 file(s) in the AUR repository. The 252 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR .SRCINFO metadata file for the `bilihud-git` package. It declares two VCS sources from GitHub (the upstream project and a dependency), lists normal build and runtime dependencies, and uses `SKIP` for checksums (standard for VCS packages). There are no executable instructions, network requests, obfuscated content, or any other indicators of malicious behavior. The file is purely declarative metadata used by package managers.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO file, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR VCS packaging practices. It fetches two upstream git repositories (the main project and a dependency `blivedm`) as declared in the `source` array. The `prepare()` function initializes the `blivedm` submodule and points it to the local copy in `$srcdir`, which is a normal pattern for handling submodules with AUR sources. The `build()` and `package()` functions use standard Python build tools (`python -m build --wheel`, `python -m installer`) and install files into `$pkgdir`. There are no network requests beyond the declared upstream sources, no obfuscated code, no dangerous commands like `eval`, `curl`, `wget` in unexpected contexts, and no data exfiltration or backdooring. The use of `SKIP` checksums is expected for VCS sources. The package is consistent with its stated purpose — a danmaku reader for Bilibili.
</details>
<evidence></evidence>
<summary>Standard AUR VCS package, no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS package, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,897
  Completion Tokens: 1,656
  Total Tokens: 10,553
  Total Cost: $0.001015
  Execution Time: 24.37 seconds

Final Status: SAFE


No issues found.
