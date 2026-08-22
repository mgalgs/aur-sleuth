---
package: llama.cpp-vulkan
pkgver: b10586
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: ab8f04a045309f11c3e319d8a061c88f7bc8df51
prompt_tokens: 53291
completion_tokens: 6807
total_tokens: 60098
cost: 0.00383098030
execution_time: 152.22
files_reviewed: 12
files_skipped: 0
files_unauditable: 25
unpinned_sources: 0
date: 2026-08-22T23:05:24Z
file_verdicts:
  - file: llama.cpp.conf
    status: safe
    summary: Safe configuration file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious behavior detected.
  - file: llama.cpp.service
    status: safe
    summary: Standard systemd service file, no security concerns.
  - file: src/llama.cpp-b10586/CMakeLists.txt
    status: safe
    summary: Standard CMake build file, no malicious content found.
  - file: src/llama.cpp-b10586/Makefile
    status: safe
    summary: Deprecation notice, no malicious behavior.
  - file: src/llama.cpp-b10586/cmake/build-info.cmake
    status: safe
    summary: Standard build info CMake script; no security issues.
  - file: src/llama.cpp-b10586/cmake/common.cmake
    status: safe
    summary: Standard CMake build helper; no malicious activity.
  - file: src/llama.cpp-b10586/build-xcframework.sh
    status: safe
    summary: Standard cross-platform XCFramework build script, no security issues.
  - file: src/llama.cpp-b10586/cmake/download-models.cmake
    status: safe
    summary: Standard model download script; no malicious behavior detected.
  - file: src/llama.cpp-b10586/cmake/git-vars.cmake
    status: safe
    summary: Standard CMake git metadata extraction script – no security risk.
  - file: src/llama.cpp-b10586/conversion/__init__.py
    status: safe
    summary: No malicious behavior; standard Python packaging for model conversion.
  - file: src/llama.cpp-b10586/.devops/tools.sh
    status: safe
    summary: No malicious code detected; standard wrapper script.
---

Cloning https://aur.archlinux.org/llama.cpp-vulkan.git...
Cloned llama.cpp-vulkan
Analyzing llama.cpp-vulkan AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only static variable assignments and function definitions (prepare, build, package). There is no pkgver() function, no command substitutions, no obfuscated code, and no network requests beyond the standard source array (tarball from GitHub and two config files from the maintainer's raw GitHub content). No code executes at source time or during source fetching that could be malicious. The two commands (`makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`) are safe to run.
</details>
<summary>No malicious code in global scope; safe to fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope; safe to fetch.
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
This is a configuration file for the llama.cpp package. It contains a single line setting the `LLAMA_ARGS` environment variable to an empty string. There is no executable code, no network requests, no obfuscation, and no system modifications. This is a standard configuration file for package behavior.
</details>
<summary>
Safe configuration file with no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed llama.cpp.conf. Status: SAFE -- Safe configuration file with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. All sources are pinned with valid checksums, including the upstream tarball from the official `llama.cpp` repository and the maintainer's auxiliary files (systemd service and config). The build process uses `cmake` and `npm` in a conventional way. The `prepare()` step creates an empty `.git` directory to work around a Tailwind v4 tooling issue, which is a benign workaround. There is no obfuscated code, no unexpected network requests, no execution of external scripts (other than the upstream build tools), and no data exfiltration. The file does not exhibit any malicious behavior.
</details>
<summary>Standard AUR PKGBUILD with no malicious behavior detected.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious behavior detected.
Reviewed all required files.
Deciding which files to review next...
Note: 25 compiled/archived file(s) cannot be audited as text and were not reviewed (llama.cpp-vulkan-b10586.tar.gz, src/llama.cpp-b10586/docs/development/llama-star/idea-arch.key, src/llama.cpp-b10586/examples/llama.android/gradle/wrapper/gradle-wrapper.jar and 22 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 3380 files available for selection; offering the 50 highest-priority to the model. 3010 lower-priority file(s) were not offered.
LLM response for file selection:
llama.cpp.service
src/llama.cpp-b10586/CMakeLists.txt
src/llama.cpp-b10586/Makefile
src/llama.cpp-b10586/build-xcframework.sh
src/llama.cpp-b10586/cmake/build-info.cmake
src/llama.cpp-b10586/cmake/common.cmake
src/llama.cpp-b10586/cmake/download-models.cmake
src/llama.cpp-b10586/cmake/git-vars.cmake
src/llama.cpp-b10586/conversion/__init__.py
src/llama.cpp-b10586/.devops/tools.sh
Decided to review 10 additional files: llama.cpp.service, src/llama.cpp-b10586/CMakeLists.txt, src/llama.cpp-b10586/Makefile, src/llama.cpp-b10586/build-xcframework.sh, src/llama.cpp-b10586/cmake/build-info.cmake, src/llama.cpp-b10586/cmake/common.cmake, src/llama.cpp-b10586/cmake/download-models.cmake, src/llama.cpp-b10586/cmake/git-vars.cmake, src/llama.cpp-b10586/conversion/__init__.py, src/llama.cpp-b10586/.devops/tools.sh
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing llama.cpp.service...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b10586/CMakeLists.txt...
[0/10] Reviewing llama.cpp.service, src/llama.cpp-b10586/CMakeLists.txt, src/llama.cpp-b10586/Makefile...
LLM auditresponse for llama.cpp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service file for the llama.cpp server. It launches `/usr/bin/llama-server` with arguments read from `/etc/conf.d/llama.cpp`. There are no suspicious commands, network requests, obfuscation, or file operations beyond normal service initialization. The `ExecReload` uses `kill` with a signal, which is a standard pattern. The environment file usage is normal for configuration. No malicious behavior detected.
</details>
<summary>Standard systemd service file, no security concerns.</summary>
</security_assessment>

[1/10] Reviewing src/llama.cpp-b10586/CMakeLists.txt, src/llama.cpp-b10586/Makefile...
+ Reviewed llama.cpp.service. Status: SAFE -- Standard systemd service file, no security concerns.
[1/10] Reviewing src/llama.cpp-b10586/CMakeLists.txt, src/llama.cpp-b10586/Makefile, src/llama.cpp-b10586/build-xcframework.sh...
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMakeLists.txt for the llama.cpp project. It defines build options, includes subdirectories for source, vendor, common, tests, examples, tools, and app. It contains no suspicious network requests, obfuscated code, or dangerous commands. All operations are typical for a CMake-based build system: configuring project settings, managing dependencies, and installing artifacts. No evidence of malicious or unexpected behavior.
</details>
<summary>Standard CMake build file, no malicious content found.</summary>
</security_assessment>

[2/10] Reviewing src/llama.cpp-b10586/Makefile, src/llama.cpp-b10586/build-xcframework.sh...
+ Reviewed src/llama.cpp-b10586/CMakeLists.txt. Status: SAFE -- Standard CMake build file, no malicious content found.
[2/10] Reviewing src/llama.cpp-b10586/Makefile, src/llama.cpp-b10586/build-xcframework.sh, src/llama.cpp-b10586/cmake/build-info.cmake...
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a Makefile that intentionally errors out with a message indicating the build system has changed from Make to CMake. It provides a link to the new build instructions. No network requests, obfuscated commands, system modifications, or data exfiltration are present. This is a standard packaging/deprecation notice and poses no security risk.
</details>
<summary>Deprecation notice, no malicious behavior.</summary>
</security_assessment>

[3/10] Reviewing src/llama.cpp-b10586/build-xcframework.sh, src/llama.cpp-b10586/cmake/build-info.cmake...
+ Reviewed src/llama.cpp-b10586/Makefile. Status: SAFE -- Deprecation notice, no malicious behavior.
[3/10] Reviewing src/llama.cpp-b10586/build-xcframework.sh, src/llama.cpp-b10586/cmake/build-info.cmake, src/llama.cpp-b10586/cmake/common.cmake...
LLM auditresponse for build-info.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This `build-info.cmake` file is a standard CMake build script for automatically extracting version information (commit hash, commit count, compiler, target platform) from the Git repository during the build process. It executes benign `git` commands (`rev-parse`, `rev-list`) on the local source directory to generate metadata used for build identification. There are no network requests, obfuscated code, unexpected file operations, or any other malicious or dangerous behavior. The script is entirely consistent with normal packaging practices and serves the legitimate purpose of embedding build info into the application. No supply-chain attack indicators are present.
</details>
<summary>Standard build info CMake script; no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/llama.cpp-b10586/build-xcframework.sh, src/llama.cpp-b10586/cmake/build-info.cmake, src/llama.cpp-b10586/cmake/common.cmake, src/llama.cpp-b10586/cmake/download-models.cmake...
[4/10] Reviewing src/llama.cpp-b10586/build-xcframework.sh, src/llama.cpp-b10586/cmake/common.cmake, src/llama.cpp-b10586/cmake/download-models.cmake...
+ Reviewed src/llama.cpp-b10586/cmake/build-info.cmake. Status: SAFE -- Standard build info CMake script; no security issues.
LLM auditresponse for common.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake file defines a standard helper function to add compiler warning and sanitizer flags. It includes "ggml/cmake/common.cmake", which is an expected internal dependency. There are no network requests, file exfiltration, obfuscated code, or dangerous system modifications. The function only sets compile options and link libraries based on CMake variables, all standard practice for build configuration. No supply-chain attack indicators are present.</details>
<summary>Standard CMake build helper; no malicious activity.</summary>
</security_assessment>

[4/10] Reviewing src/llama.cpp-b10586/build-xcframework.sh, src/llama.cpp-b10586/cmake/common.cmake, src/llama.cpp-b10586/cmake/download-models.cmake, src/llama.cpp-b10586/cmake/git-vars.cmake...
[5/10] Reviewing src/llama.cpp-b10586/build-xcframework.sh, src/llama.cpp-b10586/cmake/download-models.cmake, src/llama.cpp-b10586/cmake/git-vars.cmake...
+ Reviewed src/llama.cpp-b10586/cmake/common.cmake. Status: SAFE -- Standard CMake build helper; no malicious activity.
LLM auditresponse for build-xcframework.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard build script for creating an XCFramework from the llama.cpp project for Apple platforms (iOS, macOS, visionOS, tvOS). It invokes `cmake` and `xcrun` with expected arguments, copies headers from the llama.cpp source tree, and creates framework bundles. There are no suspicious network requests (no `curl`, `wget`, or external downloads), no obfuscated code, no attempts to exfiltrate data, no backdoors, and no commands that deviate from normal packaging practices. The script only uses tools like `cmake`, `xcrun`, `libtool`, `dsymutil`, `strip`, and `vtool` in expected ways. All operations are confined to the build directory and the source tree. No untrusted or unpinned content is fetched at build time. This is a normal, well-structured build script.
</details>
<summary>Standard cross-platform XCFramework build script, no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/llama.cpp-b10586/cmake/download-models.cmake, src/llama.cpp-b10586/cmake/git-vars.cmake...
+ Reviewed src/llama.cpp-b10586/build-xcframework.sh. Status: SAFE -- Standard cross-platform XCFramework build script, no security issues.
[6/10] Reviewing src/llama.cpp-b10586/cmake/download-models.cmake, src/llama.cpp-b10586/cmake/git-vars.cmake, src/llama.cpp-b10586/conversion/__init__.py...
LLM auditresponse for download-models.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake script downloads a specified model file from the ggml-org/models repository on Hugging Face, a standard upstream source for model weights in the llama.cpp ecosystem. The download uses TLS verification and checks an expected hash, with error handling for failed downloads. No obfuscation, unexpected network destinations, or code execution occurs beyond the declared purpose of fetching a model file. The script is a routine packaging/build utility for obtaining dependencies, and there is no evidence of malicious injection or functionality beyond its stated purpose.
</details>
<summary>
Standard model download script; no malicious behavior detected.</summary>
</security_assessment>

[7/10] Reviewing src/llama.cpp-b10586/cmake/git-vars.cmake, src/llama.cpp-b10586/conversion/__init__.py...
+ Reviewed src/llama.cpp-b10586/cmake/download-models.cmake. Status: SAFE -- Standard model download script; no malicious behavior detected.
[7/10] Reviewing src/llama.cpp-b10586/cmake/git-vars.cmake, src/llama.cpp-b10586/conversion/__init__.py, src/llama.cpp-b10586/.devops/tools.sh...
LLM auditresponse for git-vars.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake helper script that uses `find_package(Git)` and `execute_process` to obtain the commit SHA1, date, and subject from the local git repository. All commands operate within `${CMAKE_SOURCE_DIR}` (the package's own source tree) and use the system's `git` binary. There are no network requests, obfuscated code, unusual encoding, or file operations beyond reading the git history. This is a typical and benign build‑info gathering step for packages that embed version metadata.
</details>
<summary>Standard CMake git metadata extraction script – no security risk.</summary>
</security_assessment>

[8/10] Reviewing src/llama.cpp-b10586/conversion/__init__.py, src/llama.cpp-b10586/.devops/tools.sh...
+ Reviewed src/llama.cpp-b10586/cmake/git-vars.cmake. Status: SAFE -- Standard CMake git metadata extraction script – no security risk.
LLM auditresponse for __init__.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Python package `__init__.py` for the llama.cpp conversion module. It imports base classes, defines dictionaries mapping HuggingFace model architecture names to module names (e.g., `TEXT_MODEL_MAP`, `MMPROJ_MODEL_MAP`), and provides helper functions to dynamically import and register model classes (`load_all_models`, `get_model_class`, `print_registered_models`). There is no obfuscation, no network requests, no file system manipulation outside normal Python importing, no execution of external commands, and no exfiltration of data. All imports are from within the package itself (e.g., `conversion.{module_name}`) or standard library. The code performs exactly the expected role of organizing model class discovery and registration for a machine learning model conversion utility. No supply-chain attack indicators are present.
</details>
<summary>No malicious behavior; standard Python packaging for model conversion.</summary>
</security_assessment>

[9/10] Reviewing src/llama.cpp-b10586/.devops/tools.sh...
+ Reviewed src/llama.cpp-b10586/conversion/__init__.py. Status: SAFE -- No malicious behavior; standard Python packaging for model conversion.
LLM auditresponse for tools.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple dispatcher script for the llama.cpp tool suite. It reads the first argument and calls the corresponding executable (e.g., `./llama-quantize`, `./llama-cli`, `./llama-server`) with the remaining arguments. It uses `exec` for process replacement, which is standard. There are no network requests, no obfuscated code, no base64/curl/wget, and no attempts to modify system files or exfiltrate data. The `--all-in-one` branch iterates over local model files and conditionally runs quantization, which is ordinary packaging/usage behavior. The script does nothing outside the expected scope of the llama.cpp application.
</details>
<summary>No malicious code detected; standard wrapper script.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/llama.cpp-b10586/.devops/tools.sh. Status: SAFE -- No malicious code detected; standard wrapper script.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 53,291
  Completion Tokens: 6,807
  Total Tokens: 60,098
  Total Cost: $0.003831
  Execution Time: 152.22 seconds

Final Status: SAFE


No issues found.
