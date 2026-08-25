---
package: amethyst-mod-manager
pkgver: 2.3.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: a0710c34d2de3f3412d0c0b09b199eab9988648e
prompt_tokens: 81208
completion_tokens: 9077
total_tokens: 90285
cost: 0.0082073012
execution_time: 180.38
files_reviewed: 11
files_skipped: 1
files_unauditable: 3
unpinned_sources: 0
date: 2026-08-25T19:17:49Z
file_verdicts:
  - file: amethyst-mod-manager-2.3.0.tar.gz
    status: skipped
    summary: "Skipping binary file: amethyst-mod-manager-2.3.0.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators found.
  - file: "src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_api.py"
    status: safe
    summary: Safe read-only mod.io API client for BG3 mod management.
  - file: src/Amethyst-Mod-Manager-2.3.0/meson.build
    status: safe
    summary: Standard Meson build file with no malicious content.
  - file: "src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_key.py"
    status: safe
    summary: Normal credential storage; no malicious behavior.
  - file: src/Amethyst-Mod-Manager-2.3.0/src/Games/BepInEx/BepInEx.py
    status: safe
    summary: Standard mod manager code, no malicious behavior found.
  - file: src/Amethyst-Mod-Manager-2.3.0/src/Games/Darktide/darktide.py
    status: safe
    summary: Legitimate mod manager game handler, no malicious behavior.
  - file: src/Amethyst-Mod-Manager-2.3.0/src/Games/Cyberpunk 2077/cyberpunk_2077.py
    status: safe
    summary: Game handler with no security issues; all operations are legitimate mod management.
  - file: src/Amethyst-Mod-Manager-2.3.0/src/Games/Dragon Age Origins/dao_install.py
    status: safe
    summary: Standard mod installer; no malicious code detected.
  - file: src/Amethyst-Mod-Manager-2.3.0/src/Games/FromSoftware/elden_ring.py
    status: safe
    summary: No malicious code; legitimate game handler for modding Elden Ring.
  - file: src/Amethyst-Mod-Manager-2.3.0/src/Games/Morrowind/mcp_wizard_qt.py
    status: safe
    summary: Standard game mod installer, no malicious indicators.
  - file: "src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py"
    status: safe
    summary: Standard application logic for mod update checks.
---

Cloning https://aur.archlinux.org/amethyst-mod-manager.git...
Cloned amethyst-mod-manager
Analyzing amethyst-mod-manager AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines variables and arrays only in its global scope. No commands are executed at the top level or in a `pkgver()` function (which is not present). The `prepare()`, `build()`, and `package()` functions are not invoked because the commands use `--nobuild` and `--noprepare`. The source is downloaded from the official GitHub release tag with a valid SHA256 checksum. There is no risk of malicious execution during sourcing or source fetching.
</details>
<evidence></evidence>
<summary>No malicious top-level code; source fetch is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; source fetch is safe.
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
The PKGBUILD follows standard Arch packaging practices for a Python application using Meson. The source is pinned to a specific version with a valid SHA-256 checksum. No suspicious network requests, obfuscated code, or dangerous commands are present. The `sed` command in `prepare()` legitimately adjusts an import path for compatibility with the distribution-packaged `python-libloot`. The install steps are typical for fixing Meson's default install layout and creating correct launch scripts. No evidence of supply-chain attack or malicious behavior was found.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious indicators found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators found.
Reviewed all required files.
Deciding which files to review next...
Note: 3 compiled/archived file(s) cannot be audited as text and were not reviewed (src/Amethyst-Mod-Manager-2.3.0/src/translations/amethyst_en.qm, src/Amethyst-Mod-Manager-2.3.0/src/wizards_qt/ReShade.ini, src/Amethyst-Mod-Manager-2.3.0/src/wrappers/ucrtbase.dll). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 600 files available for selection; offering the 50 highest-priority to the model. 475 lower-priority file(s) were not offered.
LLM response for file selection:
src/Amethyst-Mod-Manager-2.3.0/meson.build
src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_api.py
src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py
src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_key.py
src/Amethyst-Mod-Manager-2.3.0/src/Games/BepInEx/BepInEx.py
src/Amethyst-Mod-Manager-2.3.0/src/Games/Cyberpunk 2077/cyberpunk_2077.py
src/Amethyst-Mod-Manager-2.3.0/src/Games/Darktide/darktide.py
src/Amethyst-Mod-Manager-2.3.0/src/Games/Dragon Age Origins/dao_install.py
src/Amethyst-Mod-Manager-2.3.0/src/Games/FromSoftware/elden_ring.py
src/Amethyst-Mod-Manager-2.3.0/src/Games/Morrowind/mcp_wizard_qt.py
Decided to review 10 additional files: src/Amethyst-Mod-Manager-2.3.0/meson.build, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_api.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_key.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/BepInEx/BepInEx.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Cyberpunk 2077/cyberpunk_2077.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Darktide/darktide.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Dragon Age Origins/dao_install.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/FromSoftware/elden_ring.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Morrowind/mcp_wizard_qt.py
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/meson.build...
[0/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/meson.build, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py...
[0/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/meson.build, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_api.py...
LLM auditresponse for modio_api.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements a read-only client for the mod.io public REST API, used to check mod updates for Baldur's Gate 3. All network requests go to the legitimate mod.io API endpoints (api.mod.io or user-specific modapi.io subdomains) and use HTTPS. The code is straightforward Python with no obfuscation, encoded commands, or unexpected system operations. The API key is user-provided and used only for authentication to mod.io. No evidence of exfiltration, backdoors, or malicious behavior is present. Standard caching and retry logic are included. The file follows normal packaging practices for an AUR package.
</details>
<evidence></evidence>
<summary>Safe read-only mod.io API client for BG3 mod management.</summary>
</security_assessment>

[0/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/meson.build, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_api.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_key.py...
[1/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/meson.build, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_key.py...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_api.py. Status: SAFE -- Safe read-only mod.io API client for BG3 mod management.
LLM auditresponse for meson.build:
<security_assessment>
<decision>SAFE</decision>
<details>
The meson.build file is a standard Meson build configuration for the Amethyst Mod Manager. It defines the project, installs sources and data files (desktop file, icons, license, README), generates an AppStream metainfo file using a template and version/date from git or system date, and optionally runs an AppStream validation test. All commands (python, git, date, appstreamcli) are expected build-time utilities. There are no suspicious network requests, obfuscated code, dangerous command execution, or any behavior indicative of a supply-chain attack. The file is straightforward and typical for an AUR package.
</details>
<evidence></evidence>
<summary>Standard Meson build file with no malicious content.</summary>
</security_assessment>

[1/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/meson.build, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_key.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/BepInEx/BepInEx.py...
[2/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_key.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/BepInEx/BepInEx.py...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/meson.build. Status: SAFE -- Standard Meson build file with no malicious content.
LLM auditresponse for modio_key.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is part of the upstream application source code for *Amethyst Mod Manager*. It implements secure storage of a mod.io API key using either the system keyring or a machine-bound encrypted file as a fallback. The code reads `/etc/machine-id` or `/var/lib/dbus/machine-id` to derive a Fernet encryption key—this is a standard technique for binding secrets to a specific machine and does **not** exfiltrate or transmit that data anywhere. All file operations (reading/writing/removing the encrypted key file) are confined to the application’s own config directory. There are no network requests, no execution of downloaded code, no obfuscated commands, and no deviation from the application’s stated purpose of safely storing API credentials. The behavior is entirely normal for a credential-management module and presents no supply-chain security risk.
</details>
<evidence></evidence>
<summary>Normal credential storage; no malicious behavior.</summary>
</security_assessment>

[2/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_key.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/BepInEx/BepInEx.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Cyberpunk 2077/cyberpunk_2077.py...
[3/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/BepInEx/BepInEx.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Cyberpunk 2077/cyberpunk_2077.py...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_key.py. Status: SAFE -- Normal credential storage; no malicious behavior.
LLM auditresponse for BepInEx.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a game handler for BepInEx-based mods within the Amethyst Mod Manager. It defines game classes (Subnautica, Valheim, Lethal Company, etc.) and handles deployment of mod files into the game's BepInEx/Plugins directory. All operations are confined to the game install path and staging directories. The only external data read is from local meta.ini files (Thunderstore metadata) with proper sanitization against path traversal. No network requests, obfuscated code, eval, base64, or unexpected system modifications are present. The logic is consistent with standard mod manager functionality and does not exhibit any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard mod manager code, no malicious behavior found.</summary>
</security_assessment>

[3/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/BepInEx/BepInEx.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Cyberpunk 2077/cyberpunk_2077.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Darktide/darktide.py...
[4/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Cyberpunk 2077/cyberpunk_2077.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Darktide/darktide.py...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/src/Games/BepInEx/BepInEx.py. Status: SAFE -- Standard mod manager code, no malicious behavior found.
LLM auditresponse for darktide.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `darktide.py` is a game handler module for the Amethyst Mod Manager application. It defines game-specific paths, deployment logic, and mod load order generation for Warhammer 40,000: Darktide. All operations are confined to the game's own directories and profile staging areas. The code uses standard Python file I/O and calls internal utility functions from the same application (`Utils.deploy`, `Utils.modlist`, etc.). There are no network requests, no obfuscated or encoded commands, no `eval` or dangerous shell invocations, and no unexpected system modifications. The file performs only its intended mod management functions (deploy, restore, write mod_load_order.txt) and does not exfiltrate data or execute untrusted code from external sources.
</details>
<evidence></evidence>
<summary>Legitimate mod manager game handler, no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Cyberpunk 2077/cyberpunk_2077.py...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/src/Games/Darktide/darktide.py. Status: SAFE -- Legitimate mod manager game handler, no malicious behavior.
[5/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Cyberpunk 2077/cyberpunk_2077.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Dragon Age Origins/dao_install.py...
LLM auditresponse for cyberpunk_2077.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a game handler for Cyberpunk 2077 within the Amethyst Mod Manager and contains no malicious code. All operations are confined to the game installation directory, profile directories, and the user's Steam/Heroic launcher configuration for adding necessary launch arguments (e.g., `-modded`). The code follows standard mod manager patterns: deploying mod files, writing load-order configuration, and restoring backups. There are no network requests, obfuscated commands, or attempts to access sensitive system data. The VFS path operations include traversal safety checks. The Steam/Heroic config modifications are limited to the game's launch options and are conditional (e.g., skipping edits while Steam is running). This is a legitimate feature, not a supply-chain attack.
</details>
<evidence></evidence>
<summary>Game handler with no security issues; all operations are legitimate mod management.</summary>
</security_assessment>

[6/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Dragon Age Origins/dao_install.py...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/src/Games/Cyberpunk 2077/cyberpunk_2077.py. Status: SAFE -- Game handler with no security issues; all operations are legitimate mod management.
[6/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Dragon Age Origins/dao_install.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/FromSoftware/elden_ring.py...
LLM auditresponse for dao_install.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements install-time normalization for Dragon Age: Origins mods and is part of the upstream Amethyst Mod Manager source. It performs expected operations: extracting archive files (.dazip/.override), removing junk files, flattening override content, and handling OverrideConfig.xml option wizards via UI hooks. There are no network requests, no obfuscated code, no execution of untrusted commands, and no exfiltration of local data. All file operations are confined to the mod's staging directory (``dest_root``) and follow the application's intended workflow. No evidence of an injected supply-chain attack is present.
</details>
<evidence>
</evidence>
<summary>Standard mod installer; no malicious code detected.</summary>
</security_assessment>

[7/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/FromSoftware/elden_ring.py...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/src/Games/Dragon Age Origins/dao_install.py. Status: SAFE -- Standard mod installer; no malicious code detected.
[7/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/FromSoftware/elden_ring.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Morrowind/mcp_wizard_qt.py...
LLM auditresponse for elden_ring.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard game handler for the Amethyst mod manager. It manages Elden Ring mod deployment via the external `me3` loader. All operations are expected for the application's stated purpose:

- Writes a `.me3` profile configuration file.
- Copies proxy loader DLLs (e.g., `dinput8.dll`) beside the game executable – normal for DLL injection mod loaders.
- Fetches the `me3` mod loader on demand from its official GitHub repository only when missing; this is a standard on-demand download and not unexpected or obfuscated.
- Removes previously deployed files on restore.
- Uses only standard library imports (`shutil`, `pathlib`) and internal-game-module helpers.

No obfuscated code, suspicious encoding, data exfiltration, backdoors, or commands targeting unrelated system files are present. The file is consistent with legitimate upstream source code for managing mods in ELDEN RING.
</details>
<evidence></evidence>
<summary>No malicious code; legitimate game handler for modding Elden Ring.</summary>
</security_assessment>

[8/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Morrowind/mcp_wizard_qt.py...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/src/Games/FromSoftware/elden_ring.py. Status: SAFE -- No malicious code; legitimate game handler for modding Elden Ring.
LLM auditresponse for mcp_wizard_qt.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Qt-based wizard for installing the Morrowind Code Patch (MCP) into the Morrowind game directory. It provides a step-by-step GUI to guide the user through downloading the MCP archive from Nexus Mods (the official upstream source), extracting it into the game root, and running the MCP executable via Proton (the Steam compatibility layer for Windows games on Linux).  

All network operations target the legitimate upstream Nexus Mods URL (`https://www.nexusmods.com/morrowind/mods/19510`). There is no code that exfiltrates sensitive data, downloads or executes code from unexpected sources, modifies system files outside the game directory, or uses obfuscated/encoded commands. The Proton launching and wineserver management are standard for running Windows executables under Steam Play on Linux. The file contains only intended application functionality and no evidence of a supply chain attack.
</details>
<evidence></evidence>
<summary>Standard game mod installer, no malicious indicators.</summary>
</security_assessment>

[9/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/src/Games/Morrowind/mcp_wizard_qt.py. Status: SAFE -- Standard game mod installer, no malicious indicators.
LLM auditresponse for modio_update_checker.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is part of the upstream Amethyst Mod Manager application. It implements the update-checking logic for mod.io mods: it reads local metadata, makes batched API requests to mod.io, compares versions, and writes results back to local meta.ini files. The network destination (mod.io API) is the legitimate service for the mods. No attempts to exfiltrate data, execute arbitrary code, or download/run external scripts are present. The dynamic loading of sibling modules is part of the package's own internal structure and not an attack vector. All operations serve the stated purpose of checking for mod updates.
</details>
<evidence></evidence>
<summary>Standard application logic for mod update checks.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py. Status: SAFE -- Standard application logic for mod update checks.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: amethyst-mod-manager-2.3.0.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 81,208
  Completion Tokens: 9,077
  Total Tokens: 90,285
  Total Cost: $0.008207
  Execution Time: 180.38 seconds

Final Status: SAFE


No issues found.


Audit Skips:

amethyst-mod-manager-2.3.0.tar.gz: [SKIPPED] Skipping binary file: amethyst-mod-manager-2.3.0.tar.gz
