---
package: amethyst-mod-manager
pkgver: 2.3.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 34eecedf33cdb5da67bea8964402044d560850d8
prompt_tokens: 61584
completion_tokens: 8076
total_tokens: 69660
cost: 0.0064209936
execution_time: 243.88
files_reviewed: 11
files_skipped: 1
files_unauditable: 3
unpinned_sources: 0
date: 2026-08-25T15:14:48Z
file_verdicts:
  - file: amethyst-mod-manager-2.3.0.tar.gz
    status: skipped
    summary: "Skipping binary file: amethyst-mod-manager-2.3.0.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned source, meson build, and safe packaging-only path fixes.
  - file: src/Amethyst-Mod-Manager-2.3.0/flatpak/io.github.Amethyst.ModManager.desktop
    status: safe
    summary: Standard desktop entry file, no security concerns.
  - file: src/Amethyst-Mod-Manager-2.3.0/src/Games/7 Days to Die/7_days_to_die.py
    status: safe
    summary: No malicious behavior; standard local mod deployment/restore logic for 7D2D.
  - file: src/Amethyst-Mod-Manager-2.3.0/meson.build
    status: safe
    summary: Standard Meson build file, no evidence of malicious content.
  - file: src/Amethyst-Mod-Manager-2.3.0/src/Games/7 Days to Die/__init__.py
    status: safe
    summary: Empty file, no code to analyze.
  - file: "src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_api.py"
    status: safe
    summary: Standard API client; no malicious code.
  - file: "src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_key.py"
    status: safe
    summary: Routine local credential storage using keyring and machine-bound Fernet; no malicious behavior.
  - file: "src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_meta.py"
    status: safe
    summary: Safe module for BG3 mod.io metadata handling.
  - file: "src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py"
    status: safe
    summary: Legitimate mod update checker, no malicious code.
  - file: src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh
    status: safe
    summary: Standard Flatpak build script, no malicious code.
  - file: "src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/baldurs_gate_3.py"
    status: safe
    summary: "Safe: standard mod manager game handler."
---

Cloning https://aur.archlinux.org/amethyst-mod-manager.git...
Cloned amethyst-mod-manager
Analyzing amethyst-mod-manager AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables and arrays in the global scope. The source URL points to the official upstream GitHub repository with a fixed tag and a valid SHA256 checksum. No code in the global scope or `pkgver()` executes any commands, downloads from unexpected hosts, or performs dangerous operations. The `prepare()`, `build()`, and `package()` functions are not executed with `--nobuild --noprepare`, so they are out of scope for this gate. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only fetch the source tarball and parse the PKGBUILD, which is safe.
</details>
<evidence></evidence>
<summary>No dangerous code executes during sourcing or source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code executes during sourcing or source fetch.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing amethyst-mod-manager-2.3.0.tar.gz...
[0/2] Reviewing amethyst-mod-manager-2.3.0.tar.gz, PKGBUILD...
[1/2] Reviewing PKGBUILD...
! Reviewed amethyst-mod-manager-2.3.0.tar.gz. Status: SKIPPED -- Skipping binary file: amethyst-mod-manager-2.3.0.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package definition. It downloads a pinned release tarball from the project's official GitHub repository with a fixed SHA-256 checksum, then builds it with meson and installs into `$pkgdir`. The `prepare()` sed command adjusts an upstream import path to match the packaged `python-libloot` module, which is a routine packaging fix.

The `package()` function contains an unusual but non-malicious relocation of installed Python files: it moves the staged `site-packages` contents into a package-specific subdirectory and creates a `.pth` file so Python can still find the modules. All operations are confined to `$pkgdir` and the package's own installed files. The generated launcher scripts simply invoke the installed Python modules. There are no suspicious network calls, no encoded or obfuscated commands, no execution of fetched content, and no access to sensitive host data.
</details>
<evidence>
</evidence>
<summary>
Standard AUR PKGBUILD with pinned source, meson build, and safe packaging-only path fixes.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned source, meson build, and safe packaging-only path fixes.
Reviewed all required files.
Deciding which files to review next...
Note: 3 compiled/archived file(s) cannot be audited as text and were not reviewed (src/Amethyst-Mod-Manager-2.3.0/src/translations/amethyst_en.qm, src/Amethyst-Mod-Manager-2.3.0/src/wizards_qt/ReShade.ini, src/Amethyst-Mod-Manager-2.3.0/src/wrappers/ucrtbase.dll). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 600 files available for selection; offering the 50 highest-priority to the model. 475 lower-priority file(s) were not offered.
File selection failed (LLMResponseError: LLM response message content is empty or missing); using highest-priority files instead

Note: file selection did not complete (LLMResponseError: LLM response message content is empty or missing). Falling back to the 10 highest-priority file(s) by ranking.
Decided to review 10 additional files: src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh, src/Amethyst-Mod-Manager-2.3.0/flatpak/io.github.Amethyst.ModManager.desktop, src/Amethyst-Mod-Manager-2.3.0/meson.build, src/Amethyst-Mod-Manager-2.3.0/src/Games/7 Days to Die/7_days_to_die.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/7 Days to Die/__init__.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/baldurs_gate_3.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_api.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_key.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_meta.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh...
[0/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh, src/Amethyst-Mod-Manager-2.3.0/flatpak/io.github.Amethyst.ModManager.desktop...
[0/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh, src/Amethyst-Mod-Manager-2.3.0/flatpak/io.github.Amethyst.ModManager.desktop, src/Amethyst-Mod-Manager-2.3.0/meson.build...
LLM auditresponse for io.github.Amethyst.ModManager.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Flatpak desktop entry file. It defines the application name, icon, categories, and the command to execute (`amethyst-mod-manager`). There is no embedded malicious code, network activity, or system modifications. The content is exactly what is expected for this type of file in a Flatpak package.
</details>
<evidence>
</evidence>
<summary>Standard desktop entry file, no security concerns.</summary>
</security_assessment>

[1/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh, src/Amethyst-Mod-Manager-2.3.0/meson.build...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/flatpak/io.github.Amethyst.ModManager.desktop. Status: SAFE -- Standard desktop entry file, no security concerns.
[1/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh, src/Amethyst-Mod-Manager-2.3.0/meson.build, src/Amethyst-Mod-Manager-2.3.0/src/Games/7 Days to Die/7_days_to_die.py...
LLM auditresponse for 7_days_to_die.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a game handler for the amethyst-mod-manager application. It implements deployment and restore logic for 7 Days to Die mods: it moves vanilla `Mods/` to `Mods_Core/`, links staged mod folders into the game's `Mods/` directory, routes loose Data-style files into the game tree, and logs what it placed so restore can undo the deploy. All operations are local filesystem operations (os.symlink, os.link, shutil.copy2, shutil.move, shutil.rmtree) confined to the configured game path, profile/staging directories, and overwrite directory.
</details>
<details>
There are no network operations (no urllib, requests, curl, wget, sockets), no obfuscated or encoded payloads, no eval/exec of dynamic code, and no references to credentials, environment exfiltration, or unrelated system files. The routing logic for loose files is a plausible upstream feature for 7D2D prefab/asset packs. The code is consistent with the application's stated purpose of managing game mods. No evidence of injected malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>
No malicious behavior; standard local mod deployment/restore logic for 7D2D.</summary>
</security_assessment>

[1/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh, src/Amethyst-Mod-Manager-2.3.0/meson.build, src/Amethyst-Mod-Manager-2.3.0/src/Games/7 Days to Die/7_days_to_die.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/7 Days to Die/__init__.py...
[2/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh, src/Amethyst-Mod-Manager-2.3.0/meson.build, src/Amethyst-Mod-Manager-2.3.0/src/Games/7 Days to Die/__init__.py...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/src/Games/7 Days to Die/7_days_to_die.py. Status: SAFE -- No malicious behavior; standard local mod deployment/restore logic for 7D2D.
LLM auditresponse for meson.build:
<security_assessment>
<decision>SAFE</decision>
<details>
This meson.build file is a standard Meson build configuration for the Amethyst-Mod-Manager application. It performs typical packaging operations: detecting the Python interpreter, installing source files, placing binaries into bindir, installing desktop files, icons, license, and README. It generates a metainfo file using a template and optionally validates it with appstreamcli. Commands like `src/version.py` and `git log` are used within the project's own source tree to obtain version and date information—these are normal build‑time steps and present no supply‑chain risk. There are no network requests, no obfuscated code, no unexpected file operations, and no execution of content from untrusted sources. The file adheres to expected AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard Meson build file, no evidence of malicious content.</summary>
</security_assessment>

[3/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh, src/Amethyst-Mod-Manager-2.3.0/src/Games/7 Days to Die/__init__.py...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/meson.build. Status: SAFE -- Standard Meson build file, no evidence of malicious content.
[3/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh, src/Amethyst-Mod-Manager-2.3.0/src/Games/7 Days to Die/__init__.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/baldurs_gate_3.py...
LLM auditresponse for __init__.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is empty, containing no code or instructions. With no operations, network requests, file modifications, or any executable content, there is no potential for malicious behavior.
</details>
<evidence></evidence>
<summary>Empty file, no code to analyze.</summary>
</security_assessment>

[4/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/baldurs_gate_3.py...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/src/Games/7 Days to Die/__init__.py. Status: SAFE -- Empty file, no code to analyze.
[4/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/baldurs_gate_3.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_api.py...
LLM auditresponse for modio_api.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a read-only client for the mod.io REST API, used by the BG3 mod manager to check for mod updates. It makes HTTP requests only to expected mod.io endpoints (api.mod.io or user-specific modapi.io subdomains) and does not execute any external code, write files, or perform obfuscated operations. The API path is validated with a strict regex to prevent SSRF. Caching is in-memory only. No evidence of malicious behavior such as data exfiltration, backdoors, or unexpected downloads.
</details>
<evidence></evidence>
<summary>Standard API client; no malicious code.</summary>
</security_assessment>

[4/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/baldurs_gate_3.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_api.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_key.py...
[5/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/baldurs_gate_3.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_key.py...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_api.py. Status: SAFE -- Standard API client; no malicious code.
LLM auditresponse for modio_key.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements routine, legitimate credential storage for the mod.io API key. It attempts to use the system keyring first, falling back to a machine-bound Fernet-encrypted file stored under the application's own config directory. The Fernet key is derived from the system machine-id via PBKDF2, which is a standard device-binding technique. The file is created with restrictive permissions (0o600), and operations are limited to reading/writing/deleting the application's own credential data. No network requests, no execution of downloaded content, no obfuscated code, and no access to unrelated system files beyond reading the machine-id (which is a common, non-sensitive identifier used for device binding). All behavior is consistent with the application's stated purpose of securely keeping the user's API key local.

There are no genuine security concerns. The use of the machine-id as a key derivation seed is a minor design consideration (the key is tied to the machine rather than a user secret), but this is an ordinary pattern for offline encryption fallbacks and is not malicious. Reading `/etc/machine-id` and `/var/lib/dbus/machine-id` is expected for this purpose.
</details>
<evidence>
</evidence>
<summary>
Routine local credential storage using keyring and machine-bound Fernet; no malicious behavior.</summary>
</security_assessment>

[6/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/baldurs_gate_3.py...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_key.py. Status: SAFE -- Routine local credential storage using keyring and machine-bound Fernet; no malicious behavior.
[6/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/baldurs_gate_3.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_meta.py...
LLM auditresponse for modio_meta.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard utility module for identifying Baldur's Gate 3 mods installed via mod.io. It parses metadata from `.pak` files, computes MD5 hashes of archives, interacts with the mod.io API (via a sibling module) to match files, and writes results into a `meta.ini` configuration file. All network requests are directed to the legitimate mod.io API for the purpose of mod identification and update checking. The `_load_sibling` function dynamically loads a sibling module from the same directory using `importlib`, which is a well-known practice for packages with spaces in folder names and does not introduce untrusted code. There is no obfuscated code, no use of dangerous functions (eval, base64, curl, wget), no exfiltration of sensitive data, and no system modification outside the application's own data directory. The code aligns with the stated purpose of the package and does not exhibit any supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>Safe module for BG3 mod.io metadata handling.</summary>
</security_assessment>

[6/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/baldurs_gate_3.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_meta.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py...
[7/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/baldurs_gate_3.py, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_meta.py. Status: SAFE -- Safe module for BG3 mod.io metadata handling.
LLM auditresponse for modio_update_checker.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard update checker for mod.io mods in Baldur's Gate 3. It reads mod metadata from staging directories, queries the mod.io API for the latest file versions, and compares them to detect updates. The code uses dynamic imports (via `_load_sibling`) to load helper modules from the same directory, which is a normal Python packaging pattern. There are no suspicious network requests beyond the expected API calls to mod.io, no obfuscated code, no execution of untrusted content, and no file operations outside the application's own staging directories. The behavior is consistent with the application's stated purpose of managing mod updates.
</details>
<evidence></evidence>
<summary>Legitimate mod update checker, no malicious code.</summary>
</security_assessment>

[8/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh, src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/baldurs_gate_3.py...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/modio_update_checker.py. Status: SAFE -- Legitimate mod update checker, no malicious code.
LLM auditresponse for build.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard Flatpak build helper for the Amethyst Mod Manager application. It resolves flatpak-builder (preferring the org.flatpak.Builder Flatpak), runs a build using a local manifest file, installs dependencies from Flathub (the official Flatpak repository), and optionally creates a .flatpak bundle. All operations are confined to the user's Flatpak environment and use official tools. There are no suspicious network destinations, obfuscated commands, or file operations outside the expected Flatpak workflow. No malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard Flatpak build script, no malicious code.</summary>
</security_assessment>

[9/10] Reviewing src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/baldurs_gate_3.py...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/flatpak/build.sh. Status: SAFE -- Standard Flatpak build script, no malicious code.
LLM auditresponse for baldurs_gate_3.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard game handler for the Amethyst mod manager, implementing deployment and restoration of Baldur's Gate 3 mods. All file operations are confined to the game's own directories (Proton prefix or native Linux `~/.local/share/Larian Studios`). The only modification outside the game's data folder is the suppression of launcher mod warnings in `preferences.json`, which is a documented convenience feature and does not exfiltrate data or alter sensitive settings. No network requests, obfuscated code, or execution of untrusted content are present. The code follows normal packaging practices for mod management.
</details>
<evidence></evidence>
<summary>Safe: standard mod manager game handler.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/Amethyst-Mod-Manager-2.3.0/src/Games/Baldur's Gate 3/baldurs_gate_3.py. Status: SAFE -- Safe: standard mod manager game handler.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: amethyst-mod-manager-2.3.0.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 61,584
  Completion Tokens: 8,076
  Total Tokens: 69,660
  Total Cost: $0.006421
  Execution Time: 243.88 seconds

Final Status: SAFE


No issues found.


Audit Skips:

amethyst-mod-manager-2.3.0.tar.gz: [SKIPPED] Skipping binary file: amethyst-mod-manager-2.3.0.tar.gz
