---
package: llama.cpp-vulkan
pkgver: b9707
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 42676
completion_tokens: 10146
total_tokens: 52822
cost: 0.00566712
execution_time: 220.89
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T08:22:12Z
file_verdicts:
  - file: llama.cpp.conf
    status: safe
    summary: Simple config file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Clean AUR PKGBUILD from official upstream, no signs of malice.
  - file: src/llama.cpp-b9707/cmake/common.cmake
    status: safe
    summary: Standard CMake build configuration, no security issues.
  - file: src/llama.cpp-b9707/cmake/build-info.cmake
    status: safe
    summary: Standard CMake build-info script, no security concerns.
  - file: src/llama.cpp-b9707/Makefile
    status: safe
    summary: Benign error message, no security concerns.
  - file: llama.cpp.service
    status: safe
    summary: Clean systemd service unit, no security issues.
  - file: src/llama.cpp-b9707/cmake/arm64-apple-clang.cmake
    status: safe
    summary: Standard CMake cross-compilation toolchain, no security issues.
  - file: src/llama.cpp-b9707/CMakeLists.txt
    status: safe
    summary: Standard CMake build file, no malicious content.
  - file: src/llama.cpp-b9707/cmake/arm64-windows-llvm.cmake
    status: safe
    summary: Standard CMake toolchain file, no malicious content.
  - file: src/llama.cpp-b9707/cmake/arm64-linux-clang.cmake
    status: safe
    summary: Standard CMake toolchain file; no security issues.
  - file: src/llama.cpp-b9707/.devops/tools.sh
    status: safe
    summary: Legitimate llama.cpp command dispatcher; no supply-chain attack indicators.
  - file: src/llama.cpp-b9707/build-xcframework.sh
    status: safe
    summary: Legitimate build script, no malicious activity found.
---

Cloning https://aur.archlinux.org/llama.cpp-vulkan.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-x6brrzmw...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-x6brrzmw
Analyzing llama.cpp-vulkan AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-x6brrzmw) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope (the only code executed by `makepkg --printsrcinfo` or `makepkg --nobuild --nodeps --noprepare`) consists entirely of variable and array assignments, plus comments. There are no command substitutions, no `pkgver()` function, and no other executable statements that would run when the file is sourced. The `source` array references three HTTPS URLs—two from `github.com/ggml-org` (the upstream tarball) and one from `raw.githubusercontent.com/Orion-zhen/aur-packages` (the maintainer's auxiliary config/service files). These are standard and expected for an AUR package. No dangerous network requests, data exfiltration, or code execution occurs during the source-fetch and parsing steps. The `prepare()`, `build()`, and `package()` functions contain logic that will be reviewed in a later, more comprehensive audit, but they are not invoked by the two commands in scope.
</details>
<summary>Top-level scope is safe; no dangerous code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Top-level scope is safe; no dangerous code execution.[/]
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
The file `llama.cpp.conf` contains a single line setting the environment variable `LLAMA_ARGS` to an empty string. This is a standard configuration file for the llama.cpp application, used to pass arguments to the executable at runtime. There is no executable code, no network requests, no file operations, and no obfuscation. The content is completely benign and consistent with normal packaging practices.
</details>
<summary>Simple config file with no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed llama.cpp.conf. Status: SAFE -- Simple config file with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is standard for an AUR package building `llama.cpp` with Vulkan support from the official upstream source. The source tarball is pinned to a specific tag (`b9707`) and has an explicit SHA-256 checksum. The only additional sources are a systemd service file and a configuration file from the maintainer's own GitHub repository, which is normal practice for AUR packaging.

All build steps are conventional: running the upstream `cmake` and `npm` toolchains, installing into the standard prefix, and placing service/config files in expected paths. There is no obfuscated code, no `eval`/`base64`/`curl|bash` patterns, no unexpected network calls, and no data exfiltration. The `prepare()` function's `.git` directory workaround is a documented fix for Tailwind's upward walking, not a security threat.

The use of `LLAMA_BUILD_EXTRA_ARGS` and the `$CI` environment variable check are normal customization channels and do not constitute malice. The entire file does what a legitimate AUR package should: fetch the upstream source, build it, and install it.
</details>
<summary>Clean AUR PKGBUILD from official upstream, no signs of malice.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean AUR PKGBUILD from official upstream, no signs of malice.
Reviewed all required files.
Deciding which files to review next...
Note: 2942 files available for selection; offering the 50 highest-priority to the model. 2601 lower-priority file(s) were not offered.
LLM response for file selection:
llama.cpp.service
src/llama.cpp-b9707/.devops/tools.sh
src/llama.cpp-b9707/CMakeLists.txt
src/llama.cpp-b9707/Makefile
src/llama.cpp-b9707/build-xcframework.sh
src/llama.cpp-b9707/cmake/arm64-apple-clang.cmake
src/llama.cpp-b9707/cmake/arm64-linux-clang.cmake
src/llama.cpp-b9707/cmake/arm64-windows-llvm.cmake
src/llama.cpp-b9707/cmake/build-info.cmake
src/llama.cpp-b9707/cmake/common.cmake
Decided to review 10 additional files: llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/arm64-apple-clang.cmake, src/llama.cpp-b9707/cmake/arm64-linux-clang.cmake, src/llama.cpp-b9707/cmake/arm64-windows-llvm.cmake, src/llama.cpp-b9707/cmake/build-info.cmake, src/llama.cpp-b9707/cmake/common.cmake
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing llama.cpp.service...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/Makefile...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/cmake/arm64-linux-clang.cmake...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/cmake/arm64-linux-clang.cmake, src/llama.cpp-b9707/cmake/arm64-apple-clang.cmake...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/cmake/arm64-linux-clang.cmake, src/llama.cpp-b9707/cmake/arm64-apple-clang.cmake, src/llama.cpp-b9707/cmake/arm64-windows-llvm.cmake...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/cmake/arm64-linux-clang.cmake, src/llama.cpp-b9707/cmake/arm64-apple-clang.cmake, src/llama.cpp-b9707/cmake/arm64-windows-llvm.cmake, src/llama.cpp-b9707/cmake/build-info.cmake...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/cmake/arm64-linux-clang.cmake, src/llama.cpp-b9707/cmake/arm64-apple-clang.cmake, src/llama.cpp-b9707/cmake/arm64-windows-llvm.cmake, src/llama.cpp-b9707/cmake/build-info.cmake, src/llama.cpp-b9707/cmake/common.cmake...
LLM auditresponse for common.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake module that configures compiler warning and sanitizer flags for the llama.cpp project. It includes another project-local CMake file (`ggml/cmake/common.cmake`) and defines a function to add compile flags based on build options. There is no network activity, file manipulation outside the build tree, obfuscated code, or any behavior that deviates from normal build system scripting. All operations are confined to compiler flag configuration.
</details>
<summary>Standard CMake build configuration, no security issues.</summary>
</security_assessment>

[1/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/cmake/arm64-linux-clang.cmake, src/llama.cpp-b9707/cmake/arm64-apple-clang.cmake, src/llama.cpp-b9707/cmake/arm64-windows-llvm.cmake, src/llama.cpp-b9707/cmake/build-info.cmake...
+ Reviewed src/llama.cpp-b9707/cmake/common.cmake. Status: SAFE -- Standard CMake build configuration, no security issues.
LLM auditresponse for build-info.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This `build-info.cmake` file is a standard CMake utility script used by many open-source projects to embed Git commit hash, build number, compiler, and target platform into the build. It performs only local Git operations (`rev-parse --short HEAD` and `rev-list --count HEAD`) with no network communication, no downloads, no obfuscated code, no unexpected file operations, and no execution of untrusted content. The script does not deviate from normal packaging or build practices. There is no evidence of malicious behavior.
</details>
<summary>Standard CMake build-info script, no security concerns.</summary>
</security_assessment>

[2/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/cmake/arm64-linux-clang.cmake, src/llama.cpp-b9707/cmake/arm64-apple-clang.cmake, src/llama.cpp-b9707/cmake/arm64-windows-llvm.cmake...
+ Reviewed src/llama.cpp-b9707/cmake/build-info.cmake. Status: SAFE -- Standard CMake build-info script, no security concerns.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a simple Makefile that prints an error message informing the user that the build system has switched to CMake and provides a link to the official documentation. There are no network requests, file operations, obfuscation, or any other potentially dangerous commands. The URL points to the legitimate upstream repository. This is a standard practice for deprecating a build method.
</details>
<summary>Benign error message, no security concerns.</summary>
</security_assessment>

[3/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/arm64-linux-clang.cmake, src/llama.cpp-b9707/cmake/arm64-apple-clang.cmake, src/llama.cpp-b9707/cmake/arm64-windows-llvm.cmake...
+ Reviewed src/llama.cpp-b9707/Makefile. Status: SAFE -- Benign error message, no security concerns.
LLM auditresponse for llama.cpp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the llama.cpp server. It defines a simple service that reads environment variables from `/etc/conf.d/llama.cpp` and runs `/usr/bin/llama-server` with those arguments. It includes typical directives like `ExecReload`, `Restart=on-failure`, and standard target dependencies. There is no obfuscated code, no network requests, no unexpected file operations, and no deviations from normal packaging practices.
</details>
<summary>Clean systemd service unit, no security issues.</summary>
</security_assessment>

[4/10] Reviewing src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/arm64-linux-clang.cmake, src/llama.cpp-b9707/cmake/arm64-apple-clang.cmake, src/llama.cpp-b9707/cmake/arm64-windows-llvm.cmake...
+ Reviewed llama.cpp.service. Status: SAFE -- Clean systemd service unit, no security issues.
LLM auditresponse for arm64-apple-clang.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMake toolchain file for cross-compiling for ARM64 Apple (Darwin) systems. It defines the system name, processor, target triple, compiler paths, and compilation flags. There are no suspicious network requests, obfuscated code, unexpected file operations, or malicious commands. The flags are typical optimization and warning flags. The file is consistent with normal packaging practices for a cross-compilation toolchain.
</details>
<summary>Standard CMake cross-compilation toolchain, no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/arm64-linux-clang.cmake, src/llama.cpp-b9707/cmake/arm64-windows-llvm.cmake...
+ Reviewed src/llama.cpp-b9707/cmake/arm64-apple-clang.cmake. Status: SAFE -- Standard CMake cross-compilation toolchain, no security issues.
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This `CMakeLists.txt` is a standard CMake build configuration for the upstream `llama.cpp` project. It sets build options, includes CTest for testing, adds subdirectories for source, common, examples, tools, and install targets. There are no obfuscated commands, no network requests (e.g., `curl`, `wget`), no file exfiltration, no unexpected system modifications, and no references to external code outside the project&#x27;s own repository structure. The `LLAMA_USE_PREBUILT_UI` option mentions a “HF Bucket” but the download logic is not present in this file—it would be in separate cmake scripts. All operations are consistent with normal packaging and building of C/C++ software. No evidence of a supply-chain attack or malicious behavior.
</details>
<summary>Standard CMake build file, no malicious content.</summary>
</security_assessment>

[6/10] Reviewing src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/arm64-linux-clang.cmake, src/llama.cpp-b9707/cmake/arm64-windows-llvm.cmake...
+ Reviewed src/llama.cpp-b9707/CMakeLists.txt. Status: SAFE -- Standard CMake build file, no malicious content.
LLM auditresponse for arm64-windows-llvm.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake toolchain file for cross-compiling to Windows on ARM64 using LLVM/Clang. It sets the target system, processor, compiler, and compiler flags. There are no network requests, obfuscated code, dangerous commands (eval, curl, wget, base64), or unexpected file operations. The compiler flags are typical for performance optimization and warning suppression. The content is consistent with legitimate packaging practices for the llama.cpp-vulkan package.
</details>
<summary>Standard CMake toolchain file, no malicious content.</summary>
</security_assessment>

[7/10] Reviewing src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/cmake/arm64-linux-clang.cmake...
+ Reviewed src/llama.cpp-b9707/cmake/arm64-windows-llvm.cmake. Status: SAFE -- Standard CMake toolchain file, no malicious content.
LLM auditresponse for arm64-linux-clang.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMake toolchain file for cross-compiling to ARM64 Linux using Clang. It sets compiler paths, target triple, and compiler flags. There are no network requests, file downloads, obfuscated code, dangerous commands (eval, base64, curl, wget), or any behavior that deviates from normal packaging or build configuration. The flags are standard optimization and warning suppression flags. No evidence of supply chain attack or malicious intent.
</details>
<summary>Standard CMake toolchain file; no security issues.</summary>
</security_assessment>

[8/10] Reviewing src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/build-xcframework.sh...
+ Reviewed src/llama.cpp-b9707/cmake/arm64-linux-clang.cmake. Status: SAFE -- Standard CMake toolchain file; no security issues.
LLM auditresponse for tools.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard upstream helper for the llama.cpp project that dispatches to various sub-commands (convert, quantize, run, benchmark, etc.). All executed commands are local binaries that are part of the llama.cpp package itself. There are no network requests, obfuscated code, encoded payloads, or suspicious file operations beyond reading user-specified model files. The loop in the `--all-in-one` branch has a bug (using `exec` inside a loop prevents repetition), but that is a quality issue, not a security threat. No malicious behavior is present.
</details>
<summary>
Legitimate llama.cpp command dispatcher; no supply-chain attack indicators.
</summary>
</security_assessment>

[9/10] Reviewing src/llama.cpp-b9707/build-xcframework.sh...
+ Reviewed src/llama.cpp-b9707/.devops/tools.sh. Status: SAFE -- Legitimate llama.cpp command dispatcher; no supply-chain attack indicators.
LLM auditresponse for build-xcframework.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a build script for creating the llama.cpp XCFramework for Apple platforms. It uses standard Apple development tools (cmake, xcrun, dsymutil, strip, libtool) and follows normal practices for building universal frameworks. There are no network requests, obfuscated code, eval calls, or unexpected system modifications. All operations are confined to the build directory and output framework. The script is part of the upstream llama.cpp project's own build system, not an injected supply-chain attack.
</details>
<summary>Legitimate build script, no malicious activity found.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/llama.cpp-b9707/build-xcframework.sh. Status: SAFE -- Legitimate build script, no malicious activity found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 42,676
  Completion Tokens: 10,146
  Total Tokens: 52,822
  Total Cost: $0.005667
  Execution Time: 220.89 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-llama.cpp-vulkan.txt
Final Status: SAFE


No issues found.
