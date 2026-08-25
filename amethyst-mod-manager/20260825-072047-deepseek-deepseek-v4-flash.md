---
package: amethyst-mod-manager
pkgver: 2.3.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 34eecedf33cdb5da67bea8964402044d560850d8
prompt_tokens: 69618
completion_tokens: 9426
total_tokens: 79044
cost: 0.007838972820
execution_time: 381.63
files_reviewed: 11
files_skipped: 1
files_unauditable: 3
unpinned_sources: 0
date: 2026-08-25T07:20:47Z
file_verdicts:
  - file: amethyst-mod-manager-2.3.0.tar.gz
    status: skipped
    summary: "Skipping binary file: amethyst-mod-manager-2.3.0.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious behavior found.
  - file: src/Amethyst-Mod-Manager-2.3.0/meson.build
    status: safe
    summary: Standard Meson build file; no malicious indicators.
  - file: "src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_api.py"
    status: safe
    summary: Legitimate mod.io API client, no malicious indicators.
  - file: src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh
    status: safe
    summary: Standard Flatpak build script, no malicious content.
  - file: "src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py"
    status: safe
    summary: Routine mod.io update checker; no malicious behavior found. Safe.
  - file: src/Amethyst-Mod-Manager-2.3.0/src/Games/BepInEx/BepInEx.py
    status: safe
    summary: Legitimate mod manager file operations, no malicious behavior found.
  - file: src/Amethyst-Mod-Manager-2.3.0/flatpak/io.github.Amethyst.ModManager.desktop
    status: safe
    summary: Standard desktop entry, no security concerns.
  - file: src/Amethyst-Mod-Manager-2.3.0/src/Games/Bethesda/bethesda_ini.py
    status: safe
    summary: Standard INI helpers, no malicious code found.
  - file: src/Amethyst-Mod-Manager-2.3.0/src/Games/Morrowind/mcp_wizard_qt.py
    status: safe
    summary: Standard mod manager functionality; no malicious code.
  - file: src/Amethyst-Mod-Manager-2.3.0/src/Games/FromSoftware/elden_ring.py
    status: safe
    summary: No malicious code detected; standard mod manager functionality.
  - file: src/Amethyst-Mod-Manager-2.3.0/src/Games/Dragon Age Origins/dao_install.py
    status: safe
    summary: Standard mod installer, no malicious code.
---

Cloning https://aur.archlinux.org/amethyst-mod-manager.git...
Cloned amethyst-mod-manager
Analyzing amethyst-mod-manager AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments, arrays, and function definitions (`prepare`, `build`, `package`). These functions are **not** called during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The source is a pinned tarball from the official upstream GitHub repository with a valid SHA256 checksum. There is no top-level code execution, no `pkgver()` function, no obfuscated commands, and no unexpected network destinations. The fetch and extraction operations are standard and do not execute any malicious code at this stage.
</details>
<evidence></evidence>
<summary>No code executes during the specified commands. Safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No code executes during the specified commands. Safe.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, amethyst-mod-manager-2.3.0.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed amethyst-mod-manager-2.3.0.tar.gz. Status: SKIPPED -- Skipping binary file: amethyst-mod-manager-2.3.0.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. The source is fetched from the official GitHub repository with a pinned version and a valid SHA-256 checksum. The build and package functions only perform legitimate operations: fixing an import path, compiling with meson, installing files, and adjusting the Python module layout to avoid conflicts. The creation of a `.pth` file and launch scripts are typical for Python packages. There are no suspicious network requests, obfuscated code, dangerous commands (eval, curl, wget, etc.), or any attempt to exfiltrate data or execute untrusted code. The script is consistent with the stated purpose of the package.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious behavior found.
Reviewed all required files.
Deciding which files to review next...
Note: 3 compiled/archived file(s) cannot be audited as text and were not reviewed (src/Amethyst-Mod-Manager-2.3.0/src/translations/amethyst_en.qm, src/Amethyst-Mod-Manager-2.3.0/src/wizards_qt/ReShade.ini, src/Amethyst-Mod-Manager-2.3.0/src/wrappers/ucrtbase.dll). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 600 files available for selection; offering the 50 highest-priority to the model. 475 lower-priority file(s) were not offered.
LLM response for file selection:
src/Amethyst-Mod-Manager-2.3.0/meson.build
src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh
src/Amethyst-Mod-Manager-2.3.0/flatpak/io.github.Amethyst.ModManager.desktop
src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_api.py
src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py
src/Amethyst-Mod-Manager-2.3.0/src/Games/Dragon Age Origins/dao_install.py
src/Amethyst-Mod-Manager-2.3.0/src/Games/BepInEx/BepInEx.py
src/Amethyst-Mod-Manager-2.3.0/src/Games/Bethesda/bethesda_ini.py
src/Amethyst-Mod-Manager-2.3.0/src/Games/FromSoftware/elden_ring.py
src/Amethyst-Mod-Manager-2.3.0/src/Games/Morrowind/mcp_wizard_qt.py
Decided to review 10 additional files: src/Amethyst-Mod-Manager-2.3.0/meson.build, src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh, src/Amethyst-Mod-Manager-2.3.0/flatpak/io.github.Amethyst.ModManager.desktop, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_api.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Dragon Age Origins/dao_install.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/BepInEx/BepInEx.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Bethesda/bethesda_ini.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/FromSoftware/elden_ring.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Morrowind/mcp_wizard_qt.py
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/meson.build...
[0/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/meson.build, src/Amethyst-Mod-Manager-2.3.0/flatpak/io.github.Amethyst.ModManager.desktop...
[0/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/meson.build, src/Amethyst-Mod-Manager-2.3.0/flatpak/io.github.Amethyst.ModManager.desktop, src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh...
LLM auditresponse for meson.build:
<security_assessment>
<decision>SAFE</decision>
<details>
The meson.build file is a standard build configuration for the Amethyst Mod Manager project. It defines the project, finds the Python interpreter, sets up subdirectories, installs data files (executable scripts, desktop entry, icon, license, documentation), and generates a metainfo file using `git log` or system `date` commands. No network requests, downloads, obfuscated code, or suspicious file operations are present. All executed commands (`src/version.py`, `git`, `date`, `appstreamcli`) are normal build-time operations that operate on the project's own source or standard system tools. There is no evidence of malicious behavior such as data exfiltration, backdoor installation, or execution of attacker-controlled code. The file is consistent with legitimate Meson packaging practices.
</details>
<evidence></evidence>
<summary>Standard Meson build file; no malicious indicators.</summary>
</security_assessment>

[0/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/meson.build, src/Amethyst-Mod-Manager-2.3.0/flatpak/io.github.Amethyst.ModManager.desktop, src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_api.py...
[1/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/flatpak/io.github.Amethyst.ModManager.desktop, src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_api.py...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/meson.build. Status: SAFE -- Standard Meson build file; no malicious indicators.
LLM auditresponse for modio_api.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a minimal read-only client for the official mod.io REST API, used by the Amethyst Mod Manager to check for mod updates for Baldur's Gate 3. All HTTP requests are directed only to mod.io domains (`api.mod.io` or `*.modapi.io`) and the path is validated via `normalize_api_path()` to prevent misuse. There is no obfuscated code, no downloads from unexpected hosts, no execution of fetched content (only JSON parsing), and no exfiltration of local data. The retry and error handling are standard. The code adheres to the legitimate purpose of the application and contains no evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Legitimate mod.io API client, no malicious indicators.</summary>
</security_assessment>

[2/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/flatpak/io.github.Amethyst.ModManager.desktop, src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_api.py. Status: SAFE -- Legitimate mod.io API client, no malicious indicators.
[2/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/flatpak/io.github.Amethyst.ModManager.desktop, src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py...
LLM auditresponse for build.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard Flatpak build helper for the Amethyst Mod Manager. It uses official Flathub repositories and commands like `flatpak run`, `flatpak install`, and `flatpak-builder`. There is no exfiltration of data, no downloading or execution of code from unexpected remote hosts, no obfuscated or encoded commands, and no backdoors or reverse shells. The script only interacts with the local filesystem and Flathub (the official Flatpak repository), which is expected behavior for a Flatpak build script. Nothing in this file indicates a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard Flatpak build script, no malicious content.</summary>
</security_assessment>

[2/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/flatpak/io.github.Amethyst.ModManager.desktop, src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Dragon Age Origins/dao_install.py...
[3/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/flatpak/io.github.Amethyst.ModManager.desktop, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Dragon Age Origins/dao_install.py...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh. Status: SAFE -- Standard Flatpak build script, no malicious content.
LLM auditresponse for modio_update_checker.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a routine application module that checks installed mod.io mods for updates. It reads local `meta.ini` metadata, resolves mod IDs via the mod.io API, compares file IDs/versions, and writes refreshed metadata back to the mod's staging directory. All network interaction is delegated to the sibling `modio_api` module using the provided API key and path, which is consistent with the application's stated update-checking purpose.

The dynamic loading of sibling modules via `importlib.util` is explained by the file path containing spaces and only affects local modules in the same package (`modio_meta`, `modio_api`); it is not obfuscation or code injection. No suspicious commands, encoding tricks, exfiltration, or unexpected file operations were found. The only potential hygiene consideration is reliance on the upstream mod.io API, which is expected functionality, not malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Routine mod.io update checker; no malicious behavior found. Safe.
</summary>
</security_assessment>

[3/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/flatpak/io.github.Amethyst.ModManager.desktop, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Dragon Age Origins/dao_install.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/BepInEx/BepInEx.py...
[4/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/flatpak/io.github.Amethyst.ModManager.desktop, src/Amethyst-Mod-Manager-2.3.0/src/Games/Dragon Age Origins/dao_install.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/BepInEx/BepInEx.py...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py. Status: SAFE -- Routine mod.io update checker; no malicious behavior found. Safe.
LLM auditresponse for BepInEx.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `BepInEx.py` defines game handler classes for BepInEx-based games (Subnautica, Valheim, etc.) as part of the `amethyst-mod-manager` mod management application. The code performs standard mod deployment operations: moving files, managing symlinks/hardlinks, restoring backups, and setting executable permissions on launcher scripts. All file operations are scoped to the game installation directory and the mod staging directory under the user's profile. The `_thunderstore_plugin_subdirs` function includes a security check that rejects unsafe package IDs containing path traversal characters or null bytes. No network requests, downloads, obfuscated code, system exfiltration, or execution of untrusted external content is present. The code is consistent with legitimate mod manager functionality and follows expected packaging practices.
</details>
<evidence></evidence>
<summary>Legitimate mod manager file operations, no malicious behavior found.</summary>
</security_assessment>

[4/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/flatpak/io.github.Amethyst.ModManager.desktop, src/Amethyst-Mod-Manager-2.3.0/src/Games/Dragon Age Origins/dao_install.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/BepInEx/BepInEx.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Bethesda/bethesda_ini.py...
[5/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/flatpak/io.github.Amethyst.ModManager.desktop, src/Amethyst-Mod-Manager-2.3.0/src/Games/Dragon Age Origins/dao_install.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Bethesda/bethesda_ini.py...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/src/Games/BepInEx/BepInEx.py. Status: SAFE -- Legitimate mod manager file operations, no malicious behavior found.
LLM auditresponse for io.github.Amethyst.ModManager.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Linux desktop entry file (`.desktop`). It contains only metadata fields such as `Name`, `Comment`, `Exec`, `Icon`, `Categories`, `Terminal`, and `StartupWMClass`. There is no executable code, no network requests, no obfuscation, and no system modification commands. This file is a normal part of packaging an application for Flatpak or any desktop environment and presents no security risk.
</details>
<evidence></evidence>
<summary>Standard desktop entry, no security concerns.</summary>
</security_assessment>

[6/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/src/Games/Dragon Age Origins/dao_install.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Bethesda/bethesda_ini.py...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/flatpak/io.github.Amethyst.ModManager.desktop. Status: SAFE -- Standard desktop entry, no security concerns.
[6/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/src/Games/Dragon Age Origins/dao_install.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Bethesda/bethesda_ini.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/FromSoftware/elden_ring.py...
LLM auditresponse for bethesda_ini.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file provides standard INI read/write helpers for Bethesda game configuration files. It reads and writes local INI files using regex-based line editing to preserve formatting. There are no network requests, obfuscated code, or dangerous command execution. The symlink handling is a legitimate workaround for profile-specific INI files. The code is consistent with the application's stated purpose of managing mod configurations.
</details>
<evidence></evidence>
<summary>Standard INI helpers, no malicious code found.</summary>
</security_assessment>

[7/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/src/Games/Dragon Age Origins/dao_install.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/FromSoftware/elden_ring.py...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/src/Games/Bethesda/bethesda_ini.py. Status: SAFE -- Standard INI helpers, no malicious code found.
[7/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/src/Games/Dragon Age Origins/dao_install.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/FromSoftware/elden_ring.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Morrowind/mcp_wizard_qt.py...
LLM auditresponse for mcp_wizard_qt.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `mcp_wizard_qt.py` is a Qt-based wizard for installing the Morrowind Code Patch (MCP), a legitimate mod for Morrowind. It guides the user through downloading MCP from the official Nexus Mods page, locating the downloaded archive, extracting it into the game folder, and running the MCP executable via Proton (Steam's Windows compatibility layer). All network operations target the official Nexus Mods URL (`https://www.nexusmods.com/morrowind/mods/19510`), which is the expected upstream source for this mod. The extraction uses the application's own `extract_archive` utility, and the execution uses `proton_run_command` to run the patcher. There is no obfuscated code, no unexpected downloads, no data exfiltration, and no backdoors. The behavior is standard for a mod manager and matches the application's stated purpose.
</details>
<evidence></evidence>
<summary>Standard mod manager functionality; no malicious code.</summary>
</security_assessment>

[8/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/src/Games/Dragon Age Origins/dao_install.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/FromSoftware/elden_ring.py...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/src/Games/Morrowind/mcp_wizard_qt.py. Status: SAFE -- Standard mod manager functionality; no malicious code.
LLM auditresponse for elden_ring.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `elden_ring.py` implements a game handler for ELDEN RING in the Amethyst mod manager. It interacts with the filesystem and network only in ways expected for its purpose: writing mod profiles, copying mod loader DLLs beside the game executable, and on-demand fetching of the `me3` mod loader binary from its upstream source. There are no obfuscated commands, no attempts to exfiltrate data, no backdoors, and no execution of untrusted remote code beyond the declared `ensure_me3()` function (which is called from a separate module and includes error handling). Path traversal is prevented in cleanup routines. All operations are consistent with legitimate mod management and packaging practices.
</details>
<evidence></evidence>
<summary>No malicious code detected; standard mod manager functionality.</summary>
</security_assessment>

[9/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/src/Games/Dragon Age Origins/dao_install.py...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/src/Games/FromSoftware/elden_ring.py. Status: SAFE -- No malicious code detected; standard mod manager functionality.
LLM auditresponse for dao_install.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard mod-installation helper for Dragon Age: Origins within the Amethyst Mod Manager. It performs expected operations: extracting `.dazip`/`.override` archives, removing junk files (macOS cruft, backups, top-level docs), flattening override content to `packages/core/override/`, handling `OverrideConfig.xml` choice prompts via the application&#x2019;s own `ui_hooks` module, and logging.  
All file operations are confined to the mod staging root and destination root provided as parameters. There are no network requests, no obfuscated code, no fetching or executing external scripts, no exfiltration of system data, and no modifications outside the designated mod directories. The behavior aligns exactly with the documented purpose of the package (managing DAO mod installations). No evidence of a supply-chain attack is present.
</details>
<evidence>
</evidence>
<summary>Standard mod installer, no malicious code.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/src/Games/Dragon Age Origins/dao_install.py. Status: SAFE -- Standard mod installer, no malicious code.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: amethyst-mod-manager-2.3.0.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 69,618
  Completion Tokens: 9,426
  Total Tokens: 79,044
  Total Cost: $0.007839
  Execution Time: 381.63 seconds

Final Status: SAFE


No issues found.


Audit Skips:

amethyst-mod-manager-2.3.0.tar.gz: [SKIPPED] Skipping binary file: amethyst-mod-manager-2.3.0.tar.gz
