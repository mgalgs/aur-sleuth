---
package: looking-glass-host-git
pkgbase: looking-glass-git
pkgver: B7.r826.g236efcb1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 16105
completion_tokens: 1753
total_tokens: 17858
cost: 0.00143591742
execution_time: 263.95
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 1602
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T19:19:31Z
file_verdicts:
  - file: client.install
    status: safe
    summary: Standard AUR install script with informational messages only
  - file: host.install
    status: safe
    summary: Benign warning message, no malicious activity.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS PKGBUILD, no malicious behavior found.
---

looking-glass-host-git is built from looking-glass-git
Cloning https://aur.archlinux.org/looking-glass-git.git...
Cloned looking-glass-host-git
Analyzing looking-glass-host-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package for a well-known project (Looking Glass). The source array contains only git+https URLs to the project's own upstream repositories and its dependencies (LGMP, PureSpice, cimgui, imgui, etc.) hosted on GitHub/GitLab. All checksums are SKIP, which is normal and required for VCS sources. The `pkgver()` function uses `git describe` commands within the cloned repository to derive the version string—standard practice, not malicious. There are no top-level command substitutions, no dangerous commands (curl, wget, eval, base64, etc.) in the global scope or `pkgver()`. The `prepare()`, `build()`, and `package_*()` functions are not executed by the commands under audit (`--nobuild --nodeps --noprepare` and `--printsrcinfo`). Therefore, fetching sources and sourcing the PKGBUILD poses no immediate security risk. No supply-chain attack indicators are present in the scoped code.
</details>
<evidence></evidence>
<summary>Standard VCS PKGBUILD, no dangerous code in scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard VCS PKGBUILD, no dangerous code in scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 4 file(s) in the AUR repository. The 1602 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, client.install...
LLM auditresponse for client.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `client.install` is a standard Arch Linux package install script used by `makepkg`. It contains only `post_install()` and `post_upgrade()` functions that print informational messages to the terminal. The messages advise the user to obtain the Windows host application from the official Looking Glass website and mention an alternative AUR package. There are no commands that fetch external resources, execute arbitrary code, modify system files, or exfiltrate data. All behavior is benign and conventional for an install script.
</details>
<evidence>
</evidence>
<summary>Standard AUR install script with informational messages only</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, client.install, host.install...
[1/4] Reviewing .SRCINFO, PKGBUILD, host.install...
+ Reviewed client.install. Status: SAFE -- Standard AUR install script with informational messages only
LLM auditresponse for host.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `host.install` contains only two functions that print a warning message to the terminal. There is no network activity, file manipulation, code execution, or any other suspicious behavior. The content is purely informational and does not pose any security risk.
</details>
<evidence></evidence>
<summary>Benign warning message, no malicious activity.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed host.install. Status: SAFE -- Benign warning message, no malicious activity.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains only declarative metadata for the looking-glass-git AUR package. All sources are VCS git repositories from well-known upstream URLs (github.com, gitlab.freedesktop.org). Checksums are set to SKIP, which is standard and appropriate for VCS packages. There are no executable instructions, no network requests, no file operations, and no obfuscated or suspicious content. The file is purely a package description and dependency list, posing no security risk.
</details>
<evidence></evidence>
<summary>Declarative metadata file, no malicious content.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR VCS package definition for the Looking Glass project. It fetches multiple upstream git repositories with `SKIP` checksums, which is normal for `-git` packages. The `prepare()` function configures and updates local submodules using local paths, not pulling from remote URLs. The `build()` and package functions use `cmake`, `make`, and `install` in expected ways. There are no obfuscated commands, no unexpected network requests, no downloads from unrelated hosts, and no attempts to exfiltrate data or tamper with system files. The dependency lists, provides/conflicts, and install scripts referenced are consistent with upstream project requirements. No malicious code or injection is present.
</details>
<evidence></evidence>
<summary>Standard AUR VCS PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS PKGBUILD, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,105
  Completion Tokens: 1,753
  Total Tokens: 17,858
  Total Cost: $0.001436
  Execution Time: 263.95 seconds

Final Status: SAFE


No issues found.
