---
package: heroic-games-launcher-bin
pkgver: 2.22.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: ab8f04a045309f11c3e319d8a061c88f7bc8df51
prompt_tokens: 46371
completion_tokens: 4460
total_tokens: 50831
cost: 0.00316596266
execution_time: 71.04
files_reviewed: 11
files_skipped: 1
files_unauditable: 80
unpinned_sources: 0
date: 2026-08-22T23:18:29Z
file_verdicts:
  - file: Heroic-2.22.1-linux-x64.pacman
    status: skipped
    summary: "Skipping binary file: Heroic-2.22.1-linux-x64.pacman"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package with pinned source and checksum.
  - file: src/opt/Heroic/LICENSE.electron.txt
    status: safe
    summary: Standard license file with no security issues.
  - file: src/opt/Heroic/vk_swiftshader_icd.json
    status: safe
    summary: Standard ICD JSON for SwiftShader, no security issues.
  - file: src/.PKGINFO
    status: safe
    summary: Standard metadata file, no security issues.
  - file: src/.INSTALL
    status: safe
    summary: Standard install script; no malicious behavior found.
  - file: src/opt/Heroic/LICENSES.chromium.html
    status: safe
    summary: Static license file, no executable code.
  - file: src/opt/Heroic/resources/package-type
    status: safe
    summary: "File contains only the word \"pacman\""
  - file: src/opt/Heroic/resources/app-update.yml
    status: safe
    summary: Static YAML config for auto-updater; no malicious content.
  - file: src/opt/Heroic/resources/app.asar.unpacked/build/preload/webviewPreload.js
    status: safe
    summary: Standard Electron webview preload script, no malicious code.
  - file: src/opt/Heroic/resources/apparmor-profile
    status: safe
    summary: AppArmor profile is standard packaging, not malicious.
  - file: src/usr/share/applications/heroic.desktop
    status: safe
    summary: Standard desktop entry file, no malicious content.
---

Cloning https://aur.archlinux.org/heroic-games-launcher-bin.git...
Cloned heroic-games-launcher-bin
Analyzing heroic-games-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables and a `package()` function. Running `makepkg --nobuild --nodeps --noprepare` will source the PKGBUILD (reading variables) and download the source file from the official GitHub release URL. The source is not extracted due to `noextract`, and no top-level code execution or `pkgver()` function is present. The `package()` function is not executed. There is no malicious code in the global scope that could run during these commands.
</details>
<summary>No malicious code executes during source fetch and parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during source fetch and parse.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, Heroic-2.22.1-linux-x64.pacman...
[1/2] Reviewing PKGBUILD...
! Reviewed Heroic-2.22.1-linux-x64.pacman. Status: SKIPPED -- Skipping binary file: Heroic-2.22.1-linux-x64.pacman
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD fetches a prebuilt binary from the official GitHub releases page of the Heroic Games Launcher project, with a hardcoded checksum (sha256sums) that pins the download. The `package()` function simply extracts the archive and creates a symlink. There are no suspicious network requests, no obfuscated code, no dangerous commands, and no modifications outside the intended installation scope. The file follows standard AUR packaging practices for a binary package.
</details>
<summary>Standard AUR binary package with pinned source and checksum.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package with pinned source and checksum.
Reviewed all required files.
Deciding which files to review next...
Note: 80 compiled/archived file(s) cannot be audited as text and were not reviewed (src/.MTREE, src/opt/Heroic/icudtl.dat, src/opt/Heroic/resources.pak and 77 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Decided to review 10 additional files: src/.PKGINFO, src/.INSTALL, src/opt/Heroic/LICENSE.electron.txt, src/opt/Heroic/vk_swiftshader_icd.json, src/opt/Heroic/LICENSES.chromium.html, src/opt/Heroic/resources/package-type, src/opt/Heroic/resources/apparmor-profile, src/opt/Heroic/resources/app-update.yml, src/opt/Heroic/resources/app.asar.unpacked/build/preload/webviewPreload.js, src/usr/share/applications/heroic.desktop
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/.PKGINFO...
[0/10] Reviewing src/.PKGINFO, src/opt/Heroic/LICENSE.electron.txt...
[0/10] Reviewing src/.PKGINFO, src/opt/Heroic/LICENSE.electron.txt, src/.INSTALL...
LLM auditresponse for LICENSE.electron.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard MIT license text for Electron. It contains no executable code, no network requests, no obfuscation, no file operations, and no system modifications. It is purely a legal document included with the package. No security concerns.
</details>
<summary>Standard license file with no security issues.</summary>
</security_assessment>

[0/10] Reviewing src/.PKGINFO, src/opt/Heroic/LICENSE.electron.txt, src/.INSTALL, src/opt/Heroic/vk_swiftshader_icd.json...
[1/10] Reviewing src/.PKGINFO, src/.INSTALL, src/opt/Heroic/vk_swiftshader_icd.json...
+ Reviewed src/opt/Heroic/LICENSE.electron.txt. Status: SAFE -- Standard license file with no security issues.
LLM auditresponse for vk_swiftshader_icd.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Vulkan ICD (Installable Client Driver) JSON configuration for SwiftShader, a software Vulkan implementation. It specifies the library path (`./libvk_swiftshader.so`) and API version. There is no executable code, no network requests, no obfuscation, and no system modifications. The file is consistent with its expected purpose as part of the package.
</details>
<summary>Standard ICD JSON for SwiftShader, no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/.PKGINFO, src/.INSTALL, src/opt/Heroic/vk_swiftshader_icd.json, src/opt/Heroic/LICENSES.chromium.html...
[2/10] Reviewing src/.PKGINFO, src/.INSTALL, src/opt/Heroic/LICENSES.chromium.html...
+ Reviewed src/opt/Heroic/vk_swiftshader_icd.json. Status: SAFE -- Standard ICD JSON for SwiftShader, no security issues.
LLM auditresponse for .PKGINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.PKGINFO` file is a standard package metadata file generated by `fpm` for the `heroic-games-launcher-bin` package. It contains typical fields such as package name, version, description, URL, build date, packager, size, architecture, license, group, and dependencies.

**Notable observations:**
- The `url` field is set to `https://./` which is syntactically unusual but not indicative of malicious intent—it is likely a placeholder or minor error in the packaging configuration.
- The packager is listed as `Heroic Games Launcher &lt;heroicgameslauncher@protonmail.com&gt;`, which matches the legitimate upstream project for the Heroic Games Launcher.
- All dependencies (`c-ares`, `ffmpeg`, `gtk3`, `http-parser`, `libevent`, etc.) are standard libraries expected for a cross-platform gaming launcher and pose no security risk.
- The file contains no executable code, no network requests, obfuscated commands, or system modifications. It is purely declarative metadata used by the package manager (`pacman`) to handle installation and dependency resolution.

There is no evidence of supply-chain attack, backdoor, data exfiltration, or any deviation from normal packaging practices. The file is safe.
</details>
<summary>Standard metadata file, no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/.INSTALL, src/opt/Heroic/LICENSES.chromium.html...
+ Reviewed src/.PKGINFO. Status: SAFE -- Standard metadata file, no security issues.
[3/10] Reviewing src/.INSTALL, src/opt/Heroic/LICENSES.chromium.html, src/opt/Heroic/resources/package-type...
LLM auditresponse for .INSTALL:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.INSTALL` script performs standard package management operations for a binary Electron-based application. It creates a symlink to the main binary, manages update-alternatives, sets the SUID bit on `chrome-sandbox` only when user namespaces are unavailable (a common Electron sandbox fallback), updates MIME and desktop databases, and conditionally installs an AppArmor profile from the package&#39;s own files (`/opt/Heroic/resources/apparmor-profile`). There are no network requests, no obfuscated code, no data exfiltration, no downloads from unexpected sources, and no modification of files outside the package&#39;s own scope beyond routine system registration. The file does exactly what an installer for `heroic-games-launcher-bin` is expected to do.
</details>
<summary>Standard install script; no malicious behavior found.</summary>
</security_assessment>

[4/10] Reviewing src/opt/Heroic/LICENSES.chromium.html, src/opt/Heroic/resources/package-type...
+ Reviewed src/.INSTALL. Status: SAFE -- Standard install script; no malicious behavior found.
[4/10] Reviewing src/opt/Heroic/LICENSES.chromium.html, src/opt/Heroic/resources/package-type, src/opt/Heroic/resources/apparmor-profile...
LLM auditresponse for LICENSES.chromium.html:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `LICENSES.chromium.html` is a static HTML document containing license attributions for third-party dependencies used by Chromium. It consists entirely of HTML markup and plain-text license agreements (Apache 2.0, MIT, BSD, Unicode, etc.). No executable code (scripts, eval, curl/wget, base64 decoding of payloads) is present. The suspicious pattern matches for "base64" refer to the legitimate crate name `base64` and the "modp base64 decoder" library – these are software component names, not obfuscated code. Internal `chrome://` URLs are standard Chromium resource references. There is no evidence of injected malicious behavior, exfiltration, backdoors, or supply-chain tampering.
</details>
<summary>Static license file, no executable code.</summary>
</security_assessment>

[4/10] Reviewing src/opt/Heroic/LICENSES.chromium.html, src/opt/Heroic/resources/package-type, src/opt/Heroic/resources/apparmor-profile, src/opt/Heroic/resources/app-update.yml...
[5/10] Reviewing src/opt/Heroic/resources/package-type, src/opt/Heroic/resources/apparmor-profile, src/opt/Heroic/resources/app-update.yml...
+ Reviewed src/opt/Heroic/LICENSES.chromium.html. Status: SAFE -- Static license file, no executable code.
LLM auditresponse for package-type:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains only the single word "pacman", indicating the package type. There is no code, no network requests, no obfuscation, and no system-changing operations. This is a routine metadata file with no security implications.
</details>
<summary>File contains only the word "pacman"</summary>
</security_assessment>

[5/10] Reviewing src/opt/Heroic/resources/package-type, src/opt/Heroic/resources/apparmor-profile, src/opt/Heroic/resources/app-update.yml, src/opt/Heroic/resources/app.asar.unpacked/build/preload/webviewPreload.js...
[6/10] Reviewing src/opt/Heroic/resources/apparmor-profile, src/opt/Heroic/resources/app-update.yml, src/opt/Heroic/resources/app.asar.unpacked/build/preload/webviewPreload.js...
+ Reviewed src/opt/Heroic/resources/package-type. Status: SAFE -- File contains only the word "pacman"
LLM auditresponse for app-update.yml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file (`app-update.yml`) is a configuration file for an auto-updater mechanism (commonly used by Electron applications). It specifies the GitHub owner (`Heroic-Games-Launcher`), the repository (`HeroicGamesLauncher`), the update provider (`github`), and a cache directory name (`heroic-updater`). There is no executable code, no network requests triggered from this file itself, no obfuscation, and no suspicious operations. It is a standard, static configuration for the legitimate upstream update process. No evidence of malicious behavior or supply-chain attack vector is present.
</details>
<summary>Static YAML config for auto-updater; no malicious content.</summary>
</security_assessment>

[7/10] Reviewing src/opt/Heroic/resources/apparmor-profile, src/opt/Heroic/resources/app.asar.unpacked/build/preload/webviewPreload.js...
+ Reviewed src/opt/Heroic/resources/app-update.yml. Status: SAFE -- Static YAML config for auto-updater; no malicious content.
[7/10] Reviewing src/opt/Heroic/resources/apparmor-profile, src/opt/Heroic/resources/app.asar.unpacked/build/preload/webviewPreload.js, src/usr/share/applications/heroic.desktop...
LLM auditresponse for webviewPreload.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `webviewPreload.js` is a standard Electron preload script for a webview component. It implements mouse button navigation (back/forward), keyboard-based focus management with a visual highlight (outline), and directional navigation (arrow keys) among focusable elements. It also listens for IPC messages from the main process (`heroic-webview`) to perform actions such as click, go back/forward, focus search, navigate, and scroll. There are no network requests, no obfuscated code, no dangerous commands (eval, base64, curl, wget), and no attempts to access or exfiltrate system data. The code is straightforward and serves only the application's UI navigation functionality.
</details>
<summary>Standard Electron webview preload script, no malicious code.</summary>
</security_assessment>

[8/10] Reviewing src/opt/Heroic/resources/apparmor-profile, src/usr/share/applications/heroic.desktop...
+ Reviewed src/opt/Heroic/resources/app.asar.unpacked/build/preload/webviewPreload.js. Status: SAFE -- Standard Electron webview preload script, no malicious code.
LLM auditresponse for apparmor-profile:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an AppArmor profile for the Heroic Games Launcher binary located at `/opt/Heroic/heroic`. It sets the profile to `unconfined`, which effectively disables AppArmor confinement for that binary. While this may be a deliberate choice by the package maintainer to ensure compatibility (e.g., avoiding AppArmor interference with gaming applications), it is a packaging or system‑administration consideration rather than evidence of a supply‑chain attack. No obfuscated commands, unexpected network requests, or data exfiltration are present. The inclusion of a local override file (`&lt;local/heroic&gt;`) is standard practice for AppArmor profiles.
</details>
<summary>AppArmor profile is standard packaging, not malicious.</summary>
</security_assessment>

[9/10] Reviewing src/usr/share/applications/heroic.desktop...
+ Reviewed src/opt/Heroic/resources/apparmor-profile. Status: SAFE -- AppArmor profile is standard packaging, not malicious.
LLM auditresponse for heroic.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Linux desktop entry file (`.desktop`). It defines the launcher name, executable path (`/opt/Heroic/heroic`), icon, supported MIME type, and categories. There is no executable code, no network requests, no obfuscation, and no system modifications. The content is purely declarative metadata for the desktop environment. No security concerns.
</details>
<summary>Standard desktop entry file, no malicious content.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/usr/share/applications/heroic.desktop. Status: SAFE -- Standard desktop entry file, no malicious content.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: Heroic-2.22.1-linux-x64.pacman)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 46,371
  Completion Tokens: 4,460
  Total Tokens: 50,831
  Total Cost: $0.003166
  Execution Time: 71.04 seconds

Final Status: SAFE


No issues found.


Audit Skips:

/data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ewwbvjtp/Heroic-2.22.1-linux-x64.pacman: [SKIPPED] Skipping binary file: Heroic-2.22.1-linux-x64.pacman
