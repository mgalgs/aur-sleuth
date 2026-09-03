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
completion_tokens: 2142
total_tokens: 18267
cost: 0.0015572067
execution_time: 256.6
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 1602
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T15:19:12Z
file_verdicts:
  - file: client.install
    status: safe
    summary: Standard install script with informational messages only.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata for VCS package; no issues.
  - file: host.install
    status: safe
    summary: Safe .install file with warning message.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious indicators found.
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
The PKGBUILD's global scope only contains variable assignments, array definitions, and function definitions. No dangerous commands (e.g., `eval`, `curl`, `base64`) are present in the top-level scope or `pkgver()`. The `pkgver()` function runs only standard `git describe` commands inside the freshly cloned repository – a normal pattern for VCS PKGBUILDs. The source array points to legitimate upstream repositories via `git+https://` URLs. All checksums are `SKIP`, which is standard for VCS sources and does not execute any code during this gate. There is no code that exfiltrates data, downloads unknown payloads, or performs any dangerous operations during the fetch or sourcing phase.
</details>
<evidence></evidence>
<summary>Standard AUR git PKGBUILD, no top-level risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard AUR git PKGBUILD, no top-level risk.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 4 file(s) in the AUR repository. The 1602 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, client.install...
[0/4] Reviewing .SRCINFO, client.install, PKGBUILD...
LLM auditresponse for client.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.install` script for an AUR package. It contains only `echo` statements that print informational messages to the user during installation and upgrade. There are no dangerous commands, obfuscated code, network requests, file operations, or any other behavior that deviates from normal packaging practices. The messages direct users to the official Looking Glass download page and suggest an alternative package. No evidence of supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Standard install script with informational messages only.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed client.install. Status: SAFE -- Standard install script with informational messages only.
[1/4] Reviewing .SRCINFO, PKGBUILD, host.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard metadata file for a VCS-based AUR package. It declares multiple subpackages and their dependencies, along with upstream git sources from well-known repositories (GitHub, GitLab). All checksums are set to `SKIP`, which is normal and required for VCS sources. There is no executable code, no suspicious network destinations, no obfuscation, and no deviation from standard packaging practices. The file does not contain any evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata for VCS package; no issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, host.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata for VCS package; no issues.
LLM auditresponse for host.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `host.install` contains only two shell functions (`post_install` and `post_upgrade`) that print a warning message to the user about the unmaintained status of the LookingGlass host component. There are no network requests, file modifications, downloads, execution of external code, or any other suspicious operations. The content is entirely benign and consistent with normal packaging practices.
</details>
<evidence></evidence>
<summary>Safe .install file with warning message.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed host.install. Status: SAFE -- Safe .install file with warning message.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard multi-package AUR build file for the `looking-glass` project (KVMFR). All source URLs point to the official upstream repositories on GitHub/GitLab (gnif/LookingGlass, gnif/LGMP, etc.). Checksums are set to `SKIP`, which is normal for VCS sources. The `prepare()` function configures git submodules using local paths from `$srcdir`, a routine practice for managing dependencies. The `build()` and `package_*()` functions use standard `cmake`/`make` and `install` commands. No network requests (other than the initial `source()` fetch by makepkg), no obfuscated code, no `curl|bash` patterns, and no exfiltration or backdoor attempts are present. The file exhibits only expected packaging operations for a -git AUR package.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious indicators found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious indicators found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,125
  Completion Tokens: 2,142
  Total Tokens: 18,267
  Total Cost: $0.001557
  Execution Time: 256.60 seconds

Final Status: SAFE


No issues found.
