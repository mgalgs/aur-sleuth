---
package: llama.cpp-gfx1151
pkgver: b9707
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: ca17da95f28e185d8d6b41bf3c9d6cc1c151702c
prompt_tokens: 44486
completion_tokens: 7814
total_tokens: 52300
cost: 0.00541026
execution_time: 153.91
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T07:41:23Z
file_verdicts:
  - file: llama.cpp.conf
    status: safe
    summary: Simple configuration file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Legitimate PKGBUILD with no signs of malicious code.
  - file: llama.cpp.service
    status: safe
    summary: Standard systemd service file, no security issues.
  - file: src/llama.cpp-b9707/cmake/git-vars.cmake
    status: safe
    summary: Standard git metadata extraction for build embedding.
  - file: src/llama.cpp-b9707/cmake/download-models.cmake
    status: safe
    summary: Standard model download script with hash verification.
  - file: src/llama.cpp-b9707/cmake/common.cmake
    status: safe
    summary: Standard CMake configuration, no security issues.
  - file: src/llama.cpp-b9707/Makefile
    status: safe
    summary: Harmless Make-to-CMake migration notice stub.
  - file: src/llama.cpp-b9707/cmake/license.cmake
    status: safe
    summary: Standard CMake script for embedding licenses; no security issues.
  - file: src/llama.cpp-b9707/.devops/tools.sh
    status: safe
    summary: Safe argument dispatching script for llama.cpp tools.
  - file: src/llama.cpp-b9707/cmake/build-info.cmake
    status: safe
    summary: Standard build metadata extraction; no security issues.
  - file: src/llama.cpp-b9707/build-xcframework.sh
    status: safe
    summary: Standard XCFramework build script for llama.cpp.
  - file: src/llama.cpp-b9707/CMakeLists.txt
    status: safe
    summary: Standard build file, no security issues.
---

Cloning https://aur.archlinux.org/llama.cpp-gfx1151.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-24oq6to1...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-24oq6to1
Analyzing llama.cpp-gfx1151 AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-24oq6to1) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD has no top-level code execution beyond standard variable assignments and array definitions. The `source` array fetches the upstream tarball from GitHub and two supporting configuration files from the maintainer's own GitHub repository — all over HTTPS. No `pkgver()` function is defined, so no code runs there. The `prepare()`, `build()`, and `package()` functions contain potentially sensitive operations (e.g., sourcing `/etc/profile`, environment manipulation, custom cmake flags), but these are **not executed** during the requested commands (`--nobuild` and `--noprepare`). There is no malicious code in the global scope that would exfiltrate data, download and run arbitrary payloads, or execute backdoors. Fetching sources from the maintainer's own repo for config files is a normal AUR practice and not inherently dangerous.
</details>
<summary>
Safe: no malicious top-level code or source fetching.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe: no malicious top-level code or source fetching.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
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
This file is a configuration file containing a single line: `LLAMA_ARGS=""`. It sets an environment variable to an empty string, which is a standard and benign packaging practice. No suspicious code, network requests, obfuscation, or system modifications are present. The file poses no security risk.</details>
<summary>Simple configuration file, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed llama.cpp.conf. Status: SAFE -- Simple configuration file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard packaging practices for an AUR package. All upstream sources are fetched from the official `ggml-org/llama.cpp` GitHub repository (with a pinned tag and checksum), and the service/config files come from the maintainer`s own `aur-packages` repo on GitHub (also with checksums). There are no obfuscated commands, no unexpected network requests, no attempts to exfiltrate data, no backdoors, and no execution of untrusted downloaded code. The `prepare()` step creates an empty `.git` directory only as a known workaround for Tailwind v4 build issues under AUR helpers—this is not malicious. The build and install steps are typical for a CMake-based project with a web UI component. The package appears to be a legitimate optimized build of llama.cpp with ROCm+Vulkan support for the AMD gfx1151 architecture.
</details>
<summary>
Legitimate PKGBUILD with no signs of malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate PKGBUILD with no signs of malicious code.
Reviewed all required files.
Deciding which files to review next...
Note: 2941 files available for selection; offering the 50 highest-priority to the model. 2600 lower-priority file(s) were not offered.
LLM response for file selection:
llama.cpp.service
src/llama.cpp-b9707/CMakeLists.txt
src/llama.cpp-b9707/Makefile
src/llama.cpp-b9707/.devops/tools.sh
src/llama.cpp-b9707/build-xcframework.sh
src/llama.cpp-b9707/cmake/common.cmake
src/llama.cpp-b9707/cmake/download-models.cmake
src/llama.cpp-b9707/cmake/git-vars.cmake
src/llama.cpp-b9707/cmake/build-info.cmake
src/llama.cpp-b9707/cmake/license.cmake
Decided to review 10 additional files: llama.cpp.service, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/common.cmake, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/git-vars.cmake, src/llama.cpp-b9707/cmake/build-info.cmake, src/llama.cpp-b9707/cmake/license.cmake
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing llama.cpp.service...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/Makefile...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/build-xcframework.sh...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/common.cmake...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/common.cmake, src/llama.cpp-b9707/cmake/download-models.cmake...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/common.cmake, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/build-info.cmake...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/common.cmake, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/build-info.cmake, src/llama.cpp-b9707/cmake/license.cmake...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/common.cmake, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/build-info.cmake, src/llama.cpp-b9707/cmake/license.cmake, src/llama.cpp-b9707/cmake/git-vars.cmake...
LLM auditresponse for llama.cpp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the llama.cpp server. It defines a simple service that runs `/usr/bin/llama-server` with arguments sourced from `/etc/conf.d/llama.cpp`. There are no suspicious commands, network requests, obfuscated code, or unexpected file operations. The file follows normal packaging practices for a systemd service.
</details>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/common.cmake, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/build-info.cmake, src/llama.cpp-b9707/cmake/license.cmake, src/llama.cpp-b9707/cmake/git-vars.cmake...
+ Reviewed llama.cpp.service. Status: SAFE -- Standard systemd service file, no security issues.
LLM auditresponse for git-vars.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake file uses Git to retrieve commit metadata (SHA1, date, subject) from the local repository during build. All commands are standard `git describe` and `git log` invocations operating on the source directory. There are no external network requests, no execution of downloaded code, no obfuscation, and no file operations beyond reading local git history. This is a typical build-time information embedding pattern used in many CMake-based projects.
</details>
<summary>Standard git metadata extraction for build embedding.</summary>
</security_assessment>

[2/10] Reviewing src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/common.cmake, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/build-info.cmake, src/llama.cpp-b9707/cmake/license.cmake...
+ Reviewed src/llama.cpp-b9707/cmake/git-vars.cmake. Status: SAFE -- Standard git metadata extraction for build embedding.
LLM auditresponse for download-models.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake script for downloading model files from the ggml-org/models repository on Hugging Face. It uses `file(DOWNLOAD ...)` with TLS verification enabled and an expected hash check, both of which are security best practices. The URL points to a legitimate and expected source for the package's models. There is no obfuscation, no execution of fetched code, and no exfiltration of data. The script performs only its stated purpose: downloading a specified model file to a destination directory.
</details>
<summary>Standard model download script with hash verification.</summary>
</security_assessment>

[3/10] Reviewing src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/common.cmake, src/llama.cpp-b9707/cmake/build-info.cmake, src/llama.cpp-b9707/cmake/license.cmake...
+ Reviewed src/llama.cpp-b9707/cmake/download-models.cmake. Status: SAFE -- Standard model download script with hash verification.
LLM auditresponse for common.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake module that defines compiler flags for the llama.cpp project. It includes `ggml/cmake/common.cmake` which is a local relative include, typical of CMake project organization. The function `llama_add_compile_flags` merely adds warning flags, fatal-warning flags, and sanitizer flags (thread, address, undefined) as compile options. There are no network requests, no obfuscated code, no dangerous command execution, and no system modifications outside normal build configuration. This is a routine packaging/development file with no evidence of supply-chain attack.
</details>
<summary>Standard CMake configuration, no security issues.</summary>
</security_assessment>

[4/10] Reviewing src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/build-info.cmake, src/llama.cpp-b9707/cmake/license.cmake...
+ Reviewed src/llama.cpp-b9707/cmake/common.cmake. Status: SAFE -- Standard CMake configuration, no security issues.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
This Makefile is a deliberately simple stub that prints an error message instructing users that the build system has migrated from Make to CMake and directs them to the official upstream build documentation. There is no malicious behavior present: no network requests, no file operations, no code execution, no obfuscation, and no data exfiltration. The file serves only as a deprecation notice.
</details>
<summary>Harmless Make-to-CMake migration notice stub.</summary>
</security_assessment>

[5/10] Reviewing src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/build-info.cmake, src/llama.cpp-b9707/cmake/license.cmake...
+ Reviewed src/llama.cpp-b9707/Makefile. Status: SAFE -- Harmless Make-to-CMake migration notice stub.
LLM auditresponse for license.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `license.cmake` defines two CMake functions (`license_add_file` and `license_generate`) that aggregate license text files and embed them as C++ string arrays into a build target. This is a standard, benign approach for bundling licenses in compiled applications. There are no network requests, obfuscated code, dangerous command execution (eval, curl, wget), or any file operations outside the build directory (`${CMAKE_BINARY_DIR}`). The only external file reads are from explicitly provided license files, which are expected packaging practice. No evidence of malicious or supply-chain attack behavior.
</details>
<summary>Standard CMake script for embedding licenses; no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/build-info.cmake...
+ Reviewed src/llama.cpp-b9707/cmake/license.cmake. Status: SAFE -- Standard CMake script for embedding licenses; no security issues.
LLM auditresponse for tools.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a simple argument dispatcher for llama.cpp tools (convert, quantize, run, server, etc.). It uses `exec` to invoke local binaries like `./llama-cli`, `./llama-quantize`, and `python3 ./convert_hf_to_gguf.py`. No network operations, no obfuscated code, no eval, no base64, no external downloads, and no unexpected file modifications. The `--all-in-one` section has a minor globbing pattern (`$(ls $1/$2/ggml-model-f16.bin*)`) that could fail on unusual filenames, but this is a packaging bug, not malicious behavior. The script only interacts with files inside the package’s own build or data directory and does not exfiltrate data or execute code from untrusted sources.
</details>
<summary>Safe argument dispatching script for llama.cpp tools.</summary>
</security_assessment>

[7/10] Reviewing src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/build-info.cmake...
+ Reviewed src/llama.cpp-b9707/.devops/tools.sh. Status: SAFE -- Safe argument dispatching script for llama.cpp tools.
LLM auditresponse for build-info.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMake build information script that extracts version metadata (commit hash, build number, compiler info) from the local Git repository. It uses `git rev-parse --short HEAD` and `git rev-list --count HEAD` only on the local source tree, which is normal for embedding build info in a compiled binary. There are no network requests, no downloads, no obfuscated or dangerous commands, and no system modifications outside of gathering build metadata. It does not exfiltrate data or execute untrusted code.
</details>
<summary>Standard build metadata extraction; no security issues.</summary>
</security_assessment>

[8/10] Reviewing src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh...
+ Reviewed src/llama.cpp-b9707/cmake/build-info.cmake. Status: SAFE -- Standard build metadata extraction; no security issues.
LLM auditresponse for build-xcframework.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard build helper for creating an Apple XCFramework from the llama.cpp library. It compiles static libraries for multiple Apple platforms (iOS, macOS, visionOS, tvOS) using CMake and Xcode, then combines them into dynamic frameworks and an XCFramework bundle.  

The script contains no network requests (beyond normal build tool operations), no obfuscated commands, no attempts to exfiltrate data, and no modifications outside the designated build directories. All operations are consistent with legitimate Apple framework packaging: removing previous builds, copying project headers, generating Info.plist, linking with system frameworks, creating debug symbols, and stripping binaries.  

No evidence of malicious behavior such as backdoors, credential theft, or execution of untrusted code was found. The script is a routine part of the upstream source tree and does not deviate from standard packaging practices.
</details>
<summary>Standard XCFramework build script for llama.cpp.</summary>
</security_assessment>

[9/10] Reviewing src/llama.cpp-b9707/CMakeLists.txt...
+ Reviewed src/llama.cpp-b9707/build-xcframework.sh. Status: SAFE -- Standard XCFramework build script for llama.cpp.
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This is the upstream CMakeLists.txt from the llama.cpp project, used as part of the AUR package's build system. It contains standard CMake configuration: setting build options, including subdirectories for the library, common utilities, examples, tools, and tests. There is no obfuscated code, no execution of downloaded scripts, no exfiltration of data, and no unexpected system modifications. The option `LLAMA_USE_PREBUILT_UI` refers to fetching a prebuilt web UI from HuggingFace, which is an upstream convenience feature—not a supply-chain injection. The file includes normal third-party dependencies (ggml, cpp-httplib) and follows standard packaging practices. No malicious or dangerous behavior is present.
</details>
<summary>Standard build file, no security issues.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/llama.cpp-b9707/CMakeLists.txt. Status: SAFE -- Standard build file, no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 44,486
  Completion Tokens: 7,814
  Total Tokens: 52,300
  Total Cost: $0.005410
  Execution Time: 153.91 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-llama.cpp-gfx1151.txt
Final Status: SAFE


No issues found.
