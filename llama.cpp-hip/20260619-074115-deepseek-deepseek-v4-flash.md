---
package: llama.cpp-hip
pkgver: b9707
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: ca17da95f28e185d8d6b41bf3c9d6cc1c151702c
prompt_tokens: 50149
completion_tokens: 6847
total_tokens: 56996
cost: 0.00574587
execution_time: 144.74
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T07:41:14Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for llama.cpp-hip; no evidence of malicious injection.
  - file: llama.cpp.conf
    status: safe
    summary: Benign config file with empty argument assignment.
  - file: src/llama.cpp-b9707/Makefile
    status: safe
    summary: Deprecation notice only; no malicious code.
  - file: src/llama.cpp-b9707/cmake/git-vars.cmake
    status: safe
    summary: Standard Git metadata extraction for build versioning.
  - file: src/llama.cpp-b9707/cmake/common.cmake
    status: safe
    summary: Standard CMake build configuration, no security issues.
  - file: src/llama.cpp-b9707/cmake/download-models.cmake
    status: safe
    summary: Standard CMake download of model from upstream Hugging Face repo.
  - file: src/llama.cpp-b9707/conversion/__init__.py
    status: safe
    summary: Standard import module, no malicious behavior detected.
  - file: src/llama.cpp-b9707/CMakeLists.txt
    status: safe
    summary: Standard CMake build file, no malicious content.
  - file: src/llama.cpp-b9707/build-xcframework.sh
    status: safe
    summary: Standard build script; no malicious behavior detected.
  - file: src/llama.cpp-b9707/cmake/build-info.cmake
    status: safe
    summary: Standard build info generation from local Git repository.
  - file: llama.cpp.service
    status: safe
    summary: Standard systemd service unit file, no malicious content.
  - file: src/llama.cpp-b9707/.devops/tools.sh
    status: safe
    summary: Standard wrapper script, no malicious behavior detected.
---

Cloning https://aur.archlinux.org/llama.cpp-hip.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-vd8sv6bg...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-vd8sv6bg
Analyzing llama.cpp-hip AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-vd8sv6bg) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables, `source` array, and `pkgver()` is not defined (no function).  
`makepkg --nobuild --nodeps --noprepare` will only fetch the `source` entries (two standard tar.gz/raw downloads from the official upstream and the maintainer's own assets) and parse the global scope—no executables, no `eval`, no injected commands. All URLs are HTTPS.  
No dangerous code is present in the global scope or `pkgver()`, so the command is safe to run.
</details>
<summary>No malicious code; source fetch is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious code; source fetch is safe.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing llama.cpp.conf...
[0/2] Reviewing llama.cpp.conf, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is for building `llama.cpp` with AMD ROCm (HIP) optimizations. It follows standard AUR packaging practices:

- Sources are fetched from the official upstream GitHub repository (`ggml-org/llama.cpp`) and from the maintainer's own GitHub for supplementary service/config files, both pinned with SHA-256 checksums.
- The `prepare()` function creates an empty `.git` directory inside the extracted source to work around a Tailwind CSS v4 behavior—this is a benign workaround for the build system, not a supply-chain attack.
- The `build()` function runs `npm ci` and `npm run build` for the web UI, then configures and compiles the project with CMake. It uses standard environment variables and command-line options, and respects a user-defined `$LLAMA_BUILD_EXTRA_ARGS` environment variable for local customization—a common and safe pattern.
- The `package()` function installs files via `cmake --install` and copies the license, configuration, and systemd service into `$pkgdir`. No unusual file operations or data exfiltration.
- There is no use of `eval`, `curl|bash`, encoded/obfuscated commands, or any behavior that deviates from the expected packaging workflow. The network destinations are directly related to the package sources.
- The use of SKIP checksums is absent; all sources have legitimate SHA-256 hashes. The reliance on a mutable branch (the maintainer's `refs/heads/main` for assets) is noted, but those assets are individually checksummed, which mitigates the supply-chain risk.
</details>
<summary>Standard PKGBUILD for llama.cpp-hip; no evidence of malicious injection.</summary>
</security_assessment>

[1/2] Reviewing llama.cpp.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for llama.cpp-hip; no evidence of malicious injection.
LLM auditresponse for llama.cpp.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `llama.cpp.conf` contains a single line: `LLAMA_ARGS=&quot;&quot;` which is a configuration variable assigning an empty string. There are no commands, network requests, obfuscated content, or any other potentially malicious operations. This is a standard configuration file for the llama.cpp application, defining any additional arguments to pass to the executable. No security concerns are present.
</details>
<summary>Benign config file with empty argument assignment.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed llama.cpp.conf. Status: SAFE -- Benign config file with empty argument assignment.
Reviewed all required files.
Deciding which files to review next...
Note: 2942 files available for selection; offering the 50 highest-priority to the model. 2601 lower-priority file(s) were not offered.
LLM response for file selection:
llama.cpp.service
src/llama.cpp-b9707/CMakeLists.txt
src/llama.cpp-b9707/Makefile
src/llama.cpp-b9707/build-xcframework.sh
src/llama.cpp-b9707/.devops/tools.sh
src/llama.cpp-b9707/cmake/download-models.cmake
src/llama.cpp-b9707/cmake/git-vars.cmake
src/llama.cpp-b9707/cmake/build-info.cmake
src/llama.cpp-b9707/cmake/common.cmake
src/llama.cpp-b9707/conversion/__init__.py
Decided to review 10 additional files: llama.cpp.service, src/llama.cpp-b9707/CMakeLists.txt, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/git-vars.cmake, src/llama.cpp-b9707/cmake/build-info.cmake, src/llama.cpp-b9707/cmake/common.cmake, src/llama.cpp-b9707/conversion/__init__.py
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/llama.cpp-b9707/CMakeLists.txt...
[0/10] Reviewing src/llama.cpp-b9707/CMakeLists.txt, llama.cpp.service...
[0/10] Reviewing src/llama.cpp-b9707/CMakeLists.txt, llama.cpp.service, src/llama.cpp-b9707/build-xcframework.sh...
[0/10] Reviewing src/llama.cpp-b9707/CMakeLists.txt, llama.cpp.service, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/Makefile...
[0/10] Reviewing src/llama.cpp-b9707/CMakeLists.txt, llama.cpp.service, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/.devops/tools.sh...
[0/10] Reviewing src/llama.cpp-b9707/CMakeLists.txt, llama.cpp.service, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/cmake/download-models.cmake...
[0/10] Reviewing src/llama.cpp-b9707/CMakeLists.txt, llama.cpp.service, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/build-info.cmake...
[0/10] Reviewing src/llama.cpp-b9707/CMakeLists.txt, llama.cpp.service, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/build-info.cmake, src/llama.cpp-b9707/cmake/git-vars.cmake...
[0/10] Reviewing src/llama.cpp-b9707/CMakeLists.txt, llama.cpp.service, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/build-info.cmake, src/llama.cpp-b9707/cmake/git-vars.cmake, src/llama.cpp-b9707/conversion/__init__.py...
[0/10] Reviewing src/llama.cpp-b9707/CMakeLists.txt, llama.cpp.service, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/Makefile, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/build-info.cmake, src/llama.cpp-b9707/cmake/git-vars.cmake, src/llama.cpp-b9707/conversion/__init__.py, src/llama.cpp-b9707/cmake/common.cmake...
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
This Makefile contains only a deprecation notice: it defines a newline variable and then uses `$(error ...)` to halt execution and display a message instructing users to switch to CMake. There is no code that fetches, executes, or exfiltrates data; no obfuscation; no unexpected system modifications. This is a standard, harmless build-system migration hint.
</details>
<summary>Deprecation notice only; no malicious code.</summary>
</security_assessment>

[1/10] Reviewing src/llama.cpp-b9707/CMakeLists.txt, llama.cpp.service, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/build-info.cmake, src/llama.cpp-b9707/cmake/git-vars.cmake, src/llama.cpp-b9707/conversion/__init__.py, src/llama.cpp-b9707/cmake/common.cmake...
+ Reviewed src/llama.cpp-b9707/Makefile. Status: SAFE -- Deprecation notice only; no malicious code.
LLM auditresponse for git-vars.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake script that extracts Git metadata (commit SHA, date, and subject) for embedding version information into the build. It uses `execute_process` to run `git describe`, `git log`, which are normal operations for a project built from a Git repository. There are no network requests, obfuscated code, dangerous commands, or any behavior that deviates from standard packaging practices. The script only reads from the local repository and sets CMake variables. No security concerns.
</details>
<summary>Standard Git metadata extraction for build versioning.</summary>
</security_assessment>

[2/10] Reviewing src/llama.cpp-b9707/CMakeLists.txt, llama.cpp.service, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/build-info.cmake, src/llama.cpp-b9707/conversion/__init__.py, src/llama.cpp-b9707/cmake/common.cmake...
+ Reviewed src/llama.cpp-b9707/cmake/git-vars.cmake. Status: SAFE -- Standard Git metadata extraction for build versioning.
LLM auditresponse for common.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake module that sets compiler warning and sanitizer flags for the llama.cpp project. It includes another common.cmake from the ggml subdirectory, which is a normal dependency inclusion. The function `llama_add_compile_flags` only manipulates compiler flags based on CMake variables (LLAMA_FATAL_WARNINGS, LLAMA_ALL_WARNINGS, LLAMA_SANITIZE_THREAD, etc.). There are no network requests, file operations, obfuscated code, or any commands that could exfiltrate data or execute untrusted code. The content is entirely consistent with ordinary build system configuration and poses no security risk.
</details>
<summary>Standard CMake build configuration, no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/llama.cpp-b9707/CMakeLists.txt, llama.cpp.service, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/cmake/download-models.cmake, src/llama.cpp-b9707/cmake/build-info.cmake, src/llama.cpp-b9707/conversion/__init__.py...
+ Reviewed src/llama.cpp-b9707/cmake/common.cmake. Status: SAFE -- Standard CMake build configuration, no security issues.
LLM auditresponse for download-models.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a CMake script that downloads a model file from Hugging Face (`huggingface.co/ggml-org/models`), which is the expected upstream source for llama.cpp models. It uses CMake's built-in `file(DOWNLOAD)` command with TLS verification enabled and an expected hash for integrity checking. There is no obfuscation, no execution of downloaded code, no suspicious network requests to unrelated hosts, and no other dangerous operations. The script follows standard packaging practices for downloading pre-trained model files.
</details>
<summary>
Standard CMake download of model from upstream Hugging Face repo.
</summary>
</security_assessment>

[4/10] Reviewing src/llama.cpp-b9707/CMakeLists.txt, llama.cpp.service, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/cmake/build-info.cmake, src/llama.cpp-b9707/conversion/__init__.py...
+ Reviewed src/llama.cpp-b9707/cmake/download-models.cmake. Status: SAFE -- Standard CMake download of model from upstream Hugging Face repo.
LLM auditresponse for __init__.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Python `__init__.py` module from the llama.cpp conversion library. It defines static dictionaries mapping HuggingFace model architecture names to submodule names, and provides functions to dynamically load those submodules from the `conversion` package. There is no obfuscated code, no network requests, no file system manipulation outside the package scope, and no execution of untrusted input. The dynamic imports use hardcoded module names, and all exceptions are caught and logged. This is normal packaging for a library that supports many model architectures. No evidence of supply-chain attack or malicious behavior.
</details>
<summary>
Standard import module, no malicious behavior detected.</summary>
</security_assessment>

[5/10] Reviewing src/llama.cpp-b9707/CMakeLists.txt, llama.cpp.service, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/cmake/build-info.cmake...
+ Reviewed src/llama.cpp-b9707/conversion/__init__.py. Status: SAFE -- Standard import module, no malicious behavior detected.
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard CMake build configuration for the llama.cpp project. It defines build options, includes subdirectories for source, common, examples, tests, and tools, and sets up installation rules. There are no suspicious network requests, obfuscated code, dangerous commands, or unexpected file operations. The file follows normal packaging practices and does not contain any supply-chain attack indicators.
</details>
<summary>Standard CMake build file, no malicious content.</summary>
</security_assessment>

[6/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/build-xcframework.sh, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/cmake/build-info.cmake...
+ Reviewed src/llama.cpp-b9707/CMakeLists.txt. Status: SAFE -- Standard CMake build file, no malicious content.
LLM auditresponse for build-xcframework.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard build script for creating an Apple XCFramework from the llama.cpp source tree. It performs typical build operations using CMake, Xcode, and Apple developer tools (xcrun, libtool, dsymutil, strip, vtool). It builds static libraries for multiple Apple platforms (iOS, macOS, visionOS, tvOS) and combines them into dynamic frameworks, then packages them into an XCFramework.

There are no network requests to unexpected hosts, no obfuscated or encoded commands, no exfiltration of data, no file operations outside the build directory, and no execution of untrusted code. The script only uses tools from the Xcode toolchain and copies headers from the repository's `include` and `ggml/include` directories. All operations are consistent with legitimate Apple framework packaging workflows.
</details>
<summary>Standard build script; no malicious behavior detected.</summary>
</security_assessment>

[7/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh, src/llama.cpp-b9707/cmake/build-info.cmake...
+ Reviewed src/llama.cpp-b9707/build-xcframework.sh. Status: SAFE -- Standard build script; no malicious behavior detected.
LLM auditresponse for build-info.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake script that extracts Git repository metadata (commit hash and commit count) and compiler/platform information for embedding into the build. It uses `find_package(Git)` or falls back to `find_program` to locate the git executable, then runs `git rev-parse --short HEAD` and `git rev-list --count HEAD` to retrieve version info. These operations are confined to the local repository and are normal for projects that want to stamp their binaries with build provenance. There is no network access, no execution of untrusted code, no obfuscation, no file manipulation outside the build directory, and nothing that deviates from standard CMake packaging practices. No security concern.
</details>
<summary>
Standard build info generation from local Git repository.</summary>
</security_assessment>

[8/10] Reviewing llama.cpp.service, src/llama.cpp-b9707/.devops/tools.sh...
+ Reviewed src/llama.cpp-b9707/cmake/build-info.cmake. Status: SAFE -- Standard build info generation from local Git repository.
LLM auditresponse for llama.cpp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the llama.cpp server. It defines a simple service that starts `/usr/bin/llama-server` with arguments from an environment file. There is no evidence of malicious or dangerous behavior—no obfuscated commands, no network requests, no unexpected file operations, and no attempt to exfiltrate data. The file follows normal packaging practices for a systemd service.
</details>
<summary>Standard systemd service unit file, no malicious content.</summary>
</security_assessment>

[9/10] Reviewing src/llama.cpp-b9707/.devops/tools.sh...
+ Reviewed llama.cpp.service. Status: SAFE -- Standard systemd service unit file, no malicious content.
LLM auditresponse for tools.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script for the `llama.cpp` command-line tool. It dispatches to various subcommands (`llama-quantize`, `llama-cli`, etc.) via `exec`. There is no network access, obfuscated code, or any unexpected file operations. The `--all-in-one` section iterates over model files and runs quantization, which is expected upstream functionality. No supply chain attack indicators are present.
</details>
<summary>Standard wrapper script, no malicious behavior detected.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/llama.cpp-b9707/.devops/tools.sh. Status: SAFE -- Standard wrapper script, no malicious behavior detected.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 50,149
  Completion Tokens: 6,847
  Total Tokens: 56,996
  Total Cost: $0.005746
  Execution Time: 144.74 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-llama.cpp-hip.txt
Final Status: SAFE


No issues found.
