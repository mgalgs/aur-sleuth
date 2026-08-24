---
package: wivrn-dashboard
pkgver: 25.12
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 56580919ea5cd225cb34031d0932798021e4a0d8
prompt_tokens: 43450
completion_tokens: 7620
total_tokens: 51070
cost: 0.0033688060
execution_time: 289.38
files_reviewed: 11
files_skipped: 1
files_unauditable: 17
unpinned_sources: 0
date: 2026-08-24T07:22:41Z
file_verdicts:
  - file: wivrn-dashboard-25.12.tar.gz
    status: skipped
    summary: "Skipping binary file: wivrn-dashboard-25.12.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no security concerns detected.
  - file: src/WiVRn-25.12/CMakeLists.txt
    status: safe
    summary: Standard CMake build file, no security issues.
  - file: src/WiVRn-25.12/cmake/FreetypeHarfbuzz.cmake
    status: safe
    summary: Standard dependency build script with pinned checksums and official sources.
  - file: src/WiVRn-25.12/cmake/CompileGLSL.cmake
    status: safe
    summary: Standard shader compilation script, no malicious code.
  - file: src/WiVRn-25.12/cmake/GitVersion.cmake
    status: safe
    summary: Standard CMake git versioning; no security issues.
  - file: src/WiVRn-25.12/cmake/GenerateAssets.cmake
    status: safe
    summary: Legitimate CMake build helper for asset generation.
  - file: src/WiVRn-25.12/cmake/VulkanVersion.cmake
    status: safe
    summary: Benign upstream CMake helper for Vulkan version detection.
  - file: src/WiVRn-25.12/patches/monado-ci/0001-remote-resolution.patch
    status: safe
    summary: Patch adjusts hardware constants; no malicious content.
  - file: src/WiVRn-25.12/cmake/I18n.cmake
    status: safe
    summary: Standard CMake internationalization helper; no malicious behavior.
  - file: src/WiVRn-25.12/client/libcurl.cpp
    status: safe
    summary: Standard libcurl HTTP download wrapper, no malicious content.
  - file: src/WiVRn-25.12/patches/apply.sh
    status: safe
    summary: Standard patch application script, no malicious behavior.
---

Cloning https://aur.archlinux.org/wivrn-dashboard.git...
Cloned wivrn-dashboard
Analyzing wivrn-dashboard AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and definitions for `build()` and `package()`. There is no `pkgver()` function or any top-level code beyond variable declarations. The source array points to a GitHub release tarball with a valid SHA-256 checksum. Running `makepkg --nobuild --nodeps --noprepare` will only fetch this tarball and extract it, with no execution of malicious code. `makepkg --printsrcinfo` will simply parse the PKGBUILD and output .SRCINFO content. No security concerns are present for this limited scope.
</details>
<evidence></evidence>
<summary>Safe for source fetch and PKGBUILD sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe for source fetch and PKGBUILD sourcing.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, wivrn-dashboard-25.12.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed wivrn-dashboard-25.12.tar.gz. Status: SKIPPED -- Skipping binary file: wivrn-dashboard-25.12.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard, straightforward build script for the wivrn-dashboard package. It fetches source code from the official GitHub release tarball using a pinned SHA256 checksum for integrity. The build and install steps use cmake in a conventional manner with no unusual network requests, file operations, or obfuscated code. The only dependencies and makedepends are standard libraries and tooling for a Qt/Kirigami-based application. There are no signs of injection, backdoors, or supply-chain compromise.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD; no security concerns detected.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no security concerns detected.
Reviewed all required files.
Deciding which files to review next...
Note: 17 compiled/archived file(s) cannot be audited as text and were not reviewed (src/WiVRn-25.12/assets-source/ground.glb, src/WiVRn-25.12/assets/left-hand.glb, src/WiVRn-25.12/assets/ray-htc.glb and 14 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 467 files available for selection; offering the 50 highest-priority to the model. 380 lower-priority file(s) were not offered.
LLM response for file selection:
src/WiVRn-25.12/CMakeLists.txt
src/WiVRn-25.12/cmake/CompileGLSL.cmake
src/WiVRn-25.12/cmake/FreetypeHarfbuzz.cmake
src/WiVRn-25.12/cmake/GenerateAssets.cmake
src/WiVRn-25.12/cmake/GitVersion.cmake
src/WiVRn-25.12/cmake/I18n.cmake
src/WiVRn-25.12/cmake/VulkanVersion.cmake
src/WiVRn-25.12/patches/apply.sh
src/WiVRn-25.12/patches/monado-ci/0001-remote-resolution.patch
src/WiVRn-25.12/client/libcurl.cpp
Decided to review 10 additional files: src/WiVRn-25.12/CMakeLists.txt, src/WiVRn-25.12/cmake/CompileGLSL.cmake, src/WiVRn-25.12/cmake/FreetypeHarfbuzz.cmake, src/WiVRn-25.12/cmake/GenerateAssets.cmake, src/WiVRn-25.12/cmake/GitVersion.cmake, src/WiVRn-25.12/cmake/I18n.cmake, src/WiVRn-25.12/cmake/VulkanVersion.cmake, src/WiVRn-25.12/patches/apply.sh, src/WiVRn-25.12/patches/monado-ci/0001-remote-resolution.patch, src/WiVRn-25.12/client/libcurl.cpp
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/WiVRn-25.12/CMakeLists.txt...
[0/10] Reviewing src/WiVRn-25.12/CMakeLists.txt, src/WiVRn-25.12/cmake/CompileGLSL.cmake...
[0/10] Reviewing src/WiVRn-25.12/CMakeLists.txt, src/WiVRn-25.12/cmake/CompileGLSL.cmake, src/WiVRn-25.12/cmake/FreetypeHarfbuzz.cmake...
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMake build file for the WiVRn VR streaming project. It uses FetchContent to download dependencies from official upstream repositories (GitHub, GitLab, etc.) with pinned versions and SHA256 hashes, which is a common and secure practice. The monado dependency uses a GIT_TAG read from a file, which is typical for VCS-based packages and not inherently malicious. There are no suspicious network requests, obfuscated code, file operations, or commands that would indicate a supply-chain attack. All options and targets are consistent with the project's stated purpose. No evidence of malicious behavior was found.
</details>
<evidence></evidence>
<summary>Standard CMake build file, no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/WiVRn-25.12/cmake/CompileGLSL.cmake, src/WiVRn-25.12/cmake/FreetypeHarfbuzz.cmake...
+ Reviewed src/WiVRn-25.12/CMakeLists.txt. Status: SAFE -- Standard CMake build file, no security issues.
[1/10] Reviewing src/WiVRn-25.12/cmake/CompileGLSL.cmake, src/WiVRn-25.12/cmake/FreetypeHarfbuzz.cmake, src/WiVRn-25.12/cmake/GenerateAssets.cmake...
LLM auditresponse for FreetypeHarfbuzz.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake file is a standard dependency management script for the WiVRn project. It either uses system-installed Freetype and Harfbuzz libraries or downloads pinned versions from official upstream sources (SourceForge for Freetype, GitHub for Harfbuzz) with SHA256 checksums verified. The downloaded archives are extracted and compiled as static libraries. There is no obfuscated code, no unexpected network destinations, no exfiltration of data, and no execution of arbitrary code. The script is consistent with normal packaging and build practices.
</details>
<evidence></evidence>
<summary>Standard dependency build script with pinned checksums and official sources.</summary>
</security_assessment>

[1/10] Reviewing src/WiVRn-25.12/cmake/CompileGLSL.cmake, src/WiVRn-25.12/cmake/FreetypeHarfbuzz.cmake, src/WiVRn-25.12/cmake/GenerateAssets.cmake, src/WiVRn-25.12/cmake/GitVersion.cmake...
[2/10] Reviewing src/WiVRn-25.12/cmake/CompileGLSL.cmake, src/WiVRn-25.12/cmake/GenerateAssets.cmake, src/WiVRn-25.12/cmake/GitVersion.cmake...
+ Reviewed src/WiVRn-25.12/cmake/FreetypeHarfbuzz.cmake. Status: SAFE -- Standard dependency build script with pinned checksums and official sources.
LLM auditresponse for CompileGLSL.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake file is a standard build-system module for compiling GLSL shaders into SPIR-V and embedding them as C++ arrays. It uses well-known Vulkan tools (`glslangValidator`, `spirv-opt`) and the standard Unix utility `hexdump`. All file operations are confined to the build directory (`CMAKE_CURRENT_BINARY_DIR`). There are no network requests, no downloads of external code, no obfuscation, no commands that read or exfiltrate sensitive data, and no deviation from normal packaging or build practices. The script is purely a build helper for the package's own shader sources.
</details>
<evidence></evidence>
<summary>Standard shader compilation script, no malicious code.</summary>
</security_assessment>

[2/10] Reviewing src/WiVRn-25.12/cmake/CompileGLSL.cmake, src/WiVRn-25.12/cmake/GenerateAssets.cmake, src/WiVRn-25.12/cmake/GitVersion.cmake, src/WiVRn-25.12/cmake/I18n.cmake...
[3/10] Reviewing src/WiVRn-25.12/cmake/GenerateAssets.cmake, src/WiVRn-25.12/cmake/GitVersion.cmake, src/WiVRn-25.12/cmake/I18n.cmake...
+ Reviewed src/WiVRn-25.12/cmake/CompileGLSL.cmake. Status: SAFE -- Standard shader compilation script, no malicious code.
LLM auditresponse for GitVersion.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake file runs `git describe` and `git rev-parse` on the project source directory to extract version and commit information, then uses `configure_file` to substitute these values into a template. This is a standard, widely-used build infrastructure technique—there is no network access, no obfuscated code, no dangerous commands (eval, base64, curl, wget), and no deviation from normal CMake packaging practices. All operations are confined to the project source tree.
</details>
<evidence>
</evidence>
<summary>Standard CMake git versioning; no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/WiVRn-25.12/cmake/GenerateAssets.cmake, src/WiVRn-25.12/cmake/GitVersion.cmake, src/WiVRn-25.12/cmake/I18n.cmake, src/WiVRn-25.12/cmake/VulkanVersion.cmake...
[4/10] Reviewing src/WiVRn-25.12/cmake/GenerateAssets.cmake, src/WiVRn-25.12/cmake/I18n.cmake, src/WiVRn-25.12/cmake/VulkanVersion.cmake...
+ Reviewed src/WiVRn-25.12/cmake/GitVersion.cmake. Status: SAFE -- Standard CMake git versioning; no security issues.
LLM auditresponse for GenerateAssets.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake file defines build helper functions for the WiVRn project. It performs standard asset generation tasks: rasterizing SVGs, encoding textures with KTX, transforming glTF files, copying files, and downloading a pinned version of WebXR input profile assets from the official npm registry with a verified SHA256 hash. No malicious code (obfuscation, backdoors, data exfiltration, or unexpected network destinations) is present. All operations are confined to the build directory and use expected build tools.
</details>
<evidence>
</evidence>
<summary>Legitimate CMake build helper for asset generation.</summary>
</security_assessment>

[4/10] Reviewing src/WiVRn-25.12/cmake/GenerateAssets.cmake, src/WiVRn-25.12/cmake/I18n.cmake, src/WiVRn-25.12/cmake/VulkanVersion.cmake, src/WiVRn-25.12/patches/apply.sh...
[5/10] Reviewing src/WiVRn-25.12/cmake/I18n.cmake, src/WiVRn-25.12/cmake/VulkanVersion.cmake, src/WiVRn-25.12/patches/apply.sh...
+ Reviewed src/WiVRn-25.12/cmake/GenerateAssets.cmake. Status: SAFE -- Legitimate CMake build helper for asset generation.
LLM auditresponse for VulkanVersion.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMake compatibility script that manually parses the Vulkan header version from the local `vulkan_core.h` file when the system's CMake is older than 3.23.0. It performs only local file reading and string manipulation — no network requests, no code execution, no file writes, and no interaction with system configuration. The logic is identical to the version detection code in FindVulkan.cmake from upstream CMake, which is a common and expected packaging practice for projects that need to support older build environments. There is no evidence of injected malicious code, data exfiltration, or any deviation from the package's stated purpose of detecting the Vulkan API version.
</details>
<evidence></evidence>
<summary>Benign upstream CMake helper for Vulkan version detection.</summary>
</security_assessment>

[6/10] Reviewing src/WiVRn-25.12/cmake/I18n.cmake, src/WiVRn-25.12/patches/apply.sh...
+ Reviewed src/WiVRn-25.12/cmake/VulkanVersion.cmake. Status: SAFE -- Benign upstream CMake helper for Vulkan version detection.
[6/10] Reviewing src/WiVRn-25.12/cmake/I18n.cmake, src/WiVRn-25.12/patches/apply.sh, src/WiVRn-25.12/patches/monado-ci/0001-remote-resolution.patch...
LLM auditresponse for 0001-remote-resolution.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a patch file modifying static display resolution parameters in Monado's remote HMD driver. The changes adjust pixel dimensions, physical display width, and lens separation values. There is no malicious code, no network requests, no obfuscation, no file operations, and no execution of commands. The patch is a standard upstream configuration change.
</details>
<evidence></evidence>
<summary>Patch adjusts hardware constants; no malicious content.</summary>
</security_assessment>

[6/10] Reviewing src/WiVRn-25.12/cmake/I18n.cmake, src/WiVRn-25.12/patches/apply.sh, src/WiVRn-25.12/patches/monado-ci/0001-remote-resolution.patch, src/WiVRn-25.12/client/libcurl.cpp...
[7/10] Reviewing src/WiVRn-25.12/cmake/I18n.cmake, src/WiVRn-25.12/patches/apply.sh, src/WiVRn-25.12/client/libcurl.cpp...
+ Reviewed src/WiVRn-25.12/patches/monado-ci/0001-remote-resolution.patch. Status: SAFE -- Patch adjusts hardware constants; no malicious content.
LLM auditresponse for I18n.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake file defines two helper functions for internationalization: `CREATE_MO_FILES` compiles `.po` translation files into `.mo` binary files using `msgfmt`, and `CREATE_GLYPHSET` extracts character sets from the `.po` files using a Python script to generate a C++ source file.  

All operations are local to the build directory and use standard build tools (`msgfmt`, `python3`). No external network requests, obfuscated code, or dangerous system modifications are present. The file is a routine build system component for i18n support and does not introduce any supply-chain attack vectors.
</details>
<evidence></evidence>
<summary>Standard CMake internationalization helper; no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/WiVRn-25.12/patches/apply.sh, src/WiVRn-25.12/client/libcurl.cpp...
+ Reviewed src/WiVRn-25.12/cmake/I18n.cmake. Status: SAFE -- Standard CMake internationalization helper; no malicious behavior.
LLM auditresponse for libcurl.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard libcurl wrapper for HTTP downloads used by the WiVRn VR streaming application. It implements a multi-threaded download manager that transfers files or buffers, with proper error handling, cancellation, and Android-specific CA certificate bundling. There is no obfuscated code, no unexpected network destinations, no data exfiltration, and no execution of downloaded content. The Android certificate concatenation from `/system/etc/security/cacerts` is a known workaround for older Android OpenSSL versions, not a malicious action. The only notable code quality issue is a dead-code branch after an unconditional throw, which is a bug but not a security risk.
</details>
<evidence></evidence>
<summary>Standard libcurl HTTP download wrapper, no malicious content.</summary>
</security_assessment>

[9/10] Reviewing src/WiVRn-25.12/patches/apply.sh...
+ Reviewed src/WiVRn-25.12/client/libcurl.cpp. Status: SAFE -- Standard libcurl HTTP download wrapper, no malicious content.
LLM auditresponse for apply.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a straightforward patch application helper. It first checks if a `.git` directory exists, and if so, it configures git and applies patches using `git am`. Otherwise, it falls back to the `patch` command. All operations are local and standard for applying patches—no network requests, no obfuscation, no dangerous commands like `eval` or `curl`. The script only manipulates the local repository or source tree, which is expected behavior for a patch application script in a packaging context.</details>
<evidence></evidence>
<summary>Standard patch application script, no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/WiVRn-25.12/patches/apply.sh. Status: SAFE -- Standard patch application script, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: wivrn-dashboard-25.12.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 43,450
  Completion Tokens: 7,620
  Total Tokens: 51,070
  Total Cost: $0.003369
  Execution Time: 289.38 seconds

Final Status: SAFE


No issues found.


Audit Skips:

wivrn-dashboard-25.12.tar.gz: [SKIPPED] Skipping binary file: wivrn-dashboard-25.12.tar.gz
