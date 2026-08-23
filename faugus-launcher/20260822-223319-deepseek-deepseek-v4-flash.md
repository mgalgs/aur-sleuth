---
package: faugus-launcher
pkgver: 2.1.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: ab8f04a045309f11c3e319d8a061c88f7bc8df51
prompt_tokens: 84903
completion_tokens: 9581
total_tokens: 94484
cost: 0.00595876190
execution_time: 127.58
files_reviewed: 11
files_skipped: 1
files_unauditable: 24
unpinned_sources: 1
date: 2026-08-22T22:33:19Z
file_verdicts:
  - file: 2.1.0.tar.gz
    status: skipped
    summary: "Skipping binary file: 2.1.0.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard, clean PKGBUILD with no malicious indicators.
  - file: faugus-launcher.desktop
    status: safe
    summary: Safe, standard desktop file with no malicious content.
  - file: src/faugus-launcher-2.1.0/assets/meson.build
    status: safe
    summary: "Safe: standard data installation, no dangerous operations."
  - file: src/faugus-launcher-2.1.0/faugus/steam_setup.py
    status: safe
    summary: Legitimate Steam integration; no malicious behavior found.
  - file: src/faugus-launcher-2.1.0/faugus/proton_downloader.py
    status: safe
    summary: Legitimate downloader for Proton forks; no malicious code found.
  - file: faugus-launcher.py
    status: safe
    summary: Legitimate game launcher; no supply-chain attack indicators.
  - file: src/faugus-launcher-2.1.0/faugus/launcher.py
    status: safe
    summary: Legitimate launcher code, no malicious behavior detected.
  - file: src/faugus-launcher-2.1.0/faugus/runner.py
    status: safe
    summary: Standard game launcher; no supply-chain attack indicators found.
  - file: src/faugus-launcher-2.1.0/faugus/config_manager.py
    status: safe
    summary: Standard configuration manager with no malicious behavior.
  - file: src/faugus-launcher-2.1.0/faugus/ea_fix.py
    status: safe
    summary: No malicious behavior; normal utility for game path fixes.
  - file: src/faugus-launcher-2.1.0/faugus/utils.py
    status: safe
    summary: Standard application utility; no malicious behavior detected.
---

Cloning https://aur.archlinux.org/faugus-launcher.git...
Cloned faugus-launcher
Analyzing faugus-launcher AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and a single source URL pointing to the official GitHub repository of the package. There is no executable code in the global scope or in a `pkgver()` function. The `sha256sums` value is `SKIP`, which is permissible for this initial source-fetching step (the archive will be extracted but not executed, and a full audit will occur later). No suspicious commands, network requests beyond the declared source, or obfuscated content are present. Running the two specified commands (fetch and extract sources, print .SRCINFO) is safe.
</details>
<summary>No dangerous top-level code or source URLs; safe to fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code or source URLs; safe to fetch.
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
This PKGBUILD is a standard, straightforward packaging file for a Python/GTK4 application. It downloads the source tarball from the official GitHub repository of the project, builds it using meson, and installs it. There are no suspicious network requests, obfuscated code, dangerous commands (eval, curl\|bash, base64 decoding), or unexpected file operations. The checksum is set to 'SKIP', which is a hygiene concern but not evidence of malice. The dependencies and build steps are all consistent with the application's stated purpose. No supply-chain attack indicators are present.
</details>
<summary>Standard, clean PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard, clean PKGBUILD with no malicious indicators.
Reviewed all required files.
Deciding which files to review next...
Note: 24 compiled/archived file(s) cannot be audited as text and were not reviewed (src/faugus-launcher-2.1.0/assets/faugus-notification.ogg, src/faugus-launcher-2.1.0/languages/ar/faugus-launcher.mo, src/faugus-launcher-2.1.0/languages/cs/faugus-launcher.mo and 21 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
LLM response for file selection:
faugus-launcher.desktop
faugus-launcher.py
src/faugus-launcher-2.1.0/assets/meson.build
src/faugus-launcher-2.1.0/faugus/proton_downloader.py
src/faugus-launcher-2.1.0/faugus/steam_setup.py
src/faugus-launcher-2.1.0/faugus/runner.py
src/faugus-launcher-2.1.0/faugus/launcher.py
src/faugus-launcher-2.1.0/faugus/utils.py
src/faugus-launcher-2.1.0/faugus/config_manager.py
src/faugus-launcher-2.1.0/faugus/ea_fix.py
Decided to review 10 additional files: faugus-launcher.desktop, faugus-launcher.py, src/faugus-launcher-2.1.0/assets/meson.build, src/faugus-launcher-2.1.0/faugus/proton_downloader.py, src/faugus-launcher-2.1.0/faugus/steam_setup.py, src/faugus-launcher-2.1.0/faugus/runner.py, src/faugus-launcher-2.1.0/faugus/launcher.py, src/faugus-launcher-2.1.0/faugus/utils.py, src/faugus-launcher-2.1.0/faugus/config_manager.py, src/faugus-launcher-2.1.0/faugus/ea_fix.py
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing faugus-launcher.desktop...
[0/10] Reviewing faugus-launcher.desktop, faugus-launcher.py...
[0/10] Reviewing faugus-launcher.desktop, faugus-launcher.py, src/faugus-launcher-2.1.0/assets/meson.build...
LLM auditresponse for faugus-launcher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Faugus Launcher application. It contains only the expected fields: `Type`, `Name`, `Exec`, `Icon`, and `Categories`. There is no executable code, no network requests, no file operations, and no obfuscated or encoded content. The `Exec` line simply points to the `faugus-launcher` binary, which is the normal behavior for a launcher. No security issues are present.
</details>
<summary>Safe, standard desktop file with no malicious content.</summary>
</security_assessment>

[1/10] Reviewing faugus-launcher.py, src/faugus-launcher-2.1.0/assets/meson.build...
+ Reviewed faugus-launcher.desktop. Status: SAFE -- Safe, standard desktop file with no malicious content.
[1/10] Reviewing faugus-launcher.py, src/faugus-launcher-2.1.0/assets/meson.build, src/faugus-launcher-2.1.0/faugus/proton_downloader.py...
LLM auditresponse for meson.build:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Meson build configuration that only installs data assets (images, sounds, icon SVGs) into the system's data directories. It performs no network requests, no code generation, no obfuscated commands, no file operations beyond copying the specified files into the appropriate installation paths. There is nothing unusual or potentially malicious.
</details>
<summary>Safe: standard data installation, no dangerous operations.</summary>
</security_assessment>

[1/10] Reviewing faugus-launcher.py, src/faugus-launcher-2.1.0/assets/meson.build, src/faugus-launcher-2.1.0/faugus/proton_downloader.py, src/faugus-launcher-2.1.0/faugus/steam_setup.py...
[2/10] Reviewing faugus-launcher.py, src/faugus-launcher-2.1.0/faugus/proton_downloader.py, src/faugus-launcher-2.1.0/faugus/steam_setup.py...
+ Reviewed src/faugus-launcher-2.1.0/assets/meson.build. Status: SAFE -- Safe: standard data installation, no dangerous operations.
LLM auditresponse for steam_setup.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `steam_setup.py` is a helper module for the Faugus launcher that interacts with local Steam installations. It performs the following standard operations:

- Detects whether Steam is installed natively or as a Flatpak
- Reads local Steam configuration files (`loginusers.vdf`, `libraryfolders.vdf`, `shortcuts.vdf`, `appmanifest_*.acf`) and user data to list accounts, installed games, and library folders
- Generates Steam shortcut IDs using CRC32
- Handles icon path retrieval from the local library cache
- Calls `subprocess.run` only to check for the existence of `steam` or `flatpak` binaries, using hardcoded command lists with no user-controlled input

No network requests, no obfuscation, no dangerous command execution, and no file modification outside the application's own scope. All file reads are from the user's Steam directory under `~/.steam` or `~/.var/app/com.valvesoftware.Steam/` — this is expected behavior for a launcher that integrates with Steam. There is no evidence of exfiltration, backdoors, or supply-chain attack.
</details>
<summary>Legitimate Steam integration; no malicious behavior found.</summary>
</security_assessment>

[2/10] Reviewing faugus-launcher.py, src/faugus-launcher-2.1.0/faugus/proton_downloader.py, src/faugus-launcher-2.1.0/faugus/steam_setup.py, src/faugus-launcher-2.1.0/faugus/runner.py...
[3/10] Reviewing faugus-launcher.py, src/faugus-launcher-2.1.0/faugus/proton_downloader.py, src/faugus-launcher-2.1.0/faugus/runner.py...
+ Reviewed src/faugus-launcher-2.1.0/faugus/steam_setup.py. Status: SAFE -- Legitimate Steam integration; no malicious behavior found.
LLM auditresponse for proton_downloader.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a legitimate Proton downloader for the faugus-launcher package. It retrieves the latest release tags and archives from well-known GitHub repositories (GloriousEggroll/proton-ge-custom, Etaash-mathamsetty/Proton, CachyOS/proton-cachyos) and a self-hosted Gitea instance (dawn.winery) for DW-Proton. All network destinations are the expected upstream sources for these Proton variants. The code uses standard Python libraries (`urllib.request`, `tarfile`, `json`, `shutil`) without any obfuscation, encoded commands, or dangerous operations like `eval`, `base64`, or `curl|bash`. The `tarfile.extractall` call uses `filter="data"` (safe against path traversal on Python 3.12+). No evidence of exfiltration, backdoors, credential theft, or modification of system files outside the application's scope exists.  

A hygiene note: the script does not verify checksums of the downloaded archives, trusting the upstream releases. This is common for tools that fetch the latest release dynamically and is not, by itself, evidence of malice. The file conforms to the expected behavior of a package manager helper for Proton compatibility tools.
</details>
<summary>
Legitimate downloader for Proton forks; no malicious code found.</summary>
</security_assessment>

[4/10] Reviewing faugus-launcher.py, src/faugus-launcher-2.1.0/faugus/runner.py...
+ Reviewed src/faugus-launcher-2.1.0/faugus/proton_downloader.py. Status: SAFE -- Legitimate downloader for Proton forks; no malicious code found.
[4/10] Reviewing faugus-launcher.py, src/faugus-launcher-2.1.0/faugus/runner.py, src/faugus-launcher-2.1.0/faugus/launcher.py...
LLM auditresponse for faugus-launcher.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This Python file is part of the faugus-launcher AUR package, a GUI frontend for launching Windows games via Wine/Proton and umu-run. The code implements standard launcher functionality: adding/editing/deleting game entries, building command strings from user-provided fields (title, path, prefix, arguments), creating desktop shortcuts, and managing running processes.

There are no signs of obfuscation, hidden network operations, code downloads, data exfiltration, or backdoors. The `os.system` call in the icon extraction feature uses a user-chosen file path, but that is a deliberate launcher feature—the user selects an `.exe` to extract an icon from. The kill command pipeline, while poorly structured (including an irrelevant `tee`), only targets wine processes and does not introduce a vulnerability. All file operations are confined to the user's own `~/.config/faugus-launcher/` directory, `~/.local/share/applications/`, and `~/Desktop/`.

The command construction for game launching uses string interpolation into a `bash -c` call; this could allow command injection if the user intentionally enters malicious data, but that is an inherent risk of the application's design (the user controls their own game entries). It is not a supply-chain attack—the AUR maintainer is not injecting malicious content into the package. The behavior is consistent with the intended purpose of a game launcher.
</details>
<summary>Legitimate game launcher; no supply-chain attack indicators.</summary>
</security_assessment>

[5/10] Reviewing src/faugus-launcher-2.1.0/faugus/runner.py, src/faugus-launcher-2.1.0/faugus/launcher.py...
+ Reviewed faugus-launcher.py. Status: SAFE -- Legitimate game launcher; no supply-chain attack indicators.
[5/10] Reviewing src/faugus-launcher-2.1.0/faugus/runner.py, src/faugus-launcher-2.1.0/faugus/launcher.py, src/faugus-launcher-2.1.0/faugus/utils.py...
LLM auditresponse for launcher.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `launcher.py` is a standard GTK4/Adwaita-based GUI application for managing and launching Windows/Linux games via Proton/Wine. It contains no obfuscated code, no unexpected network requests (no curl, wget, or downloads from non-origin sources), and no backdoors. All subprocess calls are for running game engines or helper scripts (`faugus.runner`, `faugus.tray_only`) that are part of the package itself. The `os.execv` restart after `fix_legacy_shortcut_icons()` is a normal migration pattern. There are no signs of data exfiltration, credential theft, or malicious code injection. The file follows typical AUR packaging practices and poses no security threat.
</details>
<summary>Legitimate launcher code, no malicious behavior detected.</summary>
</security_assessment>

[5/10] Reviewing src/faugus-launcher-2.1.0/faugus/runner.py, src/faugus-launcher-2.1.0/faugus/launcher.py, src/faugus-launcher-2.1.0/faugus/utils.py, src/faugus-launcher-2.1.0/faugus/config_manager.py...
[6/10] Reviewing src/faugus-launcher-2.1.0/faugus/runner.py, src/faugus-launcher-2.1.0/faugus/utils.py, src/faugus-launcher-2.1.0/faugus/config_manager.py...
+ Reviewed src/faugus-launcher-2.1.0/faugus/launcher.py. Status: SAFE -- Legitimate launcher code, no malicious behavior detected.
LLM auditresponse for runner.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the main game-launcher runner for Faugus, a gaming compatibility layer. Its code performs expected operations: setting environment variables for Proton/EAC/BattlEye/UMU, running the game process, updating game components via the package&#39;s own internal modules (`faugus.components`, `faugus.proton_downloader`), and managing splash/log windows. There is no evidence of obfuscated code, encoded payloads, unexpected network requests to non-upstream hosts, or exfiltration of local data. The pre-launch and post-launch commands (from game JSON configuration) are passed through `subprocess.Popen` with `shell=True`, but this is standard functionality for a launcher that needs to run arbitrary game-specific scripts; it is not a supply-chain attack injection point in the packaging context. The GPU warm-up routine using `ctypes.CDLL` for `libvulkan.so.1` is normal hardware initialization. No malicious behavior or backdoors are present.
</details>
<summary>
Standard game launcher; no supply-chain attack indicators found.</summary>
</security_assessment>

[6/10] Reviewing src/faugus-launcher-2.1.0/faugus/runner.py, src/faugus-launcher-2.1.0/faugus/utils.py, src/faugus-launcher-2.1.0/faugus/config_manager.py, src/faugus-launcher-2.1.0/faugus/ea_fix.py...
[7/10] Reviewing src/faugus-launcher-2.1.0/faugus/utils.py, src/faugus-launcher-2.1.0/faugus/config_manager.py, src/faugus-launcher-2.1.0/faugus/ea_fix.py...
+ Reviewed src/faugus-launcher-2.1.0/faugus/runner.py. Status: SAFE -- Standard game launcher; no supply-chain attack indicators found.
LLM auditresponse for config_manager.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration manager for the Faugus Launcher application. It defines default settings, loads a JSON configuration file, and provides methods to read and save settings. The code uses only local file operations from the package's own utility modules (`faugus.utils` and `faugus.language_config`). There are no network requests, no obfuscated code, no dangerous commands, and no modifications to system files outside the application's own data directory. The file is entirely benign and follows normal application practices.
</details>
<summary>Standard configuration manager with no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/faugus-launcher-2.1.0/faugus/utils.py, src/faugus-launcher-2.1.0/faugus/ea_fix.py...
+ Reviewed src/faugus-launcher-2.1.0/faugus/config_manager.py. Status: SAFE -- Standard configuration manager with no malicious behavior.
LLM auditresponse for ea_fix.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a utility script for the Faugus launcher that fixes paths for Electronic Arts games installed via Wine. It contains no network requests, no code downloads, no obfuscation, and no execution of external programs beyond normal filesystem operations (`shutil.copytree`, `shutil.rmtree`, file I/O). All operations are confined to the application's own Wine prefix and configuration directories (`GAMES_JSON`, `APP_DIR`, `DESKTOP_DIR`). Modifications to `.desktop` files and Steam shortcut VDF files are standard launcher behavior to update game shortcuts. There is no evidence of data exfiltration, backdoors, or any supply-chain attack indicators. The script performs exactly the function its name suggests: fixing EA paths after an EA Desktop update.
</details>
<summary>No malicious behavior; normal utility for game path fixes.</summary>
</security_assessment>

[9/10] Reviewing src/faugus-launcher-2.1.0/faugus/utils.py...
+ Reviewed src/faugus-launcher-2.1.0/faugus/ea_fix.py. Status: SAFE -- No malicious behavior; normal utility for game path fixes.
LLM auditresponse for utils.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a utility module for the Faugus Launcher application. It contains functions for process management (killing games by environment marker), GUI components (HiDPI support, combo boxes, image handling), file operations (atomic writes, JSON persistence), integration with SteamGridDB (fetching game artwork via their public API), and system configuration (theme, accent color).  

All network requests are directed to **`steamgriddb.com`** (the official API for game art) and are consistent with the application's purpose of managing game shortcuts. No data is exfiltrated, no code is downloaded and executed, no obfuscation is present, and no commands target unrelated systems. The use of `subprocess` (e.g., `flatpak-spawn`, `icoextract`) is standard for the launcher's workflow (killing processes, extracting icons).  

The file does not contain any genuinely malicious behavior such as backdoors, credential theft, or unauthorized network communication. It follows normal packaging practices for a game-launcher utility.
</details>
<summary>Standard application utility; no malicious behavior detected.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/faugus-launcher-2.1.0/faugus/utils.py. Status: SAFE -- Standard application utility; no malicious behavior detected.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: 2.1.0.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 84,903
  Completion Tokens: 9,581
  Total Tokens: 94,484
  Total Cost: $0.005959
  Execution Time: 127.58 seconds

Final Status: SAFE


No issues found.


Audit Skips:

/data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-xvox33vz/2.1.0.tar.gz: [SKIPPED] Skipping binary file: 2.1.0.tar.gz
