---
package: llama.cpp-hip
pkgver: b9707
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 43631
completion_tokens: 7219
total_tokens: 50850
cost: 0.00522621
execution_time: 66.68
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T08:28:38Z
file_verdicts:
  - file: llama.cpp.conf
    status: safe
    summary: Static configuration file; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no evidence of malicious code.
  - file: src/llama.cpp-b9707/Makefile
    status: safe
    summary: Placeholder Makefile, no security issues.
  - file: src/llama.cpp-b9707/cmake/build-info.cmake
    status: safe
    summary: Standard CMake build-info generator, no security issues found.
  - file: src/llama.cpp-b9707/cmake/common.cmake
    status: safe
    summary: Standard CMake build configuration, no security issues.
  - file: src/llama.cpp-b9707/cmake/git-vars.cmake
    status: safe
    summary: Benign Git metadata extraction for build versioning.
  - file: src/llama.cpp-b9707/.devops/tools.sh
    status: safe
    summary: Standard dispatcher script; no malicious content found.
  - file: llama.cpp.service
    status: safe
    summary: Standard systemd service file, no security issues found.
  - file: src/llama.cpp-b9707/CMakeLists.txt
    status: safe
    summary: Standard CMake build configuration, no security issues.
  - file: src/llama.cpp-b9707/cmake/license.cmake
    status: safe
    summary: Standard CMake utility for embedding license files.
  - file: src/llama.cpp-b9707/build-xcframework.sh
    status: safe
    summary: Standard Apple framework build script; no malicious code detected.
  - file: src/llama.cpp-b9707/cmake/download-models.cmake
    status: safe
    summary: Legitimate model download script; no security issues.
---

Cloning https://aur.archlinux.org/llama.cpp-hip.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-vedq_0d8...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-vedq_0d8
Analyzing llama.cpp-hip AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-vedq_0d8) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD only contains variable assignments and array definitions. There are no `eval`, `exec`, or command substitutions that would execute code during sourcing. The `source` array fetches files from the official GitHub release and the maintainer's own repository, which is standard practice. Since `pkgver` is static and there is no `pkgver()` function, no code executes beyond the global scope. The commands `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only download the sources and parse the PKGBUILD without executing any potentially dangerous code. No suspicious or obfuscated content is present.
</details>
<summary>
Safe: no code executes on source fetch/parse.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe: no code executes on source fetch/parse.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
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
The file `llama.cpp.conf` is a simple configuration file that sets the environment variable `LLAMA_ARGS` to an empty string. The content uses HTML entity encoding (`&quot;`) for the double quotes, which is a standard way to represent quotes in configuration files. There is no code execution, no network requests, no obfuscation, and no indication of any malicious behavior. This is a typical packaging file that provides a default setting for the application.</details>
<summary>Static configuration file; no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed llama.cpp.conf. Status: SAFE -- Static configuration file; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It downloads the upstream llama.cpp source tarball from the official GitHub repository with a pinned version (`b9707`) and checksums verified. Two additional configuration files (systemd service and conf) are fetched from the maintainer's own GitHub repository under `Orion-zhen/aur-packages`; these are also checksummed and are static assets, not executable code. No suspicious network requests, obfuscated commands, or unexpected system modifications are present. The build process uses upstream build systems (npm, cmake) in a standard way. The use of `raw.githubusercontent.com` for auxiliary config files by the package maintainer is within normal AUR practice and not malicious.
</details>
<summary>Standard PKGBUILD; no evidence of malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no evidence of malicious code.
Reviewed all required files.
Deciding which files to review next...
Note: 2942 files available for selection; offering the 50 highest-priority to the model. 2601 lower-priority file(s) were not offered.
LLM response for file selection:
llama.cpp.service
src/llama.cpp-b9707/.devops/tools.sh
src/llama.cpp-b9707/CMakeLists.txt
src/llama.cpp-b9707/Makefile
src/llama.cpp-b9707/build-xcframework.sh
src/llama.cpp-b9707/cmake/download-models.cmake
src/llama.cpp-b9707/cmake/common.cmake
src/llama.cpp-b9707/cmake/git-vars.cmake
src/llama.cpp-b9707/cmake/build-info.cmake
src/llama.cpp-b9707/cmake/license.cmake
Decided to review 10 additional files: llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/common.cmake, src/llama.cpp-b9707/cmake/git-vars.cmake, src/llama.cpp-b9707/cmake/build-info.cmake, src/llama.cpp-b9707/cmake/license.cmake
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing llama.cpp.service...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/Makefile...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/build-xcframework.sh...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/download-models.cmake...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/common.cmake...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/common.cmake, src/llama.cpp-b9707/cmake/license.cmake...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/common.cmake, src/llama.cpp-b9707/cmake/license.cmake, src/llama.cpp-b9707/cmake/git-vars.cmake...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/common.cmake, src/llama.cpp-b9707/cmake/license.cmake, src/llama.cpp-b9707/cmake/git-vars.cmake, src/llama.cpp-b9707/cmake/build-info.cmake...
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
The Makefile is a simple placeholder that immediately triggers a build error with a message directing users to the CMake-based build instructions. It contains no network requests, file operations, obfuscation, or any other potentially malicious behavior. This is a standard practice for projects that have migrated from Make to CMake.
</details>
<summary>Placeholder Makefile, no security issues.</summary>
</security_assessment>

[1/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/common.cmake, src/llama.cpp-b9707/cmake/license.cmake, src/llama.cpp-b9707/cmake/git-vars.cmake, src/llama.cpp-b9707/cmake/build-info.cmake...
+ Reviewed src/llama.cpp-b9707/Makefile. Status: SAFE -- Placeholder Makefile, no security issues.
LLM auditresponse for build-info.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake script is a standard build-info generator for embedding Git version metadata (commit hash, build number, compiler, target) into the application binary. It uses `find_package(Git)`, falls back to `find_program`, and then runs `git rev-parse --short HEAD` and `git rev-list --count HEAD` on the current source tree. These operations are normal for any project that wants to track its build provenance.

There is no network access (the git commands are local), no obfuscation, no dangerous eval or base64, and no unexpected file modifications. The script does not execute any downloaded code or alter system files outside the build directory. It is entirely consistent with benign packaging and upstream build practices.
</details>
<summary>
Standard CMake build-info generator, no security issues found.
</summary>
</security_assessment>

[2/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/common.cmake, src/llama.cpp-b9707/cmake/license.cmake, src/llama.cpp-b9707/cmake/git-vars.cmake...
+ Reviewed src/llama.cpp-b9707/cmake/build-info.cmake. Status: SAFE -- Standard CMake build-info generator, no security issues found.
LLM auditresponse for common.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake build configuration script for the llama.cpp project. It includes a helper file from the project's own structure (`ggml/cmake/common.cmake`) and defines a function to add compile flags (warnings, errors, sanitizers). There are no network requests, no encoded or obfuscated commands, no file operations outside the build environment, and no deviations from normal packaging or build practices. The content is entirely routine for a C/C++ project's CMake setup.
</details>
<summary>Standard CMake build configuration, no security issues.</summary>
</security_assessment>

[3/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/license.cmake, src/llama.cpp-b9707/cmake/git-vars.cmake...
+ Reviewed src/llama.cpp-b9707/cmake/common.cmake. Status: SAFE -- Standard CMake build configuration, no security issues.
LLM auditresponse for git-vars.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake helper script that uses Git to extract version metadata (commit SHA, date, and subject) for embedding into the build. It runs only trusted Git commands (`describe`, `log`) on the local repository with no external network access or dangerous operations. There is no obfuscated code, no execution of fetched content, and no behavior beyond capturing build-time version information. This is a routine and expected part of many open-source build systems.
</details>
<summary>
Benign Git metadata extraction for build versioning.</summary>
</security_assessment>

[4/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/license.cmake...
+ Reviewed src/llama.cpp-b9707/cmake/git-vars.cmake. Status: SAFE -- Benign Git metadata extraction for build versioning.
LLM auditresponse for tools.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `tools.sh` is a simple dispatcher that forwards command-line arguments to various llama.cpp executables (`llama-cli`, `llama-quantize`, `llama-bench`, `llama-perplexity`, etc.) or a Python conversion script. There are no network requests, obfuscated code, dangerous commands (curl, wget, eval, base64), or any file operations outside the expected build output. The `--all-in-one` option iterates over model files and runs the quantizer, which is a normal upstream feature for batch conversion. Everything in this script is consistent with the intended purpose of the llama.cpp package and presents no supply-chain attack vector.
</details>
<summary>Standard dispatcher script; no malicious content found.</summary>
</security_assessment>

[5/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/license.cmake...
+ Reviewed src/llama.cpp-b9707/.devops/tools.sh. Status: SAFE -- Standard dispatcher script; no malicious content found.
LLM auditresponse for llama.cpp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for running the llama.cpp server. It uses conventional directives (`Type`, `EnvironmentFile`, `ExecStart`, `ExecReload`, `Restart`, `Install`) and references the legitimate upstream binary `/usr/bin/llama-server` with arguments sourced from `/etc/conf.d/llama.cpp`. There is no obfuscation, no network requests, no unexpected commands, and no deviation from normal packaging practices for a service file. All content aligns with the application’s stated purpose.
</details>
<summary>Standard systemd service file, no security issues found.</summary>
</security_assessment>

[6/10] Reviewing src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/license.cmake...
+ Reviewed llama.cpp.service. Status: SAFE -- Standard systemd service file, no security issues found.
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard CMakeLists.txt for the llama.cpp project. It defines build options, includes subdirectories, sets up installation rules, and references upstream components (ggml, cpp-httplib, Hugging Face bucket for prebuilt UI). All network references point to the project's own distribution channels or required dependencies. There is no obfuscated code, no unexpected shell execution, no data exfiltration, and no supply-chain injection. The use of `LLAMA_USE_PREBUILT_UI` fetching from Hugging Face is the project's declared mechanism for distributing prebuilt UI assets, not an attack. The file follows standard AUR packaging conventions and does not exhibit any genuinely malicious behavior.
</details>
<summary>Standard CMake build configuration, no security issues.</summary>
</security_assessment>

[7/10] Reviewing src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/license.cmake...
+ Reviewed src/llama.cpp-b9707/CMakeLists.txt. Status: SAFE -- Standard CMake build configuration, no security issues.
LLM auditresponse for license.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake module that reads license files from the source tree and generates a C++ source file embedding them into a build target. It performs no network operations, no obfuscation, no execution of external commands, and no modifications outside the build directory. The only I/O is reading local license files and writing a generated `.cpp` file to the build directory. This is a conventional and transparent build-time utility commonly used to bundle license texts. No evidence of malicious or supply-chain attack behavior.
</details>
<summary>Standard CMake utility for embedding license files.</summary>
</security_assessment>

[8/10] Reviewing src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/download-models.cmake...
+ Reviewed src/llama.cpp-b9707/cmake/license.cmake. Status: SAFE -- Standard CMake utility for embedding license files.
LLM auditresponse for build-xcframework.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `build-xcframework.sh` is a build script for creating Apple XCFrameworks from the llama.cpp project. It performs standard operations: setting up build directories, running cmake with platform-specific configurations, compiling code for iOS, macOS, visionOS, and tvOS (both device and simulator), combining static libraries into dynamic frameworks, creating metadata files (Info.plist, modulemap), and finally generating an XCFramework.  

All commands are legitimate Apple development tools (`cmake`, `xcrun`, `libtool`, `clang++`, `dsymutil`, `strip`, `vtool`, `xcodebuild`). The script does not make any network requests, downloads, or execute obfuscated code. It accesses only local files within the project tree (e.g., `include/llama.h`, `ggml/include/ggml.h`) and writes output to local build directories. There is no evidence of data exfiltration, backdoors, or any behavior that deviates from its stated purpose of building an XCFramework for Apple platforms.  

Within the context of the `llama.cpp-hip` AUR package on Arch Linux, this script is not executed (it targets macOS/iOS, not AMD GPUs on Linux) and is simply part of the upstream source. It poses no supply‑chain risk.
</details>
<summary>Standard Apple framework build script; no malicious code detected.</summary>
</security_assessment>

[9/10] Reviewing src/llama.cpp-b9707/cmake/download-models.cmake...
+ Reviewed src/llama.cpp-b9707/build-xcframework.sh. Status: SAFE -- Standard Apple framework build script; no malicious code detected.
LLM auditresponse for download-models.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `download-models.cmake` is a straightforward CMake script that downloads a model file from the official Hugging Face repository (`ggml-org/models`) using CMake's built-in `file(DOWNLOAD ...)` command. It uses TLS verification (`TLS_VERIFY ON`), checks an expected hash (`EXPECTED_HASH ${HASH}`), and handles download failure by reporting the HTTP status code. There is no obfuscation, no execution of downloaded code, no exfiltration of local data, and no connection to any unexpected or suspicious host. The behavior is entirely within the expected scope of an ML/AI package that needs to fetch model weights at build time.
</details>
<summary>
Legitimate model download script; no security issues.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/llama.cpp-b9707/cmake/download-models.cmake. Status: SAFE -- Legitimate model download script; no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 43,631
  Completion Tokens: 7,219
  Total Tokens: 50,850
  Total Cost: $0.005226
  Execution Time: 66.68 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-llama.cpp-hip.txt
Final Status: SAFE


No issues found.
