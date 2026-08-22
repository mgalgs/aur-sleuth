---
package: azerothcore-wotlk-git
pkgver: r19241.b506a6eb09
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: ab8f04a045309f11c3e319d8a061c88f7bc8df51
prompt_tokens: 49216
completion_tokens: 9762
total_tokens: 58978
cost: 0.00393605240
execution_time: 528.09
files_reviewed: 13
files_skipped: 0
files_unauditable: 9
unpinned_sources: 0
date: 2026-08-22T23:41:18Z
file_verdicts:
  - file: acore_mod
    status: safe
    summary: Legitimate module compilation helper script, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no signs of supply-chain attack.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Standard AUR install script; no malicious behavior detected.
  - file: acore-auth-server.service
    status: safe
    summary: Standard service unit file, no security concerns.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd service file, no malicious content.
  - file: jemalloc.patch
    status: safe
    summary: Standard compatibility patch, no security issues.
  - file: src/azerothcore-wotlk/PreLoad.cmake
    status: safe
    summary: File contains only comments; no executable code.
  - file: src/azerothcore-wotlk/CMakeLists.txt
    status: safe
    summary: Standard CMake build file, no security issues.
  - file: src/azerothcore-wotlk/acore.sh
    status: safe
    summary: Simple bootstrap script, no malicious content.
  - file: src/azerothcore-wotlk/apps/EnumUtils/enumutils_describe.py
    status: safe
    summary: Legitimate code generation tool, no malicious behavior found.
  - file: src/azerothcore-wotlk/apps/compiler/compiler.sh
    status: safe
    summary: Standard compilation helper script, no malicious content detected.
  - file: src/azerothcore-wotlk/apps/Fmt/FormatReplace.py
    status: safe
    summary: Safe formatting helper script, no malicious behavior found.
  - file: src/azerothcore-wotlk/apps/installer/main.sh
    status: safe
    summary: Standard AUR menu script, no malicious behavior detected.
---

Cloning https://aur.archlinux.org/azerothcore-wotlk-git.git...
Cloned azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope and `pkgver()` function contain only standard variable definitions, source declarations (git+https from the project's own upstream GitHub repository plus static helper files with checksums), and a simple `git rev-list`/`rev-parse` command in `pkgver()`. No dangerous commands (e.g., `curl` to unknown hosts, `eval`, `base64` decoding, data exfiltration, or file writes outside the expected build directory) are executed during the `--nobuild --nodeps --noprepare` phase. The `prepare()`, `build()`, and `package()` functions contain only routine build/install operations and are not run by the requested commands. There is no evidence of malicious code execution at this stage.
</details>
<summary>SAFE: No malicious code runs during fetch/parse phase.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- SAFE: No malicious code runs during fetch/parse phase.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing azerothcore-wotlk-git.install...
[0/3] Reviewing azerothcore-wotlk-git.install, acore_mod...
[0/3] Reviewing azerothcore-wotlk-git.install, acore_mod, PKGBUILD...
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a legitimate helper tool for the `azerothcore-wotlk-git` AUR package. It automates the process of compiling and deploying custom modules from a user-defined directory (`/usr/src/acore-modules`) into the AzerothCore server. The script performs the following standard operations:  
- Locating the build workspace (using a heuristic from the installed binary, which is unusual but not malicious).  
- Creating symlinks for SQL updates and C++ source code.  
- Deploying default configuration templates if absent.  
- Running `makepkg -edfi --noconfirm` to rebuild and install the package (with `-e` ensuring no network fetches).  
- Restarting the systemd service.  

The script does **not** exfiltrate data, execute code from external sources, download untrusted content, or contain obfuscated commands. All operations are confined to the package’s own directories and the user’s module dropzone. The use of `sudo` and `makepkg` is standard for system-level package management. No evidence of supply-chain injection or malicious intent is present. The heuristic binary scanning is a novel but benign method for workspace discovery; it does not alter system state.
</details>
<summary>Legitimate module compilation helper script, no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing azerothcore-wotlk-git.install, PKGBUILD...
+ Reviewed acore_mod. Status: SAFE -- Legitimate module compilation helper script, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS package. It clones the official AzerothCore repository from GitHub, runs a standard CMake build with clang, and installs files into standard Arch Linux paths. All source checksums are either SKIP (for the git source) or provided with SHA-512 hashes for the other files. No suspicious network requests, encoded/obfuscated commands, or unexpected file operations are present. The prepare() function includes a check for MariaDB and enforces MySQL dependencies via `pacman -Qq` checks — this is a legitimate packaging constraint, not a supply-chain attack. The only potential minor issues are: the patch file `jemalloc.patch` is not listed in the `source` array (it must be provided alongside the PKGBUILD in the AUR), and the variable `$user_dropzone` is used but not defined, which will cause the module symlink creation to be skipped. Neither of these constitutes malicious behavior.
</details>
<summary>Standard PKGBUILD, no signs of supply-chain attack.</summary>
</security_assessment>

[2/3] Reviewing azerothcore-wotlk-git.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no signs of supply-chain attack.
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install script performs standard post-installation tasks for an AUR package: creating an unprivileged system user and an administrative group, copying default configuration templates, and setting a default `SourceDirectory` path via `sed`. It also displays informational messages to the user. No network requests, no downloading of external code or binaries, no obfuscated commands, and no exfiltration of local data. The use of `sudo` inside the script is unnecessary (makepkg already runs with elevated privileges) but is a packaging quirk, not a security threat. The script’s behavior is entirely consistent with legitimate package management and poses no supply-chain risk.
</details>
<summary>Standard AUR install script; no malicious behavior detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Standard AUR install script; no malicious behavior detected.
Reviewed all required files.
Deciding which files to review next...
Note: 9 compiled/archived file(s) cannot be audited as text and were not reviewed (src/azerothcore-wotlk/deps/acore/mysql-tools/bin/dump-parser, src/azerothcore-wotlk/deps/acore/mysql-tools/bin/dump-parser-mac, src/azerothcore-wotlk/deps/acore/mysql-tools/bin/mysql.exe and 6 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 10266 files available for selection; offering the 50 highest-priority to the model. 9924 lower-priority file(s) were not offered.
LLM response for file selection:
acore-auth-server.service
acore-world-server.service
jemalloc.patch
src/azerothcore-wotlk/CMakeLists.txt
src/azerothcore-wotlk/PreLoad.cmake
src/azerothcore-wotlk/acore.sh
src/azerothcore-wotlk/apps/EnumUtils/enumutils_describe.py
src/azerothcore-wotlk/apps/Fmt/FormatReplace.py
src/azerothcore-wotlk/apps/compiler/compiler.sh
src/azerothcore-wotlk/apps/installer/main.sh
Decided to review 10 additional files: acore-auth-server.service, acore-world-server.service, jemalloc.patch, src/azerothcore-wotlk/CMakeLists.txt, src/azerothcore-wotlk/PreLoad.cmake, src/azerothcore-wotlk/acore.sh, src/azerothcore-wotlk/apps/EnumUtils/enumutils_describe.py, src/azerothcore-wotlk/apps/Fmt/FormatReplace.py, src/azerothcore-wotlk/apps/compiler/compiler.sh, src/azerothcore-wotlk/apps/installer/main.sh
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing acore-auth-server.service...
[0/10] Reviewing acore-auth-server.service, jemalloc.patch...
[0/10] Reviewing acore-auth-server.service, jemalloc.patch, acore-world-server.service...
LLM auditresponse for acore-auth-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the AzerothCore authentication server. It defines the service description, dependencies, execution user/group, working directory, and the command to run. No suspicious operations, network requests, or encoded content are present. The file is typical for packaging a server application in the AUR.
</details>
<summary>Standard service unit file, no security concerns.</summary>
</security_assessment>

[0/10] Reviewing acore-auth-server.service, jemalloc.patch, acore-world-server.service, src/azerothcore-wotlk/CMakeLists.txt...
[1/10] Reviewing jemalloc.patch, acore-world-server.service, src/azerothcore-wotlk/CMakeLists.txt...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard service unit file, no security concerns.
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the AzerothCore World Server. It defines a service that starts `/usr/bin/worldserver` as the `azerothcore` user and group `acore-admin` after network and the authentication server are available. There are no suspicious commands, network requests, obfuscated code, or any deviation from normal packaging practices. The file only contains `[Unit]`, `[Service]`, and `[Install]` sections with typical directives. No security issues detected.
</details>
<summary>Standard systemd service file, no malicious content.</summary>
</security_assessment>

[1/10] Reviewing jemalloc.patch, acore-world-server.service, src/azerothcore-wotlk/CMakeLists.txt, src/azerothcore-wotlk/PreLoad.cmake...
[2/10] Reviewing jemalloc.patch, src/azerothcore-wotlk/CMakeLists.txt, src/azerothcore-wotlk/PreLoad.cmake...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd service file, no malicious content.
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies a single line in the jemalloc dependency, changing `std::__throw_bad_alloc()` to `throw std::bad_alloc()`. This is a standard compatibility fix to avoid using an internal GCC implementation-specific function. The change is harmless and does not introduce any security concerns. No network requests, obfuscated code, or unusual operations are present.
</details>
<summary>
Standard compatibility patch, no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/azerothcore-wotlk/CMakeLists.txt, src/azerothcore-wotlk/PreLoad.cmake...
+ Reviewed jemalloc.patch. Status: SAFE -- Standard compatibility patch, no security issues.
[3/10] Reviewing src/azerothcore-wotlk/CMakeLists.txt, src/azerothcore-wotlk/PreLoad.cmake, src/azerothcore-wotlk/acore.sh...
LLM auditresponse for PreLoad.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `PreLoad.cmake` contains only comments and commented-out CMake code. No active commands, network requests, file operations, or any other potentially dangerous or malicious actions are present. It is a standard CMake pre-load file with no executable content. There is no evidence of a supply-chain attack or any security issue.
</details>
<summary>File contains only comments; no executable code.</summary>
</security_assessment>

[3/10] Reviewing src/azerothcore-wotlk/CMakeLists.txt, src/azerothcore-wotlk/PreLoad.cmake, src/azerothcore-wotlk/acore.sh, src/azerothcore-wotlk/apps/EnumUtils/enumutils_describe.py...
[4/10] Reviewing src/azerothcore-wotlk/CMakeLists.txt, src/azerothcore-wotlk/acore.sh, src/azerothcore-wotlk/apps/EnumUtils/enumutils_describe.py...
+ Reviewed src/azerothcore-wotlk/PreLoad.cmake. Status: SAFE -- File contains only comments; no executable code.
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMakeLists.txt is a standard, non-malicious build configuration file for the AzerothCore project (a World of Warcraft emulator). It sets up the CMake project, includes necessary modules, finds dependencies (MySQL, Git, Gperftools), adds subdirectories for source code and modules, and optionally configures unit testing with Google Test. There are no signs of malicious activity such as unexpected network downloads, obfuscated or encoded commands, file exfiltration, or attempts to execute untrusted code. The custom hooks (`CU_RUN_HOOK`) and includes of configuration files are part of the project’s normal build system. No behavior deviates from standard packaging practices or indicates a supply-chain attack.
</details>
<summary>Standard CMake build file, no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/azerothcore-wotlk/acore.sh, src/azerothcore-wotlk/apps/EnumUtils/enumutils_describe.py...
+ Reviewed src/azerothcore-wotlk/CMakeLists.txt. Status: SAFE -- Standard CMake build file, no security issues.
[5/10] Reviewing src/azerothcore-wotlk/acore.sh, src/azerothcore-wotlk/apps/EnumUtils/enumutils_describe.py, src/azerothcore-wotlk/apps/Fmt/FormatReplace.py...
LLM auditresponse for acore.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a minimal bootstrap script that sets the current directory and sources a main installer script from a subdirectory (`apps/installer/main.sh`). It contains no network requests, no encoded or obfuscated commands, no dangerous operations (eval, base64, curl, wget), and no file system modifications beyond what is normal for a helper script. The conditional `set -e` based on an environment variable is a standard pattern. The sourcing of a local file is expected packaging behavior. No evidence of supply-chain attack or malicious intent is present in this file.
</details>
<summary>Simple bootstrap script, no malicious content.
</summary>
</security_assessment>

[5/10] Reviewing src/azerothcore-wotlk/acore.sh, src/azerothcore-wotlk/apps/EnumUtils/enumutils_describe.py, src/azerothcore-wotlk/apps/Fmt/FormatReplace.py, src/azerothcore-wotlk/apps/compiler/compiler.sh...
[6/10] Reviewing src/azerothcore-wotlk/apps/EnumUtils/enumutils_describe.py, src/azerothcore-wotlk/apps/Fmt/FormatReplace.py, src/azerothcore-wotlk/apps/compiler/compiler.sh...
+ Reviewed src/azerothcore-wotlk/acore.sh. Status: SAFE -- Simple bootstrap script, no malicious content.
LLM auditresponse for enumutils_describe.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a code generation tool that parses C++ header files for enums annotated with specific comments and generates corresponding C++ implementation files. It operates entirely on local files, performing only file I/O (reading `.h` files and writing `.cpp` files) within the current working directory tree. There are no network requests, no execution of external commands, no use of `eval`, `exec`, `base64`, or any obfuscation. The output files are named with a fixed prefix (`enuminfo_`) and written to the same directory as the input header, which is a safe and expected pattern for a developer utility. The script does not download or execute any external code, exfiltrate data, or modify system files outside its intended scope. This is normal, benign packaging tooling.
</details>
<summary>Legitimate code generation tool, no malicious behavior found.</summary>
</security_assessment>

[6/10] Reviewing src/azerothcore-wotlk/apps/EnumUtils/enumutils_describe.py, src/azerothcore-wotlk/apps/Fmt/FormatReplace.py, src/azerothcore-wotlk/apps/compiler/compiler.sh, src/azerothcore-wotlk/apps/installer/main.sh...
[7/10] Reviewing src/azerothcore-wotlk/apps/Fmt/FormatReplace.py, src/azerothcore-wotlk/apps/compiler/compiler.sh, src/azerothcore-wotlk/apps/installer/main.sh...
+ Reviewed src/azerothcore-wotlk/apps/EnumUtils/enumutils_describe.py. Status: SAFE -- Legitimate code generation tool, no malicious behavior found.
LLM auditresponse for compiler.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard compilation helper script for the AzerothCore project. It defines a menu system to invoke build, configure, clean, and other compilation steps. It sources other scripts from the package's own directory (`includes/includes.sh` and a shared menu system). There are no network requests, obfuscated code, dangerous commands (eval, base64, curl, wget), or any operations that exfiltrate data or modify system files outside the project scope. The script adheres to normal packaging practices and does not contain any malicious or suspicious behavior.
</details>
<summary>
Standard compilation helper script, no malicious content detected.</summary>
</security_assessment>

[8/10] Reviewing src/azerothcore-wotlk/apps/Fmt/FormatReplace.py, src/azerothcore-wotlk/apps/installer/main.sh...
+ Reviewed src/azerothcore-wotlk/apps/compiler/compiler.sh. Status: SAFE -- Standard compilation helper script, no malicious content detected.
LLM auditresponse for FormatReplace.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Python formatting helper script belonging to the AzerothCore project. It recursively walks through `.cpp` and `.h` files in a `src` or `modules` directory, replacing printf-style format specifiers (e.g., `%s` &#8594; `{}`, `%02u` &#8594; `{:02}`) and renaming certain function calls (`PExecute` &#8594; `Execute`, `PQuery` &#8594; `Query`, `PAppend` &#8594; `Append`, `ABORT_MSG` &#8594; `ABORT`). It also removes `.c_str()` calls.  

The script performs only local file I/O, does not make any network requests, execute external commands, or process untrusted data from outside the package. All operations are standard text transformations for code modernization. There is no obfuscation, encoded payloads, or any behavior that deviates from legitimate upstream tooling. The working directory check (`src` or `modules`) is a safety guard to prevent accidental use outside the intended tree.  

No supply-chain attack indicators are present. This is a routine maintenance script and poses no security risk.
</details>
<summary>
Safe formatting helper script, no malicious behavior found.</summary>
</security_assessment>

[9/10] Reviewing src/azerothcore-wotlk/apps/installer/main.sh...
+ Reviewed src/azerothcore-wotlk/apps/Fmt/FormatReplace.py. Status: SAFE -- Safe formatting helper script, no malicious behavior found.
LLM auditresponse for main.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard interactive menu launcher for AzerothCore management. It sources internal libraries from the package's own directory and calls other scripts (compiler, module manager, docker, etc.) that are part of the same upstream project. There is no obfuscated code, no unexpected network requests, no base64 decoding, and no execution of untrusted external content. All operations serve the stated purpose of managing an AzerothCore game server installation. No evidence of malicious injection or supply-chain attack was found.
</details>
<summary>Standard AUR menu script, no malicious behavior detected.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/azerothcore-wotlk/apps/installer/main.sh. Status: SAFE -- Standard AUR menu script, no malicious behavior detected.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 49,216
  Completion Tokens: 9,762
  Total Tokens: 58,978
  Total Cost: $0.003936
  Execution Time: 528.09 seconds

Final Status: SAFE


No issues found.
