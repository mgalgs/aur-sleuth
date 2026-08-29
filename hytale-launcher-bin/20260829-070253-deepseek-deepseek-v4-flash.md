---
package: hytale-launcher-bin
pkgver: 2026.08.28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 25764
completion_tokens: 3608
total_tokens: 29372
cost: 0.00279802320
execution_time: 51.25
files_reviewed: 9
files_skipped: 1
maintainer_files: 10
source_fetch: ok
upstream_files: 9
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-29T07:02:52Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: License-only text file; no executable or malicious content found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned checksums, no malice.
  - file: com.hypixel.HytaleLauncher.png
    status: skipped
    summary: "Skipping binary file: com.hypixel.HytaleLauncher.png"
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package; no security concerns.
  - file: com.hypixel.HytaleNodeEditorOnly.desktop
    status: safe
    summary: Standard desktop entry; no malicious behavior or suspicious elements found.
  - file: com.hypixel.HytaleLauncher.desktop
    status: safe
    summary: Standard desktop entry file, no security issues found.
  - file: com.hypixel.HytaleLauncherAndNodeEditor.desktop
    status: safe
    summary: Standard desktop entry file; no malicious content.
  - file: hytale-launcher.install
    status: safe
    summary: Standard .install script with only informational echo messages.
  - file: hytale-launcher.sh
    status: safe
    summary: Legitimate launcher wrapper; no malicious behavior found.
---

Cloning https://aur.archlinux.org/hytale-launcher-bin.git...
Cloned hytale-launcher-bin
Analyzing hytale-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no top-level code (outside functions) that could execute dangerous commands during sourcing or pkgver(). All assignments are static strings or arrays. No `eval`, `curl`, `wget`, `base64`, or command substitution is present in the global scope. The `source` array entries point to the official upstream launcher.hytale.com and bundled local files. The `pkgver()` function is not defined, so no code runs from it. Cheksums are provided (no `SKIP`), but even if they were missing or `SKIP`, that would not make sourcing unsafe at this stage. The `package()` function is not executed due to `--nobuild` and `--noprepare`. Therefore, running the requested commands is safe.
</details>
<evidence>
</evidence>
<summary>No malicious code in scope for initial sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in scope for initial sourcing.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 10 file(s) in the AUR repository. The 9 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/10] Reviewing .SRCINFO...
[0/10] Reviewing .SRCINFO, .gitignore...
[0/10] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain-text license document for the hytale-launcher-bin package. It describes ownership of the Hytale launcher assets, the package being a community wrapper, and the licensing terms for the packaging scripts. It contains no executable code, no network operations, no file manipulation, and no obfuscated content. The URLs referenced are the official Hytale legal pages, which is consistent with a license notice and not a security concern.
</details>
<evidence>
</evidence>
<summary>
License-only text file; no executable or malicious content found.
</summary>
</security_assessment>

[0/10] Reviewing .SRCINFO, .gitignore, LICENSE, PKGBUILD...
[1/10] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- License-only text file; no executable or malicious content found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It declares the package name, version, dependencies, source files, and SHA256 checksums. The only source URL points to the official Hytale launcher binary distribution (`launcher.hytale.com`) over HTTPS. All source files have corresponding SHA256 checksums. There is no executable code, no obfuscated content, no suspicious network requests, and no deviation from normal packaging practices. The file is purely declarative and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[1/10] Reviewing .SRCINFO, .gitignore, PKGBUILD, com.hypixel.HytaleLauncher.desktop...
[2/10] Reviewing .gitignore, PKGBUILD, com.hypixel.HytaleLauncher.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. The source is downloaded from the official Hytale launcher domain (launcher.hytale.com) over HTTPS, and all source files have pinned SHA256 checksums, ensuring integrity. The package function installs the binary, launcher script, icons, desktop files, and license to expected system paths. There is no obfuscated code, no suspicious network requests, and no evasion of standard packaging flows. The `.install` script is referenced but not displayed; however, no evidence of malicious behavior is present in the provided file.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned checksums, no malice.</summary>
</security_assessment>

[2/10] Reviewing .gitignore, PKGBUILD, com.hypixel.HytaleLauncher.desktop, com.hypixel.HytaleLauncher.png...
[3/10] Reviewing .gitignore, com.hypixel.HytaleLauncher.desktop, com.hypixel.HytaleLauncher.png...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned checksums, no malice.
[3/10] Reviewing .gitignore, com.hypixel.HytaleLauncher.desktop, com.hypixel.HytaleLauncher.png, com.hypixel.HytaleLauncherAndNodeEditor.desktop...
[4/10] Reviewing .gitignore, com.hypixel.HytaleLauncher.desktop, com.hypixel.HytaleLauncherAndNodeEditor.desktop...
! Reviewed com.hypixel.HytaleLauncher.png. Status: SKIPPED -- Skipping binary file: com.hypixel.HytaleLauncher.png
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains standard ignore patterns for an AUR package build environment. It excludes build directories (`pkg/`, `src/`), downloaded binary archives (`hytale-launcher.zip`, hytale-launcher-*-*.zip), compressed package tarballs (`*.tar.zst`), and log files (`*.log`). There is no executable code, no network requests, no obfuscation, and no commands that could modify system files or exfiltrate data. This is a purely passive configuration file for version control purposes and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package; no security concerns.</summary>
</security_assessment>

[5/10] Reviewing com.hypixel.HytaleLauncher.desktop, com.hypixel.HytaleLauncherAndNodeEditor.desktop...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package; no security concerns.
[5/10] Reviewing com.hypixel.HytaleLauncher.desktop, com.hypixel.HytaleLauncherAndNodeEditor.desktop, com.hypixel.HytaleNodeEditorOnly.desktop...
LLM auditresponse for com.hypixel.HytaleNodeEditorOnly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org desktop entry file for launching the Hytale Launcher in its Node Editor-only mode. It contains only declarative metadata (Name, Comment, Exec, Icon, etc.) and no executable logic. The Exec line invokes the system-installed binary `/usr/bin/hytale-launcher` with a single expected argument, `--onlyeditor`. There are no network requests, file modifications, obfuscated code, or dangerous commands. The `Terminal=false` and `Categories=Game;` fields are normal for a game launcher desktop entry. No supply-chain or malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry; no malicious behavior or suspicious elements found.</summary>
</security_assessment>

[6/10] Reviewing com.hypixel.HytaleLauncher.desktop, com.hypixel.HytaleLauncherAndNodeEditor.desktop...
+ Reviewed com.hypixel.HytaleNodeEditorOnly.desktop. Status: SAFE -- Standard desktop entry; no malicious behavior or suspicious elements found.
[6/10] Reviewing com.hypixel.HytaleLauncher.desktop, com.hypixel.HytaleLauncherAndNodeEditor.desktop, hytale-launcher.install...
LLM auditresponse for com.hypixel.HytaleLauncher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Hytale Launcher. It contains no code execution beyond defining a desktop entry that points to `/usr/bin/hytale-launcher`. The shebang line (`#!/usr/bin/env xdg-open`) is unconventional but harmless—it allows the file to be executed directly if desired, but does not introduce any network calls, obfuscation, or system modifications. No evidence of malicious behavior.
</details>
<evidence>

</evidence>
<summary>Standard desktop entry file, no security issues found.</summary>
</security_assessment>

[6/10] Reviewing com.hypixel.HytaleLauncher.desktop, com.hypixel.HytaleLauncherAndNodeEditor.desktop, hytale-launcher.install, hytale-launcher.sh...
[7/10] Reviewing com.hypixel.HytaleLauncherAndNodeEditor.desktop, hytale-launcher.install, hytale-launcher.sh...
+ Reviewed com.hypixel.HytaleLauncher.desktop. Status: SAFE -- Standard desktop entry file, no security issues found.
LLM auditresponse for com.hypixel.HytaleLauncherAndNodeEditor.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Linux `.desktop` entry file used by desktop environments to present an application launcher. It specifies a name, comment, executable path (`/usr/bin/hytale-launcher --editor`), icon, and metadata. There is no code, no network access, no file manipulation, no obfuscation, and no reference to any external or unexpected resource. The content is purely declarative and follows the freedesktop.org specification. No security issues are present.
</details>
<evidence>
</evidence>
<summary>Standard desktop entry file; no malicious content.</summary>
</security_assessment>

[8/10] Reviewing hytale-launcher.install, hytale-launcher.sh...
+ Reviewed com.hypixel.HytaleLauncherAndNodeEditor.desktop. Status: SAFE -- Standard desktop entry file; no malicious content.
LLM auditresponse for hytale-launcher.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux .install script used by pacman to display messages during package installation, upgrade, and removal. It contains no network requests, no file modifications, no execution of downloaded code, no obfuscation, and no dangerous commands. The only operations are `echo` statements printing informational messages to the user. The default value for `XDG_DATA_HOME` uses a common shell pattern. There is no evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard .install script with only informational echo messages.</summary>
</security_assessment>

[9/10] Reviewing hytale-launcher.sh...
+ Reviewed hytale-launcher.install. Status: SAFE -- Standard .install script with only informational echo messages.
LLM auditresponse for hytale-launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard launcher wrapper for the Hytale game. It performs routine environment preparation (time sync warning, IPv6 check, NVIDIA/Webkit workarounds), copies the pre-installed binary from `/opt/hytale-launcher-bin` to the user's local data directory if absent, and then executes it. All operations are confined to the package's own directories and intended configuration. There are no network requests, obfuscated code, data exfiltration, or execution of untrusted content. The script is consistent with legitimate wrapper practices for Arch Linux packages.
</details>
<evidence>

</evidence>
<summary>Legitimate launcher wrapper; no malicious behavior found.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed hytale-launcher.sh. Status: SAFE -- Legitimate launcher wrapper; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: com.hypixel.HytaleLauncher.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 25,764
  Completion Tokens: 3,608
  Total Tokens: 29,372
  Total Cost: $0.002798
  Execution Time: 51.25 seconds

Final Status: SAFE


No issues found.


Audit Skips:

com.hypixel.HytaleLauncher.png: [SKIPPED] Skipping binary file: com.hypixel.HytaleLauncher.png
