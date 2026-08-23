---
package: wivrn-dashboard
pkgver: 25.12
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3aa684c47f9b6bac5667ff3cee413c3a000b1b0d
prompt_tokens: 39352
completion_tokens: 8339
total_tokens: 47691
cost: 0.00297295180
execution_time: 91.33
files_reviewed: 11
files_skipped: 1
files_unauditable: 17
unpinned_sources: 0
date: 2026-08-23T03:51:59Z
file_verdicts:
  - file: wivrn-dashboard-25.12.tar.gz
    status: skipped
    summary: "Skipping binary file: wivrn-dashboard-25.12.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned source, no malicious code.
  - file: src/WiVRn-25.12/cmake/GenerateAssets.cmake
    status: safe
    summary: Standard CMake asset generation and dependency download with pinned hash; no malicious behavior detected.
  - file: src/WiVRn-25.12/cmake/CompileGLSL.cmake
    status: safe
    summary: Standard build helper for shader compilation, no malicious code.
  - file: src/WiVRn-25.12/cmake/GitVersion.cmake
    status: safe
    summary: Standard CMake git version detection script.
  - file: src/WiVRn-25.12/CMakeLists.txt
    status: safe
    summary: Standard CMake build file; no malicious content found.
  - file: src/WiVRn-25.12/cmake/FreetypeHarfbuzz.cmake
    status: safe
    summary: Standard CMake module; downloads from official upstream with checksum verification.
  - file: src/WiVRn-25.12/cmake/VulkanVersion.cmake
    status: safe
    summary: Standard build helper; no security issues found.
  - file: src/WiVRn-25.12/patches/monado-ci/0001-remote-resolution.patch
    status: safe
    summary: Patch adjusts display resolution values; no security issues found.
  - file: src/WiVRn-25.12/patches/apply.sh
    status: safe
    summary: Standard patch application script, no malicious behavior.
  - file: src/WiVRn-25.12/flatpak/boostpfr-gcc-12-internal-compiler-error.patch
    status: safe
    summary: Legitimate patch fixing GCC 12 ICE; no security issues.
  - file: src/WiVRn-25.12/cmake/I18n.cmake
    status: safe
    summary: Standard translation build script; no malicious behavior found.
---

Cloning https://aur.archlinux.org/wivrn-dashboard.git...
Cloned wivrn-dashboard
Analyzing wivrn-dashboard AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable declarations and function definitions at the top level. There is no code execution in the global scope or in `pkgver()` (which is not defined) that could trigger a malicious payload during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The `source` array downloads a tarball from the project's official GitHub repository with a pinned checksum; this is a standard, expected operation. No obfuscation, suspicious network requests, or dangerous commands are present in the scopes that will be executed during this gate. The `prepare()`, `build()`, and `package()` functions are defined but will not run, so they are out of scope for this assessment.
</details>
<summary>Standard PKGBUILD; no dangerous code at top-level or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD; no dangerous code at top-level or pkgver().
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
This PKGBUILD is a standard build recipe for the WiVRn Dashboard package. The source is fetched from the project's official GitHub tag with a pinned SHA-256 checksum, providing supply-chain integrity. The build process uses cmake to configure and compile, and installs artifacts to standard system paths under `$pkgdir`. There are no suspicious network requests, obfuscated commands, dangerous operations (eval, curl|bash, etc.), or modifications to unrelated system files. The file contains only routine packaging commands consistent with AUR best practices.
</details>
<summary>Standard AUR PKGBUILD with pinned source, no malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned source, no malicious code.
Reviewed all required files.
Deciding which files to review next...
Note: 17 compiled/archived file(s) cannot be audited as text and were not reviewed (src/WiVRn-25.12/assets-source/ground.glb, src/WiVRn-25.12/assets/left-hand.glb, src/WiVRn-25.12/assets/ray-htc.glb and 14 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 467 files available for selection; offering the 50 highest-priority to the model. 380 lower-priority file(s) were not offered.
LLM response for file selection:
src/WiVRn-25.12/CMakeLists.txt
src/WiVRn-25.12/cmake/CompileGLSL.cmake
src/WiVRn-25.12/cmake/GenerateAssets.cmake
src/WiVRn-25.12/cmake/GitVersion.cmake
src/WiVRn-25.12/cmake/I18n.cmake
src/WiVRn-25.12/cmake/FreetypeHarfbuzz.cmake
src/WiVRn-25.12/cmake/VulkanVersion.cmake
src/WiVRn-25.12/patches/apply.sh
src/WiVRn-25.12/patches/monado-ci/0001-remote-resolution.patch
src/WiVRn-25.12/flatpak/boostpfr-gcc-12-internal-compiler-error.patch
Decided to review 10 additional files: src/WiVRn-25.12/CMakeLists.txt, src/WiVRn-25.12/cmake/CompileGLSL.cmake, src/WiVRn-25.12/cmake/GenerateAssets.cmake, src/WiVRn-25.12/cmake/GitVersion.cmake, src/WiVRn-25.12/cmake/I18n.cmake, src/WiVRn-25.12/cmake/FreetypeHarfbuzz.cmake, src/WiVRn-25.12/cmake/VulkanVersion.cmake, src/WiVRn-25.12/patches/apply.sh, src/WiVRn-25.12/patches/monado-ci/0001-remote-resolution.patch, src/WiVRn-25.12/flatpak/boostpfr-gcc-12-internal-compiler-error.patch
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/WiVRn-25.12/CMakeLists.txt...
[0/10] Reviewing src/WiVRn-25.12/CMakeLists.txt, src/WiVRn-25.12/cmake/CompileGLSL.cmake...
[0/10] Reviewing src/WiVRn-25.12/CMakeLists.txt, src/WiVRn-25.12/cmake/CompileGLSL.cmake, src/WiVRn-25.12/cmake/GenerateAssets.cmake...
LLM auditresponse for GenerateAssets.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains CMake helper functions for asset generation (KTX encoding, SVG rasterization, glTF transformations, file copying) and a dependency-fetching function for WebXR input profiles. All build steps invoke the package's expected upstream tools (toktx, rsvg-convert, gltf-transform) on local source files to produce derived assets for the application. There is no execution of remote scripts, no use of eval/base64/obfuscation, and no file operations outside the build tree.

The `wivrn_webxr_download` function downloads a tarball from the official npm registry with a pinned SHA-256 hash and extracts it into the CMake build directory. It also gracefully uses a local copy if present via symlink. This is standard dependency management and does not execute any untrusted code. The pinned checksum verifies integrity, and the source is the expected upstream registry. No red flags indicating supply-chain tampering were found.
</details>
<summary>Standard CMake asset generation and dependency download with pinned hash; no malicious behavior detected.</summary>
</security_assessment>

[0/10] Reviewing src/WiVRn-25.12/CMakeLists.txt, src/WiVRn-25.12/cmake/CompileGLSL.cmake, src/WiVRn-25.12/cmake/GenerateAssets.cmake, src/WiVRn-25.12/cmake/GitVersion.cmake...
[1/10] Reviewing src/WiVRn-25.12/CMakeLists.txt, src/WiVRn-25.12/cmake/CompileGLSL.cmake, src/WiVRn-25.12/cmake/GitVersion.cmake...
+ Reviewed src/WiVRn-25.12/cmake/GenerateAssets.cmake. Status: SAFE -- Standard CMake asset generation and dependency download with pinned hash; no malicious behavior detected.
LLM auditresponse for CompileGLSL.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a CMake helper module for compiling GLSL shaders into SPIR-V bytecode and embedding them as C++ source arrays. It uses standard Vulkan toolchain components (`glslangValidator`, `spirv-opt`, `hexdump`) and follows normal build process patterns. There are no network requests, obfuscated code, dangerous command execution from untrusted sources, or any exfiltration of data. All operations are confined to the build directory and manipulate only the project's own shader source files. This is a conventional, transparent build script with no signs of supply-chain compromise.
</details>
<summary>Standard build helper for shader compilation, no malicious code.</summary>
</security_assessment>

[1/10] Reviewing src/WiVRn-25.12/CMakeLists.txt, src/WiVRn-25.12/cmake/CompileGLSL.cmake, src/WiVRn-25.12/cmake/GitVersion.cmake, src/WiVRn-25.12/cmake/I18n.cmake...
[2/10] Reviewing src/WiVRn-25.12/CMakeLists.txt, src/WiVRn-25.12/cmake/GitVersion.cmake, src/WiVRn-25.12/cmake/I18n.cmake...
+ Reviewed src/WiVRn-25.12/cmake/CompileGLSL.cmake. Status: SAFE -- Standard build helper for shader compilation, no malicious code.
LLM auditresponse for GitVersion.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake script is a standard build-time helper that extracts version and commit information from the local Git repository using `git describe` and `git rev-parse`. It contains no network requests, file exfiltration, encoded commands, or any operations beyond the expected packaging workflow. The script falls back gracefully when Git is unavailable, and does not introduce any supply-chain risk.
</details>
<summary>Standard CMake git version detection script.</summary>
</security_assessment>

[2/10] Reviewing src/WiVRn-25.12/CMakeLists.txt, src/WiVRn-25.12/cmake/GitVersion.cmake, src/WiVRn-25.12/cmake/I18n.cmake, src/WiVRn-25.12/cmake/FreetypeHarfbuzz.cmake...
[3/10] Reviewing src/WiVRn-25.12/CMakeLists.txt, src/WiVRn-25.12/cmake/I18n.cmake, src/WiVRn-25.12/cmake/FreetypeHarfbuzz.cmake...
+ Reviewed src/WiVRn-25.12/cmake/GitVersion.cmake. Status: SAFE -- Standard CMake git version detection script.
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMakeLists.txt is a standard build configuration for the WiVRn project. It declares dependencies using CMake's FetchContent with pinned SHA256 hashes for most external libraries, which is a secure practice. The monado dependency uses a git repository with a revision read from a local file (`monado-rev`), which is normal for projects that track upstream via Git. There are no obfuscated commands, no unexpected network requests at build time beyond fetching the declared upstream sources, and no operations that exfiltrate data or modify system files outside the build/install directories. The file contains only routine build logic (finding packages, setting options, adding subdirectories) and poses no supply-chain risk.
</details>
<summary>
Standard CMake build file; no malicious content found.</summary>
</security_assessment>

[3/10] Reviewing src/WiVRn-25.12/CMakeLists.txt, src/WiVRn-25.12/cmake/I18n.cmake, src/WiVRn-25.12/cmake/FreetypeHarfbuzz.cmake, src/WiVRn-25.12/cmake/VulkanVersion.cmake...
[4/10] Reviewing src/WiVRn-25.12/cmake/I18n.cmake, src/WiVRn-25.12/cmake/FreetypeHarfbuzz.cmake, src/WiVRn-25.12/cmake/VulkanVersion.cmake...
+ Reviewed src/WiVRn-25.12/CMakeLists.txt. Status: SAFE -- Standard CMake build file; no malicious content found.
LLM auditresponse for FreetypeHarfbuzz.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake file either uses system-provided Freetype and Harfbuzz libraries or downloads pinned versions from their official upstream sources (SourceForge for Freetype, GitHub for Harfbuzz) with hardcoded SHA256 checksums. The `file(DOWNLOAD ...)` commands use `EXPECTED_HASH` to verify integrity. There is no obfuscation, eval, base64, or any external code execution beyond the standard download and extraction of the source archives. The symbolic link fallback to a local file `CMAKE_SOURCE_DIR` is also benign. All operations are consistent with normal dependency management in a CMake build system. No supply-chain attack indicators are present.
</details>
<summary>
Standard CMake module; downloads from official upstream with checksum verification.</summary>
</security_assessment>

[4/10] Reviewing src/WiVRn-25.12/cmake/I18n.cmake, src/WiVRn-25.12/cmake/FreetypeHarfbuzz.cmake, src/WiVRn-25.12/cmake/VulkanVersion.cmake, src/WiVRn-25.12/patches/apply.sh...
[5/10] Reviewing src/WiVRn-25.12/cmake/I18n.cmake, src/WiVRn-25.12/cmake/VulkanVersion.cmake, src/WiVRn-25.12/patches/apply.sh...
+ Reviewed src/WiVRn-25.12/cmake/FreetypeHarfbuzz.cmake. Status: SAFE -- Standard CMake module; downloads from official upstream with checksum verification.
LLM auditresponse for VulkanVersion.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a CMake module that extracts the Vulkan API version from the `vulkan_core.h` header file. It is a standard workaround for older CMake versions that lack built-in Vulkan version detection. The code performs only local file reads and string manipulation, with no network access, no execution of external binaries, no obfuscation, and no system modification. It is a straightforward, benign build helper.
</details>
<summary>
Standard build helper; no security issues found.</summary>
</security_assessment>

[5/10] Reviewing src/WiVRn-25.12/cmake/I18n.cmake, src/WiVRn-25.12/cmake/VulkanVersion.cmake, src/WiVRn-25.12/patches/apply.sh, src/WiVRn-25.12/patches/monado-ci/0001-remote-resolution.patch...
[6/10] Reviewing src/WiVRn-25.12/cmake/I18n.cmake, src/WiVRn-25.12/patches/apply.sh, src/WiVRn-25.12/patches/monado-ci/0001-remote-resolution.patch...
+ Reviewed src/WiVRn-25.12/cmake/VulkanVersion.cmake. Status: SAFE -- Standard build helper; no security issues found.
LLM auditresponse for 0001-remote-resolution.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch modifies display resolution and lens separation values in the remote driver source code. It changes pixel dimensions from 1920x1080 to 5120x1440 and adjusts corresponding physical measurements. This is a straightforward upstream feature configuration change with no security implications. There are no network operations, file manipulations, encoded commands, or any suspicious behavior. The patch is consistent with normal package development and does not introduce any supply-chain attack vectors.
</details>
<summary>Patch adjusts display resolution values; no security issues found.</summary>
</security_assessment>

[6/10] Reviewing src/WiVRn-25.12/cmake/I18n.cmake, src/WiVRn-25.12/patches/apply.sh, src/WiVRn-25.12/patches/monado-ci/0001-remote-resolution.patch, src/WiVRn-25.12/flatpak/boostpfr-gcc-12-internal-compiler-error.patch...
[7/10] Reviewing src/WiVRn-25.12/cmake/I18n.cmake, src/WiVRn-25.12/patches/apply.sh, src/WiVRn-25.12/flatpak/boostpfr-gcc-12-internal-compiler-error.patch...
+ Reviewed src/WiVRn-25.12/patches/monado-ci/0001-remote-resolution.patch. Status: SAFE -- Patch adjusts display resolution values; no security issues found.
LLM auditresponse for apply.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `apply.sh` is a standard helper for applying patches during package builds. It checks for a `.git` directory to use `git am`, and falls back to the `patch` command otherwise. All operations (setting local git config, cleaning state, applying patches) are normal for a PKGBUILD's `prepare()` function. There are no network requests, no encoded/obfuscated commands, no file exfiltration, and no execution of untrusted external content. The script does exactly what its name implies: apply patches. No supply-chain attack indicators are present.
</details>
<summary>Standard patch application script, no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/WiVRn-25.12/cmake/I18n.cmake, src/WiVRn-25.12/flatpak/boostpfr-gcc-12-internal-compiler-error.patch...
+ Reviewed src/WiVRn-25.12/patches/apply.sh. Status: SAFE -- Standard patch application script, no malicious behavior.
LLM auditresponse for boostpfr-gcc-12-internal-compiler-error.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard patch file for the Boost.PFR library, intended to fix a GCC 12 internal compiler error. The change replaces a return type from `decltype(sizeof(T{}))` to `std::size_t`, which is a legitimate code correction for a compiler compatibility issue. There are no network requests, obfuscated code, dangerous commands, or any deviations from normal packaging practices. The patch modifies only the library's own source code and does not introduce any external dependencies or unexpected behavior.
</details>
<summary>Legitimate patch fixing GCC 12 ICE; no security issues.</summary>
</security_assessment>

[9/10] Reviewing src/WiVRn-25.12/cmake/I18n.cmake...
+ Reviewed src/WiVRn-25.12/flatpak/boostpfr-gcc-12-internal-compiler-error.patch. Status: SAFE -- Legitimate patch fixing GCC 12 ICE; no security issues.
LLM auditresponse for I18n.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake file is a standard build script for handling translations (compiling .po files to .mo with msgfmt) and generating a glyph set using a local Python script (extract_charset.py) that ships with the project. All operations are confined to the package source tree and build/install directories. It performs no network requests, no suspicious downloads, no obfuscation, and no modification of system files outside the intended install destinations. The use of `file(GLOB CONFIGURE_DEPENDS)` is a normal CMake pattern for scanning translation files. The Python invocation is part of the upstream build process and is not from an untrusted source. No evidence of injected malicious code or supply-chain tampering exists in this file.
</details>
<summary>Standard translation build script; no malicious behavior found.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/WiVRn-25.12/cmake/I18n.cmake. Status: SAFE -- Standard translation build script; no malicious behavior found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: wivrn-dashboard-25.12.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 39,352
  Completion Tokens: 8,339
  Total Tokens: 47,691
  Total Cost: $0.002973
  Execution Time: 91.33 seconds

Final Status: SAFE


No issues found.


Audit Skips:

/data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-dnd6a9os/wivrn-dashboard-25.12.tar.gz: [SKIPPED] Skipping binary file: wivrn-dashboard-25.12.tar.gz
