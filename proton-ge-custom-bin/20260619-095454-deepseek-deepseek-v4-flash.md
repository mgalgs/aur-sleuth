---
package: proton-ge-custom-bin
pkgver: GE_Proton10_34
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 42617
completion_tokens: 8844
total_tokens: 51461
cost: 0.00542745
execution_time: 83.52
files_reviewed: 13
files_skipped: 0
date: 2026-06-19T09:54:53Z
file_verdicts:
  - file: pleasenote.install
    status: safe
    summary: Informational install script, no malicious content.
  - file: pam_limits.conf
    status: safe
    summary: Standard PAM limits configuration for gaming group, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators.
  - file: src/GE-Proton10-34/protonfixes/gamefixes-gog/umu-1030840.py
    status: safe
    summary: "Safe: routine registry fix for Proton game compatibility."
  - file: src/GE-Proton10-34/protonfixes/engine.py
    status: safe
    summary: Safe engine detection utility, no malicious behavior.
  - file: src/GE-Proton10-34/protonfixes/gamefixes-steam/1017900.py
    status: safe
    summary: Standard game fix script with no malicious behavior.
  - file: src/GE-Proton10-34/protonfixes/download.py
    status: safe
    summary: Standard utility module; no malicious indicators.
  - file: src/GE-Proton10-34/protonfixes/config.py
    status: safe
    summary: Standard configuration module with no malicious behavior.
  - file: src/GE-Proton10-34/protonfixes/gamefixes-egs/default.py
    status: safe
    summary: Standard Proton fix script; no malicious behavior.
  - file: src/GE-Proton10-34/protonfixes/__init__.py
    status: safe
    summary: Legitimate Proton GE fix module, no malicious behavior found.
  - file: launcher.sh
    status: safe
    summary: Legitimate launcher script, no malicious behavior.
  - file: src/GE-Proton10-34/protonfixes/checks.py
    status: safe
    summary: Simple system configuration check for Wine esync.
  - file: src/GE-Proton10-34/protonfixes/fix.py
    status: safe
    summary: No malicious code found; standard protonfixes component.
---

Cloning https://aur.archlinux.org/proton-ge-custom-bin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ikknfwau...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ikknfwau
Analyzing proton-ge-custom-bin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ikknfwau) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments, standard source definitions (HTTPS from the project's official GitHub releases page), and checksums. There is no command substitution, obfuscated code, or any dangerous operations in the global scope or `pkgver()` (which is not even defined). The `build()` and `package()` functions are not executed during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`, so any code in those functions is out of scope for this safety gate. The source downloads are from `https://github.com/GloriousEggroll/proton-ge-custom/releases/download/` and are fully pinned with SHA‑512 checksums (except for the tarball itself, which is also checksummed). No unusual network requests, file operations, or execution of untrusted payloads occur during the sourcing or download steps.
</details>
<summary>No dangerous code in global scope or sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No dangerous code in global scope or sources.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, pleasenote.install...
[0/3] Reviewing PKGBUILD, pleasenote.install, pam_limits.conf...
LLM auditresponse for pleasenote.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.install` script that prints an informational message to the user. It suggests adding the user to the `games` group to allow Wine (used by Proton) to adjust process niceness. There are no network requests, file manipulations, encoded commands, or any other suspicious patterns. The script only uses `echo` to display text and calls `post_install` from `post_upgrade`. This is a routine packaging practice for informing users about optional configuration steps.
</details>
<summary>Informational install script, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, pam_limits.conf...
+ Reviewed pleasenote.install. Status: SAFE -- Informational install script, no malicious content.
LLM auditresponse for pam_limits.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `pam_limits.conf` contains a single PAM limits configuration line: `@games - nice -11`. This sets a lower nice value (higher priority) for members of the `games` group, which is a standard and expected security consideration for gaming-related packages (such as proton-ge-custom). There is no obfuscation, network access, file operations, or any code execution. The content is purely declarative and follows normal packaging practices.
</details>
<summary>Standard PAM limits configuration for gaming group, no malicious code.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed pam_limits.conf. Status: SAFE -- Standard PAM limits configuration for gaming group, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a binary Proton distribution. All sources are pinned with SHA-512 checksums, including the upstream tarball from the official GitHub releases. The build and package functions perform only expected operations: sed patches to adjust paths, stripping of Wine binaries, and installation of files into the package directory. There are no suspicious network requests, obfuscated code, or unexpected system modifications. The installation of PAM limits and modules-load configuration is normal for gaming packages that need resource adjustments. The use of `install --mode=0775 --group=50` for `user_settings.py` is a standard permission setting (group 50 is typically `games` on Arch Linux) and not a security concern.
</details>
<summary>Standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators.
Reviewed all required files.
Deciding which files to review next...
Note: 1043 files available for selection; offering the 50 highest-priority to the model. 710 lower-priority file(s) were not offered.
LLM response for file selection:
launcher.sh
src/GE-Proton10-34/protonfixes/__init__.py
src/GE-Proton10-34/protonfixes/checks.py
src/GE-Proton10-34/protonfixes/config.py
src/GE-Proton10-34/protonfixes/download.py
src/GE-Proton10-34/protonfixes/engine.py
src/GE-Proton10-34/protonfixes/fix.py
src/GE-Proton10-34/protonfixes/gamefixes-egs/default.py
src/GE-Proton10-34/protonfixes/gamefixes-gog/umu-1030840.py
src/GE-Proton10-34/protonfixes/gamefixes-steam/1017900.py
Decided to review 10 additional files: launcher.sh, src/GE-Proton10-34/protonfixes/__init__.py, src/GE-Proton10-34/protonfixes/checks.py, src/GE-Proton10-34/protonfixes/config.py, src/GE-Proton10-34/protonfixes/download.py, src/GE-Proton10-34/protonfixes/engine.py, src/GE-Proton10-34/protonfixes/fix.py, src/GE-Proton10-34/protonfixes/gamefixes-egs/default.py, src/GE-Proton10-34/protonfixes/gamefixes-gog/umu-1030840.py, src/GE-Proton10-34/protonfixes/gamefixes-steam/1017900.py
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing launcher.sh...
[0/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/checks.py...
[0/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/checks.py, src/GE-Proton10-34/protonfixes/download.py...
[0/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/checks.py, src/GE-Proton10-34/protonfixes/download.py, src/GE-Proton10-34/protonfixes/config.py...
[0/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/checks.py, src/GE-Proton10-34/protonfixes/download.py, src/GE-Proton10-34/protonfixes/config.py, src/GE-Proton10-34/protonfixes/__init__.py...
[0/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/checks.py, src/GE-Proton10-34/protonfixes/download.py, src/GE-Proton10-34/protonfixes/config.py, src/GE-Proton10-34/protonfixes/__init__.py, src/GE-Proton10-34/protonfixes/engine.py...
[0/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/checks.py, src/GE-Proton10-34/protonfixes/download.py, src/GE-Proton10-34/protonfixes/config.py, src/GE-Proton10-34/protonfixes/__init__.py, src/GE-Proton10-34/protonfixes/engine.py, src/GE-Proton10-34/protonfixes/gamefixes-egs/default.py...
[0/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/checks.py, src/GE-Proton10-34/protonfixes/download.py, src/GE-Proton10-34/protonfixes/config.py, src/GE-Proton10-34/protonfixes/__init__.py, src/GE-Proton10-34/protonfixes/engine.py, src/GE-Proton10-34/protonfixes/gamefixes-egs/default.py, src/GE-Proton10-34/protonfixes/gamefixes-gog/umu-1030840.py...
[0/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/checks.py, src/GE-Proton10-34/protonfixes/download.py, src/GE-Proton10-34/protonfixes/config.py, src/GE-Proton10-34/protonfixes/__init__.py, src/GE-Proton10-34/protonfixes/engine.py, src/GE-Proton10-34/protonfixes/gamefixes-egs/default.py, src/GE-Proton10-34/protonfixes/gamefixes-gog/umu-1030840.py, src/GE-Proton10-34/protonfixes/fix.py...
[0/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/checks.py, src/GE-Proton10-34/protonfixes/download.py, src/GE-Proton10-34/protonfixes/config.py, src/GE-Proton10-34/protonfixes/__init__.py, src/GE-Proton10-34/protonfixes/engine.py, src/GE-Proton10-34/protonfixes/gamefixes-egs/default.py, src/GE-Proton10-34/protonfixes/gamefixes-gog/umu-1030840.py, src/GE-Proton10-34/protonfixes/fix.py, src/GE-Proton10-34/protonfixes/gamefixes-steam/1017900.py...
LLM auditresponse for umu-1030840.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a simple game fix for Mafia: Definitive Edition under Proton. It imports `util` from `protonfixes` and calls `util.regedit_add` to add a registry key. There is no obfuscation, no network activity, no execution of untrusted code, and no deviation from standard packaging practices for Proton game fixes. The operation is purely a registry modification required for game compatibility.
</details>
<summary>Safe: routine registry fix for Proton game compatibility.</summary>
</security_assessment>

[1/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/checks.py, src/GE-Proton10-34/protonfixes/download.py, src/GE-Proton10-34/protonfixes/config.py, src/GE-Proton10-34/protonfixes/__init__.py, src/GE-Proton10-34/protonfixes/engine.py, src/GE-Proton10-34/protonfixes/gamefixes-egs/default.py, src/GE-Proton10-34/protonfixes/fix.py, src/GE-Proton10-34/protonfixes/gamefixes-steam/1017900.py...
+ Reviewed src/GE-Proton10-34/protonfixes/gamefixes-gog/umu-1030840.py. Status: SAFE -- Safe: routine registry fix for Proton game compatibility.
LLM auditresponse for engine.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a game engine detection module that inspects the current working directory's file listing and checks for specific subdirectory patterns to identify game engines (Unity, RAGE, Dunia 2, etc.). It then provides methods to add command-line arguments for features like disabling splash screens, skipping intros, setting windowed mode, and forcing resolution.  

There are no network requests, obfuscated code, dangerous system modifications, or data exfiltration. All operations are limited to reading the local filesystem via `os.listdir` and `os.path.exists` within the current working directory, and appending arguments to `sys.argv` — both standard and expected in a packaging/launcher helper. No injected malicious behavior is present.
</details>
<summary>Safe engine detection utility, no malicious behavior.</summary>
</security_assessment>

[2/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/checks.py, src/GE-Proton10-34/protonfixes/download.py, src/GE-Proton10-34/protonfixes/config.py, src/GE-Proton10-34/protonfixes/__init__.py, src/GE-Proton10-34/protonfixes/gamefixes-egs/default.py, src/GE-Proton10-34/protonfixes/fix.py, src/GE-Proton10-34/protonfixes/gamefixes-steam/1017900.py...
+ Reviewed src/GE-Proton10-34/protonfixes/engine.py. Status: SAFE -- Safe engine detection utility, no malicious behavior.
LLM auditresponse for 1017900.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a simple game fix for Age of Empires: DE that appends the `-NoStartup` argument to Proton's command line. It uses a standard utility function from the `protonfixes` module. There are no network requests, no obfuscation, no file operations outside expected packaging, and no execution of downloaded code. This is a typical and benign AUR package support file.
</details>
<summary>Standard game fix script with no malicious behavior.</summary>
</security_assessment>

[3/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/checks.py, src/GE-Proton10-34/protonfixes/download.py, src/GE-Proton10-34/protonfixes/config.py, src/GE-Proton10-34/protonfixes/__init__.py, src/GE-Proton10-34/protonfixes/gamefixes-egs/default.py, src/GE-Proton10-34/protonfixes/fix.py...
+ Reviewed src/GE-Proton10-34/protonfixes/gamefixes-steam/1017900.py. Status: SAFE -- Standard game fix script with no malicious behavior.
LLM auditresponse for download.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file provides helper functions to download files from Google Drive and compute SHA1 checksums. The `gdrive_download` function uses standard `urllib` and handles Google Drive&#39;s cookie-based confirmation—expected behavior for downloading from that service. No code is executed upon import; functions are only called elsewhere. There is no obfuscation, no network requests to unexpected hosts, no data exfiltration, and no execution of downloaded content. The use of SHA1 (instead of SHA256) is a cryptographic weakness but not evidence of a supply-chain attack. Overall, the file aligns with the package&#39;s stated purpose and contains no malicious behavior.
</details>
<summary>Standard utility module; no malicious indicators.</summary>
</security_assessment>

[4/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/checks.py, src/GE-Proton10-34/protonfixes/config.py, src/GE-Proton10-34/protonfixes/__init__.py, src/GE-Proton10-34/protonfixes/gamefixes-egs/default.py, src/GE-Proton10-34/protonfixes/fix.py...
+ Reviewed src/GE-Proton10-34/protonfixes/download.py. Status: SAFE -- Standard utility module; no malicious indicators.
LLM auditresponse for config.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `config.py` is a straightforward configuration loader for the `umu-protonfix` component of the proton-ge-custom-bin package. It reads environment variables (`XDG_CONFIG_HOME`, `XDG_CACHE_HOME`) with safe fallbacks (`~/.config`, `~/.cache`), defines dataclass sections for settings, and loads an INI file via a base class. There are no network requests, obfuscated code, dangerous commands (eval, base64, curl, wget), or unexpected file operations. The code is entirely standard for a configuration module and contains no evidence of supply-chain compromise.
</details>
<summary>
Standard configuration module with no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/checks.py, src/GE-Proton10-34/protonfixes/__init__.py, src/GE-Proton10-34/protonfixes/gamefixes-egs/default.py, src/GE-Proton10-34/protonfixes/fix.py...
+ Reviewed src/GE-Proton10-34/protonfixes/config.py. Status: SAFE -- Standard configuration module with no malicious behavior.
LLM auditresponse for default.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Proton fix script for Epic Games Store games. It imports `protonfixes.util` and calls `protontricks('vcrun2022')` to install a Visual C++ runtime, and `regedit_add` to add a registry key for the Epic Games launcher. These are expected operations for a gaming compatibility layer and do not contain any malicious behavior such as data exfiltration, unexpected network requests, or code obfuscation. The code is straightforward and consistent with its stated purpose.
</details>
<summary>Standard Proton fix script; no malicious behavior.</summary>
</security_assessment>

[6/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/checks.py, src/GE-Proton10-34/protonfixes/__init__.py, src/GE-Proton10-34/protonfixes/fix.py...
+ Reviewed src/GE-Proton10-34/protonfixes/gamefixes-egs/default.py. Status: SAFE -- Standard Proton fix script; no malicious behavior.
LLM auditresponse for __init__.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard entry point for the `protonfix` module used in Proton GE. It sets up library paths, conditionally applies game fixes, and shows a Zenity dialog during fix execution. All operations are confined to the module's own directories and standard environment manipulation for Proton compatibility. There are no suspicious network requests, obfuscated code, or attempts to exfiltrate data. The use of `sys.path.insert` to include a vendor directory and manipulation of `PATH`/`LD_LIBRARY_PATH` are expected packaging patterns. The file only calls functions from within the same module and uses safe Python idioms.
</details>
<summary>Legitimate Proton GE fix module, no malicious behavior found.</summary>
</security_assessment>

[7/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/checks.py, src/GE-Proton10-34/protonfixes/fix.py...
+ Reviewed src/GE-Proton10-34/protonfixes/__init__.py. Status: SAFE -- Legitimate Proton GE fix module, no malicious behavior found.
LLM auditresponse for launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher script for Proton-GE that sets up environment variables and invokes the Proton executable. It performs no network requests, no obfuscated code execution, no system file modifications outside its own declared directories (proton prefix and cache paths), and no data exfiltration. The script only creates directories via `install -d`, echoes informational messages, and runs the Proton binary with user-provided arguments. All operations are consistent with normal packaging practices for a compatibility layer launcher.
</details>
<summary>Legitimate launcher script, no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/GE-Proton10-34/protonfixes/checks.py, src/GE-Proton10-34/protonfixes/fix.py...
+ Reviewed launcher.sh. Status: SAFE -- Legitimate launcher script, no malicious behavior.
LLM auditresponse for checks.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file (`checks.py`) is a standard utility that reads a system file descriptor limit (`/proc/sys/fs/file-max`) to warn about potential performance issues with Wine's ESYNC feature. It performs no network requests, no obfuscated code, no unusual file operations, and no execution of untrusted content. The behavior is exactly what an upstream configuration helper would do—reading a kernel parameter and logging a warning if the limit is low. There is no evidence of supply-chain attack or malicious intent.
</details>
<summary>
Simple system configuration check for Wine esync.</summary>
</security_assessment>

[9/10] Reviewing src/GE-Proton10-34/protonfixes/fix.py...
+ Reviewed src/GE-Proton10-34/protonfixes/checks.py. Status: SAFE -- Simple system configuration check for Wine esync.
LLM auditresponse for fix.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard component of the `protonfixes` system, which applies game-specific workarounds for Proton. It reads environment variables (`SteamAppId`, `UMU_ID`, etc.) to identify the running game, then imports and executes a Python fix module from either a global package directory or a user-controlled local directory (`~/.config/protonfixes/localfixes/`).  

No malicious behavior is present:  
- No network requests, encoded payloads, or obfuscated commands.  
- No exfiltration of sensitive data or backdoors.  
- File operations are limited to reading the game ID, a bundled CSV database, Steam appmanifest files (based on the current working directory), and user-provided fix scripts in a well-documented local path.  
- The use of `import_module` with a module name derived from environment variables is a design choice; it does not introduce path traversal or arbitrary code execution beyond the intended user-override mechanism.  

All actions serve the legitimate purpose of applying game fixes. No evidence of a supply-chain attack or injected malicious code.
</details>
<summary>No malicious code found; standard protonfixes component.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/GE-Proton10-34/protonfixes/fix.py. Status: SAFE -- No malicious code found; standard protonfixes component.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 42,617
  Completion Tokens: 8,844
  Total Tokens: 51,461
  Total Cost: $0.005427
  Execution Time: 83.52 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-proton-ge-custom-bin.txt
Final Status: SAFE


No issues found.
