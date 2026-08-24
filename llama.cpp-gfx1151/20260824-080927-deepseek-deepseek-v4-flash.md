---
package: llama.cpp-gfx1151
pkgver: b10603
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 56580919ea5cd225cb34031d0932798021e4a0d8
prompt_tokens: 48458
completion_tokens: 9498
total_tokens: 57956
cost: 0.0038718596
execution_time: 147.56
files_reviewed: 12
files_skipped: 0
files_unauditable: 25
unpinned_sources: 0
date: 2026-08-24T08:09:26Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned sources, no malicious behavior.
  - file: llama.cpp.conf
    status: safe
    summary: Standard config file; no malicious content.
  - file: llama.cpp.service
    status: safe
    summary: Standard systemd service file, no malicious content found.
  - file: src/llama.cpp-b10603/CMakeLists.txt
    status: safe
    summary: Standard CMake build file for llama.cpp; no security issues.
  - file: src/llama.cpp-b10603/Makefile
    status: safe
    summary: Deprecation notice redirecting to CMake build.
  - file: src/llama.cpp-b10603/build-xcframework.sh
    status: safe
    summary: Upstream build script, no malicious behavior found.
  - file: src/llama.cpp-b10603/cmake/build-info.cmake
    status: safe
    summary: Standard build metadata generation, no security concerns.
  - file: src/llama.cpp-b10603/cmake/download-models.cmake
    status: safe
    summary: Standard CMake download script for official model files.
  - file: src/llama.cpp-b10603/cmake/common.cmake
    status: safe
    summary: Standard CMake build configuration file, no security issues.
  - file: src/llama.cpp-b10603/cmake/git-vars.cmake
    status: safe
    summary: Standard CMake build metadata extraction, no security concerns.
  - file: src/llama.cpp-b10603/.devops/tools.sh
    status: safe
    summary: Standard upstream dispatch script, no malicious behavior.
  - file: src/llama.cpp-b10603/cmake/license.cmake
    status: safe
    summary: Standard license embedding script, no security issues.
---

Cloning https://aur.archlinux.org/llama.cpp-gfx1151.git...
Cloned llama.cpp-gfx1151
Analyzing llama.cpp-gfx1151 AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments in its top-level scope and no `pkgver()` function. No commands, function calls, or command substitutions execute when the PKGBUILD is sourced. The `source` array references three HTTPS URLs from legitimate hosts (github.com and raw.githubusercontent.com) with provided SHA-256 checksums. Fetching and extracting these sources via `makepkg --nobuild --nodeps --noprepare` poses no risk of executing malicious code. The `prepare()`, `build()`, and `package()` functions are not executed during this step.
</details>
<evidence></evidence>
<summary>Static PKGBUILD, no top-level execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Static PKGBUILD, no top-level execution risk.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, llama.cpp.conf...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a fork of `llama.cpp`. All sources are pinned to a specific tag (b10603) or to commits via SHA256 sums. The only network downloads are the upstream source tarball from GitHub and two asset files (systemd service and configuration) from the maintainer’s own GitHub repository, each with a fixed checksum. The build process uses `cmake`, `npm`, and standard install commands; there are no encoded, obfuscated, or injected commands. The commented-out patch line is inert. No exfiltration, backdoors, or unexpected system modifications are present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned sources, no malicious behavior.</summary>
</security_assessment>

[1/2] Reviewing llama.cpp.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned sources, no malicious behavior.
LLM auditresponse for llama.cpp.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a configuration file for the llama.cpp application, containing only a single line that assigns an empty string to a variable `LLAMA_ARGS`. There is no executable code, no network requests, no obfuscation, and no system modifications. This is standard packaging for providing default configuration.
</details>
<evidence>

</evidence>
<summary>Standard config file; no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed llama.cpp.conf. Status: SAFE -- Standard config file; no malicious content.
Reviewed all required files.
Deciding which files to review next...
Note: 25 compiled/archived file(s) cannot be audited as text and were not reviewed (llama.cpp-gfx1151-b10603.tar.gz, src/llama.cpp-b10603/docs/development/llama-star/idea-arch.key, src/llama.cpp-b10603/examples/llama.android/gradle/wrapper/gradle-wrapper.jar and 22 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 3386 files available for selection; offering the 50 highest-priority to the model. 3017 lower-priority file(s) were not offered.
LLM response for file selection:
llama.cpp.service
src/llama.cpp-b10603/.devops/tools.sh
src/llama.cpp-b10603/CMakeLists.txt
src/llama.cpp-b10603/Makefile
src/llama.cpp-b10603/build-xcframework.sh
src/llama.cpp-b10603/cmake/build-info.cmake
src/llama.cpp-b10603/cmake/common.cmake
src/llama.cpp-b10603/cmake/download-models.cmake
src/llama.cpp-b10603/cmake/git-vars.cmake
src/llama.cpp-b10603/cmake/license.cmake
Decided to review 10 additional files: llama.cpp.service, src/llama.cpp-b10603/.devops/tools.sh, src/llama.cpp-b10603/CMakeLists.txt, src/llama.cpp-b10603/Makefile, src/llama.cpp-b10603/build-xcframework.sh, src/llama.cpp-b10603/cmake/build-info.cmake, src/llama.cpp-b10603/cmake/common.cmake, src/llama.cpp-b10603/cmake/download-models.cmake, src/llama.cpp-b10603/cmake/git-vars.cmake, src/llama.cpp-b10603/cmake/license.cmake
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing llama.cpp.service...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b10603/.devops/tools.sh...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b10603/.devops/tools.sh, src/llama.cpp-b10603/CMakeLists.txt...
LLM auditresponse for llama.cpp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the llama.cpp server. It defines a simple service that runs `/usr/bin/llama-server` with arguments sourced from an environment file (`/etc/conf.d/llama.cpp`). There are no network requests, file modifications, obfuscated code, or any other indicators of malicious behavior. The file contains only the expected service configuration directives (After, Type, ExecStart, ExecReload, Restart, WantedBy, etc.) with no suspicious elements.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no malicious content found.</summary>
</security_assessment>

[1/10] Reviewing src/llama.cpp-b10603/.devops/tools.sh, src/llama.cpp-b10603/CMakeLists.txt...
+ Reviewed llama.cpp.service. Status: SAFE -- Standard systemd service file, no malicious content found.
[1/10] Reviewing src/llama.cpp-b10603/.devops/tools.sh, src/llama.cpp-b10603/CMakeLists.txt, src/llama.cpp-b10603/Makefile...
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMakeLists.txt for the llama.cpp project. It contains typical build configuration: project definition, version setting, option declarations, inclusion of subdirectories (ggml, src, vendor, common, tests, examples, tools, app), and install rules. No suspicious network requests, obfuscated code, or commands that deviate from expected build system behavior. All operations are standard for an upstream CMake build. The file does not contain any evidence of a supply-chain attack or malicious intent.
</details>
<evidence>
</evidence>
<summary>Standard CMake build file for llama.cpp; no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/llama.cpp-b10603/.devops/tools.sh, src/llama.cpp-b10603/CMakeLists.txt, src/llama.cpp-b10603/Makefile, src/llama.cpp-b10603/build-xcframework.sh...
[2/10] Reviewing src/llama.cpp-b10603/.devops/tools.sh, src/llama.cpp-b10603/Makefile, src/llama.cpp-b10603/build-xcframework.sh...
+ Reviewed src/llama.cpp-b10603/CMakeLists.txt. Status: SAFE -- Standard CMake build file for llama.cpp; no security issues.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
The Makefile merely defines a `newline` variable and uses `$(error ...)` to print a deprecation message instructing users to use CMake instead. It performs no network requests, file operations, or any other actions that could be malicious. The content is consistent with standard build system migration notifications.
</details>
<evidence></evidence>
<summary>Deprecation notice redirecting to CMake build.</summary>
</security_assessment>

[2/10] Reviewing src/llama.cpp-b10603/.devops/tools.sh, src/llama.cpp-b10603/Makefile, src/llama.cpp-b10603/build-xcframework.sh, src/llama.cpp-b10603/cmake/build-info.cmake...
[3/10] Reviewing src/llama.cpp-b10603/.devops/tools.sh, src/llama.cpp-b10603/build-xcframework.sh, src/llama.cpp-b10603/cmake/build-info.cmake...
+ Reviewed src/llama.cpp-b10603/Makefile. Status: SAFE -- Deprecation notice redirecting to CMake build.
LLM auditresponse for build-xcframework.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an upstream build script for creating Apple XCFramework bundles of the llama.cpp library. All operations are confined to standard build directories under the project root (build-ios-sim, build-macos, etc.). It uses expected tooling (cmake, xcrun, clang++, libtool, dsymutil, strip) and performs normal Apple framework packaging tasks (setting SDKs, architectures, creating Info.plist, linking dependencies, stripping debug symbols). There are no network requests, no encoded/obfuscated commands, no exfiltration of system data, and no modifications outside the project&#x27;s own build artifacts. The script is consistent with its stated purpose and does not exhibit any indicators of supply-chain compromise.
</details>
<evidence></evidence>
<summary>Upstream build script, no malicious behavior found.</summary>
</security_assessment>

[3/10] Reviewing src/llama.cpp-b10603/.devops/tools.sh, src/llama.cpp-b10603/build-xcframework.sh, src/llama.cpp-b10603/cmake/build-info.cmake, src/llama.cpp-b10603/cmake/common.cmake...
[4/10] Reviewing src/llama.cpp-b10603/.devops/tools.sh, src/llama.cpp-b10603/cmake/build-info.cmake, src/llama.cpp-b10603/cmake/common.cmake...
+ Reviewed src/llama.cpp-b10603/build-xcframework.sh. Status: SAFE -- Upstream build script, no malicious behavior found.
LLM auditresponse for build-info.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard CMake script used to populate build metadata (commit hash, build number, compiler version, target platform). It searches for Git locally and runs `git rev-parse --short HEAD` and `git rev-list --count HEAD` within the source directory to retrieve version information – a common and expected practice for versioning. There are no network requests, no fetching or executing of external code, no obfuscation, no file writes outside the normal build process, and no system modifications. All operations are confined to the build context and serve the package's stated purpose of generating versioned build info.
</details>
<evidence></evidence>
<summary>Standard build metadata generation, no security concerns.</summary>
</security_assessment>

[5/10] Reviewing src/llama.cpp-b10603/.devops/tools.sh, src/llama.cpp-b10603/cmake/common.cmake...
+ Reviewed src/llama.cpp-b10603/cmake/build-info.cmake. Status: SAFE -- Standard build metadata generation, no security concerns.
[5/10] Reviewing src/llama.cpp-b10603/.devops/tools.sh, src/llama.cpp-b10603/cmake/common.cmake, src/llama.cpp-b10603/cmake/download-models.cmake...
LLM auditresponse for download-models.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake script downloads a model file from the official `ggml-org/models` repository on Hugging Face. It uses HTTPS with TLS verification and expects a hash match, which follows secure download practices. The destination is determined by the caller (presumably a build directory). There is no obfuscated code, no execution of untrusted content, and no exfiltration of local data. The script performs exactly one operation: downloading a file from a known, legitimate upstream source with integrity checks. This is standard build infrastructure, not a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard CMake download script for official model files.</summary>
</security_assessment>

[5/10] Reviewing src/llama.cpp-b10603/.devops/tools.sh, src/llama.cpp-b10603/cmake/common.cmake, src/llama.cpp-b10603/cmake/download-models.cmake, src/llama.cpp-b10603/cmake/git-vars.cmake...
[6/10] Reviewing src/llama.cpp-b10603/.devops/tools.sh, src/llama.cpp-b10603/cmake/common.cmake, src/llama.cpp-b10603/cmake/git-vars.cmake...
+ Reviewed src/llama.cpp-b10603/cmake/download-models.cmake. Status: SAFE -- Standard CMake download script for official model files.
LLM auditresponse for common.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMake configuration file for the llama.cpp project. It includes a common CMake file from the ggml submodule and defines a function (`llama_add_compile_flags`) that conditionally adds compiler warning flags and sanitizer flags (`-Werror`, `-fsanitize=thread`, `-fsanitize=address`, etc.) based on CMake options like `LLAMA_FATAL_WARNINGS`, `LLAMA_ALL_WARNINGS`, `LLAMA_SANITIZE_THREAD`, `LLAMA_SANITIZE_ADDRESS`, and `LLAMA_SANITIZE_UNDEFINED`. There are no network requests, no file downloads, no obfuscated code, no system modification commands, no execution of untrusted content, and no deviation from normal build system behavior. The file is entirely focused on compiler flag management, which is a routine part of CMake-based C/C++ projects. No security concerns.
</details>
<evidence></evidence>
<summary>Standard CMake build configuration file, no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/llama.cpp-b10603/.devops/tools.sh, src/llama.cpp-b10603/cmake/common.cmake, src/llama.cpp-b10603/cmake/git-vars.cmake, src/llama.cpp-b10603/cmake/license.cmake...
[7/10] Reviewing src/llama.cpp-b10603/.devops/tools.sh, src/llama.cpp-b10603/cmake/git-vars.cmake, src/llama.cpp-b10603/cmake/license.cmake...
+ Reviewed src/llama.cpp-b10603/cmake/common.cmake. Status: SAFE -- Standard CMake build configuration file, no security issues.
LLM auditresponse for git-vars.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake file is a standard build-time helper that extracts git metadata (commit SHA, date, subject) using git commands. All three `execute_process` calls use the git path from `find_package(Git)` and operate within `${CMAKE_SOURCE_DIR}` (the project source tree). There is no obfuscation, network access, file exfiltration, or execution of untrusted code. The commands are typical for embedding version information in the build output and pose no security risk.
</details>
<evidence></evidence>
<summary>Standard CMake build metadata extraction, no security concerns.</summary>
</security_assessment>

[8/10] Reviewing src/llama.cpp-b10603/.devops/tools.sh, src/llama.cpp-b10603/cmake/license.cmake...
+ Reviewed src/llama.cpp-b10603/cmake/git-vars.cmake. Status: SAFE -- Standard CMake build metadata extraction, no security concerns.
LLM auditresponse for tools.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard upstream helper that dispatches to local executables (`llama-cli`, `llama-quantize`, `llama-bench`, etc.) based on command-line flags. It contains no network requests, obfuscated code, file exfiltration, or unexpected system modifications. The `exec` calls run local binaries from the same directory, which is normal for a build-time or run-time tool. The `all-in-one` branch iterates over files matching a pattern and calls `llama-quantize` on them—this is legitimate quantization functionality, not a supply-chain attack. There are no references to `curl`, `wget`, `base64`, `eval`, or external hosts. The script is consistent with the intended purpose of `llama.cpp` ongoing operations.
</details>
<evidence></evidence>
<summary>Standard upstream dispatch script, no malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/llama.cpp-b10603/cmake/license.cmake...
+ Reviewed src/llama.cpp-b10603/.devops/tools.sh. Status: SAFE -- Standard upstream dispatch script, no malicious behavior.
LLM auditresponse for license.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMake helper script that aggregates license files from the source tree and generates a C++ source file embedding them. All operations are confined to the project's source and build directories. It uses only cmake built-in commands (`file(READ)`, `file(WRITE)`, `set_property`, `target_sources`) with no network access, no code execution outside the build process, and no obfuscation. The script serves a legitimate upstream purpose: bundling licenses into the compiled binary.
</details>
<evidence></evidence>
<summary>Standard license embedding script, no security issues.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/llama.cpp-b10603/cmake/license.cmake. Status: SAFE -- Standard license embedding script, no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 48,458
  Completion Tokens: 9,498
  Total Tokens: 57,956
  Total Cost: $0.003872
  Execution Time: 147.56 seconds

Final Status: SAFE


No issues found.
