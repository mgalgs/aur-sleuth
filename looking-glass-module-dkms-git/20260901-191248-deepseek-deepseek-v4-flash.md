---
package: looking-glass-module-dkms-git
pkgbase: looking-glass-git
pkgver: B7.r826.g236efcb1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 16125
completion_tokens: 2164
total_tokens: 18289
cost: 0.00149756866
execution_time: 299.14
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 1602
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T19:12:47Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious content.
  - file: client.install
    status: safe
    summary: Informational install script, no malicious actions.
  - file: host.install
    status: safe
    summary: Install script with only a warning message; no malicious activity.
---

looking-glass-module-dkms-git is built from looking-glass-git
Cloning https://aur.archlinux.org/looking-glass-git.git...
Cloned looking-glass-module-dkms-git
Analyzing looking-glass-module-dkms-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard VCS package for Looking Glass. Top-level code only defines variables and arrays; no dangerous commands (eval, curl, etc.) are present. The `pkgver()` function uses `git describe` to generate a version string, which is normal for -git packages and does not perform any malicious actions. All sources are git+https URLs from legitimate upstream repositories (GitHub, gitlab.freedesktop.org). There is no code that would execute during source fetching or PKGBUILD sourcing that could exfiltrate data or execute untrusted payloads.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious code at top-level or in pkgver()</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD with no malicious code at top-level or in pkgver()
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 4 file(s) in the AUR repository. The 1602 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, client.install...
[0/4] Reviewing .SRCINFO, client.install, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR metadata file for the `looking-glass-git` package and its related subpackages. It declares expected sources from the project's own upstream repositories (GitHub and GitLab) as VCS git clones. All checksums are correctly set to `SKIP`, which is normal and required for VCS sources. There is no evidence of injected malicious code, no suspicious URLs, no obfuscated content, and no network requests or dangerous commands. The file adheres to standard AUR packaging conventions and poses no supply-chain security threat.
</details>
<evidence></evidence>
<summary>Standard metadata file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, client.install, PKGBUILD, host.install...
[1/4] Reviewing client.install, PKGBUILD, host.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>The PKGBUILD is a standard AUR packaging file for the looking-glass project. All source URLs point to the official upstream repositories (github.com/gnif, github.com/cimgui, etc.). The checksums are correctly set to SKIP for VCS sources, which is expected practice. The `prepare()` function initializes git submodules and maps them to local copies from the source directory—a common and safe technique. The `build()` and `package_*()` functions perform routine cmake/make builds and install files into `$pkgdir`. No obfuscated code, suspicious network requests, or operations outside standard packaging practices are present. The referenced `.install` files are not included in this audit, but the PKGBUILD itself contains no malicious behavior.</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing client.install, host.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious content.
LLM auditresponse for client.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple PKGBUILD install script that only prints informational messages to the user during post-install and post-upgrade. It advises the user to obtain the Windows host application from the official looking-glass.io download page and mentions an alternative versioned AUR package. There are no network requests, file modifications, obfuscated code, or any operations that could exfiltrate data, download external executables, or alter system state. The content is entirely benign and follows standard packaging practices for providing user guidance.
</details>
<evidence></evidence>
<summary>Informational install script, no malicious actions.</summary>
</security_assessment>

[3/4] Reviewing host.install...
+ Reviewed client.install. Status: SAFE -- Informational install script, no malicious actions.
LLM auditresponse for host.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `host.install` contains only a warning message printed during installation and upgrade. It uses `echo` to display a red-colored text informing users that the Linux host component of LookingGlass is unmaintained and to use it at their own risk. There are no network requests, file manipulations, obfuscated code, or any other suspicious activities. The script is purely informational and follows standard packaging practices for displaying warnings.
</details>
<evidence></evidence>
<summary>Install script with only a warning message; no malicious activity.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed host.install. Status: SAFE -- Install script with only a warning message; no malicious activity.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,125
  Completion Tokens: 2,164
  Total Tokens: 18,289
  Total Cost: $0.001498
  Execution Time: 299.14 seconds

Final Status: SAFE


No issues found.
