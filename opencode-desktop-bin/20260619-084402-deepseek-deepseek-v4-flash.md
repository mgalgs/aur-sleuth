---
package: opencode-desktop-bin
pkgver: 1.17.8
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 37274
completion_tokens: 8164
total_tokens: 45438
cost: 0.00482418
execution_time: 74.99
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T08:44:02Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard MIT license file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard binary AUR PKGBUILD with no malicious behavior.
  - file: src/usr/share/applications/opencode-desktop.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: "src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/package.json"
    status: safe
    summary: Standard package.json metadata, no malicious content.
  - file: "src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/unixTerminal.js"
    status: safe
    summary: Standard pty library code, no security issues found.
  - file: "src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/index.js"
    status: safe
    summary: Standard Node.js PTY module without malicious behavior.
  - file: src/postrm
    status: safe
    summary: Standard package removal cleanup; no malicious behavior.
  - file: src/usr/share/applications/ai.opencode.desktop.desktop
    status: safe
    summary: Standard .desktop file with no malicious content.
  - file: "src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/terminal.js"
    status: safe
    summary: No security issues found; standard terminal emulator code.
  - file: src/opt/OpenCode/resources/app-update.yml
    status: safe
    summary: "Standard updater config linking to the project's own GitHub."
  - file: src/postinst
    status: safe
    summary: Standard post-install script, no malicious behavior.
  - file: "src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/utils.js"
    status: safe
    summary: Standard Node.js native module loader, no malicious behavior.
---

Cloning https://aur.archlinux.org/opencode-desktop-bin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-kld71s1r...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-kld71s1r
Analyzing opencode-desktop-bin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-kld71s1r) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD sources are fetched from the official GitHub repository (`anomalyco/opencode`) using HTTPS URLs. All `source` entries are standard `.deb` files and a LICENSE file, with pinned version numbers and SHA-256 checksums (none set to SKIP). No `pkgver()` function is defined (pkgver is a static variable), so no dynamic code executes during sourcing. The `latestver()` helper function is defined but never invoked at top-level scope. The `package()` function, which contains file operations, is not executed by `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. No suspicious commands, obfuscation, or external network calls beyond the declared upstream sources are present. Fetching sources and parsing this PKGBUILD is safe.
</details>
<summary>Fetching sources and parsing PKGBUILD is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Fetching sources and parsing PKGBUILD is safe.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text. It contains no executable code, no obfuscation, no network requests, no file operations, and no instructions. It is purely a legal document and poses no security risk.
</details>
<summary>Standard MIT license file, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard MIT license file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It downloads a binary `.deb` from the official upstream GitHub releases (`https://github.com/anomalyco/opencode/releases/download/...`), with SHA256 checksums provided for integrity. The `latestver()` function is a helper for the maintainer and is not executed during building or installation. The `package()` function extracts the archive, removes unnecessary files, and creates a simple launcher script that reads optional user flags from a configuration file. There are no dangerous commands (no `eval`, `curl|bash`, obfuscated code, or exfiltration). The file is safe.
</details>
<summary>Standard binary AUR PKGBUILD with no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary AUR PKGBUILD with no malicious behavior.
Reviewed all required files.
Deciding which files to review next...
LLM response for file selection:
src/postinst
src/postrm
src/usr/share/applications/ai.opencode.desktop.desktop
src/usr/share/applications/opencode-desktop.desktop
src/opt/OpenCode/resources/app-update.yml
src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/index.js
src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/unixTerminal.js
src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/terminal.js
src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/package.json
src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/utils.js
Decided to review 10 additional files: src/postinst, src/postrm, src/usr/share/applications/ai.opencode.desktop.desktop, src/usr/share/applications/opencode-desktop.desktop, src/opt/OpenCode/resources/app-update.yml, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/index.js, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/unixTerminal.js, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/terminal.js, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/package.json, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/utils.js
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/postrm...
[0/10] Reviewing src/postrm, src/postinst...
[0/10] Reviewing src/postrm, src/postinst, src/usr/share/applications/ai.opencode.desktop.desktop...
[0/10] Reviewing src/postrm, src/postinst, src/usr/share/applications/ai.opencode.desktop.desktop, src/usr/share/applications/opencode-desktop.desktop...
[0/10] Reviewing src/postrm, src/postinst, src/usr/share/applications/ai.opencode.desktop.desktop, src/usr/share/applications/opencode-desktop.desktop, src/opt/OpenCode/resources/app-update.yml...
[0/10] Reviewing src/postrm, src/postinst, src/usr/share/applications/ai.opencode.desktop.desktop, src/usr/share/applications/opencode-desktop.desktop, src/opt/OpenCode/resources/app-update.yml, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/index.js...
[0/10] Reviewing src/postrm, src/postinst, src/usr/share/applications/ai.opencode.desktop.desktop, src/usr/share/applications/opencode-desktop.desktop, src/opt/OpenCode/resources/app-update.yml, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/index.js, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/terminal.js...
[0/10] Reviewing src/postrm, src/postinst, src/usr/share/applications/ai.opencode.desktop.desktop, src/usr/share/applications/opencode-desktop.desktop, src/opt/OpenCode/resources/app-update.yml, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/index.js, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/terminal.js, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/utils.js...
[0/10] Reviewing src/postrm, src/postinst, src/usr/share/applications/ai.opencode.desktop.desktop, src/usr/share/applications/opencode-desktop.desktop, src/opt/OpenCode/resources/app-update.yml, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/index.js, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/terminal.js, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/utils.js, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/package.json...
[0/10] Reviewing src/postrm, src/postinst, src/usr/share/applications/ai.opencode.desktop.desktop, src/usr/share/applications/opencode-desktop.desktop, src/opt/OpenCode/resources/app-update.yml, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/index.js, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/terminal.js, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/utils.js, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/package.json, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/unixTerminal.js...
LLM auditresponse for opencode-desktop.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Linux desktop entry file. It defines a launcher for the OpenCode application with the executable path `/opt/OpenCode/ai.opencode.desktop` and typical metadata (name, icon, categories). No network requests, obfuscation, file operations, or any commands beyond standard desktop entry fields are present. The file contains no malicious or suspicious code.
</details>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/postrm, src/postinst, src/usr/share/applications/ai.opencode.desktop.desktop, src/opt/OpenCode/resources/app-update.yml, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/index.js, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/terminal.js, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/utils.js, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/package.json, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/unixTerminal.js...
+ Reviewed src/usr/share/applications/opencode-desktop.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for package.json:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `package.json` for an npm package (`@lydell/node-pty-linux-x64`). It contains only metadata fields (name, version, description, repository, license, type, exports, os, cpu). There are no executable scripts, network requests, obfuscated code, or any other suspicious patterns. The content is purely declarative and poses no security risk.
</details>
<summary>Standard package.json metadata, no malicious content.</summary>
</security_assessment>

[2/10] Reviewing src/postrm, src/postinst, src/usr/share/applications/ai.opencode.desktop.desktop, src/opt/OpenCode/resources/app-update.yml, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/index.js, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/terminal.js, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/utils.js, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/unixTerminal.js...
+ Reviewed src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/package.json. Status: SAFE -- Standard package.json metadata, no malicious content.
LLM auditresponse for unixTerminal.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard component of the `node-pty` library, used for spawning and managing pseudo-terminals on Unix systems. It imports `fs`, `path`, `tty`, and a native `pty` module. No suspicious network requests (e.g., `curl`, `wget`), obfuscated code, `eval`, `base64`, or file exfiltration patterns are present. The environment sanitization (removing `TMUX`, `STY`, etc.) and custom write stream for handling backpressure are normal terminal emulator behaviors. The helper path adjustments for asar archives are typical for Electron bundling. There is no evidence of malicious code injection or deviation from the expected functionality of a pseudo-terminal library.
</details>
<summary>Standard pty library code, no security issues found.</summary>
</security_assessment>

[3/10] Reviewing src/postrm, src/postinst, src/usr/share/applications/ai.opencode.desktop.desktop, src/opt/OpenCode/resources/app-update.yml, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/index.js, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/terminal.js, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/utils.js...
+ Reviewed src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/unixTerminal.js. Status: SAFE -- Standard pty library code, no security issues found.
LLM auditresponse for index.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `index.js` is part of a Node.js pseudoterminal library (likely node-pty or a fork), as indicated by the copyright headers and the code structure. It defines standard functions (`spawn`, `fork`, `createTerminal`, `open`) that create terminal processes using platform-specific modules (`./windowsTerminal` or `./unixTerminal`). The code uses `require` statements to load local modules and does not contain any suspicious patterns such as `eval`, `base64`, `curl`, `wget`, or obfuscated commands. There are no network requests, file exfiltration, or execution of untrusted code. The use of `loadNativeModule` from `utils` to load a native `pty` module is expected for PTY functionality. The file is a normal part of a legitimate Node.js package and shows no signs of malicious injection or supply-chain attack.
</details>
<summary>Standard Node.js PTY module without malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing src/postrm, src/postinst, src/usr/share/applications/ai.opencode.desktop.desktop, src/opt/OpenCode/resources/app-update.yml, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/terminal.js, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/utils.js...
+ Reviewed src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/index.js. Status: SAFE -- Standard Node.js PTY module without malicious behavior.
LLM auditresponse for postrm:
<security_assessment>
<decision>SAFE</decision>
<details>
The `postrm` script is a standard post-removal script for a package that uses `update-alternatives` and AppArmor. It removes a symbolic link (either via `update-alternatives` or direct `rm`) and removes the AppArmor profile file, unloading it from the running kernel if possible. There are no network requests, no execution of untrusted code, no data exfiltration, and no obfuscated commands. All operations are typical and expected for package cleanup.</details>
<summary>Standard package removal cleanup; no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing src/postinst, src/usr/share/applications/ai.opencode.desktop.desktop, src/opt/OpenCode/resources/app-update.yml, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/terminal.js, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/utils.js...
+ Reviewed src/postrm. Status: SAFE -- Standard package removal cleanup; no malicious behavior.
LLM auditresponse for ai.opencode.desktop.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file for the OpenCode application. It defines metadata such as Name, Exec path, Icon, MimeType, and Categories. The Exec line points to `/opt/OpenCode/ai.opencode.desktop %U`, which appears to be the application binary or script. The file does not contain any network requests, obfuscated code, dangerous commands, or attempts to exfiltrate data. There are no references to curling, wgetting, eval, base64, or other suspicious operations. The MimeType registration for `x-scheme-handler/opencode` is typical for handling custom URL schemes. The file follows standard desktop entry format and is safe.
</details>
<summary>Standard .desktop file with no malicious content.</summary>
</security_assessment>

[6/10] Reviewing src/postinst, src/opt/OpenCode/resources/app-update.yml, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/terminal.js, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/utils.js...
+ Reviewed src/usr/share/applications/ai.opencode.desktop.desktop. Status: SAFE -- Standard .desktop file with no malicious content.
LLM auditresponse for terminal.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard node-pty `terminal.js` file that defines a `Terminal` class for pseudo-terminal operations. It contains no network calls, no obfuscated code, no encoded commands, no system modifications, and no suspicious operations. The code handles pty configuration and flow control (XON/XOFF), which is expected upstream application functionality. There is no evidence of injected malicious code or supply-chain attack behavior. The file is consistent with normal packaging practices.
</details>
<summary>No security issues found; standard terminal emulator code.</summary>
</security_assessment>

[7/10] Reviewing src/postinst, src/opt/OpenCode/resources/app-update.yml, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/utils.js...
+ Reviewed src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/terminal.js. Status: SAFE -- No security issues found; standard terminal emulator code.
LLM auditresponse for app-update.yml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard configuration file for an application updater (likely electron-builder's auto-update or similar). It specifies the GitHub owner (`anomalyco`), repository (`opencode`), provider (`github`), channel (`latest`), and a cache directory name. There is no executable code, no obfuscated content, no network requests or file operations outside of what the upstream application would legitimately do. The update configuration points to the application's own GitHub repository, which is expected behavior.
</details>
<summary>Standard updater config linking to the project's own GitHub.</summary>
</security_assessment>

[8/10] Reviewing src/postinst, src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/utils.js...
+ Reviewed src/opt/OpenCode/resources/app-update.yml. Status: SAFE -- Standard updater config linking to the project's own GitHub.
LLM auditresponse for postinst:
<security_assessment>
<decision>SAFE</decision>
<details>
The script performs standard post-installation tasks for a desktop application: managing an alternatives symlink, adjusting chrome-sandbox permissions based on user namespace support, updating MIME and desktop databases, and installing an AppArmor profile from the application's own resources. All operations are confined to the application's own directories (`/opt/OpenCode`) and standard system locations (`/usr/bin`, `/etc/apparmor.d`). There are no network requests, no downloads, no obfuscated code, and no exfiltration of data. The SUID bit on chrome-sandbox is a known security measure for Chromium-based apps when user namespaces are unavailable, not a malicious action.
</details>
<summary>Standard post-install script, no malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/utils.js...
+ Reviewed src/postinst. Status: SAFE -- Standard post-install script, no malicious behavior.
LLM auditresponse for utils.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file (`utils.js`) is a standard Node.js utility module that exports two functions: `assign` and `loadNativeModule`. The `assign` function copies enumerable properties from source objects to a target. The `loadNativeModule` function attempts to load a native `.node` module from conventional build directories (`build/Release`, `build/Debug`) and platform-specific prebuilds paths, relative to the current or parent directory. This is normal Node.js addon loading behavior. There is no obfuscation, no network requests, no execution of fetched code, no file system manipulation outside standard module resolution, and no suspicious patterns. The code is consistent with ordinary packaging and does not exhibit any indicators of a supply-chain attack.
</details>
<summary>Standard Node.js native module loader, no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/opt/OpenCode/resources/app.asar.unpacked/node_modules/@lydell/node-pty-linux-x64/lib/utils.js. Status: SAFE -- Standard Node.js native module loader, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 37,274
  Completion Tokens: 8,164
  Total Tokens: 45,438
  Total Cost: $0.004824
  Execution Time: 74.99 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-opencode-desktop-bin.txt
Final Status: SAFE


No issues found.
