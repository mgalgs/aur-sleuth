---
package: llama.cpp-vulkan
pkgver: b9707
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: a8e1d1f00bc767119c65850fa2cfcc51780ad090
prompt_tokens: 42967
completion_tokens: 8488
total_tokens: 51455
cost: 0.00539487
execution_time: 104.32
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T07:40:33Z
file_verdicts:
  - file: llama.cpp.conf
    status: safe
    summary: Standard configuration file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no malicious code detected.
  - file: llama.cpp.service
    status: safe
    summary: Standard systemd service file, no security issues.
  - file: src/llama.cpp-b9707/Makefile
    status: safe
    summary: Benign Makefile with build system change notice.
  - file: src/llama.cpp-b9707/cmake/build-info.cmake
    status: safe
    summary: Standard CMake script for Git build info; no security issues.
  - file: src/llama.cpp-b9707/cmake/download-models.cmake
    status: safe
    summary: Standard model download script, no security issues.
  - file: src/llama.cpp-b9707/cmake/git-vars.cmake
    status: safe
    summary: Standard CMake script for git version info; no malicious behavior.
  - file: src/llama.cpp-b9707/CMakeLists.txt
    status: safe
    summary: Standard CMake build file, no security issues found.
  - file: src/llama.cpp-b9707/cmake/license.cmake
    status: safe
    summary: Benign CMake license embedding script.
  - file: src/llama.cpp-b9707/.devops/tools.sh
    status: safe
    summary: Safe helper dispatch script for llama.cpp tools.
  - file: src/llama.cpp-b9707/build-xcframework.sh
    status: safe
    summary: Standard Apple framework build script, no malicious content.
  - file: src/llama.cpp-b9707/cmake/common.cmake
    status: safe
    summary: Standard CMake build configuration, no malicious content.
---

Cloning https://aur.archlinux.org/llama.cpp-vulkan.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-y67vaxgu...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-y67vaxgu
Analyzing llama.cpp-vulkan AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-y67vaxgu) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and function definitions in its global scope. The `source` array points to the official upstream tarball (github.com/ggml-org/llama.cpp) and two asset files hosted on the maintainer's own GitHub repository, which is typical for AUR packages that include systemd service files. All three sources have valid SHA-256 checksums, so integrity is verified at fetch time. There is no `pkgver()` function, and the top-level scope executes no dangerous commands (no base64, no curl|bash, no eval, no obfuscation). The `prepare()`, `build()`, and `package()` functions are defined but will not be executed by `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. Therefore, fetching the sources and sourcing the PKGBUILD is safe.
</details>
<summary>Safe to fetch sources and parse PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe to fetch sources and parse PKGBUILD.[/]
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
The file `llama.cpp.conf` contains a single line setting the environment variable `LLAMA_ARGS` to an empty string. This is a standard configuration file used to pass arguments to the llama.cpp application. There is no evidence of malicious code, network requests, obfuscation, or any deviation from normal packaging practices. The content is benign and serves its intended purpose.
</details>
<summary>Standard configuration file, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed llama.cpp.conf. Status: SAFE -- Standard configuration file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices. All sources are fetched from the official llama.cpp GitHub repository and the maintainer's own `aur-packages` repository for auxiliary files (systemd service and config), both with pinned checksums. The prepare() step creates an empty `.git` directory as a documented workaround for Tailwind CSS build issues—this is benign. The build() function runs `npm ci` and `npm run build` on the upstream web UI, then builds the main project with CMake, using environment variables (`CI`, `LLAMA_BUILD_EXTRA_ARGS`) only for conditional compilation and user customization—this is normal. The package() installs the built binaries, licenses, config, and systemd service file correctly. No obfuscated code, no unexpected network requests, no `eval` or `curl|bash`, and no manipulation of files outside the package scope. The only minor hygiene note is that the service and config sources point to a mutable branch (`refs/heads/main`), but checksums currently pin the content; this is an acceptable trust model for AUR, not evidence of malice.
</details>
<summary>Standard PKGBUILD; no malicious code detected.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no malicious code detected.
Reviewed all required files.
Deciding which files to review next...
Note: 2942 files available for selection; offering the 50 highest-priority to the model. 2601 lower-priority file(s) were not offered.
LLM response for file selection:
llama.cpp.service
src/llama.cpp-b9707/.devops/tools.sh
src/llama.cpp-b9707/CMakeLists.txt
src/llama.cpp-b9707/Makefile
src/llama.cpp-b9707/build-xcframework.sh
src/llama.cpp-b9707/cmake/build-info.cmake
src/llama.cpp-b9707/cmake/common.cmake
src/llama.cpp-b9707/cmake/download-models.cmake
src/llama.cpp-b9707/cmake/git-vars.cmake
src/llama.cpp-b9707/cmake/license.cmake
Decided to review 10 additional files: llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/build-info.cmake, src/llama.cpp-b9707/cmake/common.cmake, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/git-vars.cmake, src/llama.cpp-b9707/cmake/license.cmake
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing llama.cpp.service...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/Makefile...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/cmake/build-info.cmake...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/cmake/build-info.cmake, src/llama.cpp-b9707/cmake/common.cmake...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/cmake/build-info.cmake, src/llama.cpp-b9707/cmake/common.cmake, src/llama.cpp-b9707/cmake/download-models.cmake...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/cmake/build-info.cmake, src/llama.cpp-b9707/cmake/common.cmake, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/git-vars.cmake...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/cmake/build-info.cmake, src/llama.cpp-b9707/cmake/common.cmake, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/git-vars.cmake, src/llama.cpp-b9707/cmake/license.cmake...
LLM auditresponse for llama.cpp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the llama.cpp server. It defines a simple service that runs `/usr/bin/llama-server` with arguments sourced from `/etc/conf.d/llama.cpp`. There are no network requests, obfuscated code, dangerous commands, or any deviation from normal packaging practices. The file is benign and serves its intended purpose of managing the llama.cpp server as a system service.
</details>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/cmake/build-info.cmake, src/llama.cpp-b9707/cmake/common.cmake, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/git-vars.cmake, src/llama.cpp-b9707/cmake/license.cmake...
+ Reviewed llama.cpp.service. Status: SAFE -- Standard systemd service file, no security issues.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
The Makefile contains only a macro to define a newline and an immediate `$(error ...)` directive that prints a message indicating the build system has changed from Make to CMake. There is no executable code, no network requests, no file modifications, and no hidden or obfuscated content. This is a standard way to notify users that the build procedure has changed, and it poses no security risk.
</details>
<summary>Benign Makefile with build system change notice.</summary>
</security_assessment>

[2/10] Reviewing src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/build-info.cmake, src/llama.cpp-b9707/cmake/common.cmake, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/git-vars.cmake, src/llama.cpp-b9707/cmake/license.cmake...
+ Reviewed src/llama.cpp-b9707/Makefile. Status: SAFE -- Benign Makefile with build system change notice.
LLM auditresponse for build-info.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `build-info.cmake` is a standard CMake build configuration script that retrieves Git repository information (commit hash and commit count) for embedding version metadata. It uses `find_package(Git)` and `execute_process` with standard `git rev-parse --short HEAD` and `git rev-list --count HEAD` commands, operating only on the local repository. There are no network requests, no obfuscated or encoded commands, no unexpected file operations, and no execution of externally fetched content. The script is entirely consistent with normal upstream development and packaging practices. No supply-chain attack indicators are present.
</details>
<summary>Standard CMake script for Git build info; no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/common.cmake, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/git-vars.cmake, src/llama.cpp-b9707/cmake/license.cmake...
+ Reviewed src/llama.cpp-b9707/cmake/build-info.cmake. Status: SAFE -- Standard CMake script for Git build info; no security issues.
LLM auditresponse for download-models.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake script is a standard download helper for fetching machine learning model files from a legitimate source (Hugging Face, `ggml-org/models`). It uses `file(DOWNLOAD)` with TLS verification enabled (`TLS_VERIFY ON`) and verifies the file against an expected hash (`EXPECTED_HASH`). The destination directory is created if it does not exist. There is no obfuscation, no execution of downloaded code, no data exfiltration, and no connection to unexpected hosts. The behavior is consistent with normal packaging practices for a project that ships pre-trained models.
</details>
<summary>
Standard model download script, no security issues.</summary>
</security_assessment>

[4/10] Reviewing src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/common.cmake, src/llama.cpp-b9707/cmake/git-vars.cmake, src/llama.cpp-b9707/cmake/license.cmake...
+ Reviewed src/llama.cpp-b9707/cmake/download-models.cmake. Status: SAFE -- Standard model download script, no security issues.
LLM auditresponse for git-vars.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake script is a standard build-time helper that retrieves git commit metadata (SHA1, date, subject) for embedding version information. It uses `find_package(Git)` and executes three benign `git` commands (`describe`, `log`) in the project&#x2019;s source directory. No network requests, file modifications, obfuscation, or code execution beyond the intended git queries occur. This is a common pattern in projects that track versioning via git and poses no security risk.
</details>
<summary>Standard CMake script for git version info; no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/common.cmake, src/llama.cpp-b9707/cmake/license.cmake...
+ Reviewed src/llama.cpp-b9707/cmake/git-vars.cmake. Status: SAFE -- Standard CMake script for git version info; no malicious behavior.
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMakeLists.txt is a standard build configuration file for the llama.cpp project. It defines build options, includes subdirectories for source, examples, tests, and tools, and sets up installation rules. There are no signs of malicious or suspicious behavior: no obfuscated code, no network requests (the optional prebuilt UI reference is just an option, not an action), no dangerous system commands, and no attempts to exfiltrate data or tamper with system files. The file follows conventional CMake packaging practices.
</details>
<summary>Standard CMake build file, no security issues found.</summary>
</security_assessment>

[6/10] Reviewing src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/common.cmake, src/llama.cpp-b9707/cmake/license.cmake...
+ Reviewed src/llama.cpp-b9707/CMakeLists.txt. Status: SAFE -- Standard CMake build file, no security issues found.
LLM auditresponse for license.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `license.cmake` is a standard CMake utility script that aggregates license files from the source tree and generates a C++ source file containing those licenses as a string array. It performs only local file reads and writes within the project's source and build directories. There are no network requests, no execution of external commands, no obfuscated code, and no modifications to system files outside the build environment. The script is consistent with normal packaging practices for embedding license information into a binary.
</details>
<summary>Benign CMake license embedding script.</summary>
</security_assessment>

[7/10] Reviewing src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/common.cmake...
+ Reviewed src/llama.cpp-b9707/cmake/license.cmake. Status: SAFE -- Benign CMake license embedding script.
LLM auditresponse for tools.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward command dispatcher that routes the first argument to one of several llama.cpp executables or Python scripts (e.g., `convert_hf_to_gguf.py`, `llama-quantize`, `llama-cli`). It performs no network requests, no obfuscation, and no unexpected file or system operations. The `--all-in-one` section has a logic error (using `exec` inside a loop causes the script to exit after the first iteration), but this is a minor bug, not a security concern. No indicators of malicious intent or supply-chain attack are present.
</details>
<summary>
Safe helper dispatch script for llama.cpp tools.</summary>
</security_assessment>

[8/10] Reviewing src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/common.cmake...
+ Reviewed src/llama.cpp-b9707/.devops/tools.sh. Status: SAFE -- Safe helper dispatch script for llama.cpp tools.
LLM auditresponse for build-xcframework.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `build-xcframework.sh` is an Apple framework build script for the `llama.cpp` project. It performs standard build operations: configuring with CMake, compiling for multiple Apple platforms (iOS, macOS, visionOS, tvOS, including simulators), combining static libraries into dynamic frameworks, generating Info.plist and module maps, stripping debug symbols, and creating an XCFramework with `xcodebuild -create-xcframework`.  

There is no evidence of malicious behavior:  
- No network requests (no `curl`, `wget`, or outbound connections)  
- No obfuscated code, base64 decoding, or eval  
- No file operations outside the local build directories (`build-*`, `temp`, `dSYMs`)  
- Only Apple development tools are called (`cmake`, `xcrun`, `clang++`, `libtool`, `dsymutil`, `strip`, `vtool`, `xcodebuild`)  
- The script is consistent with the project’s stated purpose of producing a redistributable `.xcframework` for Apple platforms  

The script is a legitimate upstream build tool, not an AUR PKGBUILD itself, and does not introduce supply-chain attack vectors.
</details>
<summary>Standard Apple framework build script, no malicious content.</summary>
</security_assessment>

[9/10] Reviewing src/llama.cpp-b9707/cmake/common.cmake...
+ Reviewed src/llama.cpp-b9707/build-xcframework.sh. Status: SAFE -- Standard Apple framework build script, no malicious content.
LLM auditresponse for common.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake build configuration snippet for the llama.cpp project. It defines functions to set compiler warning flags and sanitizer options (thread, address, undefined) based on CMake variables. There is no network access, no execution of external code, no obfuscation, and no file operations beyond normal build configuration. The include of "ggml/cmake/common.cmake" is a typical CMake pattern for pulling in shared build definitions. No security issues are present.
</details>
<summary>Standard CMake build configuration, no malicious content.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/llama.cpp-b9707/cmake/common.cmake. Status: SAFE -- Standard CMake build configuration, no malicious content.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 42,967
  Completion Tokens: 8,488
  Total Tokens: 51,455
  Total Cost: $0.005395
  Execution Time: 104.32 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-llama.cpp-vulkan.txt
Final Status: SAFE


No issues found.
