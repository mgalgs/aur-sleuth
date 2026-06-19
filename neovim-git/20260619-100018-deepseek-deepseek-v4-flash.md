---
package: neovim-git
pkgver: 0.13.0.r763.g08b47b1964
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 43080
completion_tokens: 9122
total_tokens: 52202
cost: 0.00551916
execution_time: 96.53
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T10:00:18Z
file_verdicts:
  - file: nvimdoc.hook
    status: safe
    summary: Standard hook for Neovim help tag updates; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior found.
  - file: src/neovim/cmake/GenerateVersion.cmake
    status: safe
    summary: Standard build script for version generation; no security concerns.
  - file: src/neovim/cmake/InstallHelpers.cmake
    status: safe
    summary: Standard CMake install helper with no malicious behavior.
  - file: src/neovim/cmake.deps/cmake/GetBinaryDeps.cmake
    status: safe
    summary: Standard CMake dependency download functions, no security issues.
  - file: src/neovim/Makefile
    status: safe
    summary: Standard Neovim Makefile; no malicious code found.
  - file: src/neovim/cmake.deps/cmake/BuildWasmtime.cmake
    status: safe
    summary: Standard CMake build file for Wasmtime, no threats found.
  - file: src/neovim/cmake.deps/cmake/BuildTreesitter.cmake
    status: safe
    summary: Standard CMake build file for tree-sitter dependency.
  - file: src/neovim/cmake.deps/cmake/BuildLuajit.cmake
    status: safe
    summary: Standard build dependency script, no security issues.
  - file: src/neovim/cmake.deps/cmake/BuildTreesitterParsers.cmake
    status: safe
    summary: Standard build helper, no signs of malicious behavior.
  - file: src/neovim/CMakeLists.txt
    status: safe
    summary: Standard upstream CMake build file with no malicious content.
  - file: src/neovim/cmake/Deps.cmake
    status: safe
    summary: Standard CMake dependency management; no malicious content.
---

Cloning https://aur.archlinux.org/neovim-git.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-6q0qml74...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-6q0qml74
Analyzing neovim-git AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-6q0qml74) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no code that executes maliciously during the narrow gate (fetching sources, sourcing the PKGBUILD, and running `pkgver()`). The top-level scope only sets variables and arrays; `pkgver()` reads version info from the already-cloned local repository using `sed` and `git describe`. The `source` array points to the legitimate upstream neovim git repository and two local files (nvimdoc and nvimdoc.hook) from the AUR package itself. No dangerous commands (curl, wget, eval, base64, etc.) are present in the executed scope. All potentially suspicious operations reside in `build()`, `check()`, and `package()`, which are not run by the specified commands.
</details>
<summary>Safe to fetch sources and source PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe to fetch sources and source PKGBUILD.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, nvimdoc.hook...
LLM auditresponse for nvimdoc.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman hook file for updating Neovim help tags when plugin documentation paths are modified. It triggers on Install/Upgrade/Remove operations for paths under `/usr/share/nvim/site/pack/dist/start/*/doc/` and runs the helper script `/usr/share/libalpm/scripts/nvimdoc` after the transaction. There is no obfuscation, no network requests, no dangerous commands, and no deviation from typical packaging practices. The hook merely invokes an expected system script to maintain help tag consistency.
</details>
<summary>Standard hook for Neovim help tag updates; no security concerns.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed nvimdoc.hook. Status: SAFE -- Standard hook for Neovim help tag updates; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS (-git) package. It clones the official Neovim repository from GitHub, builds using cmake, and installs files to standard locations. No obfuscated commands, suspicious network requests (other than the upstream git clone), or data exfiltration are present. The included hook (`nvimdoc.hook`) and script (`nvimdoc`) are typical for regenerating help tags and have verified checksums. All operations serve the package's stated purpose.
</details>
<summary>Standard AUR PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior found.
Reviewed all required files.
Deciding which files to review next...
Note: 3807 files available for selection; offering the 50 highest-priority to the model. 2854 lower-priority file(s) were not offered.
LLM response for file selection:
src/neovim/CMakeLists.txt
src/neovim/Makefile
src/neovim/cmake.deps/cmake/BuildTreesitterParsers.cmake
src/neovim/cmake.deps/cmake/BuildWasmtime.cmake
src/neovim/cmake.deps/cmake/GetBinaryDeps.cmake
src/neovim/cmake.deps/cmake/BuildLuajit.cmake
src/neovim/cmake.deps/cmake/BuildTreesitter.cmake
src/neovim/cmake/InstallHelpers.cmake
src/neovim/cmake/Deps.cmake
src/neovim/cmake/GenerateVersion.cmake
Decided to review 10 additional files: src/neovim/CMakeLists.txt, src/neovim/Makefile, src/neovim/cmake.deps/cmake/BuildTreesitterParsers.cmake, src/neovim/cmake.deps/cmake/BuildWasmtime.cmake, src/neovim/cmake.deps/cmake/GetBinaryDeps.cmake, src/neovim/cmake.deps/cmake/BuildLuajit.cmake, src/neovim/cmake.deps/cmake/BuildTreesitter.cmake, src/neovim/cmake/InstallHelpers.cmake, src/neovim/cmake/Deps.cmake, src/neovim/cmake/GenerateVersion.cmake
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/neovim/CMakeLists.txt...
[0/10] Reviewing src/neovim/CMakeLists.txt, src/neovim/Makefile...
[0/10] Reviewing src/neovim/CMakeLists.txt, src/neovim/Makefile, src/neovim/cmake.deps/cmake/BuildTreesitterParsers.cmake...
[0/10] Reviewing src/neovim/CMakeLists.txt, src/neovim/Makefile, src/neovim/cmake.deps/cmake/BuildTreesitterParsers.cmake, src/neovim/cmake.deps/cmake/BuildWasmtime.cmake...
[0/10] Reviewing src/neovim/CMakeLists.txt, src/neovim/Makefile, src/neovim/cmake.deps/cmake/BuildTreesitterParsers.cmake, src/neovim/cmake.deps/cmake/BuildWasmtime.cmake, src/neovim/cmake.deps/cmake/GetBinaryDeps.cmake...
[0/10] Reviewing src/neovim/CMakeLists.txt, src/neovim/Makefile, src/neovim/cmake.deps/cmake/BuildTreesitterParsers.cmake, src/neovim/cmake.deps/cmake/BuildWasmtime.cmake, src/neovim/cmake.deps/cmake/GetBinaryDeps.cmake, src/neovim/cmake/InstallHelpers.cmake...
[0/10] Reviewing src/neovim/CMakeLists.txt, src/neovim/Makefile, src/neovim/cmake.deps/cmake/BuildTreesitterParsers.cmake, src/neovim/cmake.deps/cmake/BuildWasmtime.cmake, src/neovim/cmake.deps/cmake/GetBinaryDeps.cmake, src/neovim/cmake/InstallHelpers.cmake, src/neovim/cmake/Deps.cmake...
[0/10] Reviewing src/neovim/CMakeLists.txt, src/neovim/Makefile, src/neovim/cmake.deps/cmake/BuildTreesitterParsers.cmake, src/neovim/cmake.deps/cmake/BuildWasmtime.cmake, src/neovim/cmake.deps/cmake/GetBinaryDeps.cmake, src/neovim/cmake/InstallHelpers.cmake, src/neovim/cmake/Deps.cmake, src/neovim/cmake.deps/cmake/BuildTreesitter.cmake...
[0/10] Reviewing src/neovim/CMakeLists.txt, src/neovim/Makefile, src/neovim/cmake.deps/cmake/BuildTreesitterParsers.cmake, src/neovim/cmake.deps/cmake/BuildWasmtime.cmake, src/neovim/cmake.deps/cmake/GetBinaryDeps.cmake, src/neovim/cmake/InstallHelpers.cmake, src/neovim/cmake/Deps.cmake, src/neovim/cmake.deps/cmake/BuildTreesitter.cmake, src/neovim/cmake.deps/cmake/BuildLuajit.cmake...
[0/10] Reviewing src/neovim/CMakeLists.txt, src/neovim/Makefile, src/neovim/cmake.deps/cmake/BuildTreesitterParsers.cmake, src/neovim/cmake.deps/cmake/BuildWasmtime.cmake, src/neovim/cmake.deps/cmake/GetBinaryDeps.cmake, src/neovim/cmake/InstallHelpers.cmake, src/neovim/cmake/Deps.cmake, src/neovim/cmake.deps/cmake/BuildTreesitter.cmake, src/neovim/cmake.deps/cmake/BuildLuajit.cmake, src/neovim/cmake/GenerateVersion.cmake...
LLM auditresponse for GenerateVersion.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake script generates version metadata for the Neovim build by running `git describe` on the local repository and constructing version strings. It writes a header file with `#define` macros. All operations are confined to the build directory and the project's own `.git` metadata. There are no network requests, no arbitrary code execution, no obfuscation, and no access to sensitive system files or data. This is standard, expected build infrastructure for a VCS-based package like neovim-git.</details>
<summary>Standard build script for version generation; no security concerns.</summary>
</security_assessment>

[1/10] Reviewing src/neovim/CMakeLists.txt, src/neovim/Makefile, src/neovim/cmake.deps/cmake/BuildTreesitterParsers.cmake, src/neovim/cmake.deps/cmake/BuildWasmtime.cmake, src/neovim/cmake.deps/cmake/GetBinaryDeps.cmake, src/neovim/cmake/InstallHelpers.cmake, src/neovim/cmake/Deps.cmake, src/neovim/cmake.deps/cmake/BuildTreesitter.cmake, src/neovim/cmake.deps/cmake/BuildLuajit.cmake...
+ Reviewed src/neovim/cmake/GenerateVersion.cmake. Status: SAFE -- Standard build script for version generation; no security concerns.
LLM auditresponse for InstallHelpers.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake helper module used to ensure proper installation directory and file permissions during the build process. It uses only built-in CMake commands (`cmake_parse_arguments`, `file(INSTALL ...)`, `install()`, `get_filename_component`) and does not perform any network requests, download code, execute arbitrary shell commands, exfiltrate data, or contain obfuscated or encoded payloads. The comment about a "hidden option of CMake" refers to a well-known internal CMake feature that has been stable across multiple versions and is not a security concern. The logic is purely about setting ownership and permission bits during installation, consistent with standard packaging practices.
</details>
<summary>
Standard CMake install helper with no malicious behavior.</summary>
</security_assessment>

[2/10] Reviewing src/neovim/CMakeLists.txt, src/neovim/Makefile, src/neovim/cmake.deps/cmake/BuildTreesitterParsers.cmake, src/neovim/cmake.deps/cmake/BuildWasmtime.cmake, src/neovim/cmake.deps/cmake/GetBinaryDeps.cmake, src/neovim/cmake/Deps.cmake, src/neovim/cmake.deps/cmake/BuildTreesitter.cmake, src/neovim/cmake.deps/cmake/BuildLuajit.cmake...
+ Reviewed src/neovim/cmake/InstallHelpers.cmake. Status: SAFE -- Standard CMake install helper with no malicious behavior.
LLM auditresponse for GetBinaryDeps.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file defines CMake helper functions for downloading and installing binary dependencies as part of Neovim's build process. It uses `ExternalProject_Add` with URL and SHA256 hash variables that are expected to be supplied by the upstream build configuration. The functions are standard CMake patterns for fetching third-party tools. There is no obfuscated code, no hardcoded suspicious URLs, no unexpected network requests, and no execution of downloaded code outside of CMake's controlled build steps. The use of SHA256 checksums is a good security practice. This file is part of Neovim's official build system and does not exhibit any supply-chain attack indicators.
</details>
<summary>Standard CMake dependency download functions, no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/neovim/CMakeLists.txt, src/neovim/Makefile, src/neovim/cmake.deps/cmake/BuildTreesitterParsers.cmake, src/neovim/cmake.deps/cmake/BuildWasmtime.cmake, src/neovim/cmake/Deps.cmake, src/neovim/cmake.deps/cmake/BuildTreesitter.cmake, src/neovim/cmake.deps/cmake/BuildLuajit.cmake...
+ Reviewed src/neovim/cmake.deps/cmake/GetBinaryDeps.cmake. Status: SAFE -- Standard CMake dependency download functions, no security issues.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
This Makefile is the standard build file for the Neovim project. It orchestrates CMake-based builds, handles cross-platform differences (Windows vs Unix), and defines targets for building, testing, cleaning, and generating appimages. All commands are routine for a C/C++ + CMake project: `mkdir`, `touch`, `rm`, `cmake`, `ninja`, `make`, and invocations of scripts inside the project source (`scripts/genappimage.sh`). There is no evidence of malicious behavior—no encoded/obfuscated payloads, no unauthorised network requests (the only network operations would be triggered by CMake's own dependency downloading, which is standard `ExternalProject` usage in cmake.deps), no data exfiltration, and no execution of untrusted downloaded content. The `deps` target relies on CMake's own build process for dependencies, which is expected and not inherently suspicious. The file conforms entirely to normal packaging and build practices.
</details>
<summary>Standard Neovim Makefile; no malicious code found.</summary>
</security_assessment>

[4/10] Reviewing src/neovim/CMakeLists.txt, src/neovim/cmake.deps/cmake/BuildTreesitterParsers.cmake, src/neovim/cmake.deps/cmake/BuildWasmtime.cmake, src/neovim/cmake/Deps.cmake, src/neovim/cmake.deps/cmake/BuildTreesitter.cmake, src/neovim/cmake.deps/cmake/BuildLuajit.cmake...
+ Reviewed src/neovim/Makefile. Status: SAFE -- Standard Neovim Makefile; no malicious code found.
LLM auditresponse for BuildWasmtime.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake file is a standard build dependency configuration for the Wasmtime runtime, which is an upstream dependency of Neovim's tree-sitter integration. It uses CMake's `ExternalProject_Add` to download and build Wasmtime from its official source. The build options (e.g., `WASMTIME_FASTEST_RUNTIME`, `WASMTIME_DISABLE_ALL_FEATURES`, enabling specific features like Cranelift and GC DRC) are legitimate configuration flags for optimizing and reducing the build. There is no obfuscation, suspicious network requests, encoded commands, or any operations that deviate from normal packaging practices. The file contains no malicious code or backdoor behavior.
</details>
<summary>Standard CMake build file for Wasmtime, no threats found.</summary>
</security_assessment>

[5/10] Reviewing src/neovim/CMakeLists.txt, src/neovim/cmake.deps/cmake/BuildTreesitterParsers.cmake, src/neovim/cmake/Deps.cmake, src/neovim/cmake.deps/cmake/BuildTreesitter.cmake, src/neovim/cmake.deps/cmake/BuildLuajit.cmake...
+ Reviewed src/neovim/cmake.deps/cmake/BuildWasmtime.cmake. Status: SAFE -- Standard CMake build file for Wasmtime, no threats found.
LLM auditresponse for BuildTreesitter.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake file is a standard build integration for the `tree-sitter` library, a legitimate dependency of Neovim. It uses CMake's `ExternalProject_Add` to download and build tree-sitter from its upstream source, with optional WASM support. There is no obfuscation, no unexpected network destinations, no dangerous command execution (curl, wget, eval, base64), and no exfiltration or backdoor. The `DEPS_IGNORE_SHA` variable suggests checksums may be skipped, but this is typical for development or VCS-based builds and does not indicate malice.
</details>
<summary>Standard CMake build file for tree-sitter dependency.</summary>
</security_assessment>

[6/10] Reviewing src/neovim/CMakeLists.txt, src/neovim/cmake.deps/cmake/BuildTreesitterParsers.cmake, src/neovim/cmake/Deps.cmake, src/neovim/cmake.deps/cmake/BuildLuajit.cmake...
+ Reviewed src/neovim/cmake.deps/cmake/BuildTreesitter.cmake. Status: SAFE -- Standard CMake build file for tree-sitter dependency.
LLM auditresponse for BuildLuajit.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a CMake script for building the LuaJIT dependency as part of the Neovim build process. It defines a function `BuildLuajit` that uses `ExternalProject_Add` to configure, build, and install LuaJIT from previously downloaded sources. The script handles multiple platforms (Unix, Cygwin, MinGW, MSVC) with appropriate compiler flags and install commands that copy built artifacts (libraries, headers, executables) into the dependency installation directory. All operations (`make`, `cmake -E copy`, `cmake -E make_directory`) are standard build and install steps. No network requests (curl/wget), no obfuscated code, no eval, no base64, no unexpected file system modifications outside the package build area. There is no evidence of exfiltration, backdoors, or supply-chain injection. The script follows normal CMake patterns for building a third-party library.
</details>
<summary>Standard build dependency script, no security issues.</summary>
</security_assessment>

[7/10] Reviewing src/neovim/CMakeLists.txt, src/neovim/cmake.deps/cmake/BuildTreesitterParsers.cmake, src/neovim/cmake/Deps.cmake...
+ Reviewed src/neovim/cmake.deps/cmake/BuildLuajit.cmake. Status: SAFE -- Standard build dependency script, no security issues.
LLM auditresponse for BuildTreesitterParsers.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard CMake helper used by Neovim&#39;s build system to download and build tree-sitter parsers. It uses `ExternalProject_Add` for each parser language and optionally downloads a Lua WASM binary from a configured URL with a SHA256 hash check. There is no obfuscated code, no unexpected network destinations, no dangerous commands (eval, base64, curl|bash), and no exfiltration or file operations outside the build tree. The use of `DEPS_IGNORE_SHA` to skip checksums is a common packaging convenience (especially for VCS builds) and does not rise to the level of malicious behavior. The script only interacts with the project&#39;s own declared dependencies and build system.
</details>
<summary>Standard build helper, no signs of malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/neovim/CMakeLists.txt, src/neovim/cmake/Deps.cmake...
+ Reviewed src/neovim/cmake.deps/cmake/BuildTreesitterParsers.cmake. Status: SAFE -- Standard build helper, no signs of malicious behavior.
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This is the upstream CMake build file for Neovim, not an injected AUR payload. It follows standard CMake packaging practices: setting build options, finding dependencies, and defining build/lint/install targets. All external downloads (e.g., uncrustify, lua-language-server) are fetched from the project's own upstream or well-known trusted origins (GitHub releases). There is no obfuscated code, base64 decoding, `eval`, `curl|bash`, or any unexpected network requests that would exfiltrate data or execute attacker-controlled code. The file does not manipulate files outside Neovim's build scope, and the use of `ExternalProject_Add` with `URL` is normal for acquiring build tools. No genuinely malicious behavior is present.
</details>
<summary>Standard upstream CMake build file with no malicious content.</summary>
</security_assessment>

[9/10] Reviewing src/neovim/cmake/Deps.cmake...
+ Reviewed src/neovim/CMakeLists.txt. Status: SAFE -- Standard upstream CMake build file with no malicious content.
LLM auditresponse for Deps.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMake file used to manage external dependencies for the Neovim build. It reads a `deps.txt` file to obtain URLs and SHA256 hashes for dependencies, then configures `ExternalProject` calls to download and build them. The file performs no obfuscated operations, no direct execution of downloaded code (beyond standard CMake build commands), and no data exfiltration. The use of `DEPS_IGNORE_SHA` to skip hash verification is a potential hygiene concern, but it is a conditional option and not inherently malicious; it may be used for development builds or testing. No genuinely malicious behavior such as backdoors, reverse shells, or credential theft is present.
</details>
<summary>Standard CMake dependency management; no malicious content.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/neovim/cmake/Deps.cmake. Status: SAFE -- Standard CMake dependency management; no malicious content.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 43,080
  Completion Tokens: 9,122
  Total Tokens: 52,202
  Total Cost: $0.005519
  Execution Time: 96.53 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-neovim-git.txt
Final Status: SAFE


No issues found.
