---
package: azerothcore-wotlk-git
pkgver: r19244.ca8e6d78de
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 56580919ea5cd225cb34031d0932798021e4a0d8
prompt_tokens: 36151
completion_tokens: 8365
total_tokens: 44516
cost: 0.0030353694
execution_time: 485.25
files_reviewed: 9
files_skipped: 0
files_unauditable: 9
unpinned_sources: 0
date: 2026-08-24T07:30:54Z
file_verdicts:
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Standard AUR install script, no malware indicators.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious code found.
  - file: acore_mod
    status: safe
    summary: Legitimate module helper script; no malicious behavior found.
  - file: jemalloc.patch
    status: safe
    summary: Standard C++ compatibility patch, no security issues.
  - file: acore-auth-server.service
    status: safe
    summary: Standard systemd service file, no security issues.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd service file, no malicious content.
  - file: src/azerothcore-wotlk/PreLoad.cmake
    status: safe
    summary: Empty placeholder file, no security issues.
  - file: src/azerothcore-wotlk/acore.sh
    status: safe
    summary: Benign entry point script, no malicious indicators.
  - file: src/azerothcore-wotlk/CMakeLists.txt
    status: safe
    summary: Standard CMake build file, no malicious patterns.
---

Cloning https://aur.archlinux.org/azerothcore-wotlk-git.git...
Cloned azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
No malicious code is present in the global scope, source array, or `pkgver()` function that would execute during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The `source` array consists of a standard git+https clone of the official upstream repository and several local auxiliary files (service units, scripts) that are part of the AUR package itself. The `pkgver()` function only runs safe `git` commands to derive a version string. All potentially dangerous operations (MariaDB checks, patching, building, installation) are confined to the `prepare()`, `build()`, and `package()` functions, which are not executed during this initial source-fetching step.
</details>
<evidence>
</evidence>
<summary>No malicious code executed during source fetching.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executed during source fetching.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, azerothcore-wotlk-git.install...
[0/3] Reviewing PKGBUILD, azerothcore-wotlk-git.install, acore_mod...
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script performs standard installation tasks for an AUR package: creating an unprivileged system user and group, copying default configuration files from `.dist` templates, and displaying post-install instructions. There are no network requests, obfuscated code, or attempts to exfiltrate data or execute untrusted content. The use of `sudo` inside the post_install hook is unnecessary (since the script already runs as root) but not malicious. The `sed` commands modify the package's own configuration files to set a static source directory path. The pre_remove hook cleanly stops and disables systemd services. All operations are consistent with legitimate AUR packaging practices and do not indicate a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard AUR install script, no malware indicators.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, acore_mod...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Standard AUR install script, no malware indicators.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch User Repository (AUR) package for building `azerothcore-wotlk-git` from the upstream GitHub repository.  
All operations are expected for a `-git` package:  
- The source is the project's own git repository (no unexpected network destinations).  
- `sha512sums` for the git source is `SKIP` – required for VCS packages and not a security concern.  
- Build and install steps use standard CMake, `make`, `install`, and file copying into `$pkgdir`.  
- No obfuscated code, `eval`, base64, `curl|bash`, or other supply-chain red flags are present.  
- A minor issue: the variable `${startdir}` in the patch command is not defined in makepkg (likely a bug – probably intended to be `$srcdir` or the directory containing the PKGBUILD). This would cause a build failure, but it is **not** malicious.  

No evidence of data exfiltration, remote code execution, backdoors, or credential theft exists.  
The package follows normal AUR packaging practices for a game server.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious code found.</summary>
</security_assessment>

[2/3] Reviewing acore_mod...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious code found.
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a helper for compiling and deploying modules for azerothcore-wotlk. It locates the build directory, creates symlinks for SQL and C++ modules from a user dropzone, copies configuration templates, and runs `makepkg -edfi` to rebuild and install the package. All operations are local and within the expected scope of the package's development workflow. There are no network requests, obfuscated code, data exfiltration, or execution of untrusted content. The use of `sudo` and file operations on system paths is standard for an AUR helper managing system-wide configuration and build artifacts.
</details>
<evidence></evidence>
<summary>Legitimate module helper script; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed acore_mod. Status: SAFE -- Legitimate module helper script; no malicious behavior found.
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
Decided to review 6 additional files: acore-auth-server.service, acore-world-server.service, jemalloc.patch, src/azerothcore-wotlk/CMakeLists.txt, src/azerothcore-wotlk/PreLoad.cmake, src/azerothcore-wotlk/acore.sh
Reviewing additional files...
Reviewing additional files...
[0/6] Reviewing acore-auth-server.service...
[0/6] Reviewing acore-auth-server.service, jemalloc.patch...
[0/6] Reviewing acore-auth-server.service, jemalloc.patch, acore-world-server.service...
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard C++ compatibility patch that replaces a non-standard internal function call (`std::__throw_bad_alloc()`) with the standard C++ equivalent (`throw std::bad_alloc()`). The change is minimal, affects only one line, and does not involve any network requests, file operations, obfuscated code, or execution of untrusted content. It is a benign and expected packaging fix for supporting different compiler versions or standard library implementations.
</details>
<evidence></evidence>
<summary>Standard C++ compatibility patch, no security issues.</summary>
</security_assessment>

[1/6] Reviewing acore-auth-server.service, acore-world-server.service...
+ Reviewed jemalloc.patch. Status: SAFE -- Standard C++ compatibility patch, no security issues.
[1/6] Reviewing acore-auth-server.service, acore-world-server.service, src/azerothcore-wotlk/CMakeLists.txt...
LLM auditresponse for acore-auth-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the AzerothCore MMORPG authentication server. It defines a simple service that runs `/usr/bin/authserver` after network.target, with restart on failure, and runs under the `azerothcore` user and `acore-admin` group. There are no suspicious commands, network requests, file operations, or any deviations from expected packaging practices. The service configuration is conventional and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[1/6] Reviewing acore-auth-server.service, acore-world-server.service, src/azerothcore-wotlk/CMakeLists.txt, src/azerothcore-wotlk/PreLoad.cmake...
[2/6] Reviewing acore-world-server.service, src/azerothcore-wotlk/CMakeLists.txt, src/azerothcore-wotlk/PreLoad.cmake...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard systemd service file, no security issues.
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `acore-world-server.service` is a standard systemd service unit file for the AzerothCore MMORPG world server. It defines a simple service that executes `/usr/bin/worldserver` as the user `azerothcore` and group `acore-admin`, with a restart policy of `on-failure`. The unit includes standard dependencies (`network.target`, `acore-auth-server.service`) and installation target (`multi-user.target`). There are no suspicious commands, network requests, file operations, encoded content, or any deviation from normal packaging practices. The file contains no malicious or obfuscated code.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no malicious content.</summary>
</security_assessment>

[2/6] Reviewing acore-world-server.service, src/azerothcore-wotlk/CMakeLists.txt, src/azerothcore-wotlk/PreLoad.cmake, src/azerothcore-wotlk/acore.sh...
[3/6] Reviewing src/azerothcore-wotlk/CMakeLists.txt, src/azerothcore-wotlk/PreLoad.cmake, src/azerothcore-wotlk/acore.sh...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd service file, no malicious content.
LLM auditresponse for PreLoad.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `PreLoad.cmake` contains only comments and commented-out CMake code. There are no executable commands, no network operations, no file modifications, and no obfuscation. It is a placeholder file with no functional impact on the build process. No security concerns.
</details>
<evidence>
</evidence>
<summary>Empty placeholder file, no security issues.</summary>
</security_assessment>

[4/6] Reviewing src/azerothcore-wotlk/CMakeLists.txt, src/azerothcore-wotlk/acore.sh...
+ Reviewed src/azerothcore-wotlk/PreLoad.cmake. Status: SAFE -- Empty placeholder file, no security issues.
LLM auditresponse for acore.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `acore.sh` is a straightforward shell script that sets a `CUR_PATH` variable based on its own location and then sources another script (`apps/installer/main.sh`) from the same directory. There are no network requests, no obfuscated code, no file modifications outside the package scope, and no commands that could be considered malicious. The optional `set -e` behavior based on `$WITH_ERRORS` is a common pattern for controlling error handling. This script is consistent with standard usage as a project entry point.
</details>
<evidence></evidence>
<summary>Benign entry point script, no malicious indicators.</summary>
</security_assessment>

[5/6] Reviewing src/azerothcore-wotlk/CMakeLists.txt...
+ Reviewed src/azerothcore-wotlk/acore.sh. Status: SAFE -- Benign entry point script, no malicious indicators.
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMakeLists.txt is a standard build configuration file for the AzerothCore project. It uses typical CMake commands to set up the build environment, include project-specific modules, handle optional dependencies, and integrate Google Test for unit testing. There is no obfuscated code, no direct invocation of dangerous commands like curl or wget, no unexpected file operations or exfiltration attempts, and no deviation from standard CMake-based project practices. The file is part of the upstream source and does not contain any injected malicious code. The fetching of Google Test is handled by a custom cmake function defined within the project, which is normal for test dependencies and not a supply-chain attack vector in itself.
</details>
<evidence></evidence>
<summary>Standard CMake build file, no malicious patterns.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed src/azerothcore-wotlk/CMakeLists.txt. Status: SAFE -- Standard CMake build file, no malicious patterns.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,151
  Completion Tokens: 8,365
  Total Tokens: 44,516
  Total Cost: $0.003035
  Execution Time: 485.25 seconds

Final Status: SAFE


No issues found.
