---
package: obs-multi-rtmp
pkgver: 0.7.4.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 56580919ea5cd225cb34031d0932798021e4a0d8
prompt_tokens: 37448
completion_tokens: 7496
total_tokens: 44944
cost: 0.0030100560
execution_time: 100.71
files_reviewed: 11
files_skipped: 1
files_unauditable: 0
unpinned_sources: 0
date: 2026-08-24T07:51:32Z
file_verdicts:
  - file: obs-multi-rtmp-0.7.4.3.tar.gz
    status: skipped
    summary: "Skipping binary file: obs-multi-rtmp-0.7.4.3.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no security issues.
  - file: src/obs-multi-rtmp-0.7.4.3/cmake/common/buildnumber.cmake
    status: safe
    summary: Standard build number tracking, no security concerns.
  - file: src/obs-multi-rtmp-0.7.4.3/CMakeLists.txt
    status: safe
    summary: Standard CMake build file for OBS plugin; no security issues.
  - file: src/obs-multi-rtmp-0.7.4.3/cmake/common/bootstrap.cmake
    status: safe
    summary: Standard build configuration; no security issues.
  - file: src/obs-multi-rtmp-0.7.4.3/cmake/common/helpers_common.cmake
    status: safe
    summary: Standard CMake helper with no malicious activity.
  - file: src/obs-multi-rtmp-0.7.4.3/cmake/linux/compilerconfig.cmake
    status: safe
    summary: Standard CMake compiler config; no malicious behavior.
  - file: src/obs-multi-rtmp-0.7.4.3/cmake/linux/defaults.cmake
    status: safe
    summary: Standard CMake build configuration, no malicious behavior.
  - file: src/obs-multi-rtmp-0.7.4.3/cmake/linux/helpers.cmake
    status: safe
    summary: Standard CMake build helpers, no malicious code.
  - file: src/obs-multi-rtmp-0.7.4.3/cmake/common/buildspec_common.cmake
    status: safe
    summary: Safe CMake build module for OBS plugin dependencies.
  - file: src/obs-multi-rtmp-0.7.4.3/cmake/common/compiler_common.cmake
    status: safe
    summary: Standard CMake compiler configuration, no malicious content.
  - file: src/obs-multi-rtmp-0.7.4.3/cmake/common/ccache.cmake
    status: safe
    summary: Standard CMake ccache integration module; no security issues.
---

Cloning https://aur.archlinux.org/obs-multi-rtmp.git...
Cloned obs-multi-rtmp
Analyzing obs-multi-rtmp AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD consists solely of static variable assignments (pkgname, pkgver, etc.) and definitions of build() and package() functions. There is no top-level command substitution, eval, or any code that would execute during sourcing. The `source` array contains a single tarball from the project's official GitHub repository with a fixed tag and a non-SKIP SHA-512 checksum. The PKGBUILD does not define a `pkgver()` function, so no code runs from that function either. The commands `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will fetch the source (a safe download from the project's own upstream) and source the PKGBUILD, which triggers no code execution beyond variable assignment. There are no dangerous operations like network requests to unknown hosts, obfuscated strings, or data exfiltration. Therefore, running these commands is safe.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD with no malicious top-level code.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, obs-multi-rtmp-0.7.4.3.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed obs-multi-rtmp-0.7.4.3.tar.gz. Status: SKIPPED -- Skipping binary file: obs-multi-rtmp-0.7.4.3.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard and straightforward build file for the `obs-multi-rtmp` package. It downloads the source tarball from the official GitHub repository using a pinned version tag, and verifies it with a SHA-512 checksum. The build and packaging steps use `cmake` and `ninja` as expected, with no unusual commands, network requests, or obfuscation. There is no evidence of malicious behavior, such as data exfiltration, execution of untrusted code, or system modifications outside the intended installation path.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no security issues.
Reviewed all required files.
Deciding which files to review next...
Note: 178 files available for selection; offering the 50 highest-priority to the model. 107 lower-priority file(s) were not offered.
LLM response for file selection:
src/obs-multi-rtmp-0.7.4.3/CMakeLists.txt
src/obs-multi-rtmp-0.7.4.3/cmake/common/bootstrap.cmake
src/obs-multi-rtmp-0.7.4.3/cmake/common/buildnumber.cmake
src/obs-multi-rtmp-0.7.4.3/cmake/common/buildspec_common.cmake
src/obs-multi-rtmp-0.7.4.3/cmake/common/helpers_common.cmake
src/obs-multi-rtmp-0.7.4.3/cmake/linux/helpers.cmake
src/obs-multi-rtmp-0.7.4.3/cmake/linux/compilerconfig.cmake
src/obs-multi-rtmp-0.7.4.3/cmake/linux/defaults.cmake
src/obs-multi-rtmp-0.7.4.3/cmake/common/ccache.cmake
src/obs-multi-rtmp-0.7.4.3/cmake/common/compiler_common.cmake
Decided to review 10 additional files: src/obs-multi-rtmp-0.7.4.3/CMakeLists.txt, src/obs-multi-rtmp-0.7.4.3/cmake/common/bootstrap.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/common/buildnumber.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/common/buildspec_common.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/common/helpers_common.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/linux/helpers.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/linux/compilerconfig.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/linux/defaults.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/common/ccache.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/common/compiler_common.cmake
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/obs-multi-rtmp-0.7.4.3/cmake/common/buildnumber.cmake...
[0/10] Reviewing src/obs-multi-rtmp-0.7.4.3/cmake/common/buildnumber.cmake, src/obs-multi-rtmp-0.7.4.3/CMakeLists.txt...
[0/10] Reviewing src/obs-multi-rtmp-0.7.4.3/cmake/common/buildnumber.cmake, src/obs-multi-rtmp-0.7.4.3/CMakeLists.txt, src/obs-multi-rtmp-0.7.4.3/cmake/common/bootstrap.cmake...
LLM auditresponse for buildnumber.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake module implements a simple build number increment and caching mechanism. It reads a cache file from `cmake/.CMakeBuildNumber`, increments the number, and falls back to CI environment variables (`GITHUB_RUN_ID`, `GITLAB_RUN_ID`) when the cache file is missing. All file operations are confined to the project's own source directory (`${CMAKE_CURRENT_SOURCE_DIR}/cmake/`). There is no network access, no obfuscation, no execution of untrusted code, and no manipulation of system files outside the build directory. The use of environment variables is standard for CI-based build numbering and does not constitute a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard build number tracking, no security concerns.</summary>
</security_assessment>

[0/10] Reviewing src/obs-multi-rtmp-0.7.4.3/cmake/common/buildnumber.cmake, src/obs-multi-rtmp-0.7.4.3/CMakeLists.txt, src/obs-multi-rtmp-0.7.4.3/cmake/common/bootstrap.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/common/buildspec_common.cmake...
[1/10] Reviewing src/obs-multi-rtmp-0.7.4.3/CMakeLists.txt, src/obs-multi-rtmp-0.7.4.3/cmake/common/bootstrap.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/common/buildspec_common.cmake...
+ Reviewed src/obs-multi-rtmp-0.7.4.3/cmake/common/buildnumber.cmake. Status: SAFE -- Standard build number tracking, no security concerns.
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard CMakeLists.txt for building an OBS Studio plugin. It defines the project, sets options, includes CMake modules, links against required libraries (libobs, optionally obs-frontend-api and Qt6), and lists source files. There are no network requests, obfuscated code, dangerous commands, or attempts to exfiltrate data. All operations are typical for a build system configuration. No evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard CMake build file for OBS plugin; no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/obs-multi-rtmp-0.7.4.3/CMakeLists.txt, src/obs-multi-rtmp-0.7.4.3/cmake/common/bootstrap.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/common/buildspec_common.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/common/helpers_common.cmake...
[2/10] Reviewing src/obs-multi-rtmp-0.7.4.3/cmake/common/bootstrap.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/common/buildspec_common.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/common/helpers_common.cmake...
+ Reviewed src/obs-multi-rtmp-0.7.4.3/CMakeLists.txt. Status: SAFE -- Standard CMake build file for OBS plugin; no security issues.
LLM auditresponse for bootstrap.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMake bootstrap module for an OBS plugin.  It prohibits in-source builds, reads a project metadata JSON file, sets version variables, includes helper modules from the project&#39;s own directory, and configures build-type selection UI.  There are no network requests, no obfuscated or encoded commands, no unexpected file operations, and no mechanism to download or execute external code.  The file performs only routine build-system configuration tasks consistent with standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard build configuration; no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/obs-multi-rtmp-0.7.4.3/cmake/common/bootstrap.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/common/buildspec_common.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/common/helpers_common.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/linux/helpers.cmake...
[3/10] Reviewing src/obs-multi-rtmp-0.7.4.3/cmake/common/buildspec_common.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/common/helpers_common.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/linux/helpers.cmake...
+ Reviewed src/obs-multi-rtmp-0.7.4.3/cmake/common/bootstrap.cmake. Status: SAFE -- Standard build configuration; no security issues.
LLM auditresponse for helpers_common.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake module contains two sections: a UUID validation function and a conditional build target for plugin support. The UUID function performs only string parsing and regex matching to verify hex digits and token lengths—no system calls, network access, or code execution. The conditional block uses `configure_file` and `add_library` within the project’s source tree, which is standard CMake practice for generating source files from templates and building static libraries. Setting `POSITION_INDEPENDENT_CODE` on Linux/FreeBSD/OpenBSD is expected for shared objects. There are no obfuscated commands, suspicious downloads, or operations that deviate from normal packaging or build behavior.
</details>
<evidence></evidence>
<summary>Standard CMake helper with no malicious activity.</summary>
</security_assessment>

[3/10] Reviewing src/obs-multi-rtmp-0.7.4.3/cmake/common/buildspec_common.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/common/helpers_common.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/linux/helpers.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/linux/compilerconfig.cmake...
[4/10] Reviewing src/obs-multi-rtmp-0.7.4.3/cmake/common/buildspec_common.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/linux/helpers.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/linux/compilerconfig.cmake...
+ Reviewed src/obs-multi-rtmp-0.7.4.3/cmake/common/helpers_common.cmake. Status: SAFE -- Standard CMake helper with no malicious activity.
LLM auditresponse for compilerconfig.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `compilerconfig.cmake` is a standard CMake module for configuring compiler flags on Linux. It includes other helper modules (`ccache`, `compiler_common`), sets warning/error flags for GCC and Clang, disables specific false positives, and conditionally enables Clang time traces. All commands are purely build‑system directives (`include`, `option`, `set`, `add_compile_options`, `add_compile_definitions`). There are no network requests, no execution of downloaded code, no base64/hex/obfuscated strings, no file operations outside the build directory, and no backdoors or credential theft. The content matches typical packaging for OBS Studio plugins and does not exhibit any supply‑chain attack indicators.</details>
<evidence></evidence>
<summary>Standard CMake compiler config; no malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing src/obs-multi-rtmp-0.7.4.3/cmake/common/buildspec_common.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/linux/helpers.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/linux/compilerconfig.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/linux/defaults.cmake...
[5/10] Reviewing src/obs-multi-rtmp-0.7.4.3/cmake/common/buildspec_common.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/linux/helpers.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/linux/defaults.cmake...
+ Reviewed src/obs-multi-rtmp-0.7.4.3/cmake/linux/compilerconfig.cmake. Status: SAFE -- Standard CMake compiler config; no malicious behavior.
LLM auditresponse for defaults.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake module for configuring Linux build defaults for the obs-multi-rtmp OBS plugin. It sets installation directories, CPack packaging options, and locates OBS libraries. The macro redefining `find_package` is a common technique to avoid recursive CMake calls when discovering OBS dependencies; it is not malicious. There are no network requests, no obfuscated code, no unexpected file operations, and no signs of a supply-chain attack. The file is consistent with ordinary upstream packaging practices.
</details>
<evidence></evidence>
<summary>Standard CMake build configuration, no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing src/obs-multi-rtmp-0.7.4.3/cmake/common/buildspec_common.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/linux/helpers.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/linux/defaults.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/common/ccache.cmake...
[6/10] Reviewing src/obs-multi-rtmp-0.7.4.3/cmake/common/buildspec_common.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/linux/helpers.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/common/ccache.cmake...
+ Reviewed src/obs-multi-rtmp-0.7.4.3/cmake/linux/defaults.cmake. Status: SAFE -- Standard CMake build configuration, no malicious behavior.
LLM auditresponse for helpers.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake helper file contains standard functions for OBS Studio plugin builds: setting target properties, installing library and resource files to appropriate directories, and copying files to a rundir for development. All commands are standard CMake build operations (install, copy_if_different, copy_directory, file globbing, etc.) operating within the build and install tree. No network requests, obfuscated code, dangerous command execution, or data exfiltration is present. The file adheres to normal packaging practices for an OBS plugin.
</details>
<evidence></evidence>
<summary>Standard CMake build helpers, no malicious code.</summary>
</security_assessment>

[6/10] Reviewing src/obs-multi-rtmp-0.7.4.3/cmake/common/buildspec_common.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/linux/helpers.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/common/ccache.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/common/compiler_common.cmake...
[7/10] Reviewing src/obs-multi-rtmp-0.7.4.3/cmake/common/buildspec_common.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/common/ccache.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/common/compiler_common.cmake...
+ Reviewed src/obs-multi-rtmp-0.7.4.3/cmake/linux/helpers.cmake. Status: SAFE -- Standard CMake build helpers, no malicious code.
LLM auditresponse for buildspec_common.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard CMake build module for an OBS Studio plugin. It handles downloading pre-built dependencies from upstream OBS sources, verifying them with SHA256 checksums, and building the plugin. All network fetches are from URLs defined in the package's own `buildspec.json` and are validated by expected hashes. There is no obfuscated code, no execution of uncontrolled content, no exfiltration of data, and no backdoors. The minor patch to OBS Studio's CMakeLists.txt for macOS Swift support is a legitimate build adjustment for the plugin's functionality. No security issues are present.
</details>
<evidence>
</evidence>
<summary>Safe CMake build module for OBS plugin dependencies.</summary>
</security_assessment>

[8/10] Reviewing src/obs-multi-rtmp-0.7.4.3/cmake/common/ccache.cmake, src/obs-multi-rtmp-0.7.4.3/cmake/common/compiler_common.cmake...
+ Reviewed src/obs-multi-rtmp-0.7.4.3/cmake/common/buildspec_common.cmake. Status: SAFE -- Safe CMake build module for OBS plugin dependencies.
LLM auditresponse for compiler_common.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake configuration module for setting compiler options. It defines language standards (C17, C++17), visibility presets, and a list of warning flags for Clang. There is no network activity, no obfuscated code, no file system operations, no execution of external commands, and no deviation from normal build system practices. The content is entirely consistent with upstream OBS build infrastructure and poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard CMake compiler configuration, no malicious content.</summary>
</security_assessment>

[9/10] Reviewing src/obs-multi-rtmp-0.7.4.3/cmake/common/ccache.cmake...
+ Reviewed src/obs-multi-rtmp-0.7.4.3/cmake/common/compiler_common.cmake. Status: SAFE -- Standard CMake compiler configuration, no malicious content.
LLM auditresponse for ccache.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMake module that integrates the `ccache` compiler caching tool with the build system. It searches for the `ccache` program using `find_program` and, if enabled via an option, sets the `CMAKE_*_COMPILER_LAUNCHER` variables to point to the ccache binary. There are no network requests, no obfuscated code, no file operations outside the build directory, and no execution of untrusted content. The code is entirely benign and follows normal CMake packaging practices.
</details>
<evidence></evidence>
<summary>Standard CMake ccache integration module; no security issues.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/obs-multi-rtmp-0.7.4.3/cmake/common/ccache.cmake. Status: SAFE -- Standard CMake ccache integration module; no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: obs-multi-rtmp-0.7.4.3.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 37,448
  Completion Tokens: 7,496
  Total Tokens: 44,944
  Total Cost: $0.003010
  Execution Time: 100.71 seconds

Final Status: SAFE


No issues found.


Audit Skips:

obs-multi-rtmp-0.7.4.3.tar.gz: [SKIPPED] Skipping binary file: obs-multi-rtmp-0.7.4.3.tar.gz
