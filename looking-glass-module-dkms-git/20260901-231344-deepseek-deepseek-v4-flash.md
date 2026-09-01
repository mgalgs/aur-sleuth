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
completion_tokens: 2528
total_tokens: 18653
cost: 0.00148563534
execution_time: 187.75
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 1602
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T23:13:43Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata; no malicious content found.
  - file: client.install
    status: safe
    summary: Informational install script, no malicious activity.
  - file: host.install
    status: safe
    summary: Pure informational message, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
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
The PKGBUILD is a standard AUR package for the Looking Glass project. The `source` array contains only `git+https` URLs pointing to known upstream repositories (gnif/LookingGlass, gnif/LGMP, gnif/PureSpice, cimgui, imgui, cimplot, implot, wayland-protocols, nanosvg). All checksums are set to `SKIP`, which is normal for VCS sources. The `pkgver()` function performs only a `git describe` operation on the already-cloned repository. There is no top-level code beyond variable definitions and function declarations, so sourcing the PKGBUILD is safe. The commands `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only fetch the sources (git clones) and execute `pkgver()`, both of which are benign. No malicious code is present in the executable scope.
</details>
<evidence></evidence>
<summary>Standard VCS package with no malicious code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard VCS package with no malicious code.
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
This file is a metadata-only `.SRCINFO` file describing package sources, dependencies, and splits. No executable code, network requests, or system file modifications are present. All sources point to legitimate upstream repositories (GitHub, GitLab) related to the Looking Glass project and its dependencies. Checksums are set to `SKIP`, which is standard for VCS (git) sources and not an indicator of malice. There is no evidence of obfuscation, data exfiltration, or injection of untrusted content. The file conforms to normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Declarative metadata; no malicious content found.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, client.install, host.install...
[1/4] Reviewing PKGBUILD, client.install, host.install...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata; no malicious content found.
LLM auditresponse for client.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `client.install` contains only two functions, `post_install()` and `post_upgrade()`, which print informational messages to the terminal. These messages remind users to download the Windows host application from the official Looking Glass website and suggest an alternative AUR package for versioned releases. There are no network requests, file operations, execution of downloaded code, or any other potentially dangerous commands. The script performs no system modifications or data exfiltration. It is entirely benign and consistent with standard AUR packaging practices for providing user guidance.
</details>
<evidence>
</evidence>
<summary>Informational install script, no malicious activity.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, host.install...
+ Reviewed client.install. Status: SAFE -- Informational install script, no malicious activity.
LLM auditresponse for host.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `host.install` contains only `post_install()` and `post_upgrade()` functions that print a warning message to the user. There is no code that performs network requests, file modifications, execution of untrusted content, or any other potentially malicious behavior. The message is a standard informational notice from the package maintainer.
</details>
<evidence></evidence>
<summary>Pure informational message, no malicious code.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed host.install. Status: SAFE -- Pure informational message, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard build file for the Looking Glass project (an open-source KVM FrameRelay implementation). All source repositories point to legitimate upstream locations (github.com/gnif, github.com/cimgui, github.com/ocornut, github.com/epezent, gitlab.freedesktop.org, github.com/memononen). Checksums are set to SKIP, which is required for VCS (git) sources. The `prepare()` function clones submodules from local copies, a standard technique for offline/managed dependencies using `git submodule set-url` and `git submodule update`. The `build()` function uses standard cmake/make invocations across three component directories. The `package_*()` functions perform routine installation using `install` and `make DESTDIR=... install`. There is no evidence of malicious behavior: no suspicious network requests to unexpected hosts, no obfuscated code, no data exfiltration, no backdoors, no dangerous command execution (eval, base64, curl/wget to untrusted origins), and no manipulation of files outside the package's scope.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,125
  Completion Tokens: 2,528
  Total Tokens: 18,653
  Total Cost: $0.001486
  Execution Time: 187.75 seconds

Final Status: SAFE


No issues found.
