---
package: lib32-wivrn-server
pkgbase: wivrn-server
pkgver: 26.6.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 76c02596d4f1a58500b30a8fd37c0598e2c7d68c
prompt_tokens: 43953
completion_tokens: 7029
total_tokens: 50982
cost: 0.005140122666
execution_time: 187.7
files_reviewed: 11
files_skipped: 1
files_unauditable: 18
unpinned_sources: 0
date: 2026-08-25T02:57:47Z
file_verdicts:
  - file: wivrn-server-26.6.2.tar.gz
    status: skipped
    summary: "Skipping binary file: wivrn-server-26.6.2.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: The PKGBUILD adheres to standard packaging practices with no signs of malicious code or supply-chain compromise.
  - file: src/WiVRn-26.6.2/cmake/FreetypeHarfbuzz.cmake
    status: safe
    summary: Standard CMake dependency handling with verified checksums.
  - file: src/WiVRn-26.6.2/cmake/GenerateAssets.cmake
    status: safe
    summary: "Safe: standard asset generation with pinned hash."
  - file: src/WiVRn-26.6.2/cmake/CompileGLSL.cmake
    status: safe
    summary: Standard shader compilation helper, no malicious behavior.
  - file: src/WiVRn-26.6.2/cmake/I18n.cmake
    status: safe
    summary: Standard CMake i18n build file – no security issues.
  - file: src/WiVRn-26.6.2/cmake/GitVersion.cmake
    status: safe
    summary: Standard git version retrieval CMake script, no malicious behavior found.
  - file: src/WiVRn-26.6.2/cmake/android/FindOpenSSL.cmake
    status: safe
    summary: Legitimate upstream download with checksum verification.
  - file: src/WiVRn-26.6.2/CMakeLists.txt
    status: safe
    summary: Standard CMake build file with no malicious code.
  - file: src/WiVRn-26.6.2/patches/apply.sh
    status: safe
    summary: Standard patch application script, no security issues.
  - file: src/WiVRn-26.6.2/patches/monado-ci/0001-remote-resolution.patch
    status: safe
    summary: Benign resolution adjustment patch for VR driver.
  - file: src/WiVRn-26.6.2/cmake/VulkanVersion.cmake
    status: safe
    summary: Routine CMake version fallback; no malicious behavior.
---

lib32-wivrn-server is built from wivrn-server
Cloning https://aur.archlinux.org/wivrn-server.git...
Cloned lib32-wivrn-server
Analyzing lib32-wivrn-server AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions (package metadata, dependency arrays, source array) and function definitions for `build()`, `package_wivrn-server()`, `package_lib32-wivrn-server()`, and `package_wivrn-dashboard()`. There is no top-level code execution beyond variable assignments – no command substitutions, no calls to external commands, no obfuscation, no suspicious network requests. The source array points to a fixed GitHub tag URL with a non-SKIP SHA256 checksum. The `pkgver()` function is not defined, so no dynamic code runs during sourcing. All potentially dangerous operations (build commands, install commands) are inside functions that do not execute during the narrow scope of `makepkg --nobuild --nodeps --noprepare`. Therefore, fetching the source and sourcing the PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code or source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code or source.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, wivrn-server-26.6.2.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed wivrn-server-26.6.2.tar.gz. Status: SKIPPED -- Skipping binary file: wivrn-server-26.6.2.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch packaging script for the WiVRn project. It fetches the source tarball from the official GitHub repository with a pinned version and a valid sha256sum (not SKIP). The build process invokes cmake and standard build commands with conventional configuration flags for the server, a 32-bit server library, and a dashboard. Installation steps use `cmake --install` and create a simple environment.d configuration file. No suspicious commands such as curl, wget, base64, eval, or obfuscation are present. No unexpected network destinations or downloads beyond the upstream source tarball. No exfiltration, backdoors, or malicious system modifications are evident. The package's source is from the upstream WiVRn GitHub repo, and the checksum is pinned to a specific release tarball, which is a good supply-chain practice. The build process only affects files within the package's own scope.

</details>
<evidence></evidence>
<summary>
The PKGBUILD adheres to standard packaging practices with no signs of malicious code or supply-chain compromise.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- The PKGBUILD adheres to standard packaging practices with no signs of malicious code or supply-chain compromise.
Reviewed all required files.
Deciding which files to review next...
Note: 18 compiled/archived file(s) cannot be audited as text and were not reviewed (src/WiVRn-26.6.2/assets-source/ground.glb, src/WiVRn-26.6.2/assets/left-hand.glb, src/WiVRn-26.6.2/assets/ray-htc.glb and 15 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 488 files available for selection; offering the 50 highest-priority to the model. 401 lower-priority file(s) were not offered.
LLM response for file selection:
src/WiVRn-26.6.2/CMakeLists.txt
src/WiVRn-26.6.2/cmake/CompileGLSL.cmake
src/WiVRn-26.6.2/cmake/FreetypeHarfbuzz.cmake
src/WiVRn-26.6.2/cmake/GenerateAssets.cmake
src/WiVRn-26.6.2/cmake/GitVersion.cmake
src/WiVRn-26.6.2/cmake/I18n.cmake
src/WiVRn-26.6.2/cmake/VulkanVersion.cmake
src/WiVRn-26.6.2/cmake/android/FindOpenSSL.cmake
src/WiVRn-26.6.2/patches/apply.sh
src/WiVRn-26.6.2/patches/monado-ci/0001-remote-resolution.patch
Decided to review 10 additional files: src/WiVRn-26.6.2/CMakeLists.txt, src/WiVRn-26.6.2/cmake/CompileGLSL.cmake, src/WiVRn-26.6.2/cmake/FreetypeHarfbuzz.cmake, src/WiVRn-26.6.2/cmake/GenerateAssets.cmake, src/WiVRn-26.6.2/cmake/GitVersion.cmake, src/WiVRn-26.6.2/cmake/I18n.cmake, src/WiVRn-26.6.2/cmake/VulkanVersion.cmake, src/WiVRn-26.6.2/cmake/android/FindOpenSSL.cmake, src/WiVRn-26.6.2/patches/apply.sh, src/WiVRn-26.6.2/patches/monado-ci/0001-remote-resolution.patch
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/WiVRn-26.6.2/CMakeLists.txt...
[0/10] Reviewing src/WiVRn-26.6.2/CMakeLists.txt, src/WiVRn-26.6.2/cmake/CompileGLSL.cmake...
[0/10] Reviewing src/WiVRn-26.6.2/CMakeLists.txt, src/WiVRn-26.6.2/cmake/CompileGLSL.cmake, src/WiVRn-26.6.2/cmake/FreetypeHarfbuzz.cmake...
LLM auditresponse for FreetypeHarfbuzz.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake module downloads Freetype and Harfbuzz source tarballs from their official upstream locations (sourceforge.net for Freetype, github.com for Harfbuzz) with hardcoded SHA256 checksums for integrity verification. All operations are standard for a CMake-based build system that optionally bundles dependencies. No obfuscation, unexpected network destinations, or code execution beyond the build process is present. The use of symbolic links for local tarballs is a convenience feature, not a security concern. No evidence of malicious or supply-chain attack behavior.
</details>
<evidence>
</evidence>
<summary>Standard CMake dependency handling with verified checksums.</summary>
</security_assessment>

[0/10] Reviewing src/WiVRn-26.6.2/CMakeLists.txt, src/WiVRn-26.6.2/cmake/CompileGLSL.cmake, src/WiVRn-26.6.2/cmake/FreetypeHarfbuzz.cmake, src/WiVRn-26.6.2/cmake/GenerateAssets.cmake...
[1/10] Reviewing src/WiVRn-26.6.2/CMakeLists.txt, src/WiVRn-26.6.2/cmake/CompileGLSL.cmake, src/WiVRn-26.6.2/cmake/GenerateAssets.cmake...
+ Reviewed src/WiVRn-26.6.2/cmake/FreetypeHarfbuzz.cmake. Status: SAFE -- Standard CMake dependency handling with verified checksums.
LLM auditresponse for GenerateAssets.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake file defines helper functions for building and processing assets in the WiVRn project (a VR runtime). The functions handle texture compression (KTX), SVG rasterization, glTF transformations, file copying, and downloading of the webxr-input-profiles package from the official npm registry. The download function uses a pinned SHA256 hash (`EXPECTED_HASH SHA256=30df2a2268220fc0d0e034bed1550aabdd7a2500573c5216f64fc70d59c3d91e`) to verify integrity, and all other operations involve standard build tools (toktx, rsvg-convert, gltf-transform, cmake). There is no obfuscation, no unexpected network destinations, no execution of arbitrary code, and no exfiltration of data. The file follows standard CMake packaging patterns and presents no evidence of malicious intent.
</details>
<evidence></evidence>
<summary>Safe: standard asset generation with pinned hash.</summary>
</security_assessment>

[2/10] Reviewing src/WiVRn-26.6.2/CMakeLists.txt, src/WiVRn-26.6.2/cmake/CompileGLSL.cmake...
+ Reviewed src/WiVRn-26.6.2/cmake/GenerateAssets.cmake. Status: SAFE -- Safe: standard asset generation with pinned hash.
[2/10] Reviewing src/WiVRn-26.6.2/CMakeLists.txt, src/WiVRn-26.6.2/cmake/CompileGLSL.cmake, src/WiVRn-26.6.2/cmake/GitVersion.cmake...
LLM auditresponse for CompileGLSL.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake file is a standard build helper for compiling GLSL shaders into SPIR-V bytecode and embedding them into C++ source files. It invokes `glslangValidator` and `spirv-opt` from the Vulkan SDK, and `hexdump` to format the binary output. All operations are confined to the build directory and involve only the package's own source files. There are no network requests, obfuscated code, or unusual system modifications. The script follows typical CMake packaging patterns for Vulkan-based applications.
</details>
<evidence></evidence>
<summary>Standard shader compilation helper, no malicious behavior.</summary>
</security_assessment>

[2/10] Reviewing src/WiVRn-26.6.2/CMakeLists.txt, src/WiVRn-26.6.2/cmake/CompileGLSL.cmake, src/WiVRn-26.6.2/cmake/GitVersion.cmake, src/WiVRn-26.6.2/cmake/I18n.cmake...
[3/10] Reviewing src/WiVRn-26.6.2/CMakeLists.txt, src/WiVRn-26.6.2/cmake/GitVersion.cmake, src/WiVRn-26.6.2/cmake/I18n.cmake...
+ Reviewed src/WiVRn-26.6.2/cmake/CompileGLSL.cmake. Status: SAFE -- Standard shader compilation helper, no malicious behavior.
LLM auditresponse for I18n.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake file is a standard build helper for internationalization. It defines two functions: `CREATE_MO_FILES` compiles `.po` translation files into `.mo` binary message catalogs using `msgfmt` (from the Gettext package), and `CREATE_GLYPHSET` runs a Python script from the project's own `tools` directory to generate a glyph set. All file operations are confined to the build directory or the installation prefix. No network requests, obfuscation, or unexpected system modifications are present. The code follows normal CMake packaging practices for i18n support.
</details>
<evidence></evidence>
<summary>Standard CMake i18n build file – no security issues.</summary>
</security_assessment>

[4/10] Reviewing src/WiVRn-26.6.2/CMakeLists.txt, src/WiVRn-26.6.2/cmake/GitVersion.cmake...
+ Reviewed src/WiVRn-26.6.2/cmake/I18n.cmake. Status: SAFE -- Standard CMake i18n build file – no security issues.
[4/10] Reviewing src/WiVRn-26.6.2/CMakeLists.txt, src/WiVRn-26.6.2/cmake/GitVersion.cmake, src/WiVRn-26.6.2/cmake/VulkanVersion.cmake...
LLM auditresponse for GitVersion.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake script is a standard build helper that retrieves version and commit information from the local Git repository using `git describe` and `git rev-parse`. It then generates configuration files from templates via `configure_file`. There is no obfuscated code, no external network requests (except potentially if the remote Git source needs to be fetched during clone, but that is outside this file's scope and handled by the build system), and no unexpected file operations. All commands are typical for embedding version metadata during the build process. No evidence of supply-chain attack or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard git version retrieval CMake script, no malicious behavior found.</summary>
</security_assessment>

[5/10] Reviewing src/WiVRn-26.6.2/CMakeLists.txt, src/WiVRn-26.6.2/cmake/VulkanVersion.cmake...
+ Reviewed src/WiVRn-26.6.2/cmake/GitVersion.cmake. Status: SAFE -- Standard git version retrieval CMake script, no malicious behavior found.
[5/10] Reviewing src/WiVRn-26.6.2/CMakeLists.txt, src/WiVRn-26.6.2/cmake/VulkanVersion.cmake, src/WiVRn-26.6.2/cmake/android/FindOpenSSL.cmake...
LLM auditresponse for FindOpenSSL.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake module downloads OpenSSL from the official GitHub repository (github.com/openssl/openssl) using HTTPS and verifies the download with a hardcoded SHA256 checksum. All operations—downloading, extracting, configuring, and building—are standard for Android cross-compilation and serve the legitimate purpose of providing the OpenSSL library when the NDK lacks it. No suspicious hosts, obfuscated code, or unexpected system modifications are present.
</details>
<evidence></evidence>
<summary>Legitimate upstream download with checksum verification.</summary>
</security_assessment>

[6/10] Reviewing src/WiVRn-26.6.2/CMakeLists.txt, src/WiVRn-26.6.2/cmake/VulkanVersion.cmake...
+ Reviewed src/WiVRn-26.6.2/cmake/android/FindOpenSSL.cmake. Status: SAFE -- Legitimate upstream download with checksum verification.
[6/10] Reviewing src/WiVRn-26.6.2/CMakeLists.txt, src/WiVRn-26.6.2/cmake/VulkanVersion.cmake, src/WiVRn-26.6.2/patches/apply.sh...
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard CMakeLists.txt for the WiVRn project. It defines build options, finds required system packages, and declares dependencies via FetchContent from official upstream URLs (GitHub, GitLab) with pinned versions and SHA256 hashes. No obfuscated code, unexpected network requests, or system modifications are present. The only potential hygiene concern is the Monado dependency using a git tag read from a file (`monado-rev`), which is mutable but is the project's own upstream dependency; this is not indicative of a supply-chain attack. All other dependencies use fixed tarballs with checksums. There is no evidence of data exfiltration, backdoors, or execution of attacker-controlled code.
</details>
<evidence></evidence>
<summary>Standard CMake build file with no malicious code.</summary>
</security_assessment>

[7/10] Reviewing src/WiVRn-26.6.2/cmake/VulkanVersion.cmake, src/WiVRn-26.6.2/patches/apply.sh...
+ Reviewed src/WiVRn-26.6.2/CMakeLists.txt. Status: SAFE -- Standard CMake build file with no malicious code.
[7/10] Reviewing src/WiVRn-26.6.2/cmake/VulkanVersion.cmake, src/WiVRn-26.6.2/patches/apply.sh, src/WiVRn-26.6.2/patches/monado-ci/0001-remote-resolution.patch...
LLM auditresponse for apply.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard patch application helper used in packaging and development workflows. It either uses `git am` (if a `.git` directory exists) or falls back to the `patch` command to apply patch files passed as arguments. There are no network requests, obfuscated code, file exfiltration, or execution of untrusted external content. The script only operates on local files and arguments provided by the caller, which is expected for its purpose. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard patch application script, no security issues.</summary>
</security_assessment>

[8/10] Reviewing src/WiVRn-26.6.2/cmake/VulkanVersion.cmake, src/WiVRn-26.6.2/patches/monado-ci/0001-remote-resolution.patch...
+ Reviewed src/WiVRn-26.6.2/patches/apply.sh. Status: SAFE -- Standard patch application script, no security issues.
LLM auditresponse for 0001-remote-resolution.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies display resolution constants in the remote VR driver of Monado (the upstream OpenXR runtime). The changes simply increase the pixel dimensions and physical display size values, which is a standard configuration adjustment for a different headset model. No malicious activity: no network requests, obfuscated code, file operations, or execution of untrusted commands. This is a routine upstream patch that tailors the driver to specific hardware parameters.</details>
<evidence>
</evidence>
<summary>Benign resolution adjustment patch for VR driver.</summary>
</security_assessment>

[9/10] Reviewing src/WiVRn-26.6.2/cmake/VulkanVersion.cmake...
+ Reviewed src/WiVRn-26.6.2/patches/monado-ci/0001-remote-resolution.patch. Status: SAFE -- Benign resolution adjustment patch for VR driver.
LLM auditresponse for VulkanVersion.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake helper script that extracts the Vulkan API version from the installed Vulkan header file (`vulkan_core.h`). It is used as a fallback for older CMake versions (prior to 3.23.0). The script only performs local file reads and string parsing; there are no network requests, no execution of downloaded code, no obfuscation, and no system modifications beyond reading a header file. All operations are consistent with normal packaging practices.
</details>
<evidence></evidence>
<summary>Routine CMake version fallback; no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/WiVRn-26.6.2/cmake/VulkanVersion.cmake. Status: SAFE -- Routine CMake version fallback; no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: wivrn-server-26.6.2.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 43,953
  Completion Tokens: 7,029
  Total Tokens: 50,982
  Total Cost: $0.005140
  Execution Time: 187.70 seconds

Final Status: SAFE


No issues found.


Audit Skips:

wivrn-server-26.6.2.tar.gz: [SKIPPED] Skipping binary file: wivrn-server-26.6.2.tar.gz
