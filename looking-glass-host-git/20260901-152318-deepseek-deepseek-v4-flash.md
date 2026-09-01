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
completion_tokens: 2323
total_tokens: 18428
cost: 0.0015833013
execution_time: 151.27
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 1602
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T15:23:18Z
file_verdicts:
  - file: client.install
    status: safe
    summary: Informational install script with no malicious behavior.
  - file: host.install
    status: safe
    summary: Innocuous install script with only a warning message.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS PKGBUILD, no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
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
The PKGBUILD's top-level code consists solely of variable assignments, arrays, and function definitions.  
The `pkgver()` function runs `git describe` inside the cloned repository, which is a standard operation with no side effects beyond reading git metadata.  
All sources are legitimate git repositories from well-known upstreams (`github.com/gnif`, `gitlab.freedesktop.org`, etc.), and no unexpected network destinations or command substitutions appear at the global scope.  
No code in the global scope or `pkgver()` performs downloads, data exfiltration, or execution of untrusted payloads.  
There are no hidden operations in the top-level scope; `prepare()`, `build()`, and `package()` functions are defined but will not run under `--nobuild --noprepare`.  
The use of `SKIP` checksums is normal for VCS sources and does not introduce risk during the source-fetching step.  
Thus, executing `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.  
</details>
<evidence></evidence>
<summary>PKGBUILD top-level and pkgver() are safe; no dangerous code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- PKGBUILD top-level and pkgver() are safe; no dangerous code.
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
The file `client.install` contains only a `post_install()` and `post_upgrade()` function that print informational messages to the user. These messages direct users to the official Looking Glass downloads page and suggest an alternative versioned package. There are no network requests, file operations, obfuscated code, or any other potentially dangerous commands. The content is entirely benign and follows standard AUR packaging practices for installation notifications.
</details>
<evidence></evidence>
<summary>Informational install script with no malicious behavior.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, client.install, PKGBUILD, host.install...
[1/4] Reviewing .SRCINFO, PKGBUILD, host.install...
+ Reviewed client.install. Status: SAFE -- Informational install script with no malicious behavior.
LLM auditresponse for host.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script (`.install`). It only prints a colored warning message to the terminal during installation and upgrade, informing the user that the host component is unmaintained. There are no dangerous operations such as network requests, file modifications, code execution from external sources, or any form of obfuscation. The script performs no system changes and follows normal packaging conventions.
</details>
<evidence></evidence>
<summary>Innocuous install script with only a warning message.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed host.install. Status: SAFE -- Innocuous install script with only a warning message.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch User Repository (AUR) VCS package for Looking Glass. All source URLs point to the official upstream repositories (gnif/LookingGlass, gnif/LGMP, etc.) and their dependencies (cimgui, imgui, etc.). Checksums are set to SKIP, which is expected and required for VCS (git) sources. The `prepare()` function uses `git submodule init`, `set-url`, and `update` to replace submodule URLs with locally fetched copies from `$srcdir` – this is a common, safe technique to avoid re-downloading submodules and does not introduce untrusted content. The `build()` and `package_*()` functions run standard CMake and Make commands, installing files into `$pkgdir`. There are no obfuscated commands, no unexpected network requests (e.g., curl, wget, eval), no exfiltration of local data, and no backdoors. The file adheres to normal AUR packaging practices and contains no evidence of malicious or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Standard AUR VCS PKGBUILD, no malicious code.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS PKGBUILD, no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard declarative metadata file for an AUR package. It defines the package base, subpackages, sources, dependencies, and install scripts. All source URLs point to the project's own upstream repositories on GitHub/GitLab (e.g., `gnif/LookingGlass`, `gnif/LGMP`, `gnif/PureSpice`) or widely used third-party libraries (cimgui, imgui, implot, nanosvg, wayland-protocols). These are expected for the package's functionality.  

All checksums are set to `SKIP`, which is normal and required for VCS (`git`) sources—this is not a sign of malice. The file contains no executable code, no network requests beyond the declared sources, no obfuscation, no file operations outside of `$pkgdir`, and no deviation from standard packaging practices. There is no evidence of injected malicious behavior, exfiltration, backdoors, or supply-chain attack indicators.  

Note: The use of mutable branches (unpinned sources) is typical for VCS packages and is not itself malicious. No further concerns.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,105
  Completion Tokens: 2,323
  Total Tokens: 18,428
  Total Cost: $0.001583
  Execution Time: 151.27 seconds

Final Status: SAFE


No issues found.
