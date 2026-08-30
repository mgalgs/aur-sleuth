---
package: bilihud-git
pkgver: 0.7.0.r152.g71e14ee
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 8897
completion_tokens: 1323
total_tokens: 10220
cost: 0.00094375568
execution_time: 27.81
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: ok
upstream_files: 252
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-29T23:10:53Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious behavior.
---

Cloning https://aur.archlinux.org/bilihud-git.git...
Cloned bilihud-git
Analyzing bilihud-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
No dangerous code exists in the top-level scope or `pkgver()` of this PKGBUILD. The sources are fetched via standard `git+https` URLs, and `pkgver()` only reads a local `pyproject.toml` file and runs `git rev-list`/`rev-parse` on the cloned repository — all expected operations for a VCS‑based AUR package. There are no external downloads, no obfuscation, and no commands that could exfiltrate data or execute untrusted code during the source‑fetching or sourcing phase. The `prepare()`, `build()`, and `package()` functions are **not** executed by the two commands under inspection, so any content there is out of scope for this gate.
</details>
<evidence/>
<summary>Safe; no dangerous top-level or pkgver() code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe; no dangerous top-level or pkgver() code.
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
The file is a standard `.SRCINFO` metadata file for an Arch User Repository (AUR) package. It declares the package name, description, version, dependencies, and VCS sources from the project's official GitHub repositories (`github.com/locez/bilihud` and `github.com/xfgryujk/blivedm`). Checksums are set to `SKIP`, which is normal and expected for VCS sources. There are no network requests, obfuscated commands, file operations, or any other executable content. The file contains only package metadata, and no evidence of malicious or dangerous behavior is present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a VCS (git) package. It declares its own upstream source (`git+https://github.com/locez/bilihud.git`) and a dependency (`blivedm`) from a different repository. The `SKIP` checksums are expected for VCS sources. The `prepare()` function overrides a submodule URL to point to the local source directory (`$srcdir/blivedm`), which is a standard method to ensure the locally-downloaded dependency is used instead of fetching from the internet again. There are no unexpected network requests, obfuscated code, dangerous commands (`eval`, `curl|bash`, `wget` with execution), or data exfiltration. The build and install steps are ordinary Python build/install operations with cmake and wheel. No evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,897
  Completion Tokens: 1,323
  Total Tokens: 10,220
  Total Cost: $0.000944
  Execution Time: 27.81 seconds

Final Status: SAFE


No issues found.
