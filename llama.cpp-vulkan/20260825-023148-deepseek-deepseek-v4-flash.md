---
package: llama.cpp-vulkan
pkgver: b10603
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 56580919ea5cd225cb34031d0932798021e4a0d8
prompt_tokens: 46930
completion_tokens: 5931
total_tokens: 52861
cost: 0.0033746608
execution_time: 116.26
files_reviewed: 12
files_skipped: 0
files_unauditable: 25
unpinned_sources: 0
date: 2026-08-24T07:04:16Z
file_verdicts:
  - file: llama.cpp.conf
    status: safe
    summary: Safe config file, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious indicators found.
  - file: src/llama.cpp-b10603/CMakeLists.txt
    status: safe
    summary: Standard CMake build configuration; no security issues.
  - file: src/llama.cpp-b10603/.devops/tools.sh
    status: safe
    summary: Clean dispatcher script, no malicious behavior.
  - file: llama.cpp.service
    status: safe
    summary: Standard systemd service file, no security issues.
  - file: src/llama.cpp-b10603/Makefile
    status: safe
    summary: Benign Makefile only emits a build migration error message.
  - file: src/llama.cpp-b10603/cmake/build-info.cmake
    status: safe
    summary: Standard build metadata script, no malicious behavior.
  - file: src/llama.cpp-b10603/cmake/common.cmake
    status: safe
    summary: Standard CMake compile flag configuration, no malicious content.
  - file: src/llama.cpp-b10603/build-xcframework.sh
    status: safe
    summary: Standard upstream build script; no malicious or suspicious behavior detected.
  - file: src/llama.cpp-b10603/cmake/download-models.cmake
    status: safe
    summary: Standard model download with hash verification; no malicious behavior.
  - file: src/llama.cpp-b10603/cmake/license.cmake
    status: safe
    summary: Legitimate CMake function for embedding licenses.
  - file: src/llama.cpp-b10603/cmake/git-vars.cmake
    status: safe
    summary: Standard git metadata extraction in CMake; no malicious behavior found.
---

Cloning https://aur.archlinux.org/llama.cpp-vulkan.git...
Cloned llama.cpp-vulkan
Analyzing llama.cpp-vulkan AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments and source definitions. No `eval`, `$(...)`, backticks, or other command execution occurs at the global scope or in `pkgver()` (which is not defined as a function; `pkgver` is a static variable). The `source` array includes the upstream llama.cpp tarball from GitHub and two additional files from the maintainer's personal GitHub repository (Orion-zhen/aur-packages) over HTTPS. These are standard AUR practices; fetching them is the intended purpose of `makepkg --nobuild --nodeps --noprepare`. No code in `prepare()`, `build()`, or `package()` will execute during this gate due to the `--nobuild` and `--noprepare` flags. Therefore, running the requested commands is safe for this narrow safety gate. The full PKGBUILD audit will later examine the personal repo files and the build functions.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; source fetch and extraction are safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; source fetch and extraction are safe.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, llama.cpp.conf...
LLM auditresponse for llama.cpp.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain configuration file for the llama.cpp application, containing only an environment variable assignment (`LLAMA_ARGS`) set to an empty string. There is no code execution, network requests, encoded/obfuscated content, or any other suspicious behavior. The content is static and harmless.
</details>
<evidence></evidence>
<summary>Safe config file, no malicious code.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed llama.cpp.conf. Status: SAFE -- Safe config file, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. The source downloads are from the upstream GitHub repository and the maintainer's own auxiliary files, all with pinned SHA256 checksums. The build process runs `npm ci` and `npm run build` on the upstream UI code, then `cmake` with sensible options. No obfuscated code, suspicious network requests, or unexpected system modifications are present. The creation of an empty `.git` directory in `prepare()` is a benign workaround for a Tailwind build issue. The only potential hygiene concern is that the auxiliary service/config files are fetched from a mutable branch (`refs/heads/main`) rather than a pinned commit, but the checksums lock the content, so any change would break the build. This is not evidence of malice.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD, no malicious indicators found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious indicators found.
Reviewed all required files.
Deciding which files to review next...
Note: 25 compiled/archived file(s) cannot be audited as text and were not reviewed (llama.cpp-vulkan-b10603.tar.gz, src/llama.cpp-b10603/docs/development/llama-star/idea-arch.key, src/llama.cpp-b10603/examples/llama.android/gradle/wrapper/gradle-wrapper.jar and 22 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 3387 files available for selection; offering the 50 highest-priority to the model. 3018 lower-priority file(s) were not offered.
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
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b10603/CMakeLists.txt...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b10603/CMakeLists.txt, src/llama.cpp-b10603/.devops/tools.sh...
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
The CMakeLists.txt is the standard top-level build configuration for the llama.cpp project. It sets CMake options, includes subdirectories for the library, common utilities, examples, tests, tools, and vendor code. There are no suspicious network requests, obfuscated commands, file exfiltration, or backdoors. The file performs routine build system operations such as setting compile options, adding subdirectories, and installing targets. The reference to a "HF Bucket" for prebuilt UI is a legitimate upstream source (Hugging Face). No malicious or unexpected behavior was found.
</details>
<evidence>
</evidence>
<summary>Standard CMake build configuration; no security issues.</summary>
</security_assessment>

[0/10] Reviewing llama.cpp.service, src/llama.cpp-b10603/CMakeLists.txt, src/llama.cpp-b10603/.devops/tools.sh, src/llama.cpp-b10603/Makefile...
[1/10] Reviewing llama.cpp.service, src/llama.cpp-b10603/.devops/tools.sh, src/llama.cpp-b10603/Makefile...
+ Reviewed src/llama.cpp-b10603/CMakeLists.txt. Status: SAFE -- Standard CMake build configuration; no security issues.
LLM auditresponse for tools.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a routine dispatcher script for llama.cpp command-line tools. It interprets command-line arguments to call appropriate executables (`llama-quantize`, `llama-cli`, etc.) or a Python conversion script. There are no network requests, obfuscated code, dangerous file operations, or unexpected command executions. The `--all-in-one` block iterates over model files and runs quantization, which is standard upstream behavior. No supply-chain attack vectors are present.
</details>
<evidence></evidence>
<summary>Clean dispatcher script, no malicious behavior.</summary>
</security_assessment>

[1/10] Reviewing llama.cpp.service, src/llama.cpp-b10603/.devops/tools.sh, src/llama.cpp-b10603/Makefile, src/llama.cpp-b10603/build-xcframework.sh...
[2/10] Reviewing llama.cpp.service, src/llama.cpp-b10603/Makefile, src/llama.cpp-b10603/build-xcframework.sh...
+ Reviewed src/llama.cpp-b10603/.devops/tools.sh. Status: SAFE -- Clean dispatcher script, no malicious behavior.
LLM auditresponse for llama.cpp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the llama.cpp server. It loads environment variables from a configuration file, runs the `llama-server` binary with those arguments, and sets standard restart behavior. There are no suspicious network requests, obfuscated commands, data exfiltration, or any deviation from normal packaging practices. The service file is clean and follows the expected pattern for a systemd service.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[2/10] Reviewing llama.cpp.service, src/llama.cpp-b10603/Makefile, src/llama.cpp-b10603/build-xcframework.sh, src/llama.cpp-b10603/cmake/build-info.cmake...
[3/10] Reviewing src/llama.cpp-b10603/Makefile, src/llama.cpp-b10603/build-xcframework.sh, src/llama.cpp-b10603/cmake/build-info.cmake...
+ Reviewed llama.cpp.service. Status: SAFE -- Standard systemd service file, no security issues.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
This Makefile contains only a single error directive that prints a message stating the build system has changed to CMake and provides a link to documentation. It performs no network requests, no file operations, no obfuscated code, and no system modifications. This is a standard project-maintainer pattern for migration away from Make, and contains no malicious behavior.
</details>
<evidence></evidence>
<summary>Benign Makefile only emits a build migration error message.</summary>
</security_assessment>

[4/10] Reviewing src/llama.cpp-b10603/build-xcframework.sh, src/llama.cpp-b10603/cmake/build-info.cmake...
+ Reviewed src/llama.cpp-b10603/Makefile. Status: SAFE -- Benign Makefile only emits a build migration error message.
[4/10] Reviewing src/llama.cpp-b10603/build-xcframework.sh, src/llama.cpp-b10603/cmake/build-info.cmake, src/llama.cpp-b10603/cmake/common.cmake...
LLM auditresponse for build-info.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake script that gathers build metadata (commit hash, commit count, compiler version, target platform) for the llama.cpp project. It uses `find_package(Git)` to locate git, then runs `git rev-parse --short HEAD` and `git rev-list --count HEAD` to obtain the commit information. These operations are normal for embedding version information into a build. There are no network requests, obfuscated code, unusual file operations, or any behavior that deviates from standard packaging practices. The script only reads local git repository metadata and sets CMake variables. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard build metadata script, no malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing src/llama.cpp-b10603/build-xcframework.sh, src/llama.cpp-b10603/cmake/build-info.cmake, src/llama.cpp-b10603/cmake/common.cmake, src/llama.cpp-b10603/cmake/download-models.cmake...
[5/10] Reviewing src/llama.cpp-b10603/build-xcframework.sh, src/llama.cpp-b10603/cmake/common.cmake, src/llama.cpp-b10603/cmake/download-models.cmake...
+ Reviewed src/llama.cpp-b10603/cmake/build-info.cmake. Status: SAFE -- Standard build metadata script, no malicious behavior.
LLM auditresponse for common.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake helper script from the llama.cpp project. It defines a function `llama_add_compile_flags` that conditionally adds compiler warning flags (e.g., `-Werror`, `-Wall`) and sanitizer flags (e.g., `-fsanitize=thread`) based on CMake variables. There are no network requests, encoded/obfuscated commands, unexpected file operations, or any behavior that deviates from normal packaging or build system scripting. The `include("ggml/cmake/common.cmake")` refers to another file from the project’s own source tree, which is expected. No evidence of supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard CMake compile flag configuration, no malicious content.</summary>
</security_assessment>

[6/10] Reviewing src/llama.cpp-b10603/build-xcframework.sh, src/llama.cpp-b10603/cmake/download-models.cmake...
+ Reviewed src/llama.cpp-b10603/cmake/common.cmake. Status: SAFE -- Standard CMake compile flag configuration, no malicious content.
[6/10] Reviewing src/llama.cpp-b10603/build-xcframework.sh, src/llama.cpp-b10603/cmake/download-models.cmake, src/llama.cpp-b10603/cmake/git-vars.cmake...
LLM auditresponse for build-xcframework.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is an upstream build helper for llama.cpp that compiles static libraries into an Apple XCFramework for iOS, macOS, visionOS, and tvOS. It uses standard tools (cmake, xcrun, clang++) and performs normal build, packaging, and cleanup operations. There are no network requests, downloads, obfuscated code, or suspicious system modifications. The `rm -rf` commands are limited to the script's own build directories. All operations are consistent with the project's stated purpose of producing a distribution-ready framework. No malicious or supply-chain attack behavior was identified.
</details>
<evidence>
</evidence>
<summary>
Standard upstream build script; no malicious or suspicious behavior detected.
</summary>
</security_assessment>

[7/10] Reviewing src/llama.cpp-b10603/cmake/download-models.cmake, src/llama.cpp-b10603/cmake/git-vars.cmake...
+ Reviewed src/llama.cpp-b10603/build-xcframework.sh. Status: SAFE -- Standard upstream build script; no malicious or suspicious behavior detected.
[7/10] Reviewing src/llama.cpp-b10603/cmake/download-models.cmake, src/llama.cpp-b10603/cmake/git-vars.cmake, src/llama.cpp-b10603/cmake/license.cmake...
LLM auditresponse for download-models.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
The script downloads a model file from Hugging Face (`ggml-org/models`) using the CMake `file(DOWNLOAD)` command with TLS verification and a checksum (`EXPECTED_HASH`) for integrity. No unusual commands, obfuscation, or system-modifying operations are present. The destination is created as a directory and the target file is downloaded directly. The script validates the download status and fails on error, which is standard practice for asset acquisition in build processes. The hash validation mitigates supply-chain risks despite the mutable upstream URL.
</details>
<evidence>
</evidence>
<summary>Standard model download with hash verification; no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/llama.cpp-b10603/cmake/git-vars.cmake, src/llama.cpp-b10603/cmake/license.cmake...
+ Reviewed src/llama.cpp-b10603/cmake/download-models.cmake. Status: SAFE -- Standard model download with hash verification; no malicious behavior.
LLM auditresponse for license.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake module defines two helper functions for aggregating license files and generating a C++ source file that embeds them as string literals. The code is straightforward: `license_add_file` reads a file from the source tree (or an absolute path) and appends its content to a global property; `license_generate` writes a `.cpp` file into the build directory and attaches it to a CMake target. All operations are confined to the source and build trees, there are no network requests, no execution of external commands, no obfuscation, and no access to system files outside the project scope. This follows standard packaging practices for embedding third-party license notices.
</details>
<evidence>
</evidence>
<summary>Legitimate CMake function for embedding licenses.</summary>
</security_assessment>

[9/10] Reviewing src/llama.cpp-b10603/cmake/git-vars.cmake...
+ Reviewed src/llama.cpp-b10603/cmake/license.cmake. Status: SAFE -- Legitimate CMake function for embedding licenses.
LLM auditresponse for git-vars.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake script is a standard build-metadata helper used by llama.cpp's build system. It calls `git describe` and `git log` to capture the current commit SHA, commit date, and commit subject for embedding into the build output. All commands operate locally in `${CMAKE_SOURCE_DIR}` (the project source tree), use read-only git queries, and do not fetch, pull, reset, or modify anything.

There is no network access, no downloading or execution of external code, no obfuscation, no file writes outside normal build behavior, and no data exfiltration. The HTML entities in the provided content (`&quot;`, `&apos;`) are merely XML escaping of the quoted strings, not encoded payloads. This is benign, conventional CMake practice.
</details>
<evidence>
</evidence>
<summary>
Standard git metadata extraction in CMake; no malicious behavior found.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/llama.cpp-b10603/cmake/git-vars.cmake. Status: SAFE -- Standard git metadata extraction in CMake; no malicious behavior found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 46,930
  Completion Tokens: 5,931
  Total Tokens: 52,861
  Total Cost: $0.003375
  Execution Time: 116.26 seconds

Final Status: SAFE


No issues found.
