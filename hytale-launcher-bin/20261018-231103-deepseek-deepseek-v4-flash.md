---
package: hytale-launcher-bin
pkgver: 2026.10.14
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 26216
completion_tokens: 3723
total_tokens: 29939
cost: 0.003063242
execution_time: 29.47
files_reviewed: 9
files_skipped: 1
maintainer_files: 10
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-18T23:11:02Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security issues; safe packaging hygiene file.
  - file: LICENSE
    status: safe
    summary: Plain license text only; no code, network, or suspicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums and official upstream source; no security issues.
  - file: com.hypixel.HytaleLauncher.png
    status: skipped
    summary: "Skipping binary file: com.hypixel.HytaleLauncher.png"
  - file: com.hypixel.HytaleLauncher.desktop
    status: safe
    summary: Standard desktop entry file; no malicious or suspicious behavior found.
  - file: com.hypixel.HytaleLauncherAndNodeEditor.desktop
    status: safe
    summary: Standard desktop entry file; no malicious or suspicious behavior found.
  - file: com.hypixel.HytaleNodeEditorOnly.desktop
    status: safe
    summary: Standard desktop entry; launches the launcher with an editor flag. No security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard prebuilt binary PKGBUILD with pinned checksum; no malicious behavior found.
  - file: hytale-launcher.install
    status: safe
    summary: Install script contains only informational messages; no suspicious behavior found.
  - file: hytale-launcher.sh
    status: safe
    summary: Routine launcher wrapper script; no malicious or suspicious behavior found.
---

Materializing hytale-launcher-bin from local mirror...
Materialized hytale-launcher-bin
Analyzing hytale-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `makepkg --printsrcinfo` executes only top-level code, which consists entirely of variable assignments (metadata, version, source URLs, checksums) and function definitions. There are no top-level command substitutions, no network fetches, no calls to `eval`, `curl`, `wget`, `base64`, or any other executable statements.

The `package()` function performs file installation into `$pkgdir`, which is standard packaging behavior, and it is not executed during `makepkg --printsrcinfo` anyway. The source URLs point to the official Hytale launcher domain, and checksums are provided. No malicious or dangerous behavior occurs during the parse step.
</details>
<evidence>
</evidence>
<summary>
PKGBUILD top-level contains only safe assignments; no code executes during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- PKGBUILD top-level contains only safe assignments; no code executes during printsrcinfo.
Reviewing the 10 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/10] Reviewing .SRCINFO...
[0/10] Reviewing .SRCINFO, .gitignore...
[0/10] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used in an AUR package repository. It excludes common build artifacts (`pkg/`, `src/`), generated archives (`hytale-launcher.zip`, `hytale-launcher-*-*.zip`, `*.tar.zst`), and log files (`*.log`). There is no executable code, no network activity, no file manipulation outside the repository, and no obfuscated content. This is normal packaging hygiene and presents no security concerns.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore with no security issues; safe packaging hygiene file.
</summary>
</security_assessment>

[1/10] Reviewing .SRCINFO, LICENSE...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security issues; safe packaging hygiene file.
[1/10] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text license and legal notice for the hytale-launcher-bin AUR package. It describes the proprietary nature of the Hytale Launcher, the ownership of the icon/trademark, links to the official EULA and terms of service, and the MIT license of the packaging scripts. There is no executable code, no network requests, no file operations, no obfuscation, and no behavior that could constitute a supply-chain attack or malicious payload. The content is consistent with ordinary packaging documentation.
</details>
<evidence>
</evidence>
<summary>
Plain license text only; no code, network, or suspicious behavior found.</summary>
</security_assessment>

[1/10] Reviewing .SRCINFO, LICENSE, PKGBUILD, com.hypixel.HytaleLauncher.desktop...
[2/10] Reviewing .SRCINFO, PKGBUILD, com.hypixel.HytaleLauncher.desktop...
+ Reviewed LICENSE. Status: SAFE -- Plain license text only; no code, network, or suspicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR package metadata file for `hytale-launcher-bin`. It declares the package name, version, dependencies, source files, and pinned SHA-256 checksums. The primary source archive is downloaded from `launcher.hytale.com`, which is the official upstream domain associated with the Hytale game, and all sources have specific non-SKIP checksums, which is good supply-chain hygiene.

There is no obfuscated code, no suspicious network endpoint, no executable payload, and no unexpected file operations. The included auxiliary files (`.install`, shell wrapper, desktop entries, icons, and license) are normal packaging components. The `options = !strip` and `options = !debug` entries are also standard for a prebuilt binary package. Nothing in this file indicates malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums and official upstream source; no security issues.
</summary>
</security_assessment>

[3/10] Reviewing PKGBUILD, com.hypixel.HytaleLauncher.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums and official upstream source; no security issues.
[3/10] Reviewing PKGBUILD, com.hypixel.HytaleLauncher.desktop, com.hypixel.HytaleLauncher.png...
[4/10] Reviewing PKGBUILD, com.hypixel.HytaleLauncher.desktop...
! Reviewed com.hypixel.HytaleLauncher.png. Status: SKIPPED -- Skipping binary file: com.hypixel.HytaleLauncher.png
[4/10] Reviewing PKGBUILD, com.hypixel.HytaleLauncher.desktop, com.hypixel.HytaleLauncherAndNodeEditor.desktop...
LLM auditresponse for com.hypixel.HytaleLauncher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org desktop entry file for launching the Hytale Launcher. It sets the executable path to `/usr/bin/hytale-launcher`, specifies an icon name, categorizes the application as a game, and declares the window class. There are no network operations, no script execution beyond the normal application launch, no obfuscated content, and no suspicious file or system modifications. The file is consistent with ordinary packaging practices for a desktop application.
</details>
<evidence></evidence>
<summary>Standard desktop entry file; no malicious or suspicious behavior found.</summary>
</security_assessment>

[5/10] Reviewing PKGBUILD, com.hypixel.HytaleLauncherAndNodeEditor.desktop...
+ Reviewed com.hypixel.HytaleLauncher.desktop. Status: SAFE -- Standard desktop entry file; no malicious or suspicious behavior found.
[5/10] Reviewing PKGBUILD, com.hypixel.HytaleLauncherAndNodeEditor.desktop, com.hypixel.HytaleNodeEditorOnly.desktop...
LLM auditresponse for com.hypixel.HytaleLauncherAndNodeEditor.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` launcher file for the Hytale Launcher application. It defines a desktop entry that launches `/usr/bin/hytale-launcher --editor` with the `--editor` flag to open the Node Editor. It contains no network requests, no code execution beyond the declared application binary, no obfuscation, no file manipulation, and no unusual system modifications. The file is consistent with ordinary packaging practice and presents no supply-chain or security concerns.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry file; no malicious or suspicious behavior found.</summary>
</security_assessment>

[5/10] Reviewing PKGBUILD, com.hypixel.HytaleLauncherAndNodeEditor.desktop, com.hypixel.HytaleNodeEditorOnly.desktop, hytale-launcher.install...
[6/10] Reviewing PKGBUILD, com.hypixel.HytaleNodeEditorOnly.desktop, hytale-launcher.install...
+ Reviewed com.hypixel.HytaleLauncherAndNodeEditor.desktop. Status: SAFE -- Standard desktop entry file; no malicious or suspicious behavior found.
LLM auditresponse for com.hypixel.HytaleNodeEditorOnly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` entry file for the Hytale launcher. It merely defines a menu shortcut that executes `/usr/bin/hytale-launcher --onlyeditor`. No network requests, encoded payloads, file modifications, or suspicious commands are present. The `--onlyeditor` argument is consistent with the launcher's stated purpose of launching the node editor only. No supply-chain or malicious behavior is evident.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry; launches the launcher with an editor flag. No security issues.</summary>
</security_assessment>

[7/10] Reviewing PKGBUILD, hytale-launcher.install...
+ Reviewed com.hypixel.HytaleNodeEditorOnly.desktop. Status: SAFE -- Standard desktop entry; launches the launcher with an editor flag. No security issues.
[7/10] Reviewing PKGBUILD, hytale-launcher.install, hytale-launcher.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. It downloads the official launcher zip from launcher.hytale.com with a pinned SHA-256 checksum, and installs the binary, wrapper script, desktop files, icon, and license into the package directory. There are no suspicious network redirects, no encoded or obfuscated commands, no eval/base64/curl-pipe-to-shell, and no modifications outside the package directory during packaging. The self-updating nature of the launcher is upstream application behavior, not injected supply-chain code. No evidence of malicious or dangerous behavior was found.
</details>
<evidence>

</evidence>
<summary>
Standard prebuilt binary PKGBUILD with pinned checksum; no malicious behavior found.</summary>
</security_assessment>

[8/10] Reviewing hytale-launcher.install, hytale-launcher.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard prebuilt binary PKGBUILD with pinned checksum; no malicious behavior found.
LLM auditresponse for hytale-launcher.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script (`.install`) containing only informational `echo` messages for `post_install`, `post_upgrade`, and `post_remove`. It performs no network operations, downloads, file modifications, command execution, or data collection.

The top-level line `: "${XDG_DATA_HOME:=/home/$USER/.local/share}"` merely sets a default environment variable for display messages. Using `/home/$USER` instead of `$HOME` is slightly fragile but not malicious. No behavior in this file deviates from ordinary packaging practices.
</details>
<evidence>
</evidence>
<summary>
Install script contains only informational messages; no suspicious behavior found.</summary>
</security_assessment>

[9/10] Reviewing hytale-launcher.sh...
+ Reviewed hytale-launcher.install. Status: SAFE -- Install script contains only informational messages; no suspicious behavior found.
LLM auditresponse for hytale-launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher wrapper script. It performs runtime environment checks (system clock synchronization, IPv6 availability), exports a few compatibility environment variables for NVIDIA/WebKit, copies the installed launcher binary from `/opt/hytale-launcher-bin` into the user's data directory if needed, and executes it with any passed arguments. It also supports an optional Node Editor launch mode.

No suspicious network requests, encoded/obfuscated commands, or unexpected file modifications are present. The script only writes to the user's own XDG directories and reads standard system status files such as `/proc/sys/net/ipv6/conf/all/disable_ipv6`. The fixed source path `/opt/hytale-launcher-bin` is the expected installation location for a package named `hytale-launcher-bin`, and running the launcher from there is the package's intended behavior. This is routine packaging/launcher functionality, not a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Routine launcher wrapper script; no malicious or suspicious behavior found.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed hytale-launcher.sh. Status: SAFE -- Routine launcher wrapper script; no malicious or suspicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: com.hypixel.HytaleLauncher.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 26,216
  Completion Tokens: 3,723
  Total Tokens: 29,939
  Total Cost: $0.003063
  Execution Time: 29.47 seconds

Final Status: SAFE


No issues found.


Audit Skips:

com.hypixel.HytaleLauncher.png: [SKIPPED] Skipping binary file: com.hypixel.HytaleLauncher.png
