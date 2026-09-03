---
package: proton-rtsp-bin
pkgver: 11.0_20260609
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 27626
completion_tokens: 3375
total_tokens: 31001
cost: 0.00278170592
execution_time: 75.18
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: ok
upstream_files: 7472
upstream_named_files: 1
unpinned_sources: 0
injection_attempts: 0
date: 2026-08-31T19:27:24Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file; no malicious content.
  - file: launcher.sh
    status: safe
    summary: Standard Proton launcher, no malicious behavior detected.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious content.
  - file: pam_limits.conf
    status: safe
    summary: Standard PAM limits config, no security issues.
  - file: proton-rtsp-bin.conf
    status: safe
    summary: Single-word config file, no malicious content.
  - file: user_settings.py
    status: safe
    summary: Inert configuration template with no security concerns.
  - file: pleasenote.install
    status: safe
    summary: Purely informational install script, no malicious behavior.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
---

Cloning https://aur.archlinux.org/proton-rtsp-bin.git...
Cloned proton-rtsp-bin
Analyzing proton-rtsp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope only contains variable definitions, arrays (source, sha512sums, etc.), and function definitions. There are no top-level command substitutions, `eval`, or any code that would execute during sourcing or `pkgver()`. The `source` array points to a GitHub release tarball and local files, all with valid SHA512 checksums – no SKIP. The `build()` and `package()` functions contain shell commands, but they will not run under `makepkg --nobuild --nodeps --noprepare`. Therefore, fetching the sources and parsing the PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>Safe: no dangerous global code or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no dangerous global code or pkgver().
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
This is a standard AUR `.SRCINFO` metadata file. It declares the package name, version, dependencies, and source files with their checksums. All sources originate from the package's upstream GitHub repository (`https://github.com/SpookySkeletons/proton-rtsp`). No executable code, obfuscated strings, suspicious network requests, or system-modifying operations are present. The file is purely declarative and follows normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard metadata file; no malicious content.</summary>
</security_assessment>

[0/8] Reviewing .SRCINFO, .gitignore, PKGBUILD, launcher.sh...
[1/8] Reviewing .gitignore, PKGBUILD, launcher.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file; no malicious content.
LLM auditresponse for launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This `launcher.sh` is a straightforward wrapper script for Proton (a Wine-based compatibility layer). It sets environment variables related to Steam compatibility paths, DXVK state cache, and AppId, creates missing directories, and then invokes the Proton binary with the provided arguments. There are no network requests, no obfuscated code, no dangerous commands like `eval`, `curl`, `wget`, or `base64`. All operations are local filesystem operations (creating directories, checking file existence, echoing messages) that are standard for a Proton launcher. The script does not exfiltrate data, download code from untrusted sources, or perform any action outside the scope of launching a Windows executable under Proton. The use of `install -d` with `|| exit 1` is normal and safe. The script is a legitimate AUR packaging helper and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard Proton launcher, no malicious behavior detected.</summary>
</security_assessment>

[2/8] Reviewing .gitignore, PKGBUILD...
+ Reviewed launcher.sh. Status: SAFE -- Standard Proton launcher, no malicious behavior detected.
[2/8] Reviewing .gitignore, PKGBUILD, pam_limits.conf...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package file for a custom Proton build. It fetches a prebuilt tarball from the project&#39;s GitHub releases, along with four local helper files (launcher.sh, user_settings.py, config, pam limits). All sources have valid SHA-512 checksums provided. The build function only applies a sed substitution to launcher.sh (pointing it to the installed Proton binary) and runs `strip` on Wine binaries—both routine packaging operations. The package function installs files into standard locations. There are no suspicious network requests, no obfuscated code, no execution of untrusted scripts, and no exfiltration of data. The file is safe.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious content.</summary>
</security_assessment>

[2/8] Reviewing .gitignore, PKGBUILD, pam_limits.conf, pleasenote.install...
[3/8] Reviewing .gitignore, pam_limits.conf, pleasenote.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious content.
LLM auditresponse for pam_limits.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `pam_limits.conf` contains a single standard PAM limits entry that adjusts the nice priority for the group `games`. This is a normal system configuration file used to grant resource scheduling privileges (lower nice value, i.e., higher priority) to a specific group. There is no malicious code, obfuscation, network activity, or unexpected behavior. The content is entirely consistent with routine packaging practices for applications that require real-time or higher-priority scheduling (e.g., gaming or audio software).
</details>
<evidence></evidence>
<summary>Standard PAM limits config, no security issues.</summary>
</security_assessment>

[4/8] Reviewing .gitignore, pleasenote.install...
+ Reviewed pam_limits.conf. Status: SAFE -- Standard PAM limits config, no security issues.
[4/8] Reviewing .gitignore, pleasenote.install, proton-rtsp-bin.conf...
LLM auditresponse for proton-rtsp-bin.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `proton-rtsp-bin.conf` contains only the single word `ntsync`. This appears to be a configuration flag or setting for the application. There is no executable code, no network requests, no obfuscation, and no operations that could be interpreted as malicious. The content is entirely benign and consistent with a simple configuration file.
</details>
<evidence></evidence>
<summary>Single-word config file, no malicious content.</summary>
</security_assessment>

[5/8] Reviewing .gitignore, pleasenote.install...
+ Reviewed proton-rtsp-bin.conf. Status: SAFE -- Single-word config file, no malicious content.
[5/8] Reviewing .gitignore, pleasenote.install, user_settings.py...
LLM auditresponse for user_settings.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `user_settings.py` is a static configuration template for Proton GE. It contains a Python dictionary `user_settings` with all entries commented out. The entries are standard environment variables used by Proton, DXVK, Wine, and related components (e.g., `PROTON_NO_D3D12`, `DXVK_HUD`, `WINEDEBUG`). There are no active commands, no network requests, no obfuscated code, no file system modifications, and no external data exfiltration. The file is inert and serves only as a user-facing reference. This is a normal, benign packaging artifact.
</details>
<evidence></evidence>
<summary>Inert configuration template with no security concerns.</summary>
</security_assessment>

[6/8] Reviewing .gitignore, pleasenote.install...
+ Reviewed user_settings.py. Status: SAFE -- Inert configuration template with no security concerns.
LLM auditresponse for pleasenote.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard .install script that only prints informational messages to the user during package installation or upgrade. It advises the user about group membership for Wine niceness and unlocking Steam&#39;s H.264 codec. There are no commands that execute code, download content, read or modify files, or perform any other potentially malicious actions. The file is entirely benign and follows normal packaging practices for providing user guidance.
</details>
<evidence></evidence>
<summary>Purely informational install script, no malicious behavior.</summary>
</security_assessment>

[7/8] Reviewing .gitignore...
+ Reviewed pleasenote.install. Status: SAFE -- Purely informational install script, no malicious behavior.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in AUR repositories to ensure only relevant files are tracked by git. It excludes all files by default (`*`) and then un-ignores specific files needed for the package (e.g., `PKGBUILD`, `.SRCINFO`, `launcher.sh`, etc.). There is no executable code, network requests, obfuscation, or any other malicious behavior. The file is benign and follows normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 27,626
  Completion Tokens: 3,375
  Total Tokens: 31,001
  Total Cost: $0.002782
  Execution Time: 75.18 seconds

Final Status: SAFE


No issues found.
