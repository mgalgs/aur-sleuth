---
package: proton-ge-custom-bin
pkgver: GE_Proton11_5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: ab8f04a045309f11c3e319d8a061c88f7bc8df51
prompt_tokens: 30922
completion_tokens: 6031
total_tokens: 36953
cost: 0.00246126384
execution_time: 149.32
files_reviewed: 7
files_skipped: 0
files_unauditable: 5115
unpinned_sources: 0
date: 2026-08-22T23:02:42Z
file_verdicts:
  - file: pam_limits.conf
    status: safe
    summary: Standard PAM limit for gaming priority; no malice found.
  - file: PKGBUILD
    status: safe
    summary: No malicious code detected; standard packaging practices.
  - file: pleasenote.install
    status: safe
    summary: Informational script, no security concerns.
  - file: src/GE-Proton11-5-x86_64/protonfixes/engine.py
    status: safe
    summary: Safe game engine detection utility, no malicious behavior found.
  - file: launcher.sh
    status: safe
    summary: Standard launcher script – no malicious behavior found.
  - file: src/GE-Proton11-5-x86_64/protonfixes/fix.py
    status: safe
    summary: Standard game-fix loader with no malicious behavior.
  - file: src/GE-Proton11-5-x86_64/protonfixes/download.py
    status: safe
    summary: Standard download utility; no malicious behavior detected.
---

Cloning https://aur.archlinux.org/proton-ge-custom-bin.git...
Cloned proton-ge-custom-bin
Analyzing proton-ge-custom-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no top-level command execution, no command substitutions, and no `pkgver()` function. All global code is limited to static variable assignments and array definitions. The source URLs point to the official upstream GitHub releases. No suspicious network destinations, obfuscated code, or executable payloads are present in the scope that executes during `makepkg --nobuild --nodeps --noprepare`. Checksums are provided (not SKIP) for all sources. The narrow gate only considers code executed during sourcing and source fetching; `build()` and `package()` are out of scope and will be audited separately.
</details>
<summary>No malicious code in sourcing/fetching scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in sourcing/fetching scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, pleasenote.install...
[0/3] Reviewing PKGBUILD, pleasenote.install, pam_limits.conf...
LLM auditresponse for pam_limits.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a PAM limits configuration snippet that grants the `games` group a `nice` priority of `-11`. Lowering the nice value gives processes higher scheduling priority, which is a common and expected optimization for gaming packages on Linux to improve performance. The configuration is straightforward, with no encoding, network access, or any other suspicious behavior. It is a standard system resource adjustment and does not constitute any form of supply-chain attack.
</details>
<summary>Standard PAM limit for gaming priority; no malice found.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, pleasenote.install...
+ Reviewed pam_limits.conf. Status: SAFE -- Standard PAM limit for gaming priority; no malice found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. All sources are fetched from the official GitHub releases of GloriousEggroll/proton-ge-custom over HTTPS. Checksums (sha512sums) are provided for the tarball and all auxiliary files, ensuring integrity. The build and install functions perform only routine operations: patching a launcher script path, adjusting a compatibility tool description, stripping Wine binaries, and installing files into the package directory. There are no suspicious network requests, obfuscated code, dangerous commands (eval, curl|bash, etc.), or any attempts to exfiltrate data. The use of PAM limits and modules-load configuration is normal for a gaming-related Proton package intended to adjust system resource limits and load kernel modules. No evidence of supply-chain injection or malicious behavior was found.
</details>
<summary>No malicious code detected; standard packaging practices.</summary>
</security_assessment>

[2/3] Reviewing pleasenote.install...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious code detected; standard packaging practices.
LLM auditresponse for pleasenote.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `pleasenote.install` is a standard Arch Linux package install script that simply outputs informational messages during post-installation and post-upgrade. It does not execute any dangerous commands (no curl, wget, eval, base64, exec, or any file/modification operations). The only action is echoing text to the user about adding themselves to the `games` group for Wine niceness adjustments. This is normal upstream advisory behavior and contains no evidence of malicious activity.
</details>
<summary>Informational script, no security concerns.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed pleasenote.install. Status: SAFE -- Informational script, no security concerns.
Reviewed all required files.
Deciding which files to review next...
Note: 5115 compiled/archived file(s) cannot be audited as text and were not reviewed (GE-Proton11-5_1-x86_64.tar.gz, src/GE-Proton11-5-x86_64/files/lib/x86_64-linux-gnu/libpiper_phonemize.so.1.2.0, src/GE-Proton11-5-x86_64/files/lib/x86_64-linux-gnu/libbz2.so and 5112 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 1007 files available for selection; offering the 50 highest-priority to the model. 667 lower-priority file(s) were not offered.
LLM response for file selection:
launcher.sh
src/GE-Proton11-5-x86_64/protonfixes/download.py
src/GE-Proton11-5-x86_64/protonfixes/engine.py
src/GE-Proton11-5-x86_64/protonfixes/fix.py
Decided to review 4 additional files: launcher.sh, src/GE-Proton11-5-x86_64/protonfixes/download.py, src/GE-Proton11-5-x86_64/protonfixes/engine.py, src/GE-Proton11-5-x86_64/protonfixes/fix.py
Reviewing additional files...
Reviewing additional files...
[0/4] Reviewing launcher.sh...
[0/4] Reviewing launcher.sh, src/GE-Proton11-5-x86_64/protonfixes/engine.py...
[0/4] Reviewing launcher.sh, src/GE-Proton11-5-x86_64/protonfixes/engine.py, src/GE-Proton11-5-x86_64/protonfixes/download.py...
LLM auditresponse for engine.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `engine.py` implements a game engine detection and configuration module. It reads the current working directory (via `os.environ['PWD']`) and checks for specific subdirectory structures to identify engines like Unity, RAGE, Dunia 2, etc. It then provides methods to set command-line arguments (e.g., `-nosplash`, `-windowed`, `-screen-width`) by appending to `sys.argv`.  

There are no network requests, no use of `eval`, `base64`, `curl`, `wget`, or any other dangerous functions. No files are written; no environment variables (other than `PWD`) are read. The code is transparent, well-commented, and performs only local filesystem inspection and argument manipulation. This is consistent with a helper tool for game configuration (likely part of a Proton/Wine wrapper or launcher).  

The only potential minor concern is the reliance on `os.environ['PWD']` rather than `os.getcwd()`, but this is a portability detail, not a security issue. No malicious behavior is present.
</details>
<summary>Safe game engine detection utility, no malicious behavior found.</summary>
</security_assessment>

[0/4] Reviewing launcher.sh, src/GE-Proton11-5-x86_64/protonfixes/engine.py, src/GE-Proton11-5-x86_64/protonfixes/download.py, src/GE-Proton11-5-x86_64/protonfixes/fix.py...
[1/4] Reviewing launcher.sh, src/GE-Proton11-5-x86_64/protonfixes/download.py, src/GE-Proton11-5-x86_64/protonfixes/fix.py...
+ Reviewed src/GE-Proton11-5-x86_64/protonfixes/engine.py. Status: SAFE -- Safe game engine detection utility, no malicious behavior found.
LLM auditresponse for launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher script for the Proton GE compatibility layer. It sets up required environment variables (STEAM_COMPAT_DATA_PATH, DXVK_STATE_CACHE_PATH, etc.) with sensible defaults, creates directories if needed, and then executes the Proton binary with the provided arguments. There is no obfuscation, no network requests, no code injection, and no exfiltration of data. The script does not download or execute any external content. All operations are consistent with the expected functionality of a standalone Proton launcher. The placeholder `_proton=echo` is a default that will be overridden in the actual package. No malicious behavior is present.
</details>
<summary>Standard launcher script – no malicious behavior found.</summary>
</security_assessment>

[2/4] Reviewing src/GE-Proton11-5-x86_64/protonfixes/download.py, src/GE-Proton11-5-x86_64/protonfixes/fix.py...
+ Reviewed launcher.sh. Status: SAFE -- Standard launcher script – no malicious behavior found.
LLM auditresponse for fix.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard component of the Proton GE compatibility tool (protonfixes) that dynamically loads per-game fixes based on the game ID detected from environment variables (SteamAppId, UMU_ID, etc.). The code performs the following expected operations:

- Reads environment variables to determine which game is running.
- Reads a local CSV database shipped with the package to look up game titles.
- Imports Python modules named after the game ID from either the built-in gamefixes directories or a user-owned local overrides directory (`~/.config/protonfixes/localfixes/`). The local overrides directory is a deliberate user-facing feature, not an attack vector introduced by the AUR package.
- The dynamic import (`importlib.import_module`) constructs module names from the game ID (numeric) and a store identifier that is mapped from a fixed set of known store names (e.g., `steam`, `egs`, `gog`). An attacker-controlled `STORE` environment variable that does not match the mapping defaults to `umu`, so no arbitrary module path injection is possible.

There is no network access, no obfuscated code, no use of dangerous functions like `eval`, `base64`, `curl`, or `wget`, and no attempt to read or exfiltrate system files outside of the Steam library or configuration directories. All file operations are confined to the Proton environment and the user's own config directory. The code is consistent with its intended purpose and follows standard packaging practices for a Proton fix framework.
</details>
<summary>Standard game-fix loader with no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing src/GE-Proton11-5-x86_64/protonfixes/download.py...
+ Reviewed src/GE-Proton11-5-x86_64/protonfixes/fix.py. Status: SAFE -- Standard game-fix loader with no malicious behavior.
LLM auditresponse for download.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a straightforward utility module for downloading files from Google Drive and computing SHA-1 checksums. It uses standard Python libraries (`urllib`, `hashlib`, `http.cookiejar`) with no obfuscation, dangerous system commands, or unexpected network destinations. The `gdrive_download` function handles Google Drive's download-warning cookie and saves the file to a user-provided path. There is no evidence of exfiltration, backdoor installation, or injection of malicious code. All operations are consistent with the stated purpose of downloading files from a legitimate file-hosting provider.
</details>
<summary>Standard download utility; no malicious behavior detected.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed src/GE-Proton11-5-x86_64/protonfixes/download.py. Status: SAFE -- Standard download utility; no malicious behavior detected.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 30,922
  Completion Tokens: 6,031
  Total Tokens: 36,953
  Total Cost: $0.002461
  Execution Time: 149.32 seconds

Final Status: SAFE


No issues found.
