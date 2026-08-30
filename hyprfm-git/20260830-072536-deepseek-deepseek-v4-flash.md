---
package: hyprfm-git
pkgver: r407.g6608966
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 9894
completion_tokens: 1473
total_tokens: 11367
cost: 0.00103541760
execution_time: 27.22
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: ok
upstream_files: 389
upstream_named_files: 3
unpinned_sources: 0
date: 2026-08-30T07:25:35Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR git package, no malicious code.
---

Cloning https://aur.archlinux.org/hyprfm-git.git...
Cloned hyprfm-git
Analyzing hyprfm-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope and `pkgver()` contain only standard variable definitions and git revision counting. The `source` array fetches three Git repositories over HTTPS from the project's own GitHub organization — a normal VCS source setup. SKIP checksums are expected for VCS sources and do not pose execution risk during source fetching. No top-level command substitutions, dangerous built-ins, or network exfiltration are present. The `prepare()`, `build()`, and `package()` functions are not executed by the commands in scope. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>Safe PKGBUILD; no dangerous code in scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe PKGBUILD; no dangerous code in scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 3 file(s) in the downloaded sources (src/hyprfm-git/dist/io.github.soyeb_jim285.HyprFM.desktop, src/hyprfm-git/dist/io.github.soyeb_jim285.HyprFM.metainfo.xml, src/hyprfm-git/dist/io.github.soyeb_jim285.HyprFM.svg); they are upstream content and were not reviewed.
Reviewing the 2 file(s) in the AUR repository. The 389 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard metadata file for Arch Linux AUR packages. It contains no executable code, no network requests beyond declaring upstream git sources, and no suspicious operations. All checksums are set to SKIP, which is normal and expected for VCS (git) sources. The declared sources point to repositories under the same GitHub user as the package's own upstream, consistent with normal packaging practices. There is no obfuscation, encoded commands, or any indication of malicious activity.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR -git packaging practices. The sources are all from the package&#x27;s own upstream GitHub repository (and two auxiliary repos from the same developer). The `prepare()` function configures git submodules to point to local copies in `${srcdir}` rather than fetching from remote, a common technique to avoid network access during build. No obfuscated code, no unexpected network requests, no dangerous commands (eval, base64, curl, wget) beyond the routine `git`, `cmake`, `install`, and `cp`. SKIP checksums are normal for VCS sources. There is no evidence of exfiltration, backdoors, or supply-chain injection.
</details>
<evidence></evidence>
<summary>Standard AUR git package, no malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR git package, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,894
  Completion Tokens: 1,473
  Total Tokens: 11,367
  Total Cost: $0.001035
  Execution Time: 27.22 seconds

Final Status: SAFE


No issues found.
