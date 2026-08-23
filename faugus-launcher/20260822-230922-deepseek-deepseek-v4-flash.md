---
package: faugus-launcher
pkgver: 2.1.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: ab8f04a045309f11c3e319d8a061c88f7bc8df51
prompt_tokens: 71368
completion_tokens: 12185
total_tokens: 83553
cost: 0.00548195788
execution_time: 100.93
files_reviewed: 11
files_skipped: 1
files_unauditable: 24
unpinned_sources: 1
date: 2026-08-22T23:09:21Z
file_verdicts:
  - file: 2.1.0.tar.gz
    status: skipped
    summary: "Skipping binary file: 2.1.0.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD from official source, no malicious content found.
  - file: faugus-launcher.desktop
    status: safe
    summary: Standard desktop entry file; no suspicious content or behavior found.
  - file: src/faugus-launcher-2.1.0/assets/meson.build
    status: safe
    summary: Benign Meson build file installing game assets and icons.
  - file: faugus-launcher.py
    status: safe
    summary: Legitimate launcher; no supply-chain attack evidence. Command injection is a bug, not malice.
  - file: src/faugus-launcher-2.1.0/faugus/proton_downloader.py
    status: safe
    summary: Legitimate Proton downloader; no malicious behavior.
  - file: src/faugus-launcher-2.1.0/faugus/runner.py
    status: safe
    summary: No malicious code; standard game launcher runner.
  - file: src/faugus-launcher-2.1.0/faugus/steam_setup.py
    status: safe
    summary: Clean helper module; no malicious behavior detected.
  - file: src/faugus-launcher-2.1.0/faugus/config_manager.py
    status: safe
    summary: Standard config manager with no malicious behavior.
  - file: src/faugus-launcher-2.1.0/faugus-launcher
    status: safe
    summary: Standard launcher script, no security issues found.
  - file: src/faugus-launcher-2.1.0/packaging/appimage/build.sh
    status: safe
    summary: Standard AppImage build script for Faugus Launcher; no malicious behavior detected.
  - file: src/faugus-launcher-2.1.0/faugus/launcher.py
    status: safe
    summary: Standard application file, no malicious indicators.
---

Cloning https://aur.archlinux.org/faugus-launcher.git...
Cloned faugus-launcher
Analyzing faugus-launcher AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines package metadata and arrays in its top-level scope, with no command substitutions, function calls, or code that could execute during sourcing. The `source` array contains a single tarball from the project's official GitHub repository. The checksum is set to `SKIP`, which is standard for many PKGBUILDs and not itself malicious. There is no `pkgver()` function. The `build()` and `package()` functions are present but will not be executed due to the `--nobuild` and `--noprepare` flags. No suspicious network destinations, obfuscated code, or data exfiltration is present at the top-level scope. Fetching the source tarball and extracting it (performed by makepkg during source retrieval) is the intended behavior and poses no execution risk during this narrow gate.
</details>
<summary>
No malicious code in global scope or pkgver; source fetch is safe.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope or pkgver; source fetch is safe.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: https://github.com/Faugus/faugus-launcher/archive/refs/tags/2.1.0.tar.gz
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, 2.1.0.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed 2.1.0.tar.gz. Status: SKIPPED -- Skipping binary file: 2.1.0.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. It fetches the source tarball from the project's official GitHub releases URL, builds with meson, and installs under `$pkgdir`. No obfuscated code, suspicious network requests, or dangerous commands are present. The `sha256sums` being set to `'SKIP'` is common and not malicious. The file contains only routine packaging operations with no evidence of supply-chain attack or injected malicious behavior.
</details>
<summary>Standard AUR PKGBUILD from official source, no malicious content found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD from official source, no malicious content found.
Reviewed all required files.
Deciding which files to review next...
Note: 24 compiled/archived file(s) cannot be audited as text and were not reviewed (src/faugus-launcher-2.1.0/assets/faugus-notification.ogg, src/faugus-launcher-2.1.0/languages/ar/faugus-launcher.mo, src/faugus-launcher-2.1.0/languages/cs/faugus-launcher.mo and 21 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
LLM response for file selection:
faugus-launcher.desktop
faugus-launcher.py
src/faugus-launcher-2.1.0/faugus-launcher
src/faugus-launcher-2.1.0/assets/meson.build
src/faugus-launcher-2.1.0/faugus/proton_downloader.py
src/faugus-launcher-2.1.0/faugus/runner.py
src/faugus-launcher-2.1.0/faugus/steam_setup.py
src/faugus-launcher-2.1.0/faugus/config_manager.py
src/faugus-launcher-2.1.0/faugus/launcher.py
src/faugus-launcher-2.1.0/packaging/appimage/build.sh
Decided to review 10 additional files: faugus-launcher.desktop, faugus-launcher.py, src/faugus-launcher-2.1.0/faugus-launcher, src/faugus-launcher-2.1.0/assets/meson.build, src/faugus-launcher-2.1.0/faugus/proton_downloader.py, src/faugus-launcher-2.1.0/faugus/runner.py, src/faugus-launcher-2.1.0/faugus/steam_setup.py, src/faugus-launcher-2.1.0/faugus/config_manager.py, src/faugus-launcher-2.1.0/faugus/launcher.py, src/faugus-launcher-2.1.0/packaging/appimage/build.sh
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing faugus-launcher.desktop...
[0/10] Reviewing faugus-launcher.desktop, faugus-launcher.py...
[0/10] Reviewing faugus-launcher.desktop, faugus-launcher.py, src/faugus-launcher-2.1.0/faugus-launcher...
LLM auditresponse for faugus-launcher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org .desktop launcher file for the Faugus Launcher application. It declares the application type, display name, executable command (`faugus-launcher`), icon, and categories. There are no network operations, no encoded or obfuscated content, no file system manipulation, and no references to external hosts. The `Exec` line simply invokes the package's own binary, which is normal and expected behavior for a desktop entry. No security concerns are present.
</details>
<summary>
Standard desktop entry file; no suspicious content or behavior found.
</summary>
</security_assessment>

[1/10] Reviewing faugus-launcher.py, src/faugus-launcher-2.1.0/faugus-launcher...
+ Reviewed faugus-launcher.desktop. Status: SAFE -- Standard desktop entry file; no suspicious content or behavior found.
[1/10] Reviewing faugus-launcher.py, src/faugus-launcher-2.1.0/faugus-launcher, src/faugus-launcher-2.1.0/assets/meson.build...
LLM auditresponse for meson.build:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Meson build file that installs data assets (icons, a notification sound, and a game controller database) into the appropriate system directories. There are no network requests, no execution of untrusted code, no obfuscated commands, and no file operations outside the intended installation scope. The file does exactly what a packaging script should do — copy pre-packaged resources into defined install paths. No evidence of supply-chain tampering or malicious behavior is present.
</details>
<summary>Benign Meson build file installing game assets and icons.</summary>
</security_assessment>

[1/10] Reviewing faugus-launcher.py, src/faugus-launcher-2.1.0/faugus-launcher, src/faugus-launcher-2.1.0/assets/meson.build, src/faugus-launcher-2.1.0/faugus/proton_downloader.py...
[2/10] Reviewing faugus-launcher.py, src/faugus-launcher-2.1.0/faugus-launcher, src/faugus-launcher-2.1.0/faugus/proton_downloader.py...
+ Reviewed src/faugus-launcher-2.1.0/assets/meson.build. Status: SAFE -- Benign Meson build file installing game assets and icons.
LLM auditresponse for faugus-launcher.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `faugus-launcher.py` is a GTK-based launcher for running Windows games via Wine/Proton and umu-run. It allows users to add, edit, delete, and launch games, with options for MangoHud, GameMode, Winecfg, Winetricks, and desktop shortcuts.

No evidence of malicious behavior was found:
- No network requests, downloads, or data exfiltration.
- No obfuscated or encoded commands.
- No execution of code fetched from external sources.
- The script does not bypass user control; all user-provided inputs (launch arguments, paths) are intentionally used to build the launch command — that is the application's stated purpose.

A code quality issue exists: in `AddGame.on_button_shortcut_icon_clicked`, the user-supplied `path` is passed unsanitized to `os.system(f'7z e ...')`, which could allow command injection if a malicious filename is provided. However, this is a vulnerability in the application's own logic, not a supply-chain attack. The user already has full control over game entries and could achieve code execution through the launch arguments. This does not indicate that the AUR package was tampered with or contains hidden malicious intent.
</details>
<summary>Legitimate launcher; no supply-chain attack evidence. Command injection is a bug, not malice.</summary>
</security_assessment>

[3/10] Reviewing src/faugus-launcher-2.1.0/faugus-launcher, src/faugus-launcher-2.1.0/faugus/proton_downloader.py...
+ Reviewed faugus-launcher.py. Status: SAFE -- Legitimate launcher; no supply-chain attack evidence. Command injection is a bug, not malice.
[3/10] Reviewing src/faugus-launcher-2.1.0/faugus-launcher, src/faugus-launcher-2.1.0/faugus/proton_downloader.py, src/faugus-launcher-2.1.0/faugus/runner.py...
LLM auditresponse for proton_downloader.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script downloads and installs custom Proton builds from known upstream repositories (GloriousEggroll, Etaash-mathamsetty, CachyOS, dawn-winery). All network requests are directed to the official GitHub/Gitea APIs of those projects, using a standard `User-Agent` header. The archive extraction uses `tarfile.extractall` with `filter="data"`, which prevents path traversal attacks. There is no obfuscation, no execution of downloaded code, and no data exfiltration. The script only writes a `compatibilitytool.vdf` file and manages the installation directory. This is a legitimate utility for managing Steam compatibility tools; no evidence of malicious supply-chain injection.
</details>
<summary>Legitimate Proton downloader; no malicious behavior.</summary>
</security_assessment>

[3/10] Reviewing src/faugus-launcher-2.1.0/faugus-launcher, src/faugus-launcher-2.1.0/faugus/proton_downloader.py, src/faugus-launcher-2.1.0/faugus/runner.py, src/faugus-launcher-2.1.0/faugus/steam_setup.py...
[4/10] Reviewing src/faugus-launcher-2.1.0/faugus-launcher, src/faugus-launcher-2.1.0/faugus/runner.py, src/faugus-launcher-2.1.0/faugus/steam_setup.py...
+ Reviewed src/faugus-launcher-2.1.0/faugus/proton_downloader.py. Status: SAFE -- Legitimate Proton downloader; no malicious behavior.
LLM auditresponse for runner.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `runner.py` is the main game launching component of the faugus-launcher application. It orchestrates running games under Wine/Proton via the UMU launcher, managing environment variables, components (EAC, BattlEye, Proton versions), splash windows, logging, and user preferences. All subprocess calls, file operations, and network-triggering functions (updating Proton/EAC/BattlEye via the package's own `faugus.components` and `faugus.proton_downloader` modules) serve the stated purpose of launching and supporting games. The donation dialog and sleep-inhibition features are standard application behaviors. There is no obfuscated code, no suspicious network destinations, no base64 or eval usage, no exfiltration of system data, and no deviation from the expected workflow of a gaming frontend. The script clearly belongs to the upstream project and does not attempt to execute hidden or attacker-controlled commands.
</details>
<summary>No malicious code; standard game launcher runner.</summary>
</security_assessment>

[4/10] Reviewing src/faugus-launcher-2.1.0/faugus-launcher, src/faugus-launcher-2.1.0/faugus/runner.py, src/faugus-launcher-2.1.0/faugus/steam_setup.py, src/faugus-launcher-2.1.0/faugus/config_manager.py...
[5/10] Reviewing src/faugus-launcher-2.1.0/faugus-launcher, src/faugus-launcher-2.1.0/faugus/steam_setup.py, src/faugus-launcher-2.1.0/faugus/config_manager.py...
+ Reviewed src/faugus-launcher-2.1.0/faugus/runner.py. Status: SAFE -- No malicious code; standard game launcher runner.
LLM auditresponse for steam_setup.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `steam_setup.py` is a helper module for interacting with a local Steam installation. It detects whether Steam is native or Flatpak, reads Steam user data, library folders, installed games, and shortcut files using standard Python libraries (`os`, `subprocess`, `vdf`, `gi.repository.GdkPixbuf`). There are no network requests, no downloads, no execution of remote code, no obfuscation, and no attempts to modify system files or exfiltrate data. All operations are confined to reading configuration files under the Steam directory and standard file system paths, which is expected functionality for a launcher application. The code is clean and performs no actions beyond what is necessary for its stated purpose.
</details>
<summary>
Clean helper module; no malicious behavior detected.
</summary>
</security_assessment>

[5/10] Reviewing src/faugus-launcher-2.1.0/faugus-launcher, src/faugus-launcher-2.1.0/faugus/steam_setup.py, src/faugus-launcher-2.1.0/faugus/config_manager.py, src/faugus-launcher-2.1.0/faugus/launcher.py...
[6/10] Reviewing src/faugus-launcher-2.1.0/faugus-launcher, src/faugus-launcher-2.1.0/faugus/config_manager.py, src/faugus-launcher-2.1.0/faugus/launcher.py...
+ Reviewed src/faugus-launcher-2.1.0/faugus/steam_setup.py. Status: SAFE -- Clean helper module; no malicious behavior detected.
LLM auditresponse for config_manager.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration manager for the Faugus launcher application. It defines default configuration values, loads/saves JSON configuration files using helper functions from the `faugus.utils` module, and provides methods to get/set configuration keys. There are no network requests, obfuscated code, dangerous system commands, or any behavior that deviates from normal application configuration management. The code is straightforward and performs only file I/O operations for the application's own config file.</details>
<summary>Standard config manager with no malicious behavior.</summary>
</security_assessment>

[6/10] Reviewing src/faugus-launcher-2.1.0/faugus-launcher, src/faugus-launcher-2.1.0/faugus/config_manager.py, src/faugus-launcher-2.1.0/faugus/launcher.py, src/faugus-launcher-2.1.0/packaging/appimage/build.sh...
[7/10] Reviewing src/faugus-launcher-2.1.0/faugus-launcher, src/faugus-launcher-2.1.0/faugus/launcher.py, src/faugus-launcher-2.1.0/packaging/appimage/build.sh...
+ Reviewed src/faugus-launcher-2.1.0/faugus/config_manager.py. Status: SAFE -- Standard config manager with no malicious behavior.
LLM auditresponse for faugus-launcher:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher for the Faugus application. It sets up `PYTHONPATH` to include the script directory, configures `GTK_IM_MODULE`, and conditionally adds an icons directory to `XDG_DATA_DIRS`. It then dispatches to Python modules (`faugus.shortcut`, `faugus.runner`, `faugus.tray_only`) based on command-line arguments, using `exec` to replace the shell process. No network requests, downloads, obfuscation, or suspicious file operations are present. The script only invokes the package's own Python modules and does not introduce any supply-chain attack vectors. The use of `exec` is standard and appropriate for launcher scripts. The HTML entities in the provided content (e.g., `&quot;`) are likely an artifact of the display and not present in the actual file; even if present, they would cause a syntax error rather than a security issue.
</details>
<summary>Standard launcher script, no security issues found.</summary>
</security_assessment>

[8/10] Reviewing src/faugus-launcher-2.1.0/faugus/launcher.py, src/faugus-launcher-2.1.0/packaging/appimage/build.sh...
+ Reviewed src/faugus-launcher-2.1.0/faugus-launcher. Status: SAFE -- Standard launcher script, no security issues found.
LLM auditresponse for build.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward AppImage build script for the Faugus Launcher project. It downloads the source tarball from the project's official GitHub repository and the AppImage tool from the official AppImage project's GitHub releases. It uses standard build tools (meson, ninja, python, curl, tar) and installs pip dependencies (requests, vdf, icoextract, pefile) to a vendored directory inside the AppDir. The AppRun entry point is an ordinary shell script that delegates to the application's own Python modules.  

There are no obfuscated commands, no unexpected network destinations, no data exfiltration, no system file tampering, and no instructions that deviate from normal packaging practices. The use of a "continuous" release appimagetool download is a common convenience in AppImage builds and does not constitute malicious behavior. While checksums are not verified and the source download could be more pinned, these are hygiene concerns, not evidence of a supply-chain attack.
</details>
<summary>Standard AppImage build script for Faugus Launcher; no malicious behavior detected.</summary>
</security_assessment>

[9/10] Reviewing src/faugus-launcher-2.1.0/faugus/launcher.py...
+ Reviewed src/faugus-launcher-2.1.0/packaging/appimage/build.sh. Status: SAFE -- Standard AppImage build script for Faugus Launcher; no malicious behavior detected.
LLM auditresponse for launcher.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `launcher.py` is a standard Python GTK4 application for managing game launchers (Wine/Proton prefixes, Steam shortcuts, etc.). It imports local modules, constructs subprocess commands to run game executables via a custom runner, communicates over D-Bus for tray functionality, and performs routine UI initialization. The visible code contains no suspicious network requests, no obfuscated commands, no base64 decoding, no eval, and no downloads of executable code from external sources. The use of `os.execv` at startup is a legitimate restart after a legacy shortcut migration. The `run_file` function builds a command string from environment variables and a fixed runner path, passed as a list to `subprocess.Popen`—no shell injection risk. There is no evidence of data exfiltration, backdoors, or tampering with system files outside the application's scope. The omitted lines were checked for common suspicious patterns (curl, wget, eval, base64, exec) and none were found, indicating the code is consistent with the application's stated purpose.
</details>
<summary>Standard application file, no malicious indicators.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/faugus-launcher-2.1.0/faugus/launcher.py. Status: SAFE -- Standard application file, no malicious indicators.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: 2.1.0.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 71,368
  Completion Tokens: 12,185
  Total Tokens: 83,553
  Total Cost: $0.005482
  Execution Time: 100.93 seconds

Final Status: SAFE


No issues found.


Audit Skips:

/data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-j5dkrfkd/2.1.0.tar.gz: [SKIPPED] Skipping binary file: 2.1.0.tar.gz
