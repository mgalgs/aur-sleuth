---
package: llama.cpp-vulkan
pkgver: b10588
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3aa684c47f9b6bac5667ff3cee413c3a000b1b0d
prompt_tokens: 29963
completion_tokens: 5157
total_tokens: 35120
cost: 0.00219348542
execution_time: 122.02
files_reviewed: 9
files_skipped: 0
files_unauditable: 25
unpinned_sources: 0
date: 2026-08-23T03:02:20Z
file_verdicts:
  - file: llama.cpp.conf
    status: safe
    summary: Standard configuration file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious behavior.
  - file: llama.cpp.service
    status: safe
    summary: Standard systemd service unit, no malicious content.
  - file: src/llama.cpp-b10588/Makefile
    status: safe
    summary: Deprecation notice, no malicious behavior.
  - file: src/llama.cpp-b10588/CMakeLists.txt
    status: safe
    summary: Standard CMake build file, no malicious content.
  - file: src/llama.cpp-b10588/cmake/common.cmake
    status: safe
    summary: Standard CMake build configuration, no security concerns.
  - file: src/llama.cpp-b10588/cmake/build-info.cmake
    status: safe
    summary: Script gathers build info via local git; safe.
  - file: src/llama.cpp-b10588/cmake/git-vars.cmake
    status: safe
    summary: Standard CMake git version helper, no risks.
  - file: src/llama.cpp-b10588/cmake/download-models.cmake
    status: safe
    summary: Safe CMake download script from expected upstream with hash verification.
---

Cloning https://aur.archlinux.org/llama.cpp-vulkan.git...
Cloned llama.cpp-vulkan
Analyzing llama.cpp-vulkan AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
No malicious code exists in the top-level scope or in `pkgver()` (which is absent). The PKGBUILD only defines variables and a `source` array with three URLs: an upstream tarball from GitHub and two asset files from the maintainer's personal repository. These are fetched and extracted but not executed during `makepkg --nobuild --nodeps --noprepare`. All checksums are present and pinned. No dangerous command substitutions, obfuscated code, or network requests to untrusted origins beyond the package's own sources occur during the sourcing or source fetching steps. Therefore, the two commands are safe to run.
</details>
<summary>
No dangerous code executes during source fetching.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code executes during source fetching.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing llama.cpp.conf...
[0/2] Reviewing llama.cpp.conf, PKGBUILD...
LLM auditresponse for llama.cpp.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a simple configuration file for the llama.cpp application that sets an environment variable `LLAMA_ARGS` to an empty string. There is no executable code, no network requests, no obfuscation, and no deviation from normal packaging practices. The HTML-encoded quotes are likely artifacts from how the file was displayed, but in the actual file they would be plain double quotes. No security concerns.
</details>
<summary>Standard configuration file with no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed llama.cpp.conf. Status: SAFE -- Standard configuration file with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It downloads the upstream llama.cpp source tarball from `github.com/ggml-org/llama.cpp` and two auxiliary files (systemd service and config) from the maintainer's GitHub repository, all with pinned SHA256 checksums. The build process uses `npm ci`/`npm run build` for the web UI and `cmake` for the main library, which is the expected upstream build system. There is no obfuscated code, no unexpected network requests, no execution of unchecked fetched content, and no data exfiltration. The `LLAMA_BUILD_EXTRA_ARGS` environment variable allows user customization but is not a supply-chain vector. No signs of malicious injection are present.
</details>
<summary>Standard PKGBUILD, no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious behavior.
Reviewed all required files.
Deciding which files to review next...
Note: 25 compiled/archived file(s) cannot be audited as text and were not reviewed (llama.cpp-vulkan-b10588.tar.gz, src/llama.cpp-b10588/docs/development/llama-star/idea-arch.key, src/llama.cpp-b10588/examples/llama.android/gradle/wrapper/gradle-wrapper.jar and 22 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 3381 files available for selection; offering the 50 highest-priority to the model. 3011 lower-priority file(s) were not offered.
LLM response for file selection:
llama.cpp.service
src/llama.cpp-b10588/CMakeLists.txt
src/llama.cpp-b10588/Makefile
src/llama.cpp-b10588/cmake/download-models.cmake
src/llama.cpp-b10588/cmake/common.cmake
src/llama.cpp-b10588/cmake/build-info.cmake
src/llama.cpp-b10588/cmake/git-vars.cmake
Decided to review 7 additional files: llama.cpp.service, src/llama.cpp-b10588/CMakeLists.txt, src/llama.cpp-b10588/Makefile, src/llama.cpp-b10588/cmake/download-models.cmake, src/llama.cpp-b10588/cmake/common.cmake, src/llama.cpp-b10588/cmake/build-info.cmake, src/llama.cpp-b10588/cmake/git-vars.cmake
Reviewing additional files...
Reviewing additional files...
[0/7] Reviewing llama.cpp.service...
[0/7] Reviewing llama.cpp.service, src/llama.cpp-b10588/CMakeLists.txt...
[0/7] Reviewing llama.cpp.service, src/llama.cpp-b10588/CMakeLists.txt, src/llama.cpp-b10588/Makefile...
LLM auditresponse for llama.cpp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for llama.cpp. It defines the service to run `/usr/bin/llama-server` with arguments from an environment file (`/etc/conf.d/llama.cpp`). There is no obfuscated code, no network requests, no file exfiltration, no unexpected commands, and no deviation from normal packaging practices. The use of an environment file and a straightforward `ExecStart` is typical for Arch Linux services.
</details>
<summary>Standard systemd service unit, no malicious content.</summary>
</security_assessment>

[1/7] Reviewing src/llama.cpp-b10588/CMakeLists.txt, src/llama.cpp-b10588/Makefile...
+ Reviewed llama.cpp.service. Status: SAFE -- Standard systemd service unit, no malicious content.
[1/7] Reviewing src/llama.cpp-b10588/CMakeLists.txt, src/llama.cpp-b10588/Makefile, src/llama.cpp-b10588/cmake/download-models.cmake...
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
The Makefile contains only a GNU Make `$(error ...)` directive that halts execution with a message stating the build system has changed to CMake and references the upstream build instructions. There are no network requests, file operations, encoded commands, or any other suspicious activities. This is a standard and benign way to deprecate a build method.
</details>
<summary>Deprecation notice, no malicious behavior.</summary>
</security_assessment>

[2/7] Reviewing src/llama.cpp-b10588/CMakeLists.txt, src/llama.cpp-b10588/cmake/download-models.cmake...
+ Reviewed src/llama.cpp-b10588/Makefile. Status: SAFE -- Deprecation notice, no malicious behavior.
[2/7] Reviewing src/llama.cpp-b10588/CMakeLists.txt, src/llama.cpp-b10588/cmake/download-models.cmake, src/llama.cpp-b10588/cmake/common.cmake...
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMakeLists.txt is a standard build configuration file for the llama.cpp project. It defines project metadata, compiler options, build targets, dependencies (including ggml as a subdirectory), and installation rules. All operations are typical for a C/C++ library build: setting variables, adding subdirectories, configuring options, and installing headers/libraries/pkgconfig files. There are no network requests, obfuscated code, suspicious system modifications, or execution of untrusted code. The file does not contain any signs of a supply-chain attack or malicious behavior.
</details>
<summary>Standard CMake build file, no malicious content.</summary>
</security_assessment>

[2/7] Reviewing src/llama.cpp-b10588/CMakeLists.txt, src/llama.cpp-b10588/cmake/download-models.cmake, src/llama.cpp-b10588/cmake/common.cmake, src/llama.cpp-b10588/cmake/build-info.cmake...
[3/7] Reviewing src/llama.cpp-b10588/cmake/download-models.cmake, src/llama.cpp-b10588/cmake/common.cmake, src/llama.cpp-b10588/cmake/build-info.cmake...
+ Reviewed src/llama.cpp-b10588/CMakeLists.txt. Status: SAFE -- Standard CMake build file, no malicious content.
LLM auditresponse for common.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake helper script that sets compiler warning and sanitizer flags. It includes a conditional for fatal warnings (`LLAMA_FATAL_WARNINGS`), all warnings (`LLAMA_ALL_WARNINGS`), and various sanitizers (thread, address, undefined). All operations are confined to build-time compiler flag manipulation; there are no network requests, file system modifications outside the build, obfuscated code, or any other indicators of malicious behavior. The file is consistent with normal CMake packaging practices.
</details>
<summary>Standard CMake build configuration, no security concerns.</summary>
</security_assessment>

[3/7] Reviewing src/llama.cpp-b10588/cmake/download-models.cmake, src/llama.cpp-b10588/cmake/common.cmake, src/llama.cpp-b10588/cmake/build-info.cmake, src/llama.cpp-b10588/cmake/git-vars.cmake...
[4/7] Reviewing src/llama.cpp-b10588/cmake/download-models.cmake, src/llama.cpp-b10588/cmake/build-info.cmake, src/llama.cpp-b10588/cmake/git-vars.cmake...
+ Reviewed src/llama.cpp-b10588/cmake/common.cmake. Status: SAFE -- Standard CMake build configuration, no security concerns.
LLM auditresponse for build-info.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake script for retrieving build metadata (commit hash, commit count, compiler, target platform). It uses `git rev-parse --short HEAD` and `git rev-list --count HEAD` to query local repository information—a normal, read-only operation. No network requests, encoded payloads, dangerous commands, or modifications to system files occur. The script is part of the upstream llama.cpp build system and presents no supply-chain attack indicators.
</details>
<summary>Script gathers build info via local git; safe.</summary>
</security_assessment>

[5/7] Reviewing src/llama.cpp-b10588/cmake/download-models.cmake, src/llama.cpp-b10588/cmake/git-vars.cmake...
+ Reviewed src/llama.cpp-b10588/cmake/build-info.cmake. Status: SAFE -- Script gathers build info via local git; safe.
LLM auditresponse for git-vars.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake helper script used to embed git version information (SHA1, date, commit subject) into a build. It invokes `git describe` and `git log` with common formatting flags via the Git executable found by CMake's `find_package(Git)`. All commands operate on `${CMAKE_SOURCE_DIR}` (the package source) and produce no output to outside destinations, perform no downloads, execute no hidden or obfuscated code, and do not modify any files. This is typical and benign build infrastructure.
</details>
<summary>Standard CMake git version helper, no risks.</summary>
</security_assessment>

[6/7] Reviewing src/llama.cpp-b10588/cmake/download-models.cmake...
+ Reviewed src/llama.cpp-b10588/cmake/git-vars.cmake. Status: SAFE -- Standard CMake git version helper, no risks.
LLM auditresponse for download-models.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake script downloads a model file from `huggingface.co/ggml-org/models` using `file(DOWNLOAD)` with TLS verification and an expected hash (`EXPECTED_HASH ${HASH}`). The destination is controlled by the `DEST` variable and includes directory creation. There is no obfuscation, no execution of dynamic code, no exfiltration of local data, and no deviation from standard practices for downloading supplementary assets for a package. The remote host (`huggingface.co`) is the expected upstream for ggml-org models used by llama.cpp.
</details>
<summary>Safe CMake download script from expected upstream with hash verification.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed src/llama.cpp-b10588/cmake/download-models.cmake. Status: SAFE -- Safe CMake download script from expected upstream with hash verification.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 29,963
  Completion Tokens: 5,157
  Total Tokens: 35,120
  Total Cost: $0.002193
  Execution Time: 122.02 seconds

Final Status: SAFE


No issues found.
