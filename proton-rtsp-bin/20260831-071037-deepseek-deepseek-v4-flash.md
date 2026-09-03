---
package: proton-rtsp-bin
pkgver: 11.0_20260609
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 27626
completion_tokens: 2984
total_tokens: 30610
cost: 0.002976629964
execution_time: 64.11
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: ok
upstream_files: 7472
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-31T07:10:36Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators.
  - file: launcher.sh
    status: safe
    summary: Clean launcher script with no malicious behavior.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no security concerns.
  - file: proton-rtsp-bin.conf
    status: safe
    summary: Plain config file, no malicious content.
  - file: pleasenote.install
    status: safe
    summary: Informational install script, no malicious behavior.
  - file: pam_limits.conf
    status: safe
    summary: Standard PAM limits config; no security issues.
  - file: user_settings.py
    status: safe
    summary: Static configuration file with no executable code.
---

Cloning https://aur.archlinux.org/proton-rtsp-bin.git...
Cloned proton-rtsp-bin
Analyzing proton-rtsp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines a standard binary package from a GitHub release. The top-level code only sets variables and defines functions. There is no `pkgver()` function, no command substitution or execution outside of the functions. The only activity during the source fetch/parse phase is downloading the tarball from the project's own GitHub releases (which is expected) and sourcing local files (`user_settings.py`, `launcher.sh`, etc.) from the source directory. No obfuscated code, no network requests to unexpected hosts, no execution of downloaded payloads. All checksums are provided (not SKIP). Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD, no dangerous top-level code.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/proton-rtsp-11.0-20260609-3/files/bin/wine); they are upstream content and were not reviewed.
Reviewing the 8 file(s) in the AUR repository. The 7472 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file for the `proton-rtsp-bin` package. It declares the package name, version, dependencies, source URLs, and SHA-512 checksums. All sources have explicit checksums (none are `SKIP`). The only network source is a tarball from the project's own GitHub releases page, which is expected. There are no commands, no obfuscation, and no suspicious operations. The file simply describes the package; it does not execute anything. There are no indicators of a supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with no malicious content.</summary>
</security_assessment>

[0/8] Reviewing .SRCINFO, .gitignore, PKGBUILD, launcher.sh...
[1/8] Reviewing .gitignore, PKGBUILD, launcher.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch Linux package file for a precompiled binary Proton variant. It downloads a tarball from the official GitHub releases page with pinned SHA-512 checksums for all sources, ensuring integrity. The build and package steps perform only routine operations: patching a launcher script path, stripping binaries, installing files, and copying licenses. The package installs system configuration files (PAM limits, modules-load) to support the application's purpose (game runtime resource adjustments) – this is normal and expected behavior for such a package. There are no obfuscated commands, unexpected network requests, or data exfiltration attempts. The `install --mode=0775 --group=50` line sets the group to 50 (typically "games" or "staff"), which is a standard practice for game-related packages and not a security concern. No evidence of a supply-chain attack or malicious injection was found.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/8] Reviewing .gitignore, launcher.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators.
[2/8] Reviewing .gitignore, launcher.sh, pam_limits.conf...
LLM auditresponse for launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `launcher.sh` is a helper script for launching Proton (a Wine-based compatibility layer). It sets environment variables (prefix path, DXVK cache path, SteamAppId) and invokes the proton executable with the provided arguments. It performs no network requests, no downloads, no obfuscated code, no file operations outside its own directories (only creating the prefix and cache directories if missing), and no exfiltration of data. The only external command it runs is the proton binary itself, which is the intended application. All operations are consistent with standard AUR packaging practices and expected Proton launcher functionality.
</details>
<evidence></evidence>
<summary>Clean launcher script with no malicious behavior.</summary>
</security_assessment>

[3/8] Reviewing .gitignore, pam_limits.conf...
+ Reviewed launcher.sh. Status: SAFE -- Clean launcher script with no malicious behavior.
[3/8] Reviewing .gitignore, pam_limits.conf, pleasenote.install...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in an AUR package repository. It instructs Git to ignore all files except for the explicitly listed ones (`.gitignore`, `.SRCINFO`, `launcher.sh`, `pam_limits.conf`, `PKGBUILD`, `pleasenote.install`, `proton-rtsp-bin.conf`, `user_settings.py`). There is no executable code, no network requests, no obfuscation, and no deviation from normal packaging practices. The file is purely a configuration file for version control and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no security concerns.</summary>
</security_assessment>

[3/8] Reviewing .gitignore, pam_limits.conf, pleasenote.install, proton-rtsp-bin.conf...
[4/8] Reviewing pam_limits.conf, pleasenote.install, proton-rtsp-bin.conf...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no security concerns.
LLM auditresponse for proton-rtsp-bin.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `proton-rtsp-bin.conf` contains only the single word `ntsync`. This is a plain text configuration file with no executable code, no network requests, no obfuscation, and no system-level operations. The content is likely a configuration parameter for the Proton compatibility layer, e.g., enabling ntsync synchronization primitives. There is no evidence of any malicious behavior.
</details>
<evidence>
</evidence>
<summary>Plain config file, no malicious content.</summary>
</security_assessment>

[4/8] Reviewing pam_limits.conf, pleasenote.install, proton-rtsp-bin.conf, user_settings.py...
[5/8] Reviewing pam_limits.conf, pleasenote.install, user_settings.py...
+ Reviewed proton-rtsp-bin.conf. Status: SAFE -- Plain config file, no malicious content.
LLM auditresponse for pleasenote.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `pleasenote.install` contains only informational messages printed during package installation and upgrade. It advises the user about group membership for niceness adjustments and unlocking a Steam codec. There are no network requests, file modifications, encoded commands, or any other forms of malicious behavior. The content is standard for AUR packages that provide post-installation guidance.
</details>
<evidence></evidence>
<summary>Informational install script, no malicious behavior.</summary>
</security_assessment>

[6/8] Reviewing pam_limits.conf, user_settings.py...
+ Reviewed pleasenote.install. Status: SAFE -- Informational install script, no malicious behavior.
LLM auditresponse for pam_limits.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file, `pam_limits.conf`, contains a single PAM limits rule that sets the nice priority level for the `games` group. This is a standard system configuration adjustment that may be required for a realtime streaming application like Proton RTSP to allow proper scheduling priorities. There is no evidence of malicious code, data exfiltration, network activity, or any behavior that deviates from legitimate packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard PAM limits config; no security issues.</summary>
</security_assessment>

[7/8] Reviewing user_settings.py...
+ Reviewed pam_limits.conf. Status: SAFE -- Standard PAM limits config; no security issues.
LLM auditresponse for user_settings.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a user configuration template for Proton GE (a custom Proton build used with Steam). It contains a Python dictionary of commented-out environment variable settings that control various Proton, DXVK, and Wine features (e.g., FSR, debug logging, GPU selection). There is no executable code, no network requests, no file operations, no obfuscation, and no system modifications. The file is entirely static configuration comments. It poses no security threat.
</details>
<evidence></evidence>
<summary>Static configuration file with no executable code.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed user_settings.py. Status: SAFE -- Static configuration file with no executable code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 27,626
  Completion Tokens: 2,984
  Total Tokens: 30,610
  Total Cost: $0.002977
  Execution Time: 64.11 seconds

Final Status: SAFE


No issues found.
