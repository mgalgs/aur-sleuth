---
package: heroic-games-launcher-bin
pkgver: 2.22.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 42358
completion_tokens: 3755
total_tokens: 46113
cost: 0.00448812
execution_time: 45.39
files_reviewed: 10
files_skipped: 1
date: 2026-06-19T09:57:19Z
file_verdicts:
  - file: Heroic-2.22.0-linux-x64.pacman
    status: skipped
    summary: "Skipping binary file: Heroic-2.22.0-linux-x64.pacman"
  - file: PKGBUILD
    status: safe
    summary: Standard binary package; no malicious content found.
  - file: src/opt/Heroic/LICENSE.electron.txt
    status: safe
    summary: Standard MIT license text, no security concerns.
  - file: src/.PKGINFO
    status: safe
    summary: Declarative metadata file, no executable content.
  - file: src/opt/Heroic/resources/app-update.yml
    status: safe
    summary: Benign auto-update configuration, no malicious content.
  - file: src/usr/share/applications/heroic.desktop
    status: safe
    summary: Standard desktop entry, no malicious content.
  - file: src/opt/Heroic/LICENSES.chromium.html
    status: safe
    summary: Static license file; no malicious content.
  - file: src/opt/Heroic/resources/package-type
    status: safe
    summary: File is a simple identifier, no threat.
  - file: src/.INSTALL
    status: safe
    summary: Standard packaging hooks, no malicious behavior found.
  - file: src/opt/Heroic/resources/apparmor-profile
    status: safe
    summary: AppArmor profile is standard; no malicious code.
  - file: src/opt/Heroic/vk_swiftshader_icd.json
    status: safe
    summary: Standard Vulkan ICD configuration file, no malicious content.
---

Cloning https://aur.archlinux.org/heroic-games-launcher-bin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-0kcac4fh...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-0kcac4fh
Analyzing heroic-games-launcher-bin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-0kcac4fh) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads a single `.pacman` archive from the official GitHub releases URL (`https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v2.22.0/Heroic-2.22.0-linux-x64.pacman`) with a valid SHA256 checksum. There is no `pkgver()` function, no top-level command substitutions, and no code that executes during the source fetch or sourcing phase. The `package()` function is defined but not executed by the commands in scope (`--nobuild --noprepare`). There are no malicious or obfuscated elements. The source URL is pinned to a specific version and uses HTTPS, which is standard and safe.
</details>
<summary>Standard PKGBUILD, no dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD, no dangerous top-level code.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, Heroic-2.22.0-linux-x64.pacman...
[1/2] Reviewing PKGBUILD...
! Reviewed Heroic-2.22.0-linux-x64.pacman. Status: SKIPPED -- Skipping binary file: Heroic-2.22.0-linux-x64.pacman
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward binary package that downloads a pre-built `.pacman` archive from the official GitHub releases page of Heroic Games Launcher. The source URL is pinned to a specific version and matches a valid release tag. The SHA-256 checksum is provided (not skipped) and validates the downloaded file. The `package()` function extracts the archive to the package directory and creates a symlink from `/usr/bin/heroic` to `/opt/Heroic/heroic`. There are no obfuscated commands, suspicious network requests, file writes outside the package hierarchy, or any other indicators of malicious intent. This follows standard Arch Linux packaging practices for binary packages.
</details>
<summary>
Standard binary package; no malicious content found.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package; no malicious content found.
Reviewed all required files.
Deciding which files to review next...
Decided to review 9 additional files: src/.INSTALL, src/.PKGINFO, src/usr/share/applications/heroic.desktop, src/opt/Heroic/LICENSE.electron.txt, src/opt/Heroic/vk_swiftshader_icd.json, src/opt/Heroic/LICENSES.chromium.html, src/opt/Heroic/resources/package-type, src/opt/Heroic/resources/apparmor-profile, src/opt/Heroic/resources/app-update.yml
Reviewing additional files...
Reviewing additional files...
[0/9] Reviewing src/.PKGINFO...
[0/9] Reviewing src/.PKGINFO, src/usr/share/applications/heroic.desktop...
[0/9] Reviewing src/.PKGINFO, src/usr/share/applications/heroic.desktop, src/.INSTALL...
[0/9] Reviewing src/.PKGINFO, src/usr/share/applications/heroic.desktop, src/.INSTALL, src/opt/Heroic/LICENSES.chromium.html...
[0/9] Reviewing src/.PKGINFO, src/usr/share/applications/heroic.desktop, src/.INSTALL, src/opt/Heroic/LICENSES.chromium.html, src/opt/Heroic/vk_swiftshader_icd.json...
[0/9] Reviewing src/.PKGINFO, src/usr/share/applications/heroic.desktop, src/.INSTALL, src/opt/Heroic/LICENSES.chromium.html, src/opt/Heroic/vk_swiftshader_icd.json, src/opt/Heroic/LICENSE.electron.txt...
[0/9] Reviewing src/.PKGINFO, src/usr/share/applications/heroic.desktop, src/.INSTALL, src/opt/Heroic/LICENSES.chromium.html, src/opt/Heroic/vk_swiftshader_icd.json, src/opt/Heroic/LICENSE.electron.txt, src/opt/Heroic/resources/apparmor-profile...
[0/9] Reviewing src/.PKGINFO, src/usr/share/applications/heroic.desktop, src/.INSTALL, src/opt/Heroic/LICENSES.chromium.html, src/opt/Heroic/vk_swiftshader_icd.json, src/opt/Heroic/LICENSE.electron.txt, src/opt/Heroic/resources/apparmor-profile, src/opt/Heroic/resources/package-type...
[0/9] Reviewing src/.PKGINFO, src/usr/share/applications/heroic.desktop, src/.INSTALL, src/opt/Heroic/LICENSES.chromium.html, src/opt/Heroic/vk_swiftshader_icd.json, src/opt/Heroic/LICENSE.electron.txt, src/opt/Heroic/resources/apparmor-profile, src/opt/Heroic/resources/package-type, src/opt/Heroic/resources/app-update.yml...
LLM auditresponse for LICENSE.electron.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT license text for Electron. It contains no executable code, network requests, obfuscation, or system modifications. It is purely a static text file.
</details>
<summary>
Standard MIT license text, no security concerns.</summary>
</security_assessment>

[1/9] Reviewing src/.PKGINFO, src/usr/share/applications/heroic.desktop, src/.INSTALL, src/opt/Heroic/LICENSES.chromium.html, src/opt/Heroic/vk_swiftshader_icd.json, src/opt/Heroic/resources/apparmor-profile, src/opt/Heroic/resources/package-type, src/opt/Heroic/resources/app-update.yml...
+ Reviewed src/opt/Heroic/LICENSE.electron.txt. Status: SAFE -- Standard MIT license text, no security concerns.
LLM auditresponse for .PKGINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard package metadata file (`.PKGINFO`) generated by the `fpm` tool. It contains only declarative fields such as package name, version, description, dependencies, and build information. There is no executable code, no network requests, no obfuscation, and no system modification instructions. The URL field is set to `./` which is unconventional but not malicious—it is likely a placeholder or artifact of the packaging process. No security concerns are present.
</details>
<summary>Declarative metadata file, no executable content.</summary>
</security_assessment>

[2/9] Reviewing src/usr/share/applications/heroic.desktop, src/.INSTALL, src/opt/Heroic/LICENSES.chromium.html, src/opt/Heroic/vk_swiftshader_icd.json, src/opt/Heroic/resources/apparmor-profile, src/opt/Heroic/resources/package-type, src/opt/Heroic/resources/app-update.yml...
+ Reviewed src/.PKGINFO. Status: SAFE -- Declarative metadata file, no executable content.
LLM auditresponse for app-update.yml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `app-update.yml` contains a simple YAML configuration for an application auto-updater, specifying the GitHub owner (`Heroic-Games-Launcher`), repository (`HeroicGamesLauncher`), provider (`github`), and a local cache directory name. This is standard practice for Electron-based applications that use GitHub releases for updates. There are no commands, network requests, obfuscated code, or system modifications present. The file is only metadata and poses no security threat.
</details>
<summary>Benign auto-update configuration, no malicious content.</summary>
</security_assessment>

[3/9] Reviewing src/usr/share/applications/heroic.desktop, src/.INSTALL, src/opt/Heroic/LICENSES.chromium.html, src/opt/Heroic/vk_swiftshader_icd.json, src/opt/Heroic/resources/apparmor-profile, src/opt/Heroic/resources/package-type...
+ Reviewed src/opt/Heroic/resources/app-update.yml. Status: SAFE -- Benign auto-update configuration, no malicious content.
LLM auditresponse for heroic.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Heroic Games Launcher application. It defines the launcher with an `Exec` path pointing to `/opt/Heroic/heroic %U`, which is consistent with the package's intended installation directory. The file contains only localization comments, categories, MIME type, and standard desktop entry keys. There are no executable commands, network requests, obfuscated content, or unexpected operations. No security threats are present.
</details>
<summary>Standard desktop entry, no malicious content.</summary>
</security_assessment>

[4/9] Reviewing src/.INSTALL, src/opt/Heroic/LICENSES.chromium.html, src/opt/Heroic/vk_swiftshader_icd.json, src/opt/Heroic/resources/apparmor-profile, src/opt/Heroic/resources/package-type...
+ Reviewed src/usr/share/applications/heroic.desktop. Status: SAFE -- Standard desktop entry, no malicious content.
LLM auditresponse for LICENSES.chromium.html:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `LICENSES.chromium.html` is a standard license attribution document listing third-party open-source licenses used by Chromium-based software. It is a static HTML file containing only text and markup. No executable code, network requests, obfuscated commands, or system-modifying operations are present. The matches for "base64" in the truncated output refer to the library name "base64" in the license list, which is expected and benign. The file poses no supply-chain risk.
</details>
<summary>Static license file; no malicious content.</summary>
</security_assessment>

[5/9] Reviewing src/.INSTALL, src/opt/Heroic/vk_swiftshader_icd.json, src/opt/Heroic/resources/apparmor-profile, src/opt/Heroic/resources/package-type...
+ Reviewed src/opt/Heroic/LICENSES.chromium.html. Status: SAFE -- Static license file; no malicious content.
LLM auditresponse for package-type:
<security_assessment>
<decision>SAFE</decision>
<details>
The file only contains the string "pacman", which is a standard identifier commonly used in AUR packaging scripts to denote the package manager type. There is no executable code, network requests, obfuscation, or any other malicious behavior present.
</details>
<summary>File is a simple identifier, no threat.</summary>
</security_assessment>

[6/9] Reviewing src/.INSTALL, src/opt/Heroic/vk_swiftshader_icd.json, src/opt/Heroic/resources/apparmor-profile...
+ Reviewed src/opt/Heroic/resources/package-type. Status: SAFE -- File is a simple identifier, no threat.
LLM auditresponse for .INSTALL:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.INSTALL` file contains standard post-install and post-removal hooks for the `heroic-games-launcher-bin` package. It performs routine operations:  
- Creating a symlink for the binary via `update-alternatives` or direct `ln`.  
- Adjusting permissions on the Chrome sandbox binary (`chrome-sandbox`) based on kernel user namespace support -- a common pattern for Electron apps.  
- Updating MIME and desktop databases.  
- Installing or removing an AppArmor profile under `/etc/apparmor.d/`.  

All paths and commands are limited to the package's own installation directory (`/opt/Heroic/`) and standard system locations. There are no network requests, obfuscated encoding, dangerous command execution (`eval`, `base64`, `curl|bash`), or exfiltration of data. The logic is straightforward and consistent with legitimate packaging practices for a binary Electron game launcher on Arch Linux.
</details>
<summary>Standard packaging hooks, no malicious behavior found.</summary>
</security_assessment>

[7/9] Reviewing src/opt/Heroic/vk_swiftshader_icd.json, src/opt/Heroic/resources/apparmor-profile...
+ Reviewed src/.INSTALL. Status: SAFE -- Standard packaging hooks, no malicious behavior found.
LLM auditresponse for apparmor-profile:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an AppArmor profile for the Heroic Games Launcher binary. It sets the profile to `flags=(unconfined)`, meaning the application will run without AppArmor confinement. While this reduces security by not applying restrictions, it is a package-specific choice to ensure compatibility with the application’s required permissions (e.g., user namespaces). There is no injected malicious code, no network requests, no obfuscated commands, and no attempt to exfiltrate data or modify system files. The profile is standard for an unconfined launcher binary and does not pose a supply-chain risk.
</details>
<summary>AppArmor profile is standard; no malicious code.</summary>
</security_assessment>

[8/9] Reviewing src/opt/Heroic/vk_swiftshader_icd.json...
+ Reviewed src/opt/Heroic/resources/apparmor-profile. Status: SAFE -- AppArmor profile is standard; no malicious code.
LLM auditresponse for vk_swiftshader_icd.json:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `vk_swiftshader_icd.json` is a standard Vulkan ICD (Installable Client Driver) descriptor file. It specifies the library path (`./libvk_swiftshader.so`) and API version for SwiftShader, a software Vulkan implementation. This file is commonly bundled with applications that need Vulkan support without requiring a hardware driver. The content is purely declarative JSON with no executable code, obfuscation, network references, or any commands. The relative path is typical for Vulkan ICDs shipped alongside an application. No indicators of malicious behavior are present.
</details>
<summary>Standard Vulkan ICD configuration file, no malicious content.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed src/opt/Heroic/vk_swiftshader_icd.json. Status: SAFE -- Standard Vulkan ICD configuration file, no malicious content.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: Heroic-2.22.0-linux-x64.pacman)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 42,358
  Completion Tokens: 3,755
  Total Tokens: 46,113
  Total Cost: $0.004488
  Execution Time: 45.39 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-heroic-games-launcher-bin.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-0kcac4fh/Heroic-2.22.0-linux-x64.pacman: [SKIPPED] Skipping binary file: Heroic-2.22.0-linux-x64.pacman
