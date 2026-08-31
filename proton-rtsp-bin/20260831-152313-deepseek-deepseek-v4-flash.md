---
package: proton-rtsp-bin
pkgver: 11.0_20260609
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 27626
completion_tokens: 3614
total_tokens: 31240
cost: 0.00298141116
execution_time: 121.02
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: ok
upstream_files: 7472
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-31T15:23:12Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Metadata only, no malicious content.
  - file: launcher.sh
    status: safe
    summary: Legitimate Proton launcher script, no malicious behavior.
  - file: pam_limits.conf
    status: safe
    summary: Legitimate PAM limits config for gaming priority.
  - file: pleasenote.install
    status: safe
    summary: Informational install script, no malicious behavior.
  - file: proton-rtsp-bin.conf
    status: safe
    summary: Benign configuration file, no security issues.
  - file: user_settings.py
    status: safe
    summary: Static configuration template; no executable or dangerous content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious content.
---

Cloning https://aur.archlinux.org/proton-rtsp-bin.git...
Cloned proton-rtsp-bin
Analyzing proton-rtsp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level code consists only of variable assignments and array definitions. No command substitutions, backticks, or function calls that execute external commands are present. There is no `pkgver()` function. The `source` array fetches a tarball from the project's own GitHub releases page and includes local configuration files with pinned SHA-512 checksums. Running `makepkg --nobuild --nodeps --noprepare` will download and extract these sources but will not execute any code beyond sourcing this static PKGBUILD. The `build()` and `package()` functions are not executed under this gate, so their contents (sed, strip, install) are out of scope. No malicious activity can occur from these commands.
</details>
<evidence></evidence>
<summary>Safe: only static assignments, no execution in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: only static assignments, no execution in global scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/proton-rtsp-11.0-20260609-3/files/bin/wine); they are upstream content and were not reviewed.
Reviewing the 8 file(s) in the AUR repository. The 7472 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, PKGBUILD...
[0/8] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files by default (`*`) and only whitelists specific files needed for the package: `.gitignore`, `.SRCINFO`, `launcher.sh`, `pam_limits.conf`, `PKGBUILD`, `pleasenote.install`, `proton-rtsp-bin.conf`, and `user_settings.py`. There are no executable commands, network operations, obfuscated content, or any behavior that could be considered malicious. It is a purely declarative configuration file with no security implications.
</details>
<evidence></evidence>
<summary>Standard gitignore file, no security concerns.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no security concerns.
[1/8] Reviewing .SRCINFO, PKGBUILD, launcher.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file for the `proton-rtsp-bin` AUR package. It declares the package's version, dependencies, sources, and checksums. All sources point to the project's own GitHub releases or local configuration files. No suspicious URLs, obfuscated content, or commands are present. The checksums are provided for all sources. This file does not execute any code and contains no malicious indicators. The package appears to be a straightforward binary distribution of a custom Proton build for VRChat streaming.
</details>
<evidence></evidence>
<summary>Metadata only, no malicious content.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, PKGBUILD, launcher.sh, pam_limits.conf...
[2/8] Reviewing PKGBUILD, launcher.sh, pam_limits.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata only, no malicious content.
LLM auditresponse for launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher for the Proton compatibility layer, designed to set environment variables, create necessary directories under the user's home folder, and then execute the Proton binary with the provided arguments. It contains no network requests, no downloads of external code, no obfuscated commands, and no attempts to read or exfiltrate sensitive files. All operations are limited to user-local paths (e.g., `~/.local/share/proton-pfx`, `~/.cache/dxvk-cache-pool`) and are typical for such a launcher. The only binary executed is `$_proton` (the actual Proton executable), which is the intended upstream application. There is no evidence of malicious behavior or supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Legitimate Proton launcher script, no malicious behavior.</summary>
</security_assessment>

[2/8] Reviewing PKGBUILD, launcher.sh, pam_limits.conf, pleasenote.install...
[3/8] Reviewing PKGBUILD, pam_limits.conf, pleasenote.install...
+ Reviewed launcher.sh. Status: SAFE -- Legitimate Proton launcher script, no malicious behavior.
LLM auditresponse for pam_limits.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a PAM limits configuration that grants the `games` group a nice priority adjustment of -10. This is a standard Linux system configuration to allow processes in the `games` group to run with higher scheduling priority, which is expected for a gaming-related package like `proton-rtsp-bin`. The file contains no executable code, no network requests, no data exfiltration, and no obfuscation. It is a simple, legitimate system resource limit tweak.
</details>
<evidence></evidence>
<summary>Legitimate PAM limits config for gaming priority.</summary>
</security_assessment>

[3/8] Reviewing PKGBUILD, pam_limits.conf, pleasenote.install, proton-rtsp-bin.conf...
[4/8] Reviewing PKGBUILD, pleasenote.install, proton-rtsp-bin.conf...
+ Reviewed pam_limits.conf. Status: SAFE -- Legitimate PAM limits config for gaming priority.
LLM auditresponse for pleasenote.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `pleasenote.install` is a standard post-installation script that only emits informational messages to the console. It advises the user to add themselves to the `games` group (a typical permission adjustment for Wine/Proton) and to unlock the Steam H.264 codec. There are no network requests, file operations, system modifications, or obfuscated commands. This is normal non-malicious packaging boilerplate.
</details>
<evidence></evidence>
<summary>Informational install script, no malicious behavior.</summary>
</security_assessment>

[4/8] Reviewing PKGBUILD, pleasenote.install, proton-rtsp-bin.conf, user_settings.py...
[5/8] Reviewing PKGBUILD, proton-rtsp-bin.conf, user_settings.py...
+ Reviewed pleasenote.install. Status: SAFE -- Informational install script, no malicious behavior.
LLM auditresponse for proton-rtsp-bin.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains only the single word "ntsync". This appears to be a simple configuration parameter for the Proton RTSP package (likely related to Wine synchronization primitives). There is no executable code, no network requests, no file operations, and no obfuscation. The content is entirely benign.
</details>
<evidence></evidence>
<summary>Benign configuration file, no security issues.</summary>
</security_assessment>

[6/8] Reviewing PKGBUILD, user_settings.py...
+ Reviewed proton-rtsp-bin.conf. Status: SAFE -- Benign configuration file, no security issues.
LLM auditresponse for user_settings.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a commented configuration template for Proton GE (a community fork of Proton). It defines a Python dictionary `user_settings` with various environment variable overrides for debugging, performance tuning, and hardware compatibility. All settings are commented out (prefixed by `#`), meaning no actual configuration is applied. The file contains no executable logic, no network requests, no obfuscated code, no attempts to access or exfiltrate system files, and no deviation from standard packaging practices. It is purely a reference for users who wish to uncomment and customize their Proton environment. There is no evidence of malicious code or supply-chain attack indicators.
</details>
<evidence/>
<summary>Static configuration template; no executable or dangerous content.</summary>
</security_assessment>

[7/8] Reviewing PKGBUILD...
+ Reviewed user_settings.py. Status: SAFE -- Static configuration template; no executable or dangerous content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices. It downloads a tarball from the official GitHub releases page, with all source files pinned to SHA-512 checksums. The build and package functions contain only routine operations: a sed substitution to fix a path, stripping of wine binaries, creating directories, installing licenses, configuration files, and executables. No obfuscated code, no unexpected network requests, no eval/curl/wget usage, and no manipulation of sensitive system files outside the application's scope. The `install` command for `user_settings.py` uses mode 0775 and group 50 (the `games` group on Arch), which is permissive but standard for Proton configurations that need group write access. There is no evidence of malicious/injected behavior.</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious content.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 27,626
  Completion Tokens: 3,614
  Total Tokens: 31,240
  Total Cost: $0.002981
  Execution Time: 121.02 seconds

Final Status: SAFE


No issues found.
