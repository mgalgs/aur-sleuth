---
package: portprotonqt
pkgver: 1.4.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 4fdfd87aaec54365f5eb3ea9cd4b5b3cd402f1d8
prompt_tokens: 55598
completion_tokens: 12635
total_tokens: 68233
cost: 0.00395121048
execution_time: 117.03
files_reviewed: 11
files_skipped: 0
files_unauditable: 20
unpinned_sources: 0
date: 2026-08-23T19:07:39Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; no malicious content detected.
  - file: src/PortProtonQt/build-aux/PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: src/PortProtonQt/install.sh
    status: safe
    summary: Legitimate AppImage installer, no malicious code found.
  - file: src/PortProtonQt/meson.build
    status: safe
    summary: Standard Meson build file, no malicious indicators found.
  - file: src/PortProtonQt/debian/portprotonqt.install
    status: safe
    summary: Simple install manifest, no security concerns.
  - file: src/PortProtonQt/portprotonqt/config/portproton.py
    status: safe
    summary: Standard packaging code, no malicious behavior detected.
  - file: src/PortProtonQt/build-aux/AppImage/get-dependencies.sh
    status: safe
    summary: Upstream build script; external script execution is a risk but not malicious.
  - file: src/PortProtonQt/portprotonqt/appimage_updater.py
    status: safe
    summary: Legitimate AppImage update code, no malicious behavior.
  - file: src/PortProtonQt/build-aux/AppImage/portprotonqt-appimage.sh
    status: safe
    summary: Build script using external helper tool; no malicious code.
  - file: src/PortProtonQt/portprotonqt/config/base.py
    status: safe
    summary: Standard config module, no security issues.
  - file: src/PortProtonQt/portprotonqt/app.py
    status: safe
    summary: Legitimate application code, no signs of supply-chain attack.
---

Cloning https://aur.archlinux.org/portprotonqt.git...
Cloned portprotonqt
Analyzing portprotonqt AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is straightforward: global scope only contains variable definitions (pkgname, pkgver, dependencies, source, etc.) with no command substitutions or function calls. `pkgver()` is not defined, so only the literal version is used.  
The source array points to the project’s own git repository with a pinned tag (`v1.4.0`), and the sha256sum is provided (not `SKIP`).  
When running `makepkg --nobuild --nodeps --noprepare`, the PKGBUILD is sourced and the git source is cloned; no code in `prepare()`, `build()`, or `package()` executes.  
No malicious or suspicious patterns are present—no extraneous network requests, obfuscated code, or commands that would exfiltrate data.  
The file is safe for these specific operations.
</details>
<evidence></evidence>
<summary>PKGBUILD is safe for source fetch and parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- PKGBUILD is safe for source fetch and parsing.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/1] Reviewing PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard packaging practices. It fetches the source from the project's own git repository using a tagged release, provides a SHA-256 checksum, and builds/installs using Meson. No obfuscated code, untrusted network requests, or unexpected file operations are present. The only executed script (`generate-completions.sh`) is from the upstream source and serves a legitimate packaging purpose.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD; no malicious content detected.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; no malicious content detected.
Reviewed all required files.
Deciding which files to review next...
Note: 20 compiled/archived file(s) cannot be audited as text and were not reviewed (src/PortProtonQt/build-aux/bin/vk_gpu_info, src/PortProtonQt/build-aux/lib/libportprotonqt_gamepad.so, src/PortProtonQt/build-aux/share/portproton/scripts/portwine_db/JumpinJack.exe.ppdb and 17 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 488 files available for selection; offering the 50 highest-priority to the model. 397 lower-priority file(s) were not offered.
LLM response for file selection:
src/PortProtonQt/install.sh
src/PortProtonQt/meson.build
src/PortProtonQt/build-aux/PKGBUILD
src/PortProtonQt/build-aux/AppImage/get-dependencies.sh
src/PortProtonQt/build-aux/AppImage/portprotonqt-appimage.sh
src/PortProtonQt/debian/portprotonqt.install
src/PortProtonQt/portprotonqt/config/portproton.py
src/PortProtonQt/portprotonqt/appimage_updater.py
src/PortProtonQt/portprotonqt/app.py
src/PortProtonQt/portprotonqt/config/base.py
Decided to review 10 additional files: src/PortProtonQt/install.sh, src/PortProtonQt/meson.build, src/PortProtonQt/build-aux/PKGBUILD, src/PortProtonQt/build-aux/AppImage/get-dependencies.sh, src/PortProtonQt/build-aux/AppImage/portprotonqt-appimage.sh, src/PortProtonQt/debian/portprotonqt.install, src/PortProtonQt/portprotonqt/config/portproton.py, src/PortProtonQt/portprotonqt/appimage_updater.py, src/PortProtonQt/portprotonqt/app.py, src/PortProtonQt/portprotonqt/config/base.py
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/PortProtonQt/install.sh...
[0/10] Reviewing src/PortProtonQt/install.sh, src/PortProtonQt/meson.build...
[0/10] Reviewing src/PortProtonQt/install.sh, src/PortProtonQt/meson.build, src/PortProtonQt/build-aux/PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. The source is pinned to a tagged version from the project's own upstream Git repository. The build uses meson/ninja, which is typical for Qt-based projects. The `sha256sums` of `SKIP` is expected for VCS sources and is not a security issue. The package function runs a script (`generate-completions.sh`) from the source tree—this script is part of the upstream project's tooling, not an injected external payload. All downloads and operations are limited to the package's own declared sources and standard build/install steps. No obfuscated code, unexpected network requests, or data exfiltration mechanisms are present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[0/10] Reviewing src/PortProtonQt/install.sh, src/PortProtonQt/meson.build, src/PortProtonQt/build-aux/PKGBUILD, src/PortProtonQt/build-aux/AppImage/get-dependencies.sh...
[1/10] Reviewing src/PortProtonQt/install.sh, src/PortProtonQt/meson.build, src/PortProtonQt/build-aux/AppImage/get-dependencies.sh...
+ Reviewed src/PortProtonQt/build-aux/PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
LLM auditresponse for install.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard installer for the PortProtonQt AppImage. It checks for required tools (`curl`, `mktemp`), fetches the latest release from the official project repositories (Gitea at `git.linux-gaming.ru` and GitHub), downloads the AppImage, makes it executable, and runs it with an environment variable (`PORTPROTONQT_INTEGRATE_APPIMAGE=1`) to trigger application integration. There is no obfuscation, data exfiltration, backdoor, or unexpected code execution. The network requests are entirely to the project's own release endpoints. While the absence of checksum or signature verification is a hygiene concern (and the binary is executed directly), this is common for one‑shot AppImage installers and does not by itself indicate a supply‑chain attack. The script behaves as a user would expect for installing an upstream AppImage.
</details>
<evidence></evidence>
<summary>Legitimate AppImage installer, no malicious code found.</summary>
</security_assessment>

[1/10] Reviewing src/PortProtonQt/install.sh, src/PortProtonQt/meson.build, src/PortProtonQt/build-aux/AppImage/get-dependencies.sh, src/PortProtonQt/build-aux/AppImage/portprotonqt-appimage.sh...
[2/10] Reviewing src/PortProtonQt/meson.build, src/PortProtonQt/build-aux/AppImage/get-dependencies.sh, src/PortProtonQt/build-aux/AppImage/portprotonqt-appimage.sh...
+ Reviewed src/PortProtonQt/install.sh. Status: SAFE -- Legitimate AppImage installer, no malicious code found.
LLM auditresponse for meson.build:
<security_assessment>
<decision>SAFE</decision>
<details>
The `meson.build` file is a standard Meson build definition for the PortProtonQt application. It defines project metadata, locates Python and C dependencies (SDL3, Vulkan), compiles two helper executables from source files in `build-aux/src/`, and installs various configuration files, scripts, desktop entries, icons, MIME data, metainfo, udev rules, polkit rules, and sysusers configuration. All operations operate on files explicitly shipped with the package (under `build-aux/`). No network requests are made beyond finding system-installed tools (`python3`, `git`). The optional `git rev-parse --short HEAD` call in nightly builds is a normal development practice for embedding commit info. There is no obfuscation, no execution of fetched code, no exfiltration of data, and no deviation from expected AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard Meson build file, no malicious indicators found.</summary>
</security_assessment>

[3/10] Reviewing src/PortProtonQt/build-aux/AppImage/get-dependencies.sh, src/PortProtonQt/build-aux/AppImage/portprotonqt-appimage.sh...
+ Reviewed src/PortProtonQt/meson.build. Status: SAFE -- Standard Meson build file, no malicious indicators found.
[3/10] Reviewing src/PortProtonQt/build-aux/AppImage/get-dependencies.sh, src/PortProtonQt/build-aux/AppImage/portprotonqt-appimage.sh, src/PortProtonQt/debian/portprotonqt.install...
LLM auditresponse for portprotonqt.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Debian packaging manifest (`.install`) that lists paths to be included in the package. It contains no executable code, no network requests, no obfuscation, and no system-modifying commands. All listed paths are standard locations for binaries, libraries, configuration files, desktop entries, icons, and locale data. There is nothing suspicious or malicious in this file.
</details>
<evidence></evidence>
<summary>Simple install manifest, no security concerns.</summary>
</security_assessment>

[3/10] Reviewing src/PortProtonQt/build-aux/AppImage/get-dependencies.sh, src/PortProtonQt/build-aux/AppImage/portprotonqt-appimage.sh, src/PortProtonQt/debian/portprotonqt.install, src/PortProtonQt/portprotonqt/config/portproton.py...
[4/10] Reviewing src/PortProtonQt/build-aux/AppImage/get-dependencies.sh, src/PortProtonQt/build-aux/AppImage/portprotonqt-appimage.sh, src/PortProtonQt/portprotonqt/config/portproton.py...
+ Reviewed src/PortProtonQt/debian/portprotonqt.install. Status: SAFE -- Simple install manifest, no security concerns.
LLM auditresponse for portproton.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is part of the PortProtonQt package and provides configuration reading, desktop file creation, and legacy shortcut migration utilities. All operations are standard application behavior: reading/writing local configuration files, scanning user directories for `.desktop` files and shell scripts, and updating their paths and launcher commands to reflect the new PortProtonQt installation. Environment variables (`FLATPAK_ID`, `APPIMAGE`, `APPDIR`, etc.) are used to determine the correct launcher invocation (flatpak, AppImage, or system binary). There is no network access, no obfuscated code, no execution of downloaded content, and no data exfiltration. The file performs only local file operations within the user's home and application data directories, which is consistent with the stated purpose of the package. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard packaging code, no malicious behavior detected.</summary>
</security_assessment>

[4/10] Reviewing src/PortProtonQt/build-aux/AppImage/get-dependencies.sh, src/PortProtonQt/build-aux/AppImage/portprotonqt-appimage.sh, src/PortProtonQt/portprotonqt/config/portproton.py, src/PortProtonQt/portprotonqt/appimage_updater.py...
[5/10] Reviewing src/PortProtonQt/build-aux/AppImage/get-dependencies.sh, src/PortProtonQt/build-aux/AppImage/portprotonqt-appimage.sh, src/PortProtonQt/portprotonqt/appimage_updater.py...
+ Reviewed src/PortProtonQt/portprotonqt/config/portproton.py. Status: SAFE -- Standard packaging code, no malicious behavior detected.
LLM auditresponse for get-dependencies.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is part of the upstream PortProtonQt project&#39;s build-aux/AppImage directory. It automates the process of building the application inside an AppImage container: it downloads the project&#39;s own PKGBUILD from its official git repository, configures build tools (makepkg, pacman), builds the package, and installs additional debloated packages via an external helper script.

The most noteworthy security-relevant behavior is the download and execution of an external script from `https://raw.githubusercontent.com/pkgforge-dev/Anylinux-AppImages/refs/heads/main/useful-tools/get-debloated-pkgs.sh`. This is a third-party script (not from the project&#39;s own domain) and is executed without any verification (no checksum, pinned commit, or signature). While this weakens supply-chain hygiene and could be exploited if the external repository is compromised, the script&#39;s purpose (installing debloated packages) aligns with the application&#39;s stated goal of creating a minimal AppImage. The file itself does not contain obfuscated code, exfiltration, backdoors, or other indicators of a deliberate injection attack. The modifications to `/usr/bin/makepkg` and `/usr/share/makepkg/lint_pkgbuild/arch.sh` are aggressive but serve the build environment (e.g., allowing root builds inside a container) and are not evidence of malice.

Because the file is an upstream build script performing its intended tasks, and there is no evidence of injected malicious behavior (such as exfiltration, hidden network callbacks, or execution of unexpected code outside the application&#39;s scope), the decision is SAFE. The risks noted are supply-chain hygiene concerns, not confirmed attacks.
</details>
<evidence>
</evidence>
<summary>Upstream build script; external script execution is a risk but not malicious.</summary>
</security_assessment>

[5/10] Reviewing src/PortProtonQt/build-aux/AppImage/get-dependencies.sh, src/PortProtonQt/build-aux/AppImage/portprotonqt-appimage.sh, src/PortProtonQt/portprotonqt/appimage_updater.py, src/PortProtonQt/portprotonqt/app.py...
[6/10] Reviewing src/PortProtonQt/build-aux/AppImage/portprotonqt-appimage.sh, src/PortProtonQt/portprotonqt/appimage_updater.py, src/PortProtonQt/portprotonqt/app.py...
+ Reviewed src/PortProtonQt/build-aux/AppImage/get-dependencies.sh. Status: SAFE -- Upstream build script; external script execution is a risk but not malicious.
LLM auditresponse for appimage_updater.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file implements AppImage self-update functionality for the PortProtonQt application. It downloads the official `appimageupdatetool` binary from GitHub (pkgforge-dev/AppImageUpdate) and changelogs from the project&apos;s own repositories (git.linux-gaming.ru and raw.githubusercontent.com). All network operations use HTTPS and are directed at expected upstream sources. There is no obfuscated code, no execution of unpinned scripts via curl|bash, no system file tampering, and no exfiltration of data. The use of environment variables to override the update tool URL and the lack of checksum verification on the downloaded binary are standard practices in AppImage update mechanisms and do not constitute malicious behavior. The file is consistent with legitimate application functionality.
</details>
<evidence></evidence>
<summary>Legitimate AppImage update code, no malicious behavior.</summary>
</security_assessment>

[6/10] Reviewing src/PortProtonQt/build-aux/AppImage/portprotonqt-appimage.sh, src/PortProtonQt/portprotonqt/appimage_updater.py, src/PortProtonQt/portprotonqt/app.py, src/PortProtonQt/portprotonqt/config/base.py...
[7/10] Reviewing src/PortProtonQt/build-aux/AppImage/portprotonqt-appimage.sh, src/PortProtonQt/portprotonqt/app.py, src/PortProtonQt/portprotonqt/config/base.py...
+ Reviewed src/PortProtonQt/portprotonqt/appimage_updater.py. Status: SAFE -- Legitimate AppImage update code, no malicious behavior.
LLM auditresponse for portprotonqt-appimage.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script builds an AppImage for PortProtonQt. It downloads a helper script (`quick-sharun`) from a public GitHub repository (`pkgforge-dev/Anylinux-AppImages`) via `wget` and executes it to deploy dependencies and produce the AppImage. The download is unverified (no checksum pinning), which is a hygiene concern but not evidence of malice. The script also removes system packages (`libpipewire`, `qt6-multimedia-ffmpeg`) and performs cleanup of bundled Python content – these are typical operations within a build environment and serve the stated packaging purpose. There is no obfuscation, data exfiltration, backdoor installation, or code execution that deviates from the expected AppImage creation workflow. The external dependency introduces a supply-chain risk, but since the file does not itself contain malicious logic and the behavior is consistent with standard AppImage tooling, it is assessed as safe.
</details>
<evidence></evidence>
<summary>Build script using external helper tool; no malicious code.</summary>
</security_assessment>

[8/10] Reviewing src/PortProtonQt/portprotonqt/app.py, src/PortProtonQt/portprotonqt/config/base.py...
+ Reviewed src/PortProtonQt/build-aux/AppImage/portprotonqt-appimage.sh. Status: SAFE -- Build script using external helper tool; no malicious code.
LLM auditresponse for base.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration module for the PortProtonQt application. It reads and writes configuration files using Python's `configparser`, manages a cache for performance, and provides helper functions for common configuration operations. All file operations are confined to the user's XDG configuration and cache directories (e.g., `~/.config/PortProtonQt.conf`, `~/.cache/PortProtonQt`). There is no network access, no code execution from untrusted sources, no obfuscation, and no manipulation of system files outside the application's scope. The functionality is entirely consistent with normal application configuration management. No malicious or dangerous behavior is present.
</details>
<evidence></evidence>
<summary>Standard config module, no security issues.</summary>
</security_assessment>

[9/10] Reviewing src/PortProtonQt/portprotonqt/app.py...
+ Reviewed src/PortProtonQt/portprotonqt/config/base.py. Status: SAFE -- Standard config module, no security issues.
LLM auditresponse for app.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `app.py` is the main entry point for the PortProtonQt application, a graphical front-end for PortProton (a Wine/Proton compatibility layer). The code is typical for a Python Qt application: it handles command-line arguments, sets up a system tray icon, manages single-instance IPC via `QLocalServer`, and delegates to PortProton scripts via `subprocess`.  

Network activity is limited to:  
- A download counter ping (`COUNTER_DOWNLOAD_URL`) – an HTTP GET with only the app version. This is telemetry, not exfiltration of sensitive data, and is an upstream vendor decision.  
- Theme store downloads (over HTTPS via `requests`) – standard archive retrieval and installation.  
- `portproton://` URL parsing and downloads via `PortProtonAPI` – expected application behavior.  

All remote destinations belong to the project’s own infrastructure (`linux-gaming.ru`). No obfuscated code, no `eval`, no unexpected `curl | bash`, no attempts to read or transmit local system files (e.g., `/etc/shadow`, SSH keys). The file does not contain any backdoor, reverse shell, or credential theft logic.  

The only hygiene note is the counter URL using plain HTTP; this is a privacy consideration but not evidence of a supply-chain attack. The file is consistent with standard packaging practices and serves the stated purpose of the application.  
</details>
<evidence></evidence>
<summary>Legitimate application code, no signs of supply-chain attack.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/PortProtonQt/portprotonqt/app.py. Status: SAFE -- Legitimate application code, no signs of supply-chain attack.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 55,598
  Completion Tokens: 12,635
  Total Tokens: 68,233
  Total Cost: $0.003951
  Execution Time: 117.03 seconds

Final Status: SAFE


No issues found.
