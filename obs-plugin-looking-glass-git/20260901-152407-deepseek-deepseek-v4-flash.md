---
package: obs-plugin-looking-glass-git
pkgbase: looking-glass-git
pkgver: B7.r826.g236efcb1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 16110
completion_tokens: 1993
total_tokens: 18103
cost: 0.0015333248
execution_time: 200.09
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 1602
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T15:24:07Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO for VCS package, no issues.
  - file: client.install
    status: safe
    summary: Benign install script with informational messages.
  - file: host.install
    status: safe
    summary: Safe; only prints a warning message.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR git PKGBUILD, no security issues.
---

obs-plugin-looking-glass-git is built from looking-glass-git
Cloning https://aur.archlinux.org/looking-glass-git.git...
Cloned obs-plugin-looking-glass-git
Analyzing obs-plugin-looking-glass-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's executable code during `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` consists solely of top‑level variable definitions and the `pkgver()` function. The source array uses standard `git+https://` URLs pointing to the project's own upstream repositories (LookingGlass, its submodule dependencies, and the OBS plugin) – no unexpected or suspicious network destinations. The `pkgver()` function only runs `git describe` and string manipulation inside the already‑cloned repository; it does not download or execute any external payload. All checksums are set to `SKIP`, which is standard for VCS sources and poses no risk during the source fetch step. No top‑level command substitutions or code capable of exfiltrating data, running untrusted code, or modifying system files are present. The remaining functions (`prepare`, `build`, `package`) are not executed during this narrow gate.
</details>
<evidence></evidence>
<summary>Source fetch and PKGBUILD parsing are safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Source fetch and PKGBUILD parsing are safe.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 4 file(s) in the AUR repository. The 1602 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, client.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard metadata file for an AUR VCS (git) package. All source URLs point to legitimate, well-known upstream repositories (GitHub, GitLab). The `sha512sums = SKIP` entries are normal for VCS sources where checksums cannot be pinned. The package provides multiple subpackages with expected dependencies and conflicts. There are no suspicious network requests, encoded commands, or other indicators of malicious intent. The file follows standard AUR packaging conventions and contains no evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO for VCS package, no issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, client.install, host.install...
[1/4] Reviewing PKGBUILD, client.install, host.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO for VCS package, no issues.
LLM auditresponse for client.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `client.install` contains only two shell functions (`post_install` and `post_upgrade`) that print informational messages to the user using ANSI color codes. These messages instruct the user to download the Windows host application from the official looking-glass.io website and mention an alternative package. There are no network requests, file modifications, obfuscated code, or any other suspicious operations. This is a typical installation notification for an AUR package that depends on an external binary component.
</details>
<evidence></evidence>
<summary>Benign install script with informational messages.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, host.install...
+ Reviewed client.install. Status: SAFE -- Benign install script with informational messages.
LLM auditresponse for host.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file (`host.install`) defines two trivial packaging hooks (`post_install` and `post_upgrade`) that only print a warning message to the user using ANSI color escape sequences. There are no file manipulations, network requests, code execution, or any other potentially dangerous operations. The content is purely informational and follows standard AUR packaging practices.</details>
<evidence></evidence>
<summary>Safe; only prints a warning message.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed host.install. Status: SAFE -- Safe; only prints a warning message.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a VCS (git) package. It fetches all source code from the project's official upstream repositories (github.com/gnif/LookingGlass, etc.) and its dependencies. The `sha512sums` are set to `SKIP`, which is required for VCS sources and is not a security concern. The `prepare()` function correctly points git submodules to the local `$srcdir` copies rather than fetching them from the network again. The `build()` and `package_*()` functions use standard CMake and `make install` commands without any unusual arguments or operations.

No evidence of obfuscated code, network requests to unexpected hosts, file exfiltration, backdoors, or any other genuinely malicious behavior was found. The file does exactly what a maintainer is expected to do: fetch upstream source, configure, build, and install the packages.
</details>
<evidence></evidence>
<summary>Standard AUR git PKGBUILD, no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR git PKGBUILD, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,110
  Completion Tokens: 1,993
  Total Tokens: 18,103
  Total Cost: $0.001533
  Execution Time: 200.09 seconds

Final Status: SAFE


No issues found.
