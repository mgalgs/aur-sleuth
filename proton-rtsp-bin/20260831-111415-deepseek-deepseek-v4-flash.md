---
package: proton-rtsp-bin
pkgver: 11.0_20260609
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 27626
completion_tokens: 3887
total_tokens: 31513
cost: 0.003136652400
execution_time: 75.07
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: ok
upstream_files: 7472
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-31T11:14:14Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security concerns.
  - file: pam_limits.conf
    status: safe
    summary: Standard PAM limits config, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious code.
  - file: proton-rtsp-bin.conf
    status: safe
    summary: Innocuous configuration file, no malicious content.
  - file: pleasenote.install
    status: safe
    summary: Benign post-install informational messages.
  - file: launcher.sh
    status: safe
    summary: Standard launcher script, no evidence of malice.
  - file: user_settings.py
    status: safe
    summary: Benign configuration template with no security issues.
---

Cloning https://aur.archlinux.org/proton-rtsp-bin.git...
Cloned proton-rtsp-bin
Analyzing proton-rtsp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and array assignments in its global scope. No command substitutions, function calls, or dangerous constructs (eval, base64, curl, etc.) are present at the top level. The `source` array points to a legitimate GitHub release tarball and local auxiliary files; fetching and extracting these sources is safe. The `build()` and `package()` functions contain operations (sed, strip, mv, install) that are not executed during the requested commands due to `--nobuild` and `--noprepare`. There is no `pkgver()` function. No evidence of malicious or obfuscated code exists in the file.
</details>
<evidence>
</evidence>
<summary>Safe: no dangerous code in global scope or source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no dangerous code in global scope or source fetch.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/proton-rtsp-11.0-20260609-3/files/bin/wine); they are upstream content and were not reviewed.
Reviewing the 8 file(s) in the AUR repository. The 7472 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in AUR git repositories. It ignores all files except the ones explicitly listed (`.gitignore`, `.SRCINFO`, `launcher.sh`, `pam_limits.conf`, `PKGBUILD`, `pleasenote.install`, `proton-rtsp-bin.conf`, `user_settings.py`). This is a common and expected pattern to keep the repository minimal. There is no executable code, no network requests, no obfuscation, and no system modifications. The file is benign and follows standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no security issues.</summary>
</security_assessment>

[0/8] Reviewing .SRCINFO, .gitignore, PKGBUILD, launcher.sh...
[1/8] Reviewing .SRCINFO, PKGBUILD, launcher.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR package metadata file describing the `proton-rtsp-bin` package. It contains the package name, version, dependencies, optional dependencies, and source URLs with SHA-512 checksums. All sources are from the project's own GitHub releases page, and checksums are provided. There is no executable code, no network requests (beyond declaring the source URLs), no obfuscation, and no commands that could be exploited. The file is purely declarative and follows normal AUR packaging practices. No security issues.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security concerns.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, PKGBUILD, launcher.sh, pam_limits.conf...
[2/8] Reviewing PKGBUILD, launcher.sh, pam_limits.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security concerns.
LLM auditresponse for pam_limits.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard PAM limits configuration line that sets a nice priority limit of -10 for the `games` group. This is a routine and expected system configuration adjustment, often used by gaming or real-time applications to grant privileged scheduling without requiring full root access. There is no malicious content, no network requests, no obfuscated code, and no deviation from normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard PAM limits config, no malicious content.</summary>
</security_assessment>

[2/8] Reviewing PKGBUILD, launcher.sh, pam_limits.conf, pleasenote.install...
[3/8] Reviewing PKGBUILD, launcher.sh, pleasenote.install...
+ Reviewed pam_limits.conf. Status: SAFE -- Standard PAM limits config, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a precompiled binary package. It downloads the upstream release tarball from the official GitHub repository (`https://github.com/SpookySkeletons/proton-rtsp`) with a pinned version and a valid SHA-512 checksum. All other source files (user_settings.py, launcher.sh, etc.) also have checksums. The build and package steps are routine: a `sed` patch to fix the launcher script path, stripping of binaries, installation of configuration files, licenses, and system config (pam limits, modules-load). There is no obfuscated code, no unexpected network requests, no exfiltration of data, and no execution of untrusted external content. The package is consistent with its stated purpose of providing a custom Proton build for VRChat RTSP support.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious code.</summary>
</security_assessment>

[3/8] Reviewing PKGBUILD, launcher.sh, pleasenote.install, proton-rtsp-bin.conf...
[4/8] Reviewing launcher.sh, pleasenote.install, proton-rtsp-bin.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious code.
LLM auditresponse for proton-rtsp-bin.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `proton-rtsp-bin.conf` is a simple configuration file containing only the word "ntsync". This appears to be a legitimate configuration option for Proton (likely enabling the ntsync feature). There is no executable code, no network requests, no obfuscation, and no indication of malicious activity. The file follows standard packaging practices for configuration files.
</details>
<evidence></evidence>
<summary>Innocuous configuration file, no malicious content.</summary>
</security_assessment>

[4/8] Reviewing launcher.sh, pleasenote.install, proton-rtsp-bin.conf, user_settings.py...
[5/8] Reviewing launcher.sh, pleasenote.install, user_settings.py...
+ Reviewed proton-rtsp-bin.conf. Status: SAFE -- Innocuous configuration file, no malicious content.
LLM auditresponse for pleasenote.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `pleasenote.install` is a simple post-installation message script. It prints informational messages to the user about adjusting niceness limits via the games group and unlocking the Steam H.264 codec. There are no dangerous commands, no network requests, no file modifications, and no obfuscation. The content is entirely consistent with standard packaging practices.
</details>
<evidence></evidence>
<summary>Benign post-install informational messages.</summary>
</security_assessment>

[6/8] Reviewing launcher.sh, user_settings.py...
+ Reviewed pleasenote.install. Status: SAFE -- Benign post-install informational messages.
LLM auditresponse for launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Proton launcher wrapper script designed to set environment variables (STEAM_COMPAT_DATA_PATH, DXVK_STATE_CACHE_PATH, etc.) and invoke the Proton executable with user-specified arguments and mode. It contains no network requests, no downloads, no obfuscated code, and no unexpected system modifications. The script only creates user-local directories via `install -d` under paths derived from XDG variables or `~/.local/share`, which is normal for user configuration.

All operations are consistent with the stated purpose of configuring and launching Proton for Windows executables. There is no evidence of data exfiltration, backdoors, or execution of untrusted code from external sources.
</details>
<evidence>
</evidence>
<summary>Standard launcher script, no evidence of malice.</summary>
</security_assessment>

[7/8] Reviewing user_settings.py...
+ Reviewed launcher.sh. Status: SAFE -- Standard launcher script, no evidence of malice.
LLM auditresponse for user_settings.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `user_settings.py` is a commented-out template for Proton GE environment variable settings. All lines are prefixed with `#`, making them inactive comments. It contains no executable code, no network requests, no system modifications, and no obfuscation. The content is purely a reference for users to uncomment and adjust runtime options. There is no evidence of malicious behavior or supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Benign configuration template with no security issues.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed user_settings.py. Status: SAFE -- Benign configuration template with no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 27,626
  Completion Tokens: 3,887
  Total Tokens: 31,513
  Total Cost: $0.003137
  Execution Time: 75.07 seconds

Final Status: SAFE


No issues found.
