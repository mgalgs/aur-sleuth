---
package: gzdoom
pkgver: 4.14.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 45958
completion_tokens: 8263
total_tokens: 54221
cost: 0.00562356
execution_time: 68.84
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T10:53:03Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators
  - file: 0001-Fix-file-paths.patch
    status: safe
    summary: Patch adjusts file paths for Arch Linux packaging, no security issues.
  - file: gzdoom.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: src/gzdoom/cmake/FindSDL2.cmake
    status: safe
    summary: Standard CMake find module for SDL2 library.
  - file: src/gzdoom/cmake/FindZMusic.cmake
    status: safe
    summary: Standard CMake find module, no malicious content.
  - file: src/gzdoom/cmake/FindVPX.cmake
    status: safe
    summary: Standard CMake find module; no malicious behavior detected.
  - file: src/gzdoom/cmake/TargetArch.cmake
    status: safe
    summary: Standard CMake architecture detection module, no security issues.
  - file: src/gzdoom/auto-setup-linux.sh
    status: safe
    summary: Standard build script for GZDoom, no security issues.
  - file: src/gzdoom/CMakeLists.txt
    status: safe
    summary: Standard CMake build file, no malicious content.
  - file: src/gzdoom/AppImageBuilder.yml
    status: safe
    summary: Benign AppImage recipe; no malicious behavior detected.
  - file: src/gzdoom/cmake/precompiled_headers.cmake
    status: safe
    summary: Standard CMake precompiled header helper, no security concerns.
  - file: src/gzdoom/libraries/discordrpc/build.py
    status: safe
    summary: Standard upstream build script, no malicious code.
---

Cloning https://aur.archlinux.org/gzdoom.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-g5usx1sd...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-g5usx1sd
Analyzing gzdoom AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-g5usx1sd) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no executable code in its top-level scope besides standard variable definitions. There is no `pkgver()` function that could run code during `makepkg --printsrcinfo`. The `source` array points to the official upstream GitHub repository (`git+https://github.com/coelckers/gzdoom.git`) with a pinned tag, plus local files with verified checksums. No dangerous commands (eval, curl, wget, etc.) appear in the top-level scope. The `prepare()`, `build()`, and `package()` functions are not executed during the requested commands (`--nobuild --nodeps --noprepare`). Therefore, fetching sources and sourcing the PKGBUILD is safe.
</details>
<summary>Safe: no dangerous top-level code or pkgver() function.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe: no dangerous top-level code or pkgver() function.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, 0001-Fix-file-paths.patch...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for gzdoom, fetching the source from the official upstream GitHub repository (https://github.com/coelckers/gzdoom.git) pinned to a specific tag (`g4.14.2`). The build process uses cmake and make, with no unusual network requests, obfuscated code, or unexpected file operations. The patch file referenced (`0001-Fix-file-paths.patch`) is local to the AUR repository and its integrity is verified by a sha256sum. The only minor anomaly is the inclusion of a sha256sum for a git source, where `SKIP` is typical; however, this is a packaging hygiene concern rather than evidence of malice. No signs of malicious behavior such as data exfiltration, remote code execution, or backdoors were found.
</details>
<summary>Standard AUR PKGBUILD with no malicious indicators</summary>
</security_assessment>

[1/2] Reviewing 0001-Fix-file-paths.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators
LLM auditresponse for 0001-Fix-file-paths.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple patch file that modifies gameconfigfile.cpp to adjust default search paths for game data files. It removes some hardcoded paths like /usr/local/share/doom and replaces the last two with $PROGDIR/soundfonts and $PROGDIR/fm_banks. This is typical packaging practice for a Linux distribution to fit its filesystem layout. There are no signs of malicious activity: no network requests, obfuscation, dangerous commands, or data exfiltration. The patch only changes static path strings.
</details>
<summary>Patch adjusts file paths for Arch Linux packaging, no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed 0001-Fix-file-paths.patch. Status: SAFE -- Patch adjusts file paths for Arch Linux packaging, no security issues.
Reviewed all required files.
Deciding which files to review next...
Note: 2526 files available for selection; offering the 50 highest-priority to the model. 2313 lower-priority file(s) were not offered.
LLM response for file selection:
gzdoom.desktop
src/gzdoom/CMakeLists.txt
src/gzdoom/auto-setup-linux.sh
src/gzdoom/cmake/FindSDL2.cmake
src/gzdoom/cmake/FindVPX.cmake
src/gzdoom/cmake/FindZMusic.cmake
src/gzdoom/cmake/TargetArch.cmake
src/gzdoom/cmake/precompiled_headers.cmake
src/gzdoom/libraries/discordrpc/build.py
src/gzdoom/AppImageBuilder.yml
Decided to review 10 additional files: gzdoom.desktop, src/gzdoom/CMakeLists.txt, src/gzdoom/auto-setup-linux.sh, src/gzdoom/cmake/FindSDL2.cmake, src/gzdoom/cmake/FindVPX.cmake, src/gzdoom/cmake/FindZMusic.cmake, src/gzdoom/cmake/TargetArch.cmake, src/gzdoom/cmake/precompiled_headers.cmake, src/gzdoom/libraries/discordrpc/build.py, src/gzdoom/AppImageBuilder.yml
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/gzdoom/auto-setup-linux.sh...
[0/10] Reviewing src/gzdoom/auto-setup-linux.sh, src/gzdoom/CMakeLists.txt...
[0/10] Reviewing src/gzdoom/auto-setup-linux.sh, src/gzdoom/CMakeLists.txt, src/gzdoom/cmake/FindSDL2.cmake...
[0/10] Reviewing src/gzdoom/auto-setup-linux.sh, src/gzdoom/CMakeLists.txt, src/gzdoom/cmake/FindSDL2.cmake, gzdoom.desktop...
[0/10] Reviewing src/gzdoom/auto-setup-linux.sh, src/gzdoom/CMakeLists.txt, src/gzdoom/cmake/FindSDL2.cmake, gzdoom.desktop, src/gzdoom/cmake/FindVPX.cmake...
[0/10] Reviewing src/gzdoom/auto-setup-linux.sh, src/gzdoom/CMakeLists.txt, src/gzdoom/cmake/FindSDL2.cmake, gzdoom.desktop, src/gzdoom/cmake/FindVPX.cmake, src/gzdoom/cmake/FindZMusic.cmake...
[0/10] Reviewing src/gzdoom/auto-setup-linux.sh, src/gzdoom/CMakeLists.txt, src/gzdoom/cmake/FindSDL2.cmake, gzdoom.desktop, src/gzdoom/cmake/FindVPX.cmake, src/gzdoom/cmake/FindZMusic.cmake, src/gzdoom/cmake/TargetArch.cmake...
[0/10] Reviewing src/gzdoom/auto-setup-linux.sh, src/gzdoom/CMakeLists.txt, src/gzdoom/cmake/FindSDL2.cmake, gzdoom.desktop, src/gzdoom/cmake/FindVPX.cmake, src/gzdoom/cmake/FindZMusic.cmake, src/gzdoom/cmake/TargetArch.cmake, src/gzdoom/cmake/precompiled_headers.cmake...
[0/10] Reviewing src/gzdoom/auto-setup-linux.sh, src/gzdoom/CMakeLists.txt, src/gzdoom/cmake/FindSDL2.cmake, gzdoom.desktop, src/gzdoom/cmake/FindVPX.cmake, src/gzdoom/cmake/FindZMusic.cmake, src/gzdoom/cmake/TargetArch.cmake, src/gzdoom/cmake/precompiled_headers.cmake, src/gzdoom/libraries/discordrpc/build.py...
[0/10] Reviewing src/gzdoom/auto-setup-linux.sh, src/gzdoom/CMakeLists.txt, src/gzdoom/cmake/FindSDL2.cmake, gzdoom.desktop, src/gzdoom/cmake/FindVPX.cmake, src/gzdoom/cmake/FindZMusic.cmake, src/gzdoom/cmake/TargetArch.cmake, src/gzdoom/cmake/precompiled_headers.cmake, src/gzdoom/libraries/discordrpc/build.py, src/gzdoom/AppImageBuilder.yml...
LLM auditresponse for gzdoom.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the GZDoom application. It contains no executable code, no network requests, no obfuscation, and no unexpected file operations. The `Exec` line runs `gzdoom %F`, which is normal for launching a game that accepts WAD files. There are no signs of malicious or suspicious behavior.
</details>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/gzdoom/auto-setup-linux.sh, src/gzdoom/CMakeLists.txt, src/gzdoom/cmake/FindSDL2.cmake, src/gzdoom/cmake/FindVPX.cmake, src/gzdoom/cmake/FindZMusic.cmake, src/gzdoom/cmake/TargetArch.cmake, src/gzdoom/cmake/precompiled_headers.cmake, src/gzdoom/libraries/discordrpc/build.py, src/gzdoom/AppImageBuilder.yml...
+ Reviewed gzdoom.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for FindSDL2.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake find module for the SDL2 library. It searches for SDL2 headers and libraries in typical system paths, handles platform-specific requirements (OS X frameworks, MinGW, threads), and sets standard CMake variables. There are no network requests, no obfuscated code, no execution of arbitrary scripts, and no deviations from standard packaging practices. The file is benign.
</details>
<summary>Standard CMake find module for SDL2 library.</summary>
</security_assessment>

[2/10] Reviewing src/gzdoom/auto-setup-linux.sh, src/gzdoom/CMakeLists.txt, src/gzdoom/cmake/FindVPX.cmake, src/gzdoom/cmake/FindZMusic.cmake, src/gzdoom/cmake/TargetArch.cmake, src/gzdoom/cmake/precompiled_headers.cmake, src/gzdoom/libraries/discordrpc/build.py, src/gzdoom/AppImageBuilder.yml...
+ Reviewed src/gzdoom/cmake/FindSDL2.cmake. Status: SAFE -- Standard CMake find module for SDL2 library.
LLM auditresponse for FindZMusic.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMake find module for locating the ZMusic library. It uses only legitimate CMake commands (`find_path`, `find_library`, `mark_as_advanced`, `find_package_handle_standard_args`) to locate headers and library files in expected build directories. There are no network requests, obfuscated code, file operations outside the build tree, or any other indicators of malicious behavior. The module follows normal packaging conventions for finding a bundled dependency.
</details>
<summary>
Standard CMake find module, no malicious content.</summary>
</security_assessment>

[3/10] Reviewing src/gzdoom/auto-setup-linux.sh, src/gzdoom/CMakeLists.txt, src/gzdoom/cmake/FindVPX.cmake, src/gzdoom/cmake/TargetArch.cmake, src/gzdoom/cmake/precompiled_headers.cmake, src/gzdoom/libraries/discordrpc/build.py, src/gzdoom/AppImageBuilder.yml...
+ Reviewed src/gzdoom/cmake/FindZMusic.cmake. Status: SAFE -- Standard CMake find module, no malicious content.
LLM auditresponse for FindVPX.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake find module for the VPX library (libvpx). It uses only conventional CMake commands (`find_path`, `find_library`, `find_package_handle_standard_args`, `mark_as_advanced`) to locate the VPX headers and library on the system. There are no network requests, no code execution, no obfuscation, no file writes, and no system modifications. It does exactly what a normal packaging dependency discovery script should do. No security issues are present.
</details>
<summary>Standard CMake find module; no malicious behavior detected.</summary>
</security_assessment>

[4/10] Reviewing src/gzdoom/auto-setup-linux.sh, src/gzdoom/CMakeLists.txt, src/gzdoom/cmake/TargetArch.cmake, src/gzdoom/cmake/precompiled_headers.cmake, src/gzdoom/libraries/discordrpc/build.py, src/gzdoom/AppImageBuilder.yml...
+ Reviewed src/gzdoom/cmake/FindVPX.cmake. Status: SAFE -- Standard CMake find module; no malicious behavior detected.
LLM auditresponse for TargetArch.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMake module that detects the target CPU architecture by writing a small C file and using CMake's `try_run` to compile it, then parsing the compiler output for the architecture name. The technique is commonly used (based on Qt's processor detection code). No network requests, obfuscated code, dangerous commands, or unusual file operations are present. The only file written is `arch.c` into `${CMAKE_BINARY_DIR}`, which is normal for CMake modules. No evidence of supply-chain attack or injected malicious behavior.
</details>
<summary>Standard CMake architecture detection module, no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/gzdoom/auto-setup-linux.sh, src/gzdoom/CMakeLists.txt, src/gzdoom/cmake/precompiled_headers.cmake, src/gzdoom/libraries/discordrpc/build.py, src/gzdoom/AppImageBuilder.yml...
+ Reviewed src/gzdoom/cmake/TargetArch.cmake. Status: SAFE -- Standard CMake architecture detection module, no security issues.
LLM auditresponse for auto-setup-linux.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard convenience build helper for GZDoom. It clones the upstream vcpkg (Microsoft) and zmusic (ZDoom) repositories from GitHub, checks out a specific tag for zmusic, and builds the project using cmake and make. All network operations target legitimate upstream sources (github.com/microsoft/vcpkg and github.com/zdoom/zmusic). There are no obfuscated commands, no base64/hex encodings, no eval usage, no unexpected file operations outside the build directory, and no data exfiltration. The use of `git pull` on an existing vcpkg clone updates the toolchain, which is normal for a build script. The script does not execute any user-controlled code or fetch content from untrusted third-party hosts. Nothing in the file deviates from expected packaging or build automation behavior; it is safe.
</details>
<summary>Standard build script for GZDoom, no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/gzdoom/CMakeLists.txt, src/gzdoom/cmake/precompiled_headers.cmake, src/gzdoom/libraries/discordrpc/build.py, src/gzdoom/AppImageBuilder.yml...
+ Reviewed src/gzdoom/auto-setup-linux.sh. Status: SAFE -- Standard build script for GZDoom, no security issues.
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the top-level CMakeLists.txt for the GZDoom project. It is a standard CMake build script that sets up compiler flags, finds system dependencies (BZip2, VPX), includes various subdirectories (libraries, tools, src, wadsrc), and defines custom build steps for creating PK3 game archives using an internal tool called `zipdir`. There are no network requests beyond standard `find_package` calls for system libraries, no obfuscated code, no unexpected file operations, and no commands that would execute code from external sources. Everything is consistent with a normal upstream build system.
</details>
<summary>
Standard CMake build file, no malicious content.</summary>
</security_assessment>

[7/10] Reviewing src/gzdoom/cmake/precompiled_headers.cmake, src/gzdoom/libraries/discordrpc/build.py, src/gzdoom/AppImageBuilder.yml...
+ Reviewed src/gzdoom/CMakeLists.txt. Status: SAFE -- Standard CMake build file, no malicious content.
LLM auditresponse for AppImageBuilder.yml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is an `appimage-builder` recipe for building an AppImage of GZDoom. It uses standard Ubuntu APT repositories (`http://us.archive.ubuntu.com/ubuntu/`) and includes test environments from the official `appimagecrafters/tests-env` Docker images. No obfuscated code, suspicious network requests to unknown hosts, download-and-execute attacks, or data exfiltration are present. The only notable hygiene issues are `allow_unauthenticated: true` (disabling APT signature verification) and the use of plain HTTP for repository sources. These are common in AppImage recipes and do not constitute a supply-chain attack on their own; they do not exfiltrate data or execute attacker-controlled code. The file is consistent with legitimate GZDoom packaging.
</details>
<summary>Benign AppImage recipe; no malicious behavior detected.</summary>
</security_assessment>

[8/10] Reviewing src/gzdoom/cmake/precompiled_headers.cmake, src/gzdoom/libraries/discordrpc/build.py...
+ Reviewed src/gzdoom/AppImageBuilder.yml. Status: SAFE -- Benign AppImage recipe; no malicious behavior detected.
LLM auditresponse for precompiled_headers.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMake helper function for enabling precompiled headers with MSVC. It generates a precompiled header translation unit and sets the necessary compiler flags (`/Yc` and `/Yu`). There are no network requests, no execution of external code, no obfuscation, and no dangerous operations. It only performs standard file operations (`file(WRITE)`, `set_source_files_properties`) using CMake's built-in commands. This is a well-known CMake pattern for precompiled headers and is not malicious.
</details>
<summary>
Standard CMake precompiled header helper, no security concerns.</summary>
</security_assessment>

[9/10] Reviewing src/gzdoom/libraries/discordrpc/build.py...
+ Reviewed src/gzdoom/cmake/precompiled_headers.cmake. Status: SAFE -- Standard CMake precompiled header helper, no security concerns.
LLM auditresponse for build.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The `build.py` script is a standard build automation tool for the discord-rpc library. It uses `cmake` to compile static and shared libraries, copies outputs into Unity and Unreal example project directories, and provides commands for code signing and archiving. All operations are confined to the script's own directory and its `builds` and `examples` subdirectories. There are no network requests to unexpected hosts (the only URL is a standard DigiCert timestamp server for Windows code signing, which is expected). No obfuscation, encoded commands, or system file modifications outside the project scope are present. This is legitimate upstream build infrastructure, not a supply-chain attack.
</details>
<summary>
Standard upstream build script, no malicious code.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/gzdoom/libraries/discordrpc/build.py. Status: SAFE -- Standard upstream build script, no malicious code.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 45,958
  Completion Tokens: 8,263
  Total Tokens: 54,221
  Total Cost: $0.005624
  Execution Time: 68.84 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-gzdoom.txt
Final Status: SAFE


No issues found.
