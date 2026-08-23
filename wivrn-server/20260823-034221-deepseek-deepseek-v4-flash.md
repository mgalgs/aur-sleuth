---
package: wivrn-server
pkgver: 26.6.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3aa684c47f9b6bac5667ff3cee413c3a000b1b0d
prompt_tokens: 42144
completion_tokens: 5699
total_tokens: 47843
cost: 0.00284093852
execution_time: 136.21
files_reviewed: 11
files_skipped: 1
files_unauditable: 18
unpinned_sources: 0
date: 2026-08-23T03:42:20Z
file_verdicts:
  - file: wivrn-server-26.6.2.tar.gz
    status: skipped
    summary: "Skipping binary file: wivrn-server-26.6.2.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned source and no malicious content.
  - file: src/WiVRn-26.6.2/CMakeLists.txt
    status: safe
    summary: Standard CMake build script, no malicious content.
  - file: src/WiVRn-26.6.2/cmake/GenerateAssets.cmake
    status: safe
    summary: Standard CMake build helper; no malicious behavior detected.
  - file: src/WiVRn-26.6.2/cmake/CompileGLSL.cmake
    status: safe
    summary: Standard CMake shader compilation, no security issues.
  - file: src/WiVRn-26.6.2/cmake/GitVersion.cmake
    status: safe
    summary: Standard CMake version extraction from git.
  - file: src/WiVRn-26.6.2/cmake/VulkanVersion.cmake
    status: safe
    summary: Standard version detection helper, no malicious code.
  - file: src/WiVRn-26.6.2/cmake/FreetypeHarfbuzz.cmake
    status: safe
    summary: Clean upstream fetch with hash verification, no malicious behavior.
  - file: src/WiVRn-26.6.2/patches/apply.sh
    status: safe
    summary: Standard patching script, no malicious activity.
  - file: src/WiVRn-26.6.2/patches/monado-ci/0001-remote-resolution.patch
    status: safe
    summary: Safe patch updating display resolution constants.
  - file: src/WiVRn-26.6.2/flatpak/boostpfr-gcc-12-internal-compiler-error.patch
    status: safe
    summary: Patch fixes boostpfr GCC 12 compiler error, no malice.
  - file: src/WiVRn-26.6.2/cmake/I18n.cmake
    status: safe
    summary: Standard i18n CMake functions; no malicious behavior.
---

Cloning https://aur.archlinux.org/wivrn-server.git...
Cloned wivrn-server
Analyzing wivrn-server AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments, function definitions (`build()`, `package_*()`), and no top-level code execution beyond the `source()` and `sha256sums` arrays. There is no `pkgver()` function, and no command substitution, `eval`, or other dynamic execution at global scope. The source is fetched from the official WiVRn GitHub repository under a pinned version tag with a provided SHA256 checksum. No suspicious network destinations or obfuscated content are present. The build/package functions are not executed during the narrow gate (`--nobuild --noprepare`), so any potential issues there are out of scope for this check.
</details>
<summary>Safe. No top-level execution, standard source with checksum.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe. No top-level execution, standard source with checksum.
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
This PKGBUILD follows standard AUR packaging practices for the WiVRn wireless VR runtime. The source is pinned to a specific version tag on the official GitHub repository with a validated SHA256 checksum. Build commands use only standard tools (cmake, ninja) and install files into the package directory via `DESTDIR`. The only additional file created is a simple environment configuration under `/usr/lib/environment.d`, which is a legitimate mechanism for setting runtime variables. There is no unusual network activity, obfuscated code, or any operation that deviates from the declared purpose of building and packaging WiVRn.
</details>
<summary>Standard PKGBUILD with pinned source and no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned source and no malicious content.
Reviewed all required files.
Deciding which files to review next...
Note: 18 compiled/archived file(s) cannot be audited as text and were not reviewed (src/WiVRn-26.6.2/assets-source/ground.glb, src/WiVRn-26.6.2/assets/left-hand.glb, src/WiVRn-26.6.2/assets/ray-htc.glb and 15 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 488 files available for selection; offering the 50 highest-priority to the model. 401 lower-priority file(s) were not offered.
LLM response for file selection:
src/WiVRn-26.6.2/CMakeLists.txt
src/WiVRn-26.6.2/cmake/CompileGLSL.cmake
src/WiVRn-26.6.2/cmake/GenerateAssets.cmake
src/WiVRn-26.6.2/cmake/GitVersion.cmake
src/WiVRn-26.6.2/cmake/I18n.cmake
src/WiVRn-26.6.2/cmake/FreetypeHarfbuzz.cmake
src/WiVRn-26.6.2/cmake/VulkanVersion.cmake
src/WiVRn-26.6.2/patches/apply.sh
src/WiVRn-26.6.2/patches/monado-ci/0001-remote-resolution.patch
src/WiVRn-26.6.2/flatpak/boostpfr-gcc-12-internal-compiler-error.patch
Decided to review 10 additional files: src/WiVRn-26.6.2/CMakeLists.txt, src/WiVRn-26.6.2/cmake/CompileGLSL.cmake, src/WiVRn-26.6.2/cmake/GenerateAssets.cmake, src/WiVRn-26.6.2/cmake/GitVersion.cmake, src/WiVRn-26.6.2/cmake/I18n.cmake, src/WiVRn-26.6.2/cmake/FreetypeHarfbuzz.cmake, src/WiVRn-26.6.2/cmake/VulkanVersion.cmake, src/WiVRn-26.6.2/patches/apply.sh, src/WiVRn-26.6.2/patches/monado-ci/0001-remote-resolution.patch, src/WiVRn-26.6.2/flatpak/boostpfr-gcc-12-internal-compiler-error.patch
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/WiVRn-26.6.2/cmake/CompileGLSL.cmake...
[0/10] Reviewing src/WiVRn-26.6.2/cmake/CompileGLSL.cmake, src/WiVRn-26.6.2/CMakeLists.txt...
[0/10] Reviewing src/WiVRn-26.6.2/cmake/CompileGLSL.cmake, src/WiVRn-26.6.2/CMakeLists.txt, src/WiVRn-26.6.2/cmake/GenerateAssets.cmake...
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard CMake build configuration for the WiVRn project. All external dependency URLs point to official upstream sources (GitHub, gitlab.freedesktop.org, etc.) with pinned hashes or tags. There are no encoded/obfuscated commands, no unexpected network requests, no file exfiltration, and no execution of untrusted code. The use of `FetchContent` with `PATCH_COMMAND` applies only patches from the project's own source tree. The script performs only routine build setup and dependency management.
</details>
<summary>Standard CMake build script, no malicious content.</summary>
</security_assessment>

[0/10] Reviewing src/WiVRn-26.6.2/cmake/CompileGLSL.cmake, src/WiVRn-26.6.2/CMakeLists.txt, src/WiVRn-26.6.2/cmake/GenerateAssets.cmake, src/WiVRn-26.6.2/cmake/GitVersion.cmake...
[1/10] Reviewing src/WiVRn-26.6.2/cmake/CompileGLSL.cmake, src/WiVRn-26.6.2/cmake/GenerateAssets.cmake, src/WiVRn-26.6.2/cmake/GitVersion.cmake...
+ Reviewed src/WiVRn-26.6.2/CMakeLists.txt. Status: SAFE -- Standard CMake build script, no malicious content.
LLM auditresponse for GenerateAssets.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
The file defines CMake functions for build-time asset processing: compressing textures (KTX), rasterizing SVGs, transforming GLTF models, copying files, and downloading a specific version of WebXR input profile assets from `registry.npmjs.com`. The download function (`wivrn_webxr_download`) uses a verified SHA256 hash and HTTPS, which is a standard, safe packaging practice. There is no obfuscated code, no unexpected network destinations, no data exfiltration, no execution of arbitrary downloaded code, and no dangerous system modifications. All operations are confined to build-time asset generation for the package itself. The file is a routine CMake module and shows no signs of a supply-chain attack.
</details>
<summary>
Standard CMake build helper; no malicious behavior detected.</summary>
</security_assessment>

[2/10] Reviewing src/WiVRn-26.6.2/cmake/CompileGLSL.cmake, src/WiVRn-26.6.2/cmake/GitVersion.cmake...
+ Reviewed src/WiVRn-26.6.2/cmake/GenerateAssets.cmake. Status: SAFE -- Standard CMake build helper; no malicious behavior detected.
[2/10] Reviewing src/WiVRn-26.6.2/cmake/CompileGLSL.cmake, src/WiVRn-26.6.2/cmake/GitVersion.cmake, src/WiVRn-26.6.2/cmake/I18n.cmake...
LLM auditresponse for CompileGLSL.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMake helper function for compiling GLSL shaders into SPIR-V binary arrays embedded as C++ source. It invokes `glslangValidator`, `spirv-opt`, and `hexdump` — all expected tools for shader compilation. There are no network requests, no encoded/obfuscated commands, no unexpected file operations outside the build tree, and no execution of untrusted code. The script performs exactly the role a packaging build system should: compile shaders at build time and generate a C++ source file that gets compiled into the package. No security concerns.
</details>
<summary>Standard CMake shader compilation, no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/WiVRn-26.6.2/cmake/CompileGLSL.cmake, src/WiVRn-26.6.2/cmake/GitVersion.cmake, src/WiVRn-26.6.2/cmake/I18n.cmake, src/WiVRn-26.6.2/cmake/FreetypeHarfbuzz.cmake...
[3/10] Reviewing src/WiVRn-26.6.2/cmake/GitVersion.cmake, src/WiVRn-26.6.2/cmake/I18n.cmake, src/WiVRn-26.6.2/cmake/FreetypeHarfbuzz.cmake...
+ Reviewed src/WiVRn-26.6.2/cmake/CompileGLSL.cmake. Status: SAFE -- Standard CMake shader compilation, no security issues.
LLM auditresponse for GitVersion.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake script that uses `git describe` and `git rev-parse` to extract version and commit information from the repository. It then uses `configure_file` to substitute these values into template files. There are no network requests, no obfuscated code, no dangerous commands, and no attempts to exfiltrate data or modify system files. The script only interacts with the local git repository and the build system. This is a routine and expected build-time operation for many projects. No security concerns.
</details>
<summary>Standard CMake version extraction from git.</summary>
</security_assessment>

[4/10] Reviewing src/WiVRn-26.6.2/cmake/I18n.cmake, src/WiVRn-26.6.2/cmake/FreetypeHarfbuzz.cmake...
+ Reviewed src/WiVRn-26.6.2/cmake/GitVersion.cmake. Status: SAFE -- Standard CMake version extraction from git.
[4/10] Reviewing src/WiVRn-26.6.2/cmake/I18n.cmake, src/WiVRn-26.6.2/cmake/FreetypeHarfbuzz.cmake, src/WiVRn-26.6.2/cmake/VulkanVersion.cmake...
LLM auditresponse for VulkanVersion.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake helper module that extracts the Vulkan version from the `vulkan_core.h` header. It uses only built-in CMake commands (`file(STRINGS)`, `string(REGEX)`, `list`, `if`) to parse version macros. There are no network requests, no execution of external programs, no encoded or obfuscated content, and no file operations outside of reading the package's own header. The logic is a fallback for older CMake versions and is entirely benign.
</details>
<summary>Standard version detection helper, no malicious code.</summary>
</security_assessment>

[4/10] Reviewing src/WiVRn-26.6.2/cmake/I18n.cmake, src/WiVRn-26.6.2/cmake/FreetypeHarfbuzz.cmake, src/WiVRn-26.6.2/cmake/VulkanVersion.cmake, src/WiVRn-26.6.2/patches/apply.sh...
[5/10] Reviewing src/WiVRn-26.6.2/cmake/I18n.cmake, src/WiVRn-26.6.2/cmake/FreetypeHarfbuzz.cmake, src/WiVRn-26.6.2/patches/apply.sh...
+ Reviewed src/WiVRn-26.6.2/cmake/VulkanVersion.cmake. Status: SAFE -- Standard version detection helper, no malicious code.
LLM auditresponse for FreetypeHarfbuzz.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake module for optionally building Freetype and Harfbuzz as static libraries from source. It downloads the upstream tarballs from official project locations (SourceForge for Freetype, GitHub for Harfbuzz) with pinned versions and SHA256 hashes for integrity verification. The code creates symbolic links to local copies if pre-downloaded, and extracts archives. There is no obfuscation, no execution of downloaded code from unexpected sources, and no data exfiltration. All network destinations are the project's own upstream repositories. While the archive extraction and compilation consume untrusted content, that is the intended purpose of building the libraries, and the hashes mitigate tampering. No supply-chain attack indicators are present.
</details>
<summary>Clean upstream fetch with hash verification, no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing src/WiVRn-26.6.2/cmake/I18n.cmake, src/WiVRn-26.6.2/cmake/FreetypeHarfbuzz.cmake, src/WiVRn-26.6.2/patches/apply.sh, src/WiVRn-26.6.2/patches/monado-ci/0001-remote-resolution.patch...
[6/10] Reviewing src/WiVRn-26.6.2/cmake/I18n.cmake, src/WiVRn-26.6.2/patches/apply.sh, src/WiVRn-26.6.2/patches/monado-ci/0001-remote-resolution.patch...
+ Reviewed src/WiVRn-26.6.2/cmake/FreetypeHarfbuzz.cmake. Status: SAFE -- Clean upstream fetch with hash verification, no malicious behavior.
LLM auditresponse for apply.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a simple utility for applying patches during package builds. It uses either `git am` (when inside a git repository) or the `patch` command to apply patch files passed as arguments. All operations are local file manipulations: setting git configuration for the worktree, resetting state, and applying patches. There are no network requests, no data exfiltration, no encoded/obfuscated commands, and no execution of untrusted external binaries. The behavior is consistent with standard AUR packaging practices for applying patches.
</details>
<summary>Standard patching script, no malicious activity.</summary>
</security_assessment>

[7/10] Reviewing src/WiVRn-26.6.2/cmake/I18n.cmake, src/WiVRn-26.6.2/patches/monado-ci/0001-remote-resolution.patch...
+ Reviewed src/WiVRn-26.6.2/patches/apply.sh. Status: SAFE -- Standard patching script, no malicious activity.
[7/10] Reviewing src/WiVRn-26.6.2/cmake/I18n.cmake, src/WiVRn-26.6.2/patches/monado-ci/0001-remote-resolution.patch, src/WiVRn-26.6.2/flatpak/boostpfr-gcc-12-internal-compiler-error.patch...
LLM auditresponse for 0001-remote-resolution.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch modifies display resolution and physical dimensions in a remote HMD driver. It only changes pixel counts (1920x1080 to 5120x1440), physical width (0.13m to 0.26m), and lens separation accordingly. There are no suspicious network operations, obfuscated code, file manipulation, or any behavior beyond routine upstream functionality. This is a normal application patch.
</details>
<summary>Safe patch updating display resolution constants.</summary>
</security_assessment>

[8/10] Reviewing src/WiVRn-26.6.2/cmake/I18n.cmake, src/WiVRn-26.6.2/flatpak/boostpfr-gcc-12-internal-compiler-error.patch...
+ Reviewed src/WiVRn-26.6.2/patches/monado-ci/0001-remote-resolution.patch. Status: SAFE -- Safe patch updating display resolution constants.
LLM auditresponse for boostpfr-gcc-12-internal-compiler-error.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch file addresses a GCC 12 internal compiler error in the boostpfr library by changing the return type of a constexpr helper function from `decltype(sizeof(T{}))` to `std::size_t`. The change is minimal, transparent, and serves the legitimate purpose of fixing a compilation issue. There is no evidence of malicious behavior: no network requests, obfuscated code, file manipulation, or deviation from standard packaging practices.
</details>
<summary>Patch fixes boostpfr GCC 12 compiler error, no malice.</summary>
</security_assessment>

[9/10] Reviewing src/WiVRn-26.6.2/cmake/I18n.cmake...
+ Reviewed src/WiVRn-26.6.2/flatpak/boostpfr-gcc-12-internal-compiler-error.patch. Status: SAFE -- Patch fixes boostpfr GCC 12 compiler error, no malice.
LLM auditresponse for I18n.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake file defines two standard i18n helper functions for compiling translation `.po` files into `.mo` binaries using `msgfmt` and for generating a glyph set via a Python script from the project's own tools directory. All operations are local, use expected tools (`msgfmt`, `python3`, `cmake -E`), and do not involve network requests, obfuscated code, or any commands that deviate from normal build system behavior. No security issues found.
</details>
<summary>Standard i18n CMake functions; no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/WiVRn-26.6.2/cmake/I18n.cmake. Status: SAFE -- Standard i18n CMake functions; no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: wivrn-server-26.6.2.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 42,144
  Completion Tokens: 5,699
  Total Tokens: 47,843
  Total Cost: $0.002841
  Execution Time: 136.21 seconds

Final Status: SAFE


No issues found.


Audit Skips:

/data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-d2vrv_2v/wivrn-server-26.6.2.tar.gz: [SKIPPED] Skipping binary file: wivrn-server-26.6.2.tar.gz
