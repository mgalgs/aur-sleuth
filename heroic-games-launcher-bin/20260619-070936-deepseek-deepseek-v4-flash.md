---
package: heroic-games-launcher-bin
pkgver: 2.22.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 50d1962556b029d6cfb20315d43ba8cf7fe537a9
prompt_tokens: 42409
completion_tokens: 3622
total_tokens: 46031
cost: 0.00446877
execution_time: 43.54
files_reviewed: 10
files_skipped: 1
date: 2026-06-19T07:09:36Z
file_verdicts:
  - file: Heroic-2.22.0-linux-x64.pacman
    status: skipped
    summary: "Skipping binary file: Heroic-2.22.0-linux-x64.pacman"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned source; no malicious elements.
  - file: src/opt/Heroic/LICENSE.electron.txt
    status: safe
    summary: Standard MIT license text, no security concern.
  - file: src/opt/Heroic/resources/package-type
    status: safe
    summary: One-line text file, no suspicious content.
  - file: src/.PKGINFO
    status: safe
    summary: Standard package metadata, no security concerns.
  - file: src/opt/Heroic/resources/app-update.yml
    status: safe
    summary: Standard auto-updater config, no malicious content.
  - file: src/opt/Heroic/resources/apparmor-profile
    status: safe
    summary: Standard AppArmor profile, no malicious content.
  - file: src/opt/Heroic/LICENSES.chromium.html
    status: safe
    summary: Static license file, no executable code.
  - file: src/usr/share/applications/heroic.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: src/opt/Heroic/vk_swiftshader_icd.json
    status: safe
    summary: Standard Vulkan ICD JSON config file.
  - file: src/.INSTALL
    status: safe
    summary: Standard post-install script with system integration.
---

Cloning https://aur.archlinux.org/heroic-games-launcher-bin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-5k4o6usa...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-5k4o6usa
Analyzing heroic-games-launcher-bin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-5k4o6usa) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines static variables, arrays, and a `package()` function that is not executed during `makepkg --nobuild --nodeps --noprepare`. The `source` array fetches a single `.pacman` file from the official GitHub releases page of Heroic-Games-Launcher, which is the expected upstream source. The `sha256sums` array contains a fixed checksum (not SKIP), providing integrity verification. No `pkgver()` function or top-level code executes any commands, network requests, or data manipulation that could be malicious. All dangerous code resides inside `package()`, which is out of scope for this narrow gate. Therefore, running the specified commands is safe.
</details>
<summary>No malicious code in global scope or source fetching.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious code in global scope or source fetching.[/]
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
The PKGBUILD follows standard AUR packaging practices for a binary package. It downloads the upstream tarball from the official GitHub releases page (`github.com/Heroic-Games-Launcher/HeroicGamesLauncher`), which is the expected source for the package. The SHA256 checksum is provided and not skipped, ensuring integrity. The `package()` function only extracts the archive into the package directory and creates a symlink; no unexpected file operations, network requests, or dangerous commands are present. No obfuscation or signs of supply-chain attack are found.
</details>
<summary>Standard PKGBUILD with pinned source; no malicious elements.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned source; no malicious elements.
Reviewed all required files.
Deciding which files to review next...
Decided to review 9 additional files: src/.INSTALL, src/.PKGINFO, src/usr/share/applications/heroic.desktop, src/opt/Heroic/LICENSE.electron.txt, src/opt/Heroic/vk_swiftshader_icd.json, src/opt/Heroic/LICENSES.chromium.html, src/opt/Heroic/resources/package-type, src/opt/Heroic/resources/apparmor-profile, src/opt/Heroic/resources/app-update.yml
Reviewing additional files...
Reviewing additional files...
[0/9] Reviewing src/.INSTALL...
[0/9] Reviewing src/.INSTALL, src/.PKGINFO...
[0/9] Reviewing src/.INSTALL, src/.PKGINFO, src/opt/Heroic/vk_swiftshader_icd.json...
[0/9] Reviewing src/.INSTALL, src/.PKGINFO, src/opt/Heroic/vk_swiftshader_icd.json, src/opt/Heroic/LICENSE.electron.txt...
[0/9] Reviewing src/.INSTALL, src/.PKGINFO, src/opt/Heroic/vk_swiftshader_icd.json, src/opt/Heroic/LICENSE.electron.txt, src/usr/share/applications/heroic.desktop...
[0/9] Reviewing src/.INSTALL, src/.PKGINFO, src/opt/Heroic/vk_swiftshader_icd.json, src/opt/Heroic/LICENSE.electron.txt, src/usr/share/applications/heroic.desktop, src/opt/Heroic/LICENSES.chromium.html...
[0/9] Reviewing src/.INSTALL, src/.PKGINFO, src/opt/Heroic/vk_swiftshader_icd.json, src/opt/Heroic/LICENSE.electron.txt, src/usr/share/applications/heroic.desktop, src/opt/Heroic/LICENSES.chromium.html, src/opt/Heroic/resources/apparmor-profile...
[0/9] Reviewing src/.INSTALL, src/.PKGINFO, src/opt/Heroic/vk_swiftshader_icd.json, src/opt/Heroic/LICENSE.electron.txt, src/usr/share/applications/heroic.desktop, src/opt/Heroic/LICENSES.chromium.html, src/opt/Heroic/resources/apparmor-profile, src/opt/Heroic/resources/package-type...
[0/9] Reviewing src/.INSTALL, src/.PKGINFO, src/opt/Heroic/vk_swiftshader_icd.json, src/opt/Heroic/LICENSE.electron.txt, src/usr/share/applications/heroic.desktop, src/opt/Heroic/LICENSES.chromium.html, src/opt/Heroic/resources/apparmor-profile, src/opt/Heroic/resources/package-type, src/opt/Heroic/resources/app-update.yml...
LLM auditresponse for LICENSE.electron.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains only the MIT License text, which is a standard open-source license. There is no code, no commands, no network requests, and no obfuscated content. It is a purely informational file and poses no security risk.
</details>
<summary>
Standard MIT license text, no security concern.</summary>
</security_assessment>

[1/9] Reviewing src/.INSTALL, src/.PKGINFO, src/opt/Heroic/vk_swiftshader_icd.json, src/usr/share/applications/heroic.desktop, src/opt/Heroic/LICENSES.chromium.html, src/opt/Heroic/resources/apparmor-profile, src/opt/Heroic/resources/package-type, src/opt/Heroic/resources/app-update.yml...
+ Reviewed src/opt/Heroic/LICENSE.electron.txt. Status: SAFE -- Standard MIT license text, no security concern.
LLM auditresponse for package-type:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a one-line text file containing the word "pacman". This appears to be a metadata or configuration file that simply indicates the package management type. There are no commands, obfuscation, network requests, or any other suspicious content. This is standard and benign.</details>
<summary>One-line text file, no suspicious content.</summary>
</security_assessment>

[2/9] Reviewing src/.INSTALL, src/.PKGINFO, src/opt/Heroic/vk_swiftshader_icd.json, src/usr/share/applications/heroic.desktop, src/opt/Heroic/LICENSES.chromium.html, src/opt/Heroic/resources/apparmor-profile, src/opt/Heroic/resources/app-update.yml...
+ Reviewed src/opt/Heroic/resources/package-type. Status: SAFE -- One-line text file, no suspicious content.
LLM auditresponse for .PKGINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.PKGINFO` is a standard package metadata file generated by fpm for the Arch Linux package `heroic-games-launcher-bin`. It contains only descriptive fields such as package name, version, description, URL, build date, packager, size, architecture, license, group, and a list of runtime dependencies (e.g., c-ares, ffmpeg, gtk3, nss). There is no executable code, no embedded scripts, no network requests, and no obfuscated content. The file serves purely as metadata for the package manager and poses no security risk.
</details>
<summary>Standard package metadata, no security concerns.</summary>
</security_assessment>

[3/9] Reviewing src/.INSTALL, src/opt/Heroic/vk_swiftshader_icd.json, src/usr/share/applications/heroic.desktop, src/opt/Heroic/LICENSES.chromium.html, src/opt/Heroic/resources/apparmor-profile, src/opt/Heroic/resources/app-update.yml...
+ Reviewed src/.PKGINFO. Status: SAFE -- Standard package metadata, no security concerns.
LLM auditresponse for app-update.yml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `app-update.yml` contains standard configuration metadata for an auto-updater (likely electron-updater). It specifies the GitHub owner and repository (`Heroic-Games-Launcher/HeroicGamesLauncher`), the provider as `github`, and a cache directory name. There are no commands, encoded data, network requests to unexpected hosts, or any other indications of malicious behavior. The configuration is consistent with the package's stated purpose and points to its own official upstream source. No security concerns.
</details>
<summary>Standard auto-updater config, no malicious content.</summary>
</security_assessment>

[4/9] Reviewing src/.INSTALL, src/opt/Heroic/vk_swiftshader_icd.json, src/usr/share/applications/heroic.desktop, src/opt/Heroic/LICENSES.chromium.html, src/opt/Heroic/resources/apparmor-profile...
+ Reviewed src/opt/Heroic/resources/app-update.yml. Status: SAFE -- Standard auto-updater config, no malicious content.
LLM auditresponse for apparmor-profile:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an AppArmor profile for the Heroic Games Launcher binary at `/opt/Heroic/heroic`. It sets the profile to `flags=(unconfined)`, which effectively disables AppArmor mediation for this application, and allows user namespace creation (`userns`). 

This is a standard packaging practice for applications that do not have a finely scoped AppArmor profile or need full system access to function (e.g., to launch games or manage system-level resources). There are no network requests, code execution, obfuscation, or any other indicators of malicious activity. The profile also includes a directive to load site-specific local overrides if present, which is normal and expected.

No supply-chain attack or dangerous behavior is present in this file.
</details>
<summary>Standard AppArmor profile, no malicious content.</summary>
</security_assessment>

[5/9] Reviewing src/.INSTALL, src/opt/Heroic/vk_swiftshader_icd.json, src/usr/share/applications/heroic.desktop, src/opt/Heroic/LICENSES.chromium.html...
+ Reviewed src/opt/Heroic/resources/apparmor-profile. Status: SAFE -- Standard AppArmor profile, no malicious content.
LLM auditresponse for LICENSES.chromium.html:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `LICENSES.chromium.html` is a standard Chromium open-source credits page listing third-party libraries and their licenses. It contains no executable code, no network requests, no obfuscated commands, and no dynamic elements. The suspicious pattern matches (e.g., "base64", "zip") are merely the names of licensed libraries — not invocations of dangerous functions. This file is a static HTML attribution document generated by Chromium's build system; it poses no supply-chain risk.
</details>
<summary>Static license file, no executable code.</summary>
</security_assessment>

[6/9] Reviewing src/.INSTALL, src/opt/Heroic/vk_swiftshader_icd.json, src/usr/share/applications/heroic.desktop...
+ Reviewed src/opt/Heroic/LICENSES.chromium.html. Status: SAFE -- Static license file, no executable code.
LLM auditresponse for heroic.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Heroic Games Launcher. It declares the executable path (`/opt/Heroic/heroic`), application name, icon, MIME type, and localized comments. There is no embedded code, no network requests, no obfuscation, and no system modifications. The file conforms to the expected format for launching a desktop application and contains no evidence of malicious or dangerous behavior.
</details>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[7/9] Reviewing src/.INSTALL, src/opt/Heroic/vk_swiftshader_icd.json...
+ Reviewed src/usr/share/applications/heroic.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for vk_swiftshader_icd.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Vulkan ICD (Installable Client Driver) JSON configuration file for SwiftShader. It contains only a JSON object specifying the file format version, the library path to the SwiftShader Vulkan implementation (`./libvk_swiftshader.so`), and the API version. There is no executable code, no network operations, no obfuscation, and no malicious intent. This file is consistent with normal packaging for AUR packages that provide Vulkan drivers.
</details>
<summary>Standard Vulkan ICD JSON config file.</summary>
</security_assessment>

[8/9] Reviewing src/.INSTALL...
+ Reviewed src/opt/Heroic/vk_swiftshader_icd.json. Status: SAFE -- Standard Vulkan ICD JSON config file.
LLM auditresponse for .INSTALL:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.INSTALL` file is a standard Arch Linux post-installation script for the `heroic-games-launcher-bin` package. It performs expected system integration tasks:
- Creating a symlink or update-alternatives entry for the launcher binary (`/opt/Heroic/heroic`).
- Setting the SUID bit on the Chrome sandbox (`/opt/Heroic/chrome-sandbox`) only when user namespaces are not supported, which is a standard workaround for Electron-based applications.
- Updating MIME and desktop databases.
- Installing an AppArmor profile from the package's own resources (`/opt/Heroic/resources/apparmor-profile`) and loading it with `apparmor_parser`.

All operations are confined to the package's own installed files and standard system directories. There are no external network requests, no obfuscated code, no unexpected file operations, and no commands that deviate from normal packaging practices. The script does exactly what it is supposed to do: integrate the binary package into the system.
</details>
<summary>
Standard post-install script with system integration.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed src/.INSTALL. Status: SAFE -- Standard post-install script with system integration.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: Heroic-2.22.0-linux-x64.pacman)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 42,409
  Completion Tokens: 3,622
  Total Tokens: 46,031
  Total Cost: $0.004469
  Execution Time: 43.54 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-heroic-games-launcher-bin.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-5k4o6usa/Heroic-2.22.0-linux-x64.pacman: [SKIPPED] Skipping binary file: Heroic-2.22.0-linux-x64.pacman
