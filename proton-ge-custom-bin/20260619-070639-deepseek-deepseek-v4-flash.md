---
package: proton-ge-custom-bin
pkgver: GE_Proton10_34
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 82f23f4981a00adcd465061c6029233f5a5b1f09
prompt_tokens: 43295
completion_tokens: 8580
total_tokens: 51875
cost: 0.00544095
execution_time: 129.91
files_reviewed: 13
files_skipped: 0
date: 2026-06-19T07:06:39Z
file_verdicts:
  - file: pam_limits.conf
    status: safe
    summary: Standard PAM limits config for gaming group priority.
  - file: pleasenote.install
    status: safe
    summary: Harmless informational message about group membership.
  - file: PKGBUILD
    status: safe
    summary: Safe AUR package with no malicious behavior detected.
  - file: add-to-changelog.sh
    status: safe
    summary: Safe helper script for changelog management.
  - file: src/GE-Proton10-34/protonfixes/gamefixes-egs/default.py
    status: safe
    summary: Routine Proton fix script with no security concerns.
  - file: src/GE-Proton10-34/protonfixes/config.py
    status: safe
    summary: Benign configuration loader with no security issues.
  - file: src/GE-Proton10-34/protonfixes/gamefixes-gog/umu-1030840.py
    status: safe
    summary: Routine game compatibility registry fix, no security concerns.
  - file: src/GE-Proton10-34/protonfixes/__init__.py
    status: safe
    summary: No evidence of malicious code; standard Proton fix module.
  - file: src/GE-Proton10-34/protonfixes/checks.py
    status: safe
    summary: Diagnostic file descriptor check; no malicious content.
  - file: launcher.sh
    status: safe
    summary: Standard Proton launcher script, no malicious behavior.
  - file: src/GE-Proton10-34/protonfixes/download.py
    status: safe
    summary: Standard download helper, no suspicious operations.
  - file: src/GE-Proton10-34/protonfixes/fix.py
    status: safe
    summary: No malicious code; imports only local package or user-controlled modules.
  - file: src/GE-Proton10-34/protonfixes/engine.py
    status: safe
    summary: No malicious behavior; standard game engine detection helper.
---

Cloning https://aur.archlinux.org/proton-ge-custom-bin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-lp9afjrp...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-lp9afjrp
Analyzing proton-ge-custom-bin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-lp9afjrp) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
No executable code in the global scope; only variable assignments are present. The source array points to a pinned GitHub release tarball with valid SHA-512 checksums (not SKIP). There are no commands like `eval`, `curl`, `wget`, or obfuscated payloads that would run during sourcing or fetching. The `build()` and `package()` functions are not executed by `makepkg --nobuild --nodeps --noprepare`. Therefore, running the requested commands is safe.
</details>
<summary>No risky global code; all sources pinned and legitimate.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No risky global code; all sources pinned and legitimate.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing pleasenote.install...
[0/3] Reviewing pleasenote.install, PKGBUILD...
[0/3] Reviewing pleasenote.install, PKGBUILD, pam_limits.conf...
LLM auditresponse for pam_limits.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard PAM limits configuration that sets the nice priority for the `games` group to -11. This is a common and expected configuration for gaming-related packages, allowing processes in the `games` group to have elevated CPU scheduling priority. There is no evidence of malicious behavior, obfuscation, network requests, file exfiltration, or any code execution. The content is minimal and consistent with normal system administration practices for optimizing gaming performance.
</details>
<summary>Standard PAM limits config for gaming group priority.</summary>
</security_assessment>

[1/3] Reviewing pleasenote.install, PKGBUILD...
+ Reviewed pam_limits.conf. Status: SAFE -- Standard PAM limits config for gaming group priority.
LLM auditresponse for pleasenote.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `pleasenote.install` contains only a `post_install()` and `post_upgrade()` function that print a message advising users to add themselves to the `games` group so that Wine/proton can adjust process niceness. There are no network requests, file modifications, obfuscated commands, or any other suspicious operations. The content is entirely benign and standard for Arch Linux package installation scripts.
</details>
<summary>Harmless informational message about group membership.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed pleasenote.install. Status: SAFE -- Harmless informational message about group membership.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a community-maintained Proton distribution. The source tarball is downloaded from the official GitHub releases of the upstream project (GloriousEggroll/proton-ge-custom) using a pinned URL with a checksum (sha512sums are all provided and not SKIP). All operations in `build()` and `package()` are routine: applying patches via `sed`, stripping unneeded symbols from bundled Wine binaries, moving files, and installing configuration files. No unexpected network fetches, obfuscation, or dangerous commands (eval, base64, curl|bash) are present.

The installation of PAM limits (`/etc/security/limits.d/10-games.conf`) and a modules-load config (`/usr/lib/modules-load.d/proton-ge-custom-bin.conf`) are normal for a gaming compatibility tool and do not indicate malice. The user_settings.py config file is set to group `50` (typically `games`) with `0775` permissions, which is acceptable for a runtime configuration that Steam/Proton may modify. There are no red flags such as data exfiltration, backdoors, or execution of untrusted remote code.
</details>
<summary>Safe AUR package with no malicious behavior detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Safe AUR package with no malicious behavior detected.
Reviewed all required files.
Deciding which files to review next...
Note: 1043 files available for selection; offering the 50 highest-priority to the model. 710 lower-priority file(s) were not offered.
LLM response for file selection:
launcher.sh
add-to-changelog.sh
src/GE-Proton10-34/protonfixes/download.py
src/GE-Proton10-34/protonfixes/engine.py
src/GE-Proton10-34/protonfixes/fix.py
src/GE-Proton10-34/protonfixes/checks.py
src/GE-Proton10-34/protonfixes/config.py
src/GE-Proton10-34/protonfixes/__init__.py
src/GE-Proton10-34/protonfixes/gamefixes-egs/default.py
src/GE-Proton10-34/protonfixes/gamefixes-gog/umu-1030840.py
Decided to review 10 additional files: launcher.sh, add-to-changelog.sh, src/GE-Proton10-34/protonfixes/download.py, src/GE-Proton10-34/protonfixes/engine.py, src/GE-Proton10-34/protonfixes/fix.py, src/GE-Proton10-34/protonfixes/checks.py, src/GE-Proton10-34/protonfixes/config.py, src/GE-Proton10-34/protonfixes/__init__.py, src/GE-Proton10-34/protonfixes/gamefixes-egs/default.py, src/GE-Proton10-34/protonfixes/gamefixes-gog/umu-1030840.py
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing launcher.sh...
[0/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/download.py...
[0/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/download.py, add-to-changelog.sh...
[0/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/download.py, add-to-changelog.sh, src/GE-Proton10-34/protonfixes/engine.py...
[0/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/download.py, add-to-changelog.sh, src/GE-Proton10-34/protonfixes/engine.py, src/GE-Proton10-34/protonfixes/checks.py...
[0/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/download.py, add-to-changelog.sh, src/GE-Proton10-34/protonfixes/engine.py, src/GE-Proton10-34/protonfixes/checks.py, src/GE-Proton10-34/protonfixes/config.py...
[0/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/download.py, add-to-changelog.sh, src/GE-Proton10-34/protonfixes/engine.py, src/GE-Proton10-34/protonfixes/checks.py, src/GE-Proton10-34/protonfixes/config.py, src/GE-Proton10-34/protonfixes/fix.py...
[0/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/download.py, add-to-changelog.sh, src/GE-Proton10-34/protonfixes/engine.py, src/GE-Proton10-34/protonfixes/checks.py, src/GE-Proton10-34/protonfixes/config.py, src/GE-Proton10-34/protonfixes/fix.py, src/GE-Proton10-34/protonfixes/__init__.py...
[0/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/download.py, add-to-changelog.sh, src/GE-Proton10-34/protonfixes/engine.py, src/GE-Proton10-34/protonfixes/checks.py, src/GE-Proton10-34/protonfixes/config.py, src/GE-Proton10-34/protonfixes/fix.py, src/GE-Proton10-34/protonfixes/__init__.py, src/GE-Proton10-34/protonfixes/gamefixes-gog/umu-1030840.py...
[0/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/download.py, add-to-changelog.sh, src/GE-Proton10-34/protonfixes/engine.py, src/GE-Proton10-34/protonfixes/checks.py, src/GE-Proton10-34/protonfixes/config.py, src/GE-Proton10-34/protonfixes/fix.py, src/GE-Proton10-34/protonfixes/__init__.py, src/GE-Proton10-34/protonfixes/gamefixes-gog/umu-1030840.py, src/GE-Proton10-34/protonfixes/gamefixes-egs/default.py...
LLM auditresponse for add-to-changelog.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a maintainer helper that fetches release notes from the official GitHub API for the GloriousEggroll/proton-ge-custom repository and prepends them to `changelog.md`. It uses `curl` to access the public GitHub API and `jq` to parse the JSON response. No suspicious network destinations, no execution of fetched content, no obfuscated code, and no exfiltration of system data. The `eval` of `_pkgver` is a normal pattern for expanding PKGBUILD variables and does not introduce risk beyond what is already present in the user-controlled PKGBUILD. The behavior is entirely within expected AUR packaging practice.
</details>
<summary>Safe helper script for changelog management.</summary>
</security_assessment>

[1/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/download.py, src/GE-Proton10-34/protonfixes/engine.py, src/GE-Proton10-34/protonfixes/checks.py, src/GE-Proton10-34/protonfixes/config.py, src/GE-Proton10-34/protonfixes/fix.py, src/GE-Proton10-34/protonfixes/__init__.py, src/GE-Proton10-34/protonfixes/gamefixes-gog/umu-1030840.py, src/GE-Proton10-34/protonfixes/gamefixes-egs/default.py...
+ Reviewed add-to-changelog.sh. Status: SAFE -- Safe helper script for changelog management.
LLM auditresponse for default.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `default.py` contains a simple script that sets up the environment for Epic Games Store (EGS) games under Proton. It uses the `protonfixes.util` module to install the Visual C++ 2022 runtime and add a registry key for the Epic Games Launcher. These actions are standard and expected for the package's purpose of running EGS games. There are no network requests, obfuscated code, dangerous commands, or any behavior that deviates from normal packaging practices. The script is entirely benign and performs only routine setup tasks.
</details>
<summary>Routine Proton fix script with no security concerns.</summary>
</security_assessment>

[2/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/download.py, src/GE-Proton10-34/protonfixes/engine.py, src/GE-Proton10-34/protonfixes/checks.py, src/GE-Proton10-34/protonfixes/config.py, src/GE-Proton10-34/protonfixes/fix.py, src/GE-Proton10-34/protonfixes/__init__.py, src/GE-Proton10-34/protonfixes/gamefixes-gog/umu-1030840.py...
+ Reviewed src/GE-Proton10-34/protonfixes/gamefixes-egs/default.py. Status: SAFE -- Routine Proton fix script with no security concerns.
LLM auditresponse for config.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Python configuration loader for the `protonfixes` component of the `umu-protonfix` project. It reads a config.ini file from `~/.config/protonfixes/`, accesses environment variables via `os.getenv`, and defines dataclasses for configuration sections. No network requests, obfuscated code, dangerous command execution, or unexpected file operations are present. The code follows normal packaging and application configuration practices. There is no evidence of malicious or supply-chain attack behavior.
</details>
<summary>
Benign configuration loader with no security issues.</summary>
</security_assessment>

[3/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/download.py, src/GE-Proton10-34/protonfixes/engine.py, src/GE-Proton10-34/protonfixes/checks.py, src/GE-Proton10-34/protonfixes/fix.py, src/GE-Proton10-34/protonfixes/__init__.py, src/GE-Proton10-34/protonfixes/gamefixes-gog/umu-1030840.py...
+ Reviewed src/GE-Proton10-34/protonfixes/config.py. Status: SAFE -- Benign configuration loader with no security issues.
LLM auditresponse for umu-1030840.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard game fix for Mafia: Definitive Edition using the protonfixes framework. It adds a single registry key under `HKLM\Software\Wow6432Node\GOG.com\GalaxyClient` via `util.regedit_add()`. This is a common and expected operation for Proton GE custom fixes to improve game compatibility (e.g., making the game detect the GOG Galaxy client). There is no obfuscated code, no network requests, no file system manipulation outside registry, and no execution of untrusted content. The behavior is purely a local registry modification for compatibility purposes. This is not a supply-chain attack; it is a legitimate upstream application fix.
</details>
<summary>Routine game compatibility registry fix, no security concerns.</summary>
</security_assessment>

[4/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/download.py, src/GE-Proton10-34/protonfixes/engine.py, src/GE-Proton10-34/protonfixes/checks.py, src/GE-Proton10-34/protonfixes/fix.py, src/GE-Proton10-34/protonfixes/__init__.py...
+ Reviewed src/GE-Proton10-34/protonfixes/gamefixes-gog/umu-1030840.py. Status: SAFE -- Routine game compatibility registry fix, no security concerns.
LLM auditresponse for __init__.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `__init__.py` is a standard entry point for the protonfixes module, which is part of the Proton GE custom compatibility layer for Steam games. The code sets up environment variables, adds vendor and library paths, and runs game-specific fixes. There are no network requests, obfuscated code, or attempts to exfiltrate data. All modifications are limited to environment variables and local files within the package directory, which is expected for this type of software. The use of `sys.path.insert` to include a `_vendor` directory is normal for bundling dependencies. No malicious behavior is present.
</details>
<summary>No evidence of malicious code; standard Proton fix module.</summary>
</security_assessment>

[5/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/download.py, src/GE-Proton10-34/protonfixes/engine.py, src/GE-Proton10-34/protonfixes/checks.py, src/GE-Proton10-34/protonfixes/fix.py...
+ Reviewed src/GE-Proton10-34/protonfixes/__init__.py. Status: SAFE -- No evidence of malicious code; standard Proton fix module.
LLM auditresponse for checks.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `checks.py` contains a simple diagnostic function that reads the system file `/proc/sys/fs/file-max` to check the file descriptor limit, and logs a warning if it is below 8192. This is a standard health check for ESYNC compatibility in Proton/Wine. No network requests, no downloads, no execution of external code, no obfuscation, no system modifications beyond reading a proc file. It is entirely benign and consistent with normal packaging practices.
</details>
<summary>Diagnostic file descriptor check; no malicious content.</summary>
</security_assessment>

[6/10] Reviewing launcher.sh, src/GE-Proton10-34/protonfixes/download.py, src/GE-Proton10-34/protonfixes/engine.py, src/GE-Proton10-34/protonfixes/fix.py...
+ Reviewed src/GE-Proton10-34/protonfixes/checks.py. Status: SAFE -- Diagnostic file descriptor check; no malicious content.
LLM auditresponse for launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher for running Proton (Wine-based compatibility layer) outside of Steam. It sets environment variables (prefix path, DXVK cache path, Steam paths) and then executes the Proton binary. All operations are confined to user home directories under XDG_DATA_HOME and XDG_CACHE_HOME. There are no network requests, no obfuscated code, no dangerous commands like `eval`, `curl`, `wget`, or `base64`. The script creates directories with `install -d` only when needed, which is normal packaging behavior. The placeholder `_proton=echo` is clearly intended to be overridden by the actual Proton executable path. No evidence of malicious or supply-chain attack behavior.
</details>
<summary>Standard Proton launcher script, no malicious behavior.</summary>
</security_assessment>

[7/10] Reviewing src/GE-Proton10-34/protonfixes/download.py, src/GE-Proton10-34/protonfixes/engine.py, src/GE-Proton10-34/protonfixes/fix.py...
+ Reviewed launcher.sh. Status: SAFE -- Standard Proton launcher script, no malicious behavior.
LLM auditresponse for download.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `download.py` provides two helper functions: `gdrive_download` (downloads a file from Google Drive given a file ID) and `sha1sum` (computes a SHA1 hash of a file). The `gdrive_download` function uses a hardcoded Google Drive URL and standard Python `urllib` to download content. It does **not** execute the downloaded file—it simply writes it to disk. There is no obfuscation, no use of `eval`, `base64`, `curl`, `wget`, or any mechanism to run arbitrary code. The code does not exfiltrate any data, access sensitive system files, or connect to unexpected hosts. It is consistent with the stated purpose of the package (fetching Proton GE releases from Google Drive). No malicious behavior is evident.
</details>
<summary>Standard download helper, no suspicious operations.</summary>
</security_assessment>

[8/10] Reviewing src/GE-Proton10-34/protonfixes/engine.py, src/GE-Proton10-34/protonfixes/fix.py...
+ Reviewed src/GE-Proton10-34/protonfixes/download.py. Status: SAFE -- Standard download helper, no suspicious operations.
LLM auditresponse for fix.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is part of the `protonfixes` system shipped with Proton-GE, a compatibility tool for running Windows games on Linux. Its sole purpose is to locate and execute per-game fix scripts based on the game's ID (from environment variables like `SteamAppId` or `UMU_ID`).  

The code reads a locally-shipped CSV database and Steam app manifest files for game names, then dynamically imports Python modules from the package's own `protonfixes.gamefixes-*` directories or from the user's `~/.config/protonfixes/localfixes/` directory. All modules are loaded via `importlib.import_module` with a module name constructed from the numeric game ID or store identifier — **no arbitrary user input is used as a standalone script, no `eval`, no `exec`, and no network requests are made**.  

The local-fix feature is a normal user-controlled extension point; the file merely adds `~/.config/protonfixes` to `sys.path` and loads any `.py` file the user places there. This and all other operations (reading environment variables, iterating Steam manifests, calling `run_checks`) are standard for the application's stated functionality and do not constitute a supply-chain attack.
</details>
<summary>No malicious code; imports only local package or user-controlled modules.</summary>
</security_assessment>

[9/10] Reviewing src/GE-Proton10-34/protonfixes/engine.py...
+ Reviewed src/GE-Proton10-34/protonfixes/fix.py. Status: SAFE -- No malicious code; imports only local package or user-controlled modules.
LLM auditresponse for engine.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `engine.py` is a straightforward Python module that detects game engines (Unity, RAGE, Dunia 2, Unreal Engine 3/4) by examining the directory structure in the current working directory. It then provides methods to add command-line arguments to `sys.argv` for known engine-specific options (e.g., `-nosplash`, `-windowed`, `-screen-width`). There are no network requests, obfuscated code, or execution of external binaries. The only operations are filesystem checks and string manipulation. This code is consistent with a legitimate game-launch helper utility for the Proton GE custom compatibility tool.
</details>
<summary>No malicious behavior; standard game engine detection helper.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/GE-Proton10-34/protonfixes/engine.py. Status: SAFE -- No malicious behavior; standard game engine detection helper.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 43,295
  Completion Tokens: 8,580
  Total Tokens: 51,875
  Total Cost: $0.005441
  Execution Time: 129.91 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-proton-ge-custom-bin.txt
Final Status: SAFE


No issues found.
