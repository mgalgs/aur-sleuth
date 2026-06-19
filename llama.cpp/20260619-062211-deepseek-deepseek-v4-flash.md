---
package: llama.cpp
pkgver: b9716
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 5790943c1b39200ecdf449522971aa7db90ade4a
prompt_tokens: 71129
completion_tokens: 7837
total_tokens: 78966
cost: 0.00781227
execution_time: 68.44
files_reviewed: 13
files_skipped: 0
date: 2026-06-19T06:22:11Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators.
  - file: llama.cpp.install
    status: safe
    summary: Informational install script with no malicious operations.
  - file: tmpfiles.conf
    status: safe
    summary: Standard tmpfiles configuration for package state directory.
  - file: src/llama.cpp-b9716/Makefile
    status: safe
    summary: Benign deprecation notice, no malicious behavior.
  - file: src/llama.cpp-b9716/cmake/download-models.cmake
    status: safe
    summary: Standard model download script with TLS and hash verification.
  - file: src/llama.cpp-b9716/CMakeLists.txt
    status: safe
    summary: Standard CMake build file; no malicious content.
  - file: src/llama.cpp-b9716/.devops/tools.sh
    status: safe
    summary: Clean wrapper script for llama.cpp tools.
  - file: src/llama.cpp-b9716/cmake/common.cmake
    status: safe
    summary: Standard CMake build file with no malicious code.
  - file: llama.cpp.service
    status: safe
    summary: Standard systemd service; no security concerns.
  - file: src/llama.cpp-b9716/conversion/__init__.py
    status: safe
    summary: Standard dynamic imports; no malicious behavior found.
  - file: src/llama.cpp-b9716/build-xcframework.sh
    status: safe
    summary: Benign build script, no security issues.
  - file: src/llama.cpp-b9716/cmake/git-vars.cmake
    status: safe
    summary: Standard CMake script to extract Git version info; no security issues.
  - file: src/llama.cpp-b9716/conversion/base.py
    status: safe
    summary: Standard model conversion code, no malicious indicators.
---

Cloning https://aur.archlinux.org/llama.cpp.git to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-untzy3pa...
Cloned repository to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-untzy3pa
Analyzing llama.cpp AUR package (working in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-untzy3pa) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables and arrays at the global scope. No `pkgver()` function exists, and no top-level command substitutions or function calls trigger execution when sourced. The `source` array fetches an official upstream tarball (with a pinned checksum) and local auxiliary files from the AUR repository. There is no malicious code that could run during `makepkg --nobuild --nodeps --noprepare` or `--printsrcinfo`. The `prepare()`, `build()`, and `package()` functions are skipped and are out of scope for this gate.
</details>
<summary>No malicious code runs at parse-time or fetch-time.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious code runs at parse-time or fetch-time.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, llama.cpp.install...
[0/3] Reviewing PKGBUILD, llama.cpp.install, tmpfiles.conf...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. The source is downloaded from the official llama.cpp GitHub releases with pinned checksums. There are no suspicious network requests, obfuscated code, or dangerous commands like `eval`, `curl|bash`, or base64 decoding. The build uses CMake in a standard way, and the `package()` function installs the application and its configuration files to expected locations. The inclusion of a `CI` environment variable check and user-customizable `LLAMA_BUILD_EXTRA_ARGS` is common and not indicative of malice.
</details>
<summary>Standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[1/3] Reviewing llama.cpp.install, tmpfiles.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators.
LLM auditresponse for llama.cpp.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains only informational `echo` statements that guide the user on how to manage model files and the dedicated system user/group after installation or removal. There are no network requests, no dangerous command execution (e.g., `curl`, `wget`, `eval`, `base64`), no obfuscated code, no unexpected file modifications, and no execution of untrusted content. All actions are advisory comments printed to the terminal; the script does not perform any operations itself. This is a standard AUR install script that conforms to normal packaging practices.
</details>
<summary>Informational install script with no malicious operations.</summary>
</security_assessment>

[2/3] Reviewing tmpfiles.conf...
+ Reviewed llama.cpp.install. Status: SAFE -- Informational install script with no malicious operations.
LLM auditresponse for tmpfiles.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd-tmpfiles configuration snippet. It creates a directory `/var/lib/llama-cpp` with appropriate permissions (0750) and ownership (llama-cpp:llama-cpp), and applies SELinux context restoration to it. Such files are common in Arch Linux packages to ensure runtime state directories exist with correct permissions. No suspicious or malicious content is present.
</details>
<summary>Standard tmpfiles configuration for package state directory.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed tmpfiles.conf. Status: SAFE -- Standard tmpfiles configuration for package state directory.
Reviewed all required files.
Deciding which files to review next...
Note: 2947 files available for selection; offering the 50 highest-priority to the model. 2606 lower-priority file(s) were not offered.
LLM response for file selection:
llama.cpp.service
src/llama.cpp-b9716/.devops/tools.sh
src/llama.cpp-b9716/CMakeLists.txt
src/llama.cpp-b9716/Makefile
src/llama.cpp-b9716/build-xcframework.sh
src/llama.cpp-b9716/cmake/download-models.cmake
src/llama.cpp-b9716/cmake/common.cmake
src/llama.cpp-b9716/conversion/__init__.py
src/llama.cpp-b9716/conversion/base.py
src/llama.cpp-b9716/cmake/git-vars.cmake
Decided to review 10 additional files: llama.cpp.service, src/llama.cpp-b9716/.devops/tools.sh, src/llama.cpp-b9716/CMakeLists.txt, src/llama.cpp-b9716/Makefile, src/llama.cpp-b9716/build-xcframework.sh, src/llama.cpp-b9716/cmake/download-models.cmake, src/llama.cpp-b9716/cmake/common.cmake, src/llama.cpp-b9716/conversion/__init__.py, src/llama.cpp-b9716/conversion/base.py, src/llama.cpp-b9716/cmake/git-vars.cmake
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/llama.cpp-b9716/.devops/tools.sh...
[0/10] Reviewing src/llama.cpp-b9716/.devops/tools.sh, llama.cpp.service...
[0/10] Reviewing src/llama.cpp-b9716/.devops/tools.sh, llama.cpp.service, src/llama.cpp-b9716/CMakeLists.txt...
[0/10] Reviewing src/llama.cpp-b9716/.devops/tools.sh, llama.cpp.service, src/llama.cpp-b9716/CMakeLists.txt, src/llama.cpp-b9716/Makefile...
[0/10] Reviewing src/llama.cpp-b9716/.devops/tools.sh, llama.cpp.service, src/llama.cpp-b9716/CMakeLists.txt, src/llama.cpp-b9716/Makefile, src/llama.cpp-b9716/build-xcframework.sh...
[0/10] Reviewing src/llama.cpp-b9716/.devops/tools.sh, llama.cpp.service, src/llama.cpp-b9716/CMakeLists.txt, src/llama.cpp-b9716/Makefile, src/llama.cpp-b9716/build-xcframework.sh, src/llama.cpp-b9716/cmake/common.cmake...
[0/10] Reviewing src/llama.cpp-b9716/.devops/tools.sh, llama.cpp.service, src/llama.cpp-b9716/CMakeLists.txt, src/llama.cpp-b9716/Makefile, src/llama.cpp-b9716/build-xcframework.sh, src/llama.cpp-b9716/cmake/common.cmake, src/llama.cpp-b9716/conversion/__init__.py...
[0/10] Reviewing src/llama.cpp-b9716/.devops/tools.sh, llama.cpp.service, src/llama.cpp-b9716/CMakeLists.txt, src/llama.cpp-b9716/Makefile, src/llama.cpp-b9716/build-xcframework.sh, src/llama.cpp-b9716/cmake/common.cmake, src/llama.cpp-b9716/conversion/__init__.py, src/llama.cpp-b9716/conversion/base.py...
[0/10] Reviewing src/llama.cpp-b9716/.devops/tools.sh, llama.cpp.service, src/llama.cpp-b9716/CMakeLists.txt, src/llama.cpp-b9716/Makefile, src/llama.cpp-b9716/build-xcframework.sh, src/llama.cpp-b9716/cmake/common.cmake, src/llama.cpp-b9716/conversion/__init__.py, src/llama.cpp-b9716/conversion/base.py, src/llama.cpp-b9716/cmake/download-models.cmake...
[0/10] Reviewing src/llama.cpp-b9716/.devops/tools.sh, llama.cpp.service, src/llama.cpp-b9716/CMakeLists.txt, src/llama.cpp-b9716/Makefile, src/llama.cpp-b9716/build-xcframework.sh, src/llama.cpp-b9716/cmake/common.cmake, src/llama.cpp-b9716/conversion/__init__.py, src/llama.cpp-b9716/conversion/base.py, src/llama.cpp-b9716/cmake/download-models.cmake, src/llama.cpp-b9716/cmake/git-vars.cmake...
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a simple Makefile that immediately raises an error telling the user that the build system has been replaced by CMake and directs them to the upstream documentation. There is no executable code, no network access, no file manipulation, and no obfuscation. This is a standard way to deprecate a legacy build system.
</details>
<summary>Benign deprecation notice, no malicious behavior.</summary>
</security_assessment>

[1/10] Reviewing src/llama.cpp-b9716/.devops/tools.sh, llama.cpp.service, src/llama.cpp-b9716/CMakeLists.txt, src/llama.cpp-b9716/build-xcframework.sh, src/llama.cpp-b9716/cmake/common.cmake, src/llama.cpp-b9716/conversion/__init__.py, src/llama.cpp-b9716/conversion/base.py, src/llama.cpp-b9716/cmake/download-models.cmake, src/llama.cpp-b9716/cmake/git-vars.cmake...
+ Reviewed src/llama.cpp-b9716/Makefile. Status: SAFE -- Benign deprecation notice, no malicious behavior.
LLM auditresponse for download-models.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake script downloads model files from the expected upstream location (huggingface.co/ggml-org/models) using HTTPS with TLS verification. It also checks an expected hash (`EXPECTED_HASH ${HASH}`) to verify integrity. There is no obfuscated code, no execution of downloaded content, no exfiltration of local data, and no deviation from standard packaging practices. The script performs a routine file download operation typical for fetching model assets during the build process.
</details>
<summary>Standard model download script with TLS and hash verification.</summary>
</security_assessment>

[2/10] Reviewing src/llama.cpp-b9716/.devops/tools.sh, llama.cpp.service, src/llama.cpp-b9716/CMakeLists.txt, src/llama.cpp-b9716/build-xcframework.sh, src/llama.cpp-b9716/cmake/common.cmake, src/llama.cpp-b9716/conversion/__init__.py, src/llama.cpp-b9716/conversion/base.py, src/llama.cpp-b9716/cmake/git-vars.cmake...
+ Reviewed src/llama.cpp-b9716/cmake/download-models.cmake. Status: SAFE -- Standard model download script with TLS and hash verification.
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMakeLists.txt is a standard build configuration for the llama.cpp project. It defines build options, includes cmake modules, adds subdirectories for dependencies (ggml), common libraries, examples, tests, and tools, and sets up installation rules. There is no obfuscated code, no suspicious network requests (all downloads are handled via the standard `add_subdirectory` and `fetchcontent` mechanisms within the project's own source tree), and no execution of arbitrary or attacker-controlled scripts. The file uses typical CMake commands and follows conventional packaging practices. No evidence of a supply-chain attack or malicious behavior is present.
</details>
<summary>Standard CMake build file; no malicious content.</summary>
</security_assessment>

[3/10] Reviewing src/llama.cpp-b9716/.devops/tools.sh, llama.cpp.service, src/llama.cpp-b9716/build-xcframework.sh, src/llama.cpp-b9716/cmake/common.cmake, src/llama.cpp-b9716/conversion/__init__.py, src/llama.cpp-b9716/conversion/base.py, src/llama.cpp-b9716/cmake/git-vars.cmake...
+ Reviewed src/llama.cpp-b9716/CMakeLists.txt. Status: SAFE -- Standard CMake build file; no malicious content.
LLM auditresponse for tools.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a simple command dispatcher for llama.cpp tools. It parses the first argument and calls the corresponding local binary (`python3 ./convert_hf_to_gguf.py`, `./llama-quantize`, `./llama-cli`, etc.) using `exec`. There are no network requests, no obfuscated code, no unexpected file modifications, and no dangerous commands like `eval`, `curl`, `wget`, or `base64` decoding. The loop in the `--all-in-one` section iterates over files in a user-provided directory and checks for existing files before calling `llama-quantize`, which is standard tool functionality. No supply-chain attack indicators are present.
</details>
<summary>Clean wrapper script for llama.cpp tools.</summary>
</security_assessment>

[4/10] Reviewing llama.cpp.service, src/llama.cpp-b9716/build-xcframework.sh, src/llama.cpp-b9716/cmake/common.cmake, src/llama.cpp-b9716/conversion/__init__.py, src/llama.cpp-b9716/conversion/base.py, src/llama.cpp-b9716/cmake/git-vars.cmake...
+ Reviewed src/llama.cpp-b9716/.devops/tools.sh. Status: SAFE -- Clean wrapper script for llama.cpp tools.
LLM auditresponse for common.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `common.cmake` is a standard CMake build configuration file for the llama.cpp project. It includes another CMake file from the ggml submodule and defines a function to set compiler warning and sanitizer flags based on CMake options. There is no obfuscated code, no network requests, no file operations outside the build system, and no execution of untrusted content. All operations are normal compile flag manipulations for a C/C++ project.

The include of `ggml/cmake/common.cmake` is expected, as llama.cpp depends on the ggml library. The function `llama_add_compile_flags` only adds compiler flags conditionally based on user-specified options (LLAMA_FATAL_WARNINGS, LLAMA_ALL_WARNINGS, LLAMA_SANITIZE_THREAD, etc.). This is ordinary CMake usage and poses no security risk.
</details>
<summary>Standard CMake build file with no malicious code.</summary>
</security_assessment>

[5/10] Reviewing llama.cpp.service, src/llama.cpp-b9716/build-xcframework.sh, src/llama.cpp-b9716/conversion/__init__.py, src/llama.cpp-b9716/conversion/base.py, src/llama.cpp-b9716/cmake/git-vars.cmake...
+ Reviewed src/llama.cpp-b9716/cmake/common.cmake. Status: SAFE -- Standard CMake build file with no malicious code.
LLM auditresponse for llama.cpp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the llama.cpp server. It defines a simple daemon running as a dedicated user (`llama-cpp`), with a runtime directory and appropriate sandboxing (`UMask`, `RuntimeDirectory`). The `ExecStart` command runs the legitimate binary `/usr/bin/llama-server` with arguments from an environment file (`/etc/conf.d/llama.cpp`), which is a normal configuration practice. No unexpected network requests, obfuscated commands, or suspicious file operations are present. The file adheres to conventional packaging and deployment patterns for Arch Linux.
</details>
<summary>Standard systemd service; no security concerns.</summary>
</security_assessment>

[6/10] Reviewing src/llama.cpp-b9716/build-xcframework.sh, src/llama.cpp-b9716/conversion/__init__.py, src/llama.cpp-b9716/conversion/base.py, src/llama.cpp-b9716/cmake/git-vars.cmake...
+ Reviewed llama.cpp.service. Status: SAFE -- Standard systemd service; no security concerns.
LLM auditresponse for __init__.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is part of llama.cpp's conversion module. It defines mappings from HuggingFace model architecture names to submodule names and provides functions to dynamically import those modules using `__import__()`. All imports are limited to the `conversion.` namespace within the same package — there are no external network requests, no obfuscated code, no system command execution, and no attempts to read or exfiltrate sensitive files. The dynamic imports are a standard pattern for plugin/registry systems and serve the application's stated purpose of supporting multiple model architectures. There is no evidence of injected malicious behavior.
</details>
<summary>Standard dynamic imports; no malicious behavior found.</summary>
</security_assessment>

[7/10] Reviewing src/llama.cpp-b9716/build-xcframework.sh, src/llama.cpp-b9716/conversion/base.py, src/llama.cpp-b9716/cmake/git-vars.cmake...
+ Reviewed src/llama.cpp-b9716/conversion/__init__.py. Status: SAFE -- Standard dynamic imports; no malicious behavior found.
LLM auditresponse for build-xcframework.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is an Apple framework build script for llama.cpp. It performs cross-compilation using cmake and Xcode tools for iOS, macOS, visionOS, and tvOS platforms. The script only interacts with the project's own source tree and designated build directories. There are no network requests, no downloads, no obfuscated commands, no attempts to exfiltrate data, and no modifications to system files outside the build environment. All operations (compilation, static library combination, framework packaging) are standard for creating an Apple XCFramework bundle. No supply-chain attack indicators are present.
</details>
<summary>Benign build script, no security issues.</summary>
</security_assessment>

[8/10] Reviewing src/llama.cpp-b9716/conversion/base.py, src/llama.cpp-b9716/cmake/git-vars.cmake...
+ Reviewed src/llama.cpp-b9716/build-xcframework.sh. Status: SAFE -- Benign build script, no security issues.
LLM auditresponse for git-vars.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake script uses standard Git commands (describe, log) to retrieve commit metadata (SHA, date, subject) from the repository for version embedding. All commands operate within the source directory (`CMAKE_SOURCE_DIR`) and only read local Git history. No network requests, obfuscation, file modification, or execution of untrusted content occurs. The HTML entity encoding (`&quot;`, `&apos;`) is simply XML escaping and not an attempt to hide code. This is a normal packaging/build helper.
</details>
<summary>Standard CMake script to extract Git version info; no security issues.</summary>
</security_assessment>

[9/10] Reviewing src/llama.cpp-b9716/conversion/base.py...
+ Reviewed src/llama.cpp-b9716/cmake/git-vars.cmake. Status: SAFE -- Standard CMake script to extract Git version info; no security issues.
LLM auditresponse for base.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is part of the `llama.cpp` AUR package and implements the model conversion logic from Hugging Face to GGUF format. It contains standard Python code for loading model weights, converting tensor types, and writing GGUF files using the `gguf` library.  

- **No suspicious network requests**: The file does not contain any `curl`, `wget`, or network calls to unexpected hosts. It only loads local model files or uses `remote_hf_model_id` for Hugging Face’s own API (which is the intended upstream source for the package).  
- **No obfuscated code**: All logic is clear, uses standard Python constructs, and no encoded/obfuscated strings or `eval`/`base64` patterns are present.  
- **No unexpected file operations**: The file only reads model configuration and weight files from its own directory and writes GGUF output.  
- **Standard packaging practices**: The import of `gguf` from a relative path (`sys.path.insert(1, ...)`) is normal for this package’s structure, not a supply chain attack.  

The entirety of the code is consistent with the stated purpose of converting llama‑compatible models. No malicious behavior was identified.
</details>
<summary>Standard model conversion code, no malicious indicators.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/llama.cpp-b9716/conversion/base.py. Status: SAFE -- Standard model conversion code, no malicious indicators.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 71,129
  Completion Tokens: 7,837
  Total Tokens: 78,966
  Total Cost: $0.007812
  Execution Time: 68.44 seconds
Full audit report can be found in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-llama.cpp.txt
Final Status: SAFE


No issues found.
