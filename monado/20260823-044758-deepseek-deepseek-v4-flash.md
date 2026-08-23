---
package: monado
pkgver: 25.1.0
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3aa684c47f9b6bac5667ff3cee413c3a000b1b0d
prompt_tokens: 57113
completion_tokens: 7675
total_tokens: 64788
cost: 0.00384488678
execution_time: 156.41
files_reviewed: 12
files_skipped: 1
files_unauditable: 2
unpinned_sources: 0
date: 2026-08-23T04:47:55Z
file_verdicts:
  - file: monado-v25.1.0.tar.bz2
    status: skipped
    summary: "Skipping binary file: monado-v25.1.0.tar.bz2"
  - file: monado.install
    status: safe
    summary: Standard install script with informational messages only.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no evidence of malicious code.
  - file: src/monado-v25.1.0/cmake/SPIR-V.cmake
    status: safe
    summary: Standard CMake helper for shader compilation, no security issues.
  - file: src/monado-v25.1.0/CMakeLists.txt
    status: safe
    summary: Standard CMake build file; no malicious code found.
  - file: src/monado-v25.1.0/cmake/merge_json.py
    status: safe
    summary: Safe helper script, no suspicious behavior.
  - file: src/monado-v25.1.0/cmake/FindONNXRuntime.cmake
    status: safe
    summary: Standard CMake find module, no security concerns.
  - file: src/monado-v25.1.0/cmake/FindLeapV2.cmake
    status: safe
    summary: Standard CMake find module; no security concerns.
  - file: src/monado-v25.1.0/cmake/GenerateOpenXRRuntimeManifest.cmake
    status: safe
    summary: Standard CMake manifest generator, no malicious code found.
  - file: src/monado-v25.1.0/cmake/FindOpenHMD.cmake
    status: safe
    summary: Standard CMake find-module with no security concerns.
  - file: src/monado-v25.1.0/cmake/GenerateKhrManifest.cmake
    status: safe
    summary: Standard CMake utility module; no security issues found.
  - file: src/monado-v25.1.0/cmake/GenerateVulkanApiLayerManifest.cmake
    status: safe
    summary: Standard CMake module; no malicious content found.
  - file: src/monado-v25.1.0/cmake/GetGitRevisionDescription.cmake
    status: safe
    summary: Standard CMake Git revision module, no malicious behavior.
---

Cloning https://aur.archlinux.org/monado.git...
Cloned monado
Analyzing monado AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and function definitions at the top level -- no command substitutions, no backtick executions, and no code that runs during sourcing. The `pkgver()` function is absent, so nothing additional executes there. The sole source is a tarball fetched over HTTPS from the project's own upstream repository (`gitlab.freedesktop.org`) with a pinned checksum provided. Fetching this source and extracting it (which is what `makepkg --nobuild --nodeps --noprepare` does) writes files to disk but does not execute any code from the tarball. The `--nobuild`/`--noprepare` flags ensure that `build()`, `prepare()`, and `package()` are never run, so any content in those functions is irrelevant for this gate. No evidence of network requests to unexpected hosts, obfuscated code, data exfiltration, or other malicious behavior exists in the PKGBUILD's executable scope.
</details>
<summary>
Standard PKGBUILD; no dangerous top-level execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD; no dangerous top-level execution.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, monado-v25.1.0.tar.bz2...
[0/3] Reviewing PKGBUILD, monado-v25.1.0.tar.bz2, monado.install...
[1/3] Reviewing PKGBUILD, monado.install...
! Reviewed monado-v25.1.0.tar.bz2. Status: SKIPPED -- Skipping binary file: monado-v25.1.0.tar.bz2
LLM auditresponse for monado.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `monado.install` is a standard Arch Linux package install script. It contains only `printf` statements that display informational messages to the user about configuring the OpenXR runtime symlink. There are no network requests, file operations, system modifications, obfuscated code, or any other potentially dangerous behavior. The content is purely informational and follows normal packaging practices.
</details>
<summary>Standard install script with informational messages only.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed monado.install. Status: SAFE -- Standard install script with informational messages only.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch packaging file for the monado OpenXR runtime. It downloads the source tarball from the official upstream GitLab repository (`gitlab.freedesktop.org`), provides a valid SHA-256 checksum (not skipped), and uses standard CMake build and install procedures. No suspicious network requests, obfuscated code, dangerous command invocations, or any behavior indicative of a supply-chain attack are present. The only external reference beyond the source tarball is a `.install` file (`monado.install`), which is not included in this snippet and cannot be evaluated here, but the PKGBUILD itself contains no malicious logic. All build and packaging operations are typical for an AUR package of this nature.
</details>
<summary>Standard PKGBUILD; no evidence of malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no evidence of malicious code.
Reviewed all required files.
Deciding which files to review next...
Note: 2 compiled/archived file(s) cannot be audited as text and were not reviewed (src/monado-v25.1.0/gradle/wrapper/gradle-wrapper.jar, src/monado-v25.1.0/gradle/wrapper/gradle-wrapper.jar.license). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 1589 files available for selection; offering the 50 highest-priority to the model. 1435 lower-priority file(s) were not offered.
LLM response for file selection:
src/monado-v25.1.0/CMakeLists.txt
src/monado-v25.1.0/cmake/merge_json.py
src/monado-v25.1.0/cmake/SPIR-V.cmake
src/monado-v25.1.0/cmake/FindONNXRuntime.cmake
src/monado-v25.1.0/cmake/FindOpenHMD.cmake
src/monado-v25.1.0/cmake/FindLeapV2.cmake
src/monado-v25.1.0/cmake/GenerateOpenXRRuntimeManifest.cmake
src/monado-v25.1.0/cmake/GenerateKhrManifest.cmake
src/monado-v25.1.0/cmake/GenerateVulkanApiLayerManifest.cmake
src/monado-v25.1.0/cmake/GetGitRevisionDescription.cmake
Decided to review 10 additional files: src/monado-v25.1.0/CMakeLists.txt, src/monado-v25.1.0/cmake/merge_json.py, src/monado-v25.1.0/cmake/SPIR-V.cmake, src/monado-v25.1.0/cmake/FindONNXRuntime.cmake, src/monado-v25.1.0/cmake/FindOpenHMD.cmake, src/monado-v25.1.0/cmake/FindLeapV2.cmake, src/monado-v25.1.0/cmake/GenerateOpenXRRuntimeManifest.cmake, src/monado-v25.1.0/cmake/GenerateKhrManifest.cmake, src/monado-v25.1.0/cmake/GenerateVulkanApiLayerManifest.cmake, src/monado-v25.1.0/cmake/GetGitRevisionDescription.cmake
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/monado-v25.1.0/CMakeLists.txt...
[0/10] Reviewing src/monado-v25.1.0/CMakeLists.txt, src/monado-v25.1.0/cmake/merge_json.py...
[0/10] Reviewing src/monado-v25.1.0/CMakeLists.txt, src/monado-v25.1.0/cmake/merge_json.py, src/monado-v25.1.0/cmake/SPIR-V.cmake...
LLM auditresponse for SPIR-V.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a CMake module that provides the `spirv_shaders` function, which uses the `glslangValidator` tool to compile GLSL shader source files into SPIR-V binary and then generate C header files containing the compiled shader bytecode as a C identifier array. The tool is located via `find_program` from the expected system or build environment. All operations are local and rely on standard build-time dependencies. There are no network requests, no downloaded code execution, no obfuscated commands, and no unexpected file system modifications outside the build directory. The file follows standard CMake packaging practices and is entirely benign.
</details>
<summary>
Standard CMake helper for shader compilation, no security issues.
</summary>
</security_assessment>

[1/10] Reviewing src/monado-v25.1.0/CMakeLists.txt, src/monado-v25.1.0/cmake/merge_json.py...
+ Reviewed src/monado-v25.1.0/cmake/SPIR-V.cmake. Status: SAFE -- Standard CMake helper for shader compilation, no security issues.
[1/10] Reviewing src/monado-v25.1.0/CMakeLists.txt, src/monado-v25.1.0/cmake/merge_json.py, src/monado-v25.1.0/cmake/FindONNXRuntime.cmake...
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMake build configuration file for the Monado XR runtime (project name "XRT"). It defines the project version, dependencies, feature flags, and driver selection. The file contains no network downloads, no execution of external scripts (curl, wget, base64, eval), no obfuscated code, and no exfiltration of data. All `include()` and `find_package()` calls reference either CMake's standard modules, modules shipped within the project's own `cmake/` subdirectory, or well-known system packages (e.g., Vulkan, SDL2). There is no code that modifies system files outside the project's scope or performs any suspicious actions. The file is consistent with ordinary open-source packaging practices for a C/C++ build system.
</details>
<summary>Standard CMake build file; no malicious code found.</summary>
</security_assessment>

[2/10] Reviewing src/monado-v25.1.0/cmake/merge_json.py, src/monado-v25.1.0/cmake/FindONNXRuntime.cmake...
+ Reviewed src/monado-v25.1.0/CMakeLists.txt. Status: SAFE -- Standard CMake build file; no malicious code found.
[2/10] Reviewing src/monado-v25.1.0/cmake/merge_json.py, src/monado-v25.1.0/cmake/FindONNXRuntime.cmake, src/monado-v25.1.0/cmake/FindOpenHMD.cmake...
LLM auditresponse for merge_json.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `merge_json.py` is a straightforward utility for merging multiple JSON files. It reads input files specified as command-line arguments, parses them with `json.load()`, merges the root dictionaries while handling duplicates according to flags, and writes the result to a user‑specified output file.  

There is no network access, no execution of external commands, no obfuscation, and no attempt to read or exfiltrate system data. The only file operations are reading the user‑provided input files and writing the merged output – both standard behaviour for a packaging helper script. The dead code `if False: print(...)` is inert and not a concern.  

The script is safe and performs no actions outside its documented purpose.
</details>
<summary>Safe helper script, no suspicious behavior.</summary>
</security_assessment>

[3/10] Reviewing src/monado-v25.1.0/cmake/FindONNXRuntime.cmake, src/monado-v25.1.0/cmake/FindOpenHMD.cmake...
+ Reviewed src/monado-v25.1.0/cmake/merge_json.py. Status: SAFE -- Safe helper script, no suspicious behavior.
[3/10] Reviewing src/monado-v25.1.0/cmake/FindONNXRuntime.cmake, src/monado-v25.1.0/cmake/FindOpenHMD.cmake, src/monado-v25.1.0/cmake/FindLeapV2.cmake...
LLM auditresponse for FindONNXRuntime.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake find module for locating the ONNX runtime library. It uses conventional CMake commands (`find_library`, `find_path`, `pkg_check_modules`) and creates an imported target. There are no network requests, no execution of arbitrary commands, no obfuscated code, and no unexpected file operations. It does exactly what a find module is supposed to do: locate a system dependency. No evidence of malicious or supply-chain attack behavior.
</details>
<summary>Standard CMake find module, no security concerns.</summary>
</security_assessment>

[3/10] Reviewing src/monado-v25.1.0/cmake/FindONNXRuntime.cmake, src/monado-v25.1.0/cmake/FindOpenHMD.cmake, src/monado-v25.1.0/cmake/FindLeapV2.cmake, src/monado-v25.1.0/cmake/GenerateOpenXRRuntimeManifest.cmake...
[4/10] Reviewing src/monado-v25.1.0/cmake/FindOpenHMD.cmake, src/monado-v25.1.0/cmake/FindLeapV2.cmake, src/monado-v25.1.0/cmake/GenerateOpenXRRuntimeManifest.cmake...
+ Reviewed src/monado-v25.1.0/cmake/FindONNXRuntime.cmake. Status: SAFE -- Standard CMake find module, no security concerns.
LLM auditresponse for FindLeapV2.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake module is a standard find script for the Ultraleap v2 hand-tracking SDK. It uses `find_path` and `find_library` to locate the Leap headers and library, then sets up an imported CMake target. There are no network requests, no execution of external commands (no `execute_process`, `file(DOWNLOAD)`, `curl`, `wget`, or similar), no obfuscated or encoded strings, and no file operations outside of CMake's standard find mechanism. All file access is confined to reading the system's library/include paths to locate the Leap SDK, which is the intended purpose of any CMake find module. There is no evidence of malicious or suspicious behavior.
</details>
<summary>Standard CMake find module; no security concerns.</summary>
</security_assessment>

[4/10] Reviewing src/monado-v25.1.0/cmake/FindOpenHMD.cmake, src/monado-v25.1.0/cmake/FindLeapV2.cmake, src/monado-v25.1.0/cmake/GenerateOpenXRRuntimeManifest.cmake, src/monado-v25.1.0/cmake/GenerateKhrManifest.cmake...
[5/10] Reviewing src/monado-v25.1.0/cmake/FindOpenHMD.cmake, src/monado-v25.1.0/cmake/GenerateOpenXRRuntimeManifest.cmake, src/monado-v25.1.0/cmake/GenerateKhrManifest.cmake...
+ Reviewed src/monado-v25.1.0/cmake/FindLeapV2.cmake. Status: SAFE -- Standard CMake find module; no security concerns.
LLM auditresponse for GenerateOpenXRRuntimeManifest.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard CMake module used by the Monado OpenXR runtime build system to generate runtime manifest JSON files. It defines two functions that parse arguments and delegate to another module (`GenerateKhrManifest.cmake`) included from the same directory. The code uses only normal CMake commands (`set`, `include`, `message`, `cmake_parse_arguments`, `list`, `get_filename_component`). There are no network requests, no execution of external programs, no obfuscation, no downloads, and no system modifications. The file is purely a build-system helper and does not introduce any supply-chain attack vector. It is consistent with ordinary packaging and build infrastructure.
</details>
<summary>Standard CMake manifest generator, no malicious code found.</summary>
</security_assessment>

[5/10] Reviewing src/monado-v25.1.0/cmake/FindOpenHMD.cmake, src/monado-v25.1.0/cmake/GenerateOpenXRRuntimeManifest.cmake, src/monado-v25.1.0/cmake/GenerateKhrManifest.cmake, src/monado-v25.1.0/cmake/GenerateVulkanApiLayerManifest.cmake...
[6/10] Reviewing src/monado-v25.1.0/cmake/FindOpenHMD.cmake, src/monado-v25.1.0/cmake/GenerateKhrManifest.cmake, src/monado-v25.1.0/cmake/GenerateVulkanApiLayerManifest.cmake...
+ Reviewed src/monado-v25.1.0/cmake/GenerateOpenXRRuntimeManifest.cmake. Status: SAFE -- Standard CMake manifest generator, no malicious code found.
LLM auditresponse for FindOpenHMD.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake find-module for locating the OpenHMD library. It uses only conventional CMake commands such as `find_path`, `find_library`, `find_package`, `pkg_check_modules`, and `add_library`. There are no network requests, obfuscated code, dangerous commands, file modifications, or data exfiltration attempts. The file performs its intended purpose—locating the OpenHMD headers and library and creating an imported target—with no evidence of malicious behavior.
</details>
<summary>Standard CMake find-module with no security concerns.</summary>
</security_assessment>

[7/10] Reviewing src/monado-v25.1.0/cmake/GenerateKhrManifest.cmake, src/monado-v25.1.0/cmake/GenerateVulkanApiLayerManifest.cmake...
+ Reviewed src/monado-v25.1.0/cmake/FindOpenHMD.cmake. Status: SAFE -- Standard CMake find-module with no security concerns.
[7/10] Reviewing src/monado-v25.1.0/cmake/GenerateKhrManifest.cmake, src/monado-v25.1.0/cmake/GenerateVulkanApiLayerManifest.cmake, src/monado-v25.1.0/cmake/GetGitRevisionDescription.cmake...
LLM auditresponse for GenerateKhrManifest.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a CMake utility module (`GenerateKhrManifest.cmake`) that provides helper functions for generating JSON manifest files required by the OpenXR and Vulkan loaders. It is part of the monado package's build system.

The code:
- Uses standard CMake functions (`cmake_parse_arguments`, `configure_file`, `add_custom_command`, `install`).
- References a template file (`GenerateKhrManifestInternals.cmake.in`) in the same directory.
- Generates manifest files at build time (with absolute paths) and at install time (with relative paths).
- Contains no network requests, no obfuscated or encoded commands, no `eval`, `curl`, `wget`, or other dangerous operations.
- There are no unexpected file operations beyond creating manifest files in the build or install directories.
- The code is consistent with standard CMake packaging practices and serves the stated purpose of generating runtime/API layer manifests.

No supply-chain attack indicators or malicious behavior are present. The file performs only routine build and install tasks.</details>
<summary>
Standard CMake utility module; no security issues found.</summary>
</security_assessment>

[8/10] Reviewing src/monado-v25.1.0/cmake/GenerateVulkanApiLayerManifest.cmake, src/monado-v25.1.0/cmake/GetGitRevisionDescription.cmake...
+ Reviewed src/monado-v25.1.0/cmake/GenerateKhrManifest.cmake. Status: SAFE -- Standard CMake utility module; no security issues found.
LLM auditresponse for GenerateVulkanApiLayerManifest.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake module is a standard helper for generating Vulkan API layer manifests in build and install steps. It performs argument parsing and delegates to another CMake module (GenerateKhrManifest.cmake) located in the same directory. There are no network requests, no obfuscated code, no dangerous commands such as `eval`, `base64`, `curl`, or `wget`. All file paths and operations are constrained to the build system's controlled directories (e.g., build tree, install prefix). The module is consistent with typical CMake packaging practices and does not exhibit any supply-chain attack indicators.
</details>
<summary>Standard CMake module; no malicious content found.</summary>
</security_assessment>

[9/10] Reviewing src/monado-v25.1.0/cmake/GetGitRevisionDescription.cmake...
+ Reviewed src/monado-v25.1.0/cmake/GenerateVulkanApiLayerManifest.cmake. Status: SAFE -- Standard CMake module; no malicious content found.
LLM auditresponse for GetGitRevisionDescription.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake module (GetGitRevisionDescription.cmake) widely used across many projects to extract Git revision information during the build. It performs only expected operations: locating the `.git` directory, reading the HEAD reference, and running `git describe`/`git diff-index` to collect revision metadata. All executed commands invoke the Git binary directly—there are no network requests, no downloads from unexpected hosts, no obfuscated code, and no data exfiltration attempts. A commented-out sanitization block intended to guard against injection in the caller-supplied arguments is disabled, but this does not introduce malicious behavior; the module itself does not inject or execute arbitrary commands beyond `git`. The sole purpose is build-time version detection, making it a standard and expected packaging component.
</details>
<summary>Standard CMake Git revision module, no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/monado-v25.1.0/cmake/GetGitRevisionDescription.cmake. Status: SAFE -- Standard CMake Git revision module, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: monado-v25.1.0.tar.bz2)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 57,113
  Completion Tokens: 7,675
  Total Tokens: 64,788
  Total Cost: $0.003845
  Execution Time: 156.41 seconds

Final Status: SAFE


No issues found.


Audit Skips:

/data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ttqmntm4/monado-v25.1.0.tar.bz2: [SKIPPED] Skipping binary file: monado-v25.1.0.tar.bz2
