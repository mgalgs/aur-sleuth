---
package: llama.cpp-cuda
pkgver: b9716
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 49532
completion_tokens: 7225
total_tokens: 56757
cost: 0.00575838
execution_time: 47.14
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T08:28:18Z
file_verdicts:
  - file: llama.cpp.service
    status: safe
    summary: Standard systemd service unit, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious code.
  - file: src/llama.cpp-b9716/cmake/common.cmake
    status: safe
    summary: Standard CMake compilation flags; no security concerns.
  - file: src/llama.cpp-b9716/Makefile
    status: safe
    summary: Placeholder error message, no malicious content.
  - file: src/llama.cpp-b9716/cmake/git-vars.cmake
    status: safe
    summary: Standard CMake script for git version embedding; no malicious behavior.
  - file: src/llama.cpp-b9716/cmake/build-info.cmake
    status: safe
    summary: Routine CMake build info script; no security concerns.
  - file: src/llama.cpp-b9716/.devops/tools.sh
    status: safe
    summary: Safe command dispatcher script.
  - file: src/llama.cpp-b9716/cmake/license.cmake
    status: safe
    summary: Benign CMake module; no malicious behavior found.
  - file: src/llama.cpp-b9716/cmake/download-models.cmake
    status: safe
    summary: Standard model download script, no security issues.
  - file: src/llama.cpp-b9716/conversion/__init__.py
    status: safe
    summary: No malicious behavior; standard model conversion code.
  - file: src/llama.cpp-b9716/CMakeLists.txt
    status: safe
    summary: Standard CMakeLists.txt, no malicious content.
  - file: src/llama.cpp-b9716/build-xcframework.sh
    status: safe
    summary: Standard Apple framework build script, no malicious behavior found.
---

Cloning https://aur.archlinux.org/llama.cpp-cuda.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-g1ha31ie...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-g1ha31ie
Analyzing llama.cpp-cuda AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-g1ha31ie) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains top-level variable assignments (pkgver, source array, checksums, dependencies, etc.) and function definitions for prepare(), build(), and package(). No code runs at global scope that could execute malicious commands — there are no command substitutions, no `curl|bash`, no `eval`, no base64-encoded payloads, and no attempts to modify system files outside of the package installation. The source array fetches a tarball from the official GitHub release of llama.cpp and two local configuration files, all with pinned checksums. Since `pkgver()` is not defined and `prepare()`, `build()`, `package()` are not invoked by the two specified commands (`makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`), those functions are out of scope for this narrow safety gate. No evidence of malicious behavior was found in the executed portions.
</details>
<summary>No malicious top-level code; source fetch is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious top-level code; source fetch is safe.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, llama.cpp.service...
LLM auditresponse for llama.cpp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the llama.cpp server. It defines the service type, environment file location, execution command, reload behavior, and restart policy. There is no obfuscation, no network requests, no execution of untrusted code, and no deviation from normal packaging practices. The `ExecStart` runs the installed binary `/usr/bin/llama-server` with arguments from `/etc/conf.d/llama.cpp`, which is a typical configuration pattern for Arch Linux packages. No security concerns.
</details>
<summary>Standard systemd service unit, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed llama.cpp.service. Status: SAFE -- Standard systemd service unit, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD demonstrates standard packaging practices for an AUR package. The source tarball is fetched from the official GitHub releases with valid SHA-256 checksums, and the build process uses CMake with typical options for a CUDA-enabled build. There are no suspicious network requests, obfuscated code, unusual file operations, or backdoors. The use of `source /etc/profile` is a common way to load environment variables for CUDA, and allowing user-specified extra cmake args via `LLAMA_BUILD_EXTRA_ARGS` is a normal user-configuration feature. No malicious or dangerous behavior is present.
</details>
<summary>Standard AUR PKGBUILD with no malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious code.
Reviewed all required files.
Deciding which files to review next...
Note: 2945 files available for selection; offering the 50 highest-priority to the model. 2604 lower-priority file(s) were not offered.
LLM response for file selection:
src/llama.cpp-b9716/.devops/tools.sh
src/llama.cpp-b9716/CMakeLists.txt
src/llama.cpp-b9716/Makefile
src/llama.cpp-b9716/build-xcframework.sh
src/llama.cpp-b9716/cmake/build-info.cmake
src/llama.cpp-b9716/cmake/common.cmake
src/llama.cpp-b9716/cmake/download-models.cmake
src/llama.cpp-b9716/cmake/git-vars.cmake
src/llama.cpp-b9716/cmake/license.cmake
src/llama.cpp-b9716/conversion/__init__.py
Decided to review 10 additional files: src/llama.cpp-b9716/.devops/tools.sh, src/llama.cpp-b9716/CMakeLists.txt, src/llama.cpp-b9716/Makefile, src/llama.cpp-b9716/build-xcframework.sh, src/llama.cpp-b9716/cmake/build-info.cmake, src/llama.cpp-b9716/cmake/common.cmake, src/llama.cpp-b9716/cmake/download-models.cmake, src/llama.cpp-b9716/cmake/git-vars.cmake, src/llama.cpp-b9716/cmake/license.cmake, src/llama.cpp-b9716/conversion/__init__.py
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/llama.cpp-b9716/CMakeLists.txt...
[0/10] Reviewing src/llama.cpp-b9716/CMakeLists.txt, src/llama.cpp-b9716/.devops/tools.sh...
[0/10] Reviewing src/llama.cpp-b9716/CMakeLists.txt, src/llama.cpp-b9716/.devops/tools.sh, src/llama.cpp-b9716/Makefile...
[0/10] Reviewing src/llama.cpp-b9716/CMakeLists.txt, src/llama.cpp-b9716/.devops/tools.sh, src/llama.cpp-b9716/Makefile, src/llama.cpp-b9716/build-xcframework.sh...
[0/10] Reviewing src/llama.cpp-b9716/CMakeLists.txt, src/llama.cpp-b9716/.devops/tools.sh, src/llama.cpp-b9716/Makefile, src/llama.cpp-b9716/build-xcframework.sh, src/llama.cpp-b9716/cmake/common.cmake...
[0/10] Reviewing src/llama.cpp-b9716/CMakeLists.txt, src/llama.cpp-b9716/.devops/tools.sh, src/llama.cpp-b9716/Makefile, src/llama.cpp-b9716/build-xcframework.sh, src/llama.cpp-b9716/cmake/common.cmake, src/llama.cpp-b9716/cmake/build-info.cmake...
[0/10] Reviewing src/llama.cpp-b9716/CMakeLists.txt, src/llama.cpp-b9716/.devops/tools.sh, src/llama.cpp-b9716/Makefile, src/llama.cpp-b9716/build-xcframework.sh, src/llama.cpp-b9716/cmake/common.cmake, src/llama.cpp-b9716/cmake/build-info.cmake, src/llama.cpp-b9716/cmake/download-models.cmake...
[0/10] Reviewing src/llama.cpp-b9716/CMakeLists.txt, src/llama.cpp-b9716/.devops/tools.sh, src/llama.cpp-b9716/Makefile, src/llama.cpp-b9716/build-xcframework.sh, src/llama.cpp-b9716/cmake/common.cmake, src/llama.cpp-b9716/cmake/build-info.cmake, src/llama.cpp-b9716/cmake/download-models.cmake, src/llama.cpp-b9716/cmake/git-vars.cmake...
[0/10] Reviewing src/llama.cpp-b9716/CMakeLists.txt, src/llama.cpp-b9716/.devops/tools.sh, src/llama.cpp-b9716/Makefile, src/llama.cpp-b9716/build-xcframework.sh, src/llama.cpp-b9716/cmake/common.cmake, src/llama.cpp-b9716/cmake/build-info.cmake, src/llama.cpp-b9716/cmake/download-models.cmake, src/llama.cpp-b9716/cmake/git-vars.cmake, src/llama.cpp-b9716/cmake/license.cmake...
[0/10] Reviewing src/llama.cpp-b9716/CMakeLists.txt, src/llama.cpp-b9716/.devops/tools.sh, src/llama.cpp-b9716/Makefile, src/llama.cpp-b9716/build-xcframework.sh, src/llama.cpp-b9716/cmake/common.cmake, src/llama.cpp-b9716/cmake/build-info.cmake, src/llama.cpp-b9716/cmake/download-models.cmake, src/llama.cpp-b9716/cmake/git-vars.cmake, src/llama.cpp-b9716/cmake/license.cmake, src/llama.cpp-b9716/conversion/__init__.py...
LLM auditresponse for common.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `common.cmake` defines a CMake function `llama_add_compile_flags` that sets compiler warning flags (`-Wall`, `-Wextra`, `-Werror`, etc.) and sanitizer flags (`-fsanitize=thread`, `-fsanitize=address`, `-fsanitize=undefined`) conditionally based on CMake variables. There is no network access, no execution of arbitrary code, no file operations beyond normal build configuration, and no obfuscation. The content is entirely standard for a C/C++ project's build system.
</details>
<summary>
Standard CMake compilation flags; no security concerns.</summary>
</security_assessment>

[1/10] Reviewing src/llama.cpp-b9716/CMakeLists.txt, src/llama.cpp-b9716/.devops/tools.sh, src/llama.cpp-b9716/Makefile, src/llama.cpp-b9716/build-xcframework.sh, src/llama.cpp-b9716/cmake/build-info.cmake, src/llama.cpp-b9716/cmake/download-models.cmake, src/llama.cpp-b9716/cmake/git-vars.cmake, src/llama.cpp-b9716/cmake/license.cmake, src/llama.cpp-b9716/conversion/__init__.py...
+ Reviewed src/llama.cpp-b9716/cmake/common.cmake. Status: SAFE -- Standard CMake compilation flags; no security concerns.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
This Makefile intentionally causes a build failure with a message informing users that the build system has moved to CMake. It contains no downloads, executions, obfuscation, or any behavior beyond emitting an error. This is a benign packaging artifact.
</details>
<summary>Placeholder error message, no malicious content.</summary>
</security_assessment>

[2/10] Reviewing src/llama.cpp-b9716/CMakeLists.txt, src/llama.cpp-b9716/.devops/tools.sh, src/llama.cpp-b9716/build-xcframework.sh, src/llama.cpp-b9716/cmake/build-info.cmake, src/llama.cpp-b9716/cmake/download-models.cmake, src/llama.cpp-b9716/cmake/git-vars.cmake, src/llama.cpp-b9716/cmake/license.cmake, src/llama.cpp-b9716/conversion/__init__.py...
+ Reviewed src/llama.cpp-b9716/Makefile. Status: SAFE -- Placeholder error message, no malicious content.
LLM auditresponse for git-vars.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake script that calls `git describe` and `git log` to retrieve the commit SHA1, date, and subject for embedding into the build. There are no network requests, no encoded or obfuscated commands, and no operations that modify the system or exfiltrate data. The commands are run against the local repository that is expected to be the upstream llama.cpp source. This is a common and benign packaging/build practice; no supply-chain risk is evident.
</details>
<summary>Standard CMake script for git version embedding; no malicious behavior.</summary>
</security_assessment>

[3/10] Reviewing src/llama.cpp-b9716/CMakeLists.txt, src/llama.cpp-b9716/.devops/tools.sh, src/llama.cpp-b9716/build-xcframework.sh, src/llama.cpp-b9716/cmake/build-info.cmake, src/llama.cpp-b9716/cmake/download-models.cmake, src/llama.cpp-b9716/cmake/license.cmake, src/llama.cpp-b9716/conversion/__init__.py...
+ Reviewed src/llama.cpp-b9716/cmake/git-vars.cmake. Status: SAFE -- Standard CMake script for git version embedding; no malicious behavior.
LLM auditresponse for build-info.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake script that sets build metadata variables (commit hash, count, compiler info, target platform). It searches for Git and runs `git rev-parse --short HEAD` and `git rev-list --count HEAD` in the source directory to retrieve version information. There are no network requests, no execution of untrusted code, no obfuscation, and no attempts to access or exfiltrate system data. The only external commands are legitimate git invocations within the project's own source tree, which is normal CMake practice for embedding build info. No supply-chain attack indicators are present.
</details>
<summary>Routine CMake build info script; no security concerns.</summary>
</security_assessment>

[4/10] Reviewing src/llama.cpp-b9716/CMakeLists.txt, src/llama.cpp-b9716/.devops/tools.sh, src/llama.cpp-b9716/build-xcframework.sh, src/llama.cpp-b9716/cmake/download-models.cmake, src/llama.cpp-b9716/cmake/license.cmake, src/llama.cpp-b9716/conversion/__init__.py...
+ Reviewed src/llama.cpp-b9716/cmake/build-info.cmake. Status: SAFE -- Routine CMake build info script; no security concerns.
LLM auditresponse for tools.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a simple command dispatcher for llama.cpp tools. It reads a command argument and runs the corresponding executable (e.g., `python3 ./convert_hf_to_gguf.py`, `./llama-quantize`, `./llama-cli`). There is no network activity, obfuscated code, file exfiltration, or execution of untrusted content. The loop over `ls $1/$2/ggml-model-f16.bin*` uses user-supplied paths, but that is normal for the application's intended operation (processing model files). No supply-chain attack indicators are present.
</details>
<summary>Safe command dispatcher script.</summary>
</security_assessment>

[5/10] Reviewing src/llama.cpp-b9716/CMakeLists.txt, src/llama.cpp-b9716/build-xcframework.sh, src/llama.cpp-b9716/cmake/download-models.cmake, src/llama.cpp-b9716/cmake/license.cmake, src/llama.cpp-b9716/conversion/__init__.py...
+ Reviewed src/llama.cpp-b9716/.devops/tools.sh. Status: SAFE -- Safe command dispatcher script.
LLM auditresponse for license.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake module for aggregating license files and generating a C++ source array of license strings. It uses `file(READ)` to read license files from the source tree and `file(WRITE)` to output a generated `license.cpp` into the build directory — both are normal CMake operations. There are no network requests, no execution of external scripts, no obfuscated commands, and no attempts to access or exfiltrate data outside the package's own source and build directories. The script is consistent with common packaging practices for embedding licenses into compiled binaries.
</details>
<summary>Benign CMake module; no malicious behavior found.</summary>
</security_assessment>

[6/10] Reviewing src/llama.cpp-b9716/CMakeLists.txt, src/llama.cpp-b9716/build-xcframework.sh, src/llama.cpp-b9716/cmake/download-models.cmake, src/llama.cpp-b9716/conversion/__init__.py...
+ Reviewed src/llama.cpp-b9716/cmake/license.cmake. Status: SAFE -- Benign CMake module; no malicious behavior found.
LLM auditresponse for download-models.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake script downloads a model file from the official `ggml-org/models` Hugging Face repository using CMake's built-in `file(DOWNLOAD ...)` command. It enforces TLS verification and uses an expected hash provided via the `HASH` variable. The only network destination is the project's own upstream model repository, which is entirely appropriate for a package that needs model weights. There is no obfuscation, no execution of untrusted code, no exfiltration, and no deviation from standard packaging helper scripts.
</details>
<summary>Standard model download script, no security issues.</summary>
</security_assessment>

[7/10] Reviewing src/llama.cpp-b9716/CMakeLists.txt, src/llama.cpp-b9716/build-xcframework.sh, src/llama.cpp-b9716/conversion/__init__.py...
+ Reviewed src/llama.cpp-b9716/cmake/download-models.cmake. Status: SAFE -- Standard model download script, no security issues.
LLM auditresponse for __init__.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard model architecture registry for the llama.cpp conversion scripts. It defines hardcoded maps (`TEXT_MODEL_MAP`, `MMPROJ_MODEL_MAP`) that associate HuggingFace architecture names with conversion module names, and provides functions to dynamically import those modules. The dynamic imports (`__import__`) are fully controlled by the hardcoded maps – no user input or external data is used to construct the module path, so there is no risk of arbitrary import injection. The file contains no network requests, file operations, command execution, obfuscated code, or any other behavior that deviates from normal packaging or application functionality. It is clearly upstream code for the application's intended purpose (model format conversion), not a supply-chain attack.
</details>
<summary>No malicious behavior; standard model conversion code.</summary>
</security_assessment>

[8/10] Reviewing src/llama.cpp-b9716/CMakeLists.txt, src/llama.cpp-b9716/build-xcframework.sh...
+ Reviewed src/llama.cpp-b9716/conversion/__init__.py. Status: SAFE -- No malicious behavior; standard model conversion code.
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMakeLists.txt is a standard build configuration for the llama.cpp project. It defines compile options, includes project-specific cmake modules from the `cmake/` subdirectory (which is part of the upstream source), and sets up build targets. No malicious or unexpected commands are present. The file does not perform any network requests, execute obfuscated code, or modify system files outside the build directory. The option `LLAMA_USE_PREBUILT_UI` is defined as a toggle for potentially downloading a prebuilt UI from a Hugging Face bucket, but the actual download logic is not present in this file—it would be in included cmake modules. Even if that option is enabled, it is an upstream feature for convenience, not evidence of a supply-chain attack in this packaging script. All operations are consistent with normal CMake usage for building and installing the project.
</details>
<summary>Standard CMakeLists.txt, no malicious content.</summary>
</security_assessment>

[9/10] Reviewing src/llama.cpp-b9716/build-xcframework.sh...
+ Reviewed src/llama.cpp-b9716/CMakeLists.txt. Status: SAFE -- Standard CMakeLists.txt, no malicious content.
LLM auditresponse for build-xcframework.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a build automation file for creating Apple XCFrameworks (iOS, macOS, visionOS, tvOS) from the llama.cpp source code. It performs standard build operations: running cmake, compiling static libraries, combining them into dynamic frameworks with Xcode tooling (xcrun, libtool, dsymutil, strip), and constructing an xcframework. No obfuscated code, network requests, or unexpected system modifications are present. All operations are confined to the local build directory and Apple SDK tools. The script does not exfiltrate data, download executables, or alter system files outside the build tree. There is no evidence of a supply-chain attack; the script is consistent with legitimate upstream packaging for Apple platforms.
</details>
<summary>Standard Apple framework build script, no malicious behavior found.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/llama.cpp-b9716/build-xcframework.sh. Status: SAFE -- Standard Apple framework build script, no malicious behavior found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 49,532
  Completion Tokens: 7,225
  Total Tokens: 56,757
  Total Cost: $0.005758
  Execution Time: 47.14 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-llama.cpp-cuda.txt
Final Status: SAFE


No issues found.
