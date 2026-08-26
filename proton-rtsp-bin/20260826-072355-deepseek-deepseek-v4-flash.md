---
package: proton-rtsp-bin
pkgver: 11.0_20260609
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: bf65c6be33eadea3455007f8db36db9ddf76ab3c
prompt_tokens: 27608
completion_tokens: 3928
total_tokens: 31536
cost: 0.003142323184
execution_time: 328.82
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
upstream_files: 7472
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-26T07:23:54Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package repository.
  - file: pam_limits.conf
    status: safe
    summary: Standard PAM resource limit for gaming.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums and no malicious behavior.
  - file: proton-rtsp-bin.conf
    status: safe
    summary: Single-word config file, no malicious content.
  - file: pleasenote.install
    status: safe
    summary: Informational install script, no malicious code.
  - file: user_settings.py
    status: safe
    summary: Configuration template with no malicious code.
  - file: launcher.sh
    status: safe
    summary: Standard Proton launcher, no malicious code.
---

Cloning https://aur.archlinux.org/proton-rtsp-bin.git...
Cloned proton-rtsp-bin
Analyzing proton-rtsp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only performs variable assignments and function definitions at the global scope. There is no `pkgver()` function or top-level command substitution that could execute code during sourcing. The `source` array points to a standard GitHub release tarball (https) and local auxiliary files – no unexpected or malicious download destinations. The `build()` and `package()` functions are not executed by `makepkg --nobuild --nodeps --noprepare`. No evidence of obfuscation, data exfiltration, or backdoor injection in the global scope. The operations that are triggered (fetching sources, extracting archives) are exactly the intended behavior and pose no immediate risk.</details>
<evidence></evidence>
<summary>No malicious code in global scope or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope or pkgver().
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/proton-rtsp-11.0-20260609-2/files/bin/wine); they are upstream content and were not reviewed.
Reviewing the 8 file(s) in the AUR repository. The 7472 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, PKGBUILD...
[0/8] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard package metadata file for Arch AUR packages. It declares the package name, version, dependencies, sources, and checksums. All source files are fetched from the project's official GitHub releases over HTTPS, and each source has a provided SHA-512 checksum (none are `SKIP`). There is no embedded executable code, no obfuscation, no unexpected network requests, and no instructions to download or execute untrusted content. The inclusion of a `pam_limits.conf` file is a normal practice for applications that need system resource adjustments (such as real-time priority). This file exhibits no malicious behavior and adheres to standard packaging conventions.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/8] Reviewing PKGBUILD, .gitignore...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
[1/8] Reviewing PKGBUILD, .gitignore, launcher.sh...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file is a standard Git configuration file used in AUR package repositories to ensure only relevant files (like PKGBUILD, .SRCINFO, and helper scripts) are tracked. It contains no executable code, no network requests, no obfuscation, and no potentially dangerous behavior. The file simply lists filenames to include from an otherwise ignored set. There is no evidence of a supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package repository.</summary>
</security_assessment>

[1/8] Reviewing PKGBUILD, .gitignore, launcher.sh, pam_limits.conf...
[2/8] Reviewing PKGBUILD, launcher.sh, pam_limits.conf...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package repository.
LLM auditresponse for pam_limits.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains a single PAM limits entry: `@games - nice -10`. This sets a CPU scheduling priority adjustment (lower nice value = higher priority) for users in the `games` group. Such resource limit configurations are normal and expected for gaming packages, allowing reduced scheduling latency without granting other privileges. No network access, obfuscation, data exfiltration, or system tampering is present. This is a benign, standard configuration file.
</details>
<evidence>
</evidence>
<summary>Standard PAM resource limit for gaming.</summary>
</security_assessment>

[2/8] Reviewing PKGBUILD, launcher.sh, pam_limits.conf, pleasenote.install...
[3/8] Reviewing PKGBUILD, launcher.sh, pleasenote.install...
+ Reviewed pam_limits.conf. Status: SAFE -- Standard PAM resource limit for gaming.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. It downloads a specific version tarball from the project's official GitHub releases page, with all checksums pinned (sha512sums). The build and package functions contain only benign operations: sed to set a path in a launcher script, strip to remove debug symbols, and install/mv to place files in the package directory. There is no obfuscated code, no execution of untrusted content at build time, and no network requests outside the declared upstream URL. The file shows no signs of a supply-chain attack; it is a normal, well-structured PKGBUILD.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with pinned checksums and no malicious behavior.</summary>
</security_assessment>

[3/8] Reviewing PKGBUILD, launcher.sh, pleasenote.install, proton-rtsp-bin.conf...
[4/8] Reviewing launcher.sh, pleasenote.install, proton-rtsp-bin.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums and no malicious behavior.
LLM auditresponse for proton-rtsp-bin.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `proton-rtsp-bin.conf` contains only the text "ntsync". This is a simple configuration string, likely intended to enable a feature (e.g., the ntsync synchronization mechanism for Proton/Wine). There are no commands, scripts, network requests, encoding, or any other potentially dangerous content. The file does not exhibit any behavior associated with supply-chain attacks, such as data exfiltration, code execution, or obfuscation. It is consistent with a normal configuration file used by the application.
</details>
<evidence></evidence>
<summary>Single-word config file, no malicious content.</summary>
</security_assessment>

[4/8] Reviewing launcher.sh, pleasenote.install, proton-rtsp-bin.conf, user_settings.py...
[5/8] Reviewing launcher.sh, pleasenote.install, user_settings.py...
+ Reviewed proton-rtsp-bin.conf. Status: SAFE -- Single-word config file, no malicious content.
LLM auditresponse for pleasenote.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `pleasenote.install` contains only informational `echo` statements that print guidance to the user during package installation and upgrade. There are no network requests, file modifications, obfuscated code, or any execution of untrusted content. The messages suggest adding the user to the `games` group and unlocking the Steam H.264 codec via a legitimate `steam://` protocol link. This is standard packaging practice for providing user instructions and does not exhibit any signs of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Informational install script, no malicious code.
</summary>
</security_assessment>

[6/8] Reviewing launcher.sh, user_settings.py...
+ Reviewed pleasenote.install. Status: SAFE -- Informational install script, no malicious code.
LLM auditresponse for user_settings.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration template for Proton GE, containing commented-out environment variable settings used to control various Proton, DXVK, Wine, and other compatibility flags. All lines are prefixed with `#` and are inert; they do not execute any commands, make network requests, or perform any file operations. The content is entirely declarative and serves as documentation for users to uncomment desired options. There is no obfuscation, encoded payloads, or malicious behavior. This is a standard user settings file for custom Proton builds.
</details>
<evidence></evidence>
<summary>Configuration template with no malicious code.</summary>
</security_assessment>

[7/8] Reviewing launcher.sh...
+ Reviewed user_settings.py. Status: SAFE -- Configuration template with no malicious code.
LLM auditresponse for launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Proton launcher script used to set up environment variables (prefix paths, DXVK cache path, Steam variables) and then execute the Proton binary with user-provided arguments.  
It performs no network operations, downloads, or execution of untrusted code.  All file operations are limited to creating directories for the prefix and DXKV cache.  The script uses no obfuscation, base64, eval, or commands that would exfiltrate data or install backdoors.  The behavior is consistent with a normal AUR helper script for a compatibility layer like Proton.
</details>
<evidence></evidence>
<summary>Standard Proton launcher, no malicious code.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed launcher.sh. Status: SAFE -- Standard Proton launcher, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 27,608
  Completion Tokens: 3,928
  Total Tokens: 31,536
  Total Cost: $0.003142
  Execution Time: 328.82 seconds

Final Status: SAFE


No issues found.
