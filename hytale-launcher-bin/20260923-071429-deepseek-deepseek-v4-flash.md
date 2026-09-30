---
package: hytale-launcher-bin
pkgver: 2026.09.21
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 25508
completion_tokens: 6251
total_tokens: 31759
cost: 0.003367914060
execution_time: 165.86
files_reviewed: 9
files_skipped: 1
maintainer_files: 10
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-23T07:14:29Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: .gitignore
    status: safe
    summary: Standard gitignore file with no security issues.
  - file: com.hypixel.HytaleLauncher.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: com.hypixel.HytaleLauncher.png
    status: skipped
    summary: "Skipping binary file: com.hypixel.HytaleLauncher.png"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious code found.
  - file: com.hypixel.HytaleLauncherAndNodeEditor.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: com.hypixel.HytaleNodeEditorOnly.desktop
    status: safe
    summary: Standard desktop entry file; no security concerns.
  - file: hytale-launcher.install
    status: safe
    summary: No malicious or suspicious content found.
  - file: hytale-launcher.sh
    status: safe
    summary: Safe wrapper script for Hytale Launcher.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only .SRCINFO; pinned hashes, expected upstream URL, no malicious logic.
---

Materializing hytale-launcher-bin from local mirror...
Materialized hytale-launcher-bin
Analyzing hytale-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and source array declarations at the top level. No command substitutions, backtick executions, `eval`, or any other dangerous constructs are present that would execute during sourcing. All top-level operations are safe and consistent with normal PKGBUILD structure. Running `makepkg --printsrcinfo` will not trigger any malicious behavior.
</details>
<evidence></evidence>
<summary>No dangerous top-level code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code found.
Reviewing the 10 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/10] Reviewing .gitignore...
[0/10] Reviewing .gitignore, .SRCINFO...
[0/10] Reviewing .gitignore, .SRCINFO, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a plain license file that describes the ownership and licensing of the Hytale Launcher binary, trademark, icon, and packaging scripts. It contains no executable code, no instructions, and no references to downloads, obfuscation, or file operations. The only external references are official Hytale legal links (eula and terms of service), which are expected and benign. There is no evidence of any supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[0/10] Reviewing .gitignore, .SRCINFO, LICENSE, PKGBUILD...
[1/10] Reviewing .gitignore, .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The .gitignore file contains standard patterns for ignoring build directories (`pkg/`, `src/`), generated archive files (`*.zip`, `*.tar.zst`), and log files (`*.log`). There is no executable code, no network requests, no obfuscated content, and no system modifications. This file is benign and follows normal packaging conventions.
</details>
<evidence></evidence>
<summary>Standard gitignore file with no security issues.</summary>
</security_assessment>

[1/10] Reviewing .gitignore, .SRCINFO, PKGBUILD, com.hypixel.HytaleLauncher.desktop...
[2/10] Reviewing .SRCINFO, PKGBUILD, com.hypixel.HytaleLauncher.desktop...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file with no security issues.
LLM auditresponse for com.hypixel.HytaleLauncher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for launching the Hytale Launcher application. It contains no executable code or commands beyond specifying the binary path `/usr/bin/hytale-launcher` and standard metadata fields (Name, Comment, Icon, Categories, etc.). There are no network requests, obfuscated content, system modifications, or any signs of malicious behavior. The file is entirely benign and follows normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[2/10] Reviewing .SRCINFO, PKGBUILD, com.hypixel.HytaleLauncher.desktop, com.hypixel.HytaleLauncher.png...
[3/10] Reviewing .SRCINFO, PKGBUILD, com.hypixel.HytaleLauncher.png...
+ Reviewed com.hypixel.HytaleLauncher.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
[3/10] Reviewing .SRCINFO, PKGBUILD, com.hypixel.HytaleLauncher.png, com.hypixel.HytaleLauncherAndNodeEditor.desktop...
[4/10] Reviewing .SRCINFO, PKGBUILD, com.hypixel.HytaleLauncherAndNodeEditor.desktop...
! Reviewed com.hypixel.HytaleLauncher.png. Status: SKIPPED -- Skipping binary file: com.hypixel.HytaleLauncher.png
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package file for a prebuilt binary. It downloads the Hytale launcher from the official upstream `launcher.hytale.com`, pins checksums for all source files, and installs them into the package directory using `install` commands. There are no obfuscated commands, no unexpected network requests, no `curl|bash` patterns, no `eval` usage, and no file operations outside of `$pkgdir`. The only notable point is that the binary source is a prebuilt zip, which is expected for a `-bin` package. No evidence of supply-chain attack or malicious content exists in this PKGBUILD itself. The referenced install script (`hytale-launcher.install`) is not visible here, but the PKGBUILD content is safe.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious code found.</summary>
</security_assessment>

[4/10] Reviewing .SRCINFO, PKGBUILD, com.hypixel.HytaleLauncherAndNodeEditor.desktop, com.hypixel.HytaleNodeEditorOnly.desktop...
[5/10] Reviewing .SRCINFO, com.hypixel.HytaleLauncherAndNodeEditor.desktop, com.hypixel.HytaleNodeEditorOnly.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious code found.
LLM auditresponse for com.hypixel.HytaleLauncherAndNodeEditor.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Linux desktop entry file for launching the Hytale Launcher with the NodeEditor flag. The `Exec` line calls `/usr/bin/hytale-launcher --editor`, which points to an installed binary. No network requests, obfuscated code, dangerous commands, or unexpected operations are present. The shebang line (`#!/usr/bin/env xdg-open`) is unconventional for a `.desktop` file (it is not typical to make them executable with a shebang), but it is harmless and does not introduce any security risk. The file adheres to normal packaging practices for a graphical application launcher.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[5/10] Reviewing .SRCINFO, com.hypixel.HytaleLauncherAndNodeEditor.desktop, com.hypixel.HytaleNodeEditorOnly.desktop, hytale-launcher.install...
[6/10] Reviewing .SRCINFO, com.hypixel.HytaleNodeEditorOnly.desktop, hytale-launcher.install...
+ Reviewed com.hypixel.HytaleLauncherAndNodeEditor.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for com.hypixel.HytaleNodeEditorOnly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` file for the Hytale Node Editor application. It contains only expected desktop entry keys: Name, Comment, Exec, Icon, Terminal, Type, Categories, and StartupWMClass. The `Exec` line runs `/usr/bin/hytale-launcher --onlyeditor`, which is a legitimate application binary provided by the package. There are no suspicious commands, network requests, encoded payloads, or file operations. No deviation from standard packaging practices is present.
</details>
<evidence></evidence>
<summary>Standard desktop entry file; no security concerns.</summary>
</security_assessment>

[6/10] Reviewing .SRCINFO, com.hypixel.HytaleNodeEditorOnly.desktop, hytale-launcher.install, hytale-launcher.sh...
[7/10] Reviewing .SRCINFO, hytale-launcher.install, hytale-launcher.sh...
+ Reviewed com.hypixel.HytaleNodeEditorOnly.desktop. Status: SAFE -- Standard desktop entry file; no security concerns.
LLM auditresponse for hytale-launcher.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.install` script used by Arch Linux packages. It only contains `echo` statements that display informational messages to the user during install, upgrade, and removal. There are no dangerous commands, network requests, file modifications, or obfuscated code. The script does not execute any external programs, download content, or manipulate system files. It is purely informational and follows expected packaging practices.
</details>
<evidence></evidence>
<summary>No malicious or suspicious content found.</summary>
</security_assessment>

[8/10] Reviewing .SRCINFO, hytale-launcher.sh...
+ Reviewed hytale-launcher.install. Status: SAFE -- No malicious or suspicious content found.
LLM auditresponse for hytale-launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard wrapper script for the Hytale Launcher. It performs benign system checks (time sync status, IPv6 configuration) to warn users of potential connectivity issues. It sets environment variables to fix known rendering and sync issues (NVIDIA, WebKit). The script then copies the launcher binary from the system-installed location (`/opt/hytale-launcher-bin`) to the user's home directory under `~/.local/share/hytale-launcher/bin/` and executes it. The `exec` call runs the copied binary directly with any arguments passed. No network requests, obfuscated code, unexpected file operations, or system tampering outside the application's own directories is present. The behaviour is fully consistent with a legitimate AUR package wrapper.
</details>
<evidence></evidence>
<summary>Safe wrapper script for Hytale Launcher.</summary>
</security_assessment>

[9/10] Reviewing .SRCINFO...
+ Reviewed hytale-launcher.sh. Status: SAFE -- Safe wrapper script for Hytale Launcher.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
`.SRCINFO` is a metadata-only AUR package manifest. It contains no executable code, no shell logic, and no install-time commands by itself. The referenced files, such as `hytale-launcher.install` and `hytale-launcher.sh`, would need separate review, but this file contains nothing that can run code.

The only download URL points to `https://launcher.hytale.com/builds/release/linux/amd64/hytale-launcher-2026.09.21-909ac0c.zip`, which matches the package's declared upstream at `https://hytale.com`. All 8 sources have pinned `sha256sums`; no checksums are skipped. Dependencies are normal runtime libraries, and the optional `systemd` and `iproute2` dependencies align with the described clock-sync and IPv6 checks.

The `pkgdesc` advertises that the launcher is self-updating, but that is an upstream application behavior and not evidence of an injected supply-chain attack in this file. There is no obfuscation, suspicious network destination, credential or file exfiltration, or download-and-execute pattern present in this `.SRCINFO`.
</details>
<evidence></evidence>
<summary>Metadata-only .SRCINFO; pinned hashes, expected upstream URL, no malicious logic.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only .SRCINFO; pinned hashes, expected upstream URL, no malicious logic.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: com.hypixel.HytaleLauncher.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 25,508
  Completion Tokens: 6,251
  Total Tokens: 31,759
  Total Cost: $0.003368
  Execution Time: 165.86 seconds

Final Status: SAFE


No issues found.


Audit Skips:

com.hypixel.HytaleLauncher.png: [SKIPPED] Skipping binary file: com.hypixel.HytaleLauncher.png
