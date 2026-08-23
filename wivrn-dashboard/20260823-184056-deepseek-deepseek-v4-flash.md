---
package: wivrn-dashboard
pkgver: 25.12
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: fe97f45c52ce35303ffaaa9e3aab59c432e69008
prompt_tokens: 33937
completion_tokens: 6079
total_tokens: 40016
cost: 0.00225220170
execution_time: 84.9
files_reviewed: 9
files_skipped: 1
files_unauditable: 17
unpinned_sources: 0
date: 2026-08-23T18:40:56Z
file_verdicts:
  - file: wivrn-dashboard-25.12.tar.gz
    status: skipped
    summary: "Skipping binary file: wivrn-dashboard-25.12.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned source and checksum.
  - file: src/WiVRn-25.12/cmake/CompileGLSL.cmake
    status: safe
    summary: Standard GLSL shader compilation helper; no security issues.
  - file: src/WiVRn-25.12/cmake/GenerateAssets.cmake
    status: safe
    summary: Standard asset generation CMake script, no malicious content.
  - file: src/WiVRn-25.12/cmake/GitVersion.cmake
    status: safe
    summary: Standard CMake versioning script, no security issues.
  - file: src/WiVRn-25.12/cmake/I18n.cmake
    status: safe
    summary: Standard i18n CMake; no malicious behavior.
  - file: src/WiVRn-25.12/patches/apply.sh
    status: safe
    summary: Standard patch application script with no malicious or suspicious behavior.
  - file: src/WiVRn-25.12/patches/monado-ci/0001-remote-resolution.patch
    status: safe
    summary: Patch adjusts display values; no malicious behavior.
  - file: src/WiVRn-25.12/flatpak/boostpfr-gcc-12-internal-compiler-error.patch
    status: safe
    summary: Patch fixes GCC 12 compiler error, no malicious behavior.
  - file: src/WiVRn-25.12/CMakeLists.txt
    status: safe
    summary: Standard CMake build file, no malicious code.
---

Cloning https://aur.archlinux.org/wivrn-dashboard.git...
Cloned wivrn-dashboard
Analyzing wivrn-dashboard AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD’s top-level scope contains only static variable assignments and no executable code beyond standard string/array definitions. There is no `pkgver()` function. The `source` array points to a standard GitHub release tarball over HTTPS with a pinned SHA‑256 checksum. No `eval`, `curl`, `wget`, command substitution, or any other construct that could execute code at source time is present. Therefore, running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only download the tarball and parse the PKGBUILD – no malicious code runs.
</details>
<evidence></evidence>
<summary>No top‑level execution risk detected.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top‑level execution risk detected.
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
The PKGBUILD follows standard AUR packaging practices. The source is downloaded from the official WiVRn GitHub repository using a pinned version tag (`v25.12`), and the SHA-256 checksum is provided for integrity verification. The build and package steps use standard CMake commands with no unusual or dangerous operations. There are no instances of `eval`, `curl`, `wget`, base64-encoded content, or other potentially malicious constructs. The file does not contain any code that exfiltrates data, downloads or executes untrusted code, or modifies system files outside the package scope. The only network operation is fetching the upstream source tarball from the project's own GitHub releases, which is expected and safe. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned source and checksum.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned source and checksum.
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
src/WiVRn-25.12/patches/apply.sh
src/WiVRn-25.12/patches/monado-ci/0001-remote-resolution.patch
src/WiVRn-25.12/flatpak/boostpfr-gcc-12-internal-compiler-error.patch
Decided to review 8 additional files: src/WiVRn-25.12/CMakeLists.txt, src/WiVRn-25.12/cmake/CompileGLSL.cmake, src/WiVRn-25.12/cmake/GenerateAssets.cmake, src/WiVRn-25.12/cmake/GitVersion.cmake, src/WiVRn-25.12/cmake/I18n.cmake, src/WiVRn-25.12/patches/apply.sh, src/WiVRn-25.12/patches/monado-ci/0001-remote-resolution.patch, src/WiVRn-25.12/flatpak/boostpfr-gcc-12-internal-compiler-error.patch
Reviewing additional files...
Reviewing additional files...
[0/8] Reviewing src/WiVRn-25.12/CMakeLists.txt...
[0/8] Reviewing src/WiVRn-25.12/CMakeLists.txt, src/WiVRn-25.12/cmake/CompileGLSL.cmake...
[0/8] Reviewing src/WiVRn-25.12/CMakeLists.txt, src/WiVRn-25.12/cmake/CompileGLSL.cmake, src/WiVRn-25.12/cmake/GenerateAssets.cmake...
LLM auditresponse for CompileGLSL.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake module is a standard build helper for compiling GLSL shaders into SPIR-V and embedding them as C++ arrays. It uses `glslangValidator`, `spirv-opt`, and `hexdump` – all legitimate, expected tools for Vulkan shader compilation. All file operations are confined to the CMake build directory (`CMAKE_CURRENT_BINARY_DIR`). There are no network requests, no obfuscated code, no attempts to access or exfiltrate system files, and no execution of untrusted external payloads. The generated C++ source includes the shader binary as a hex dump, which is a normal pattern for embedding shaders directly into a binary. Nothing in this file deviates from standard packaging or build practices.
</details>
<evidence></evidence>
<summary>Standard GLSL shader compilation helper; no security issues.</summary>
</security_assessment>

[0/8] Reviewing src/WiVRn-25.12/CMakeLists.txt, src/WiVRn-25.12/cmake/CompileGLSL.cmake, src/WiVRn-25.12/cmake/GenerateAssets.cmake, src/WiVRn-25.12/cmake/GitVersion.cmake...
[1/8] Reviewing src/WiVRn-25.12/CMakeLists.txt, src/WiVRn-25.12/cmake/GenerateAssets.cmake, src/WiVRn-25.12/cmake/GitVersion.cmake...
+ Reviewed src/WiVRn-25.12/cmake/CompileGLSL.cmake. Status: SAFE -- Standard GLSL shader compilation helper; no security issues.
LLM auditresponse for GenerateAssets.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake script is a standard build-time asset processing module for WiVRn dashboard. It defines functions for SVG rasterization, KTX texture compression, GLTF transformations, file copying, and downloading the WebXR input profiles from the official npm registry with a pinned SHA256 hash. All commands use expected build tools (TOKTX, RSVG_CONVERT, GLTF_TRANSFORM, CMAKE_COMMAND) and operate within designated build directories. There is no obfuscated code, no unexpected network requests (the only download is from registry.npmjs.com with a verified hash), and no operations that could exfiltrate data or compromise the system. The script follows typical CMake packaging practices for asset generation.
</details>
<evidence></evidence>
<summary>Standard asset generation CMake script, no malicious content.</summary>
</security_assessment>

[1/8] Reviewing src/WiVRn-25.12/CMakeLists.txt, src/WiVRn-25.12/cmake/GenerateAssets.cmake, src/WiVRn-25.12/cmake/GitVersion.cmake, src/WiVRn-25.12/cmake/I18n.cmake...
[2/8] Reviewing src/WiVRn-25.12/CMakeLists.txt, src/WiVRn-25.12/cmake/GitVersion.cmake, src/WiVRn-25.12/cmake/I18n.cmake...
+ Reviewed src/WiVRn-25.12/cmake/GenerateAssets.cmake. Status: SAFE -- Standard asset generation CMake script, no malicious content.
LLM auditresponse for GitVersion.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake script that uses `git describe` and `git rev-parse` to retrieve version and commit information from the local repository, then passes those values to a `configure_file` call. All operations are confined to the project source directory, and there are no network requests, downloads, obfuscated code, or suspicious system modifications. The script performs exactly the expected behavior for generating version strings during the build process.
</details>
<evidence></evidence>
<summary>Standard CMake versioning script, no security issues.</summary>
</security_assessment>

[3/8] Reviewing src/WiVRn-25.12/CMakeLists.txt, src/WiVRn-25.12/cmake/I18n.cmake...
+ Reviewed src/WiVRn-25.12/cmake/GitVersion.cmake. Status: SAFE -- Standard CMake versioning script, no security issues.
[3/8] Reviewing src/WiVRn-25.12/CMakeLists.txt, src/WiVRn-25.12/cmake/I18n.cmake, src/WiVRn-25.12/patches/apply.sh...
LLM auditresponse for I18n.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake file defines two helper functions for building internationalization (i18n) support: compiling `.po` translation files into `.mo` binary files using `msgfmt`, and generating a glyph set C++ file using a Python script from the project's own `tools/` directory. All operations are confined to the build tree and standard install locations (`share/locale`). No external network requests, obfuscation, or suspicious commands are present. The use of `file(GLOB)` to locate `.po` files and the invocation of the Python script are normal packaging practices for a project using gettext.
</details>
<evidence></evidence>
<summary>Standard i18n CMake; no malicious behavior.</summary>
</security_assessment>

[3/8] Reviewing src/WiVRn-25.12/CMakeLists.txt, src/WiVRn-25.12/cmake/I18n.cmake, src/WiVRn-25.12/patches/apply.sh, src/WiVRn-25.12/patches/monado-ci/0001-remote-resolution.patch...
[4/8] Reviewing src/WiVRn-25.12/CMakeLists.txt, src/WiVRn-25.12/patches/apply.sh, src/WiVRn-25.12/patches/monado-ci/0001-remote-resolution.patch...
+ Reviewed src/WiVRn-25.12/cmake/I18n.cmake. Status: SAFE -- Standard i18n CMake; no malicious behavior.
LLM auditresponse for apply.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard patch-application helper script. If a `.git` directory is present, it configures a dummy committer identity, aborts any interrupted `git am`, resets the working tree, and applies patches with `git am`. Otherwise it falls back to using the `patch` command with `--forward` to apply `.patch` files. All operations are local, confined to the repository/working directory being patched. There are no network requests, no downloads, no obfuscation, no execution of untrusted external code, and no manipulation of files outside the build/package context. The behavior is consistent with normal AUR/packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard patch application script with no malicious or suspicious behavior.</summary>
</security_assessment>

[5/8] Reviewing src/WiVRn-25.12/CMakeLists.txt, src/WiVRn-25.12/patches/monado-ci/0001-remote-resolution.patch...
+ Reviewed src/WiVRn-25.12/patches/apply.sh. Status: SAFE -- Standard patch application script with no malicious or suspicious behavior.
[5/8] Reviewing src/WiVRn-25.12/CMakeLists.txt, src/WiVRn-25.12/patches/monado-ci/0001-remote-resolution.patch, src/WiVRn-25.12/flatpak/boostpfr-gcc-12-internal-compiler-error.patch...
LLM auditresponse for 0001-remote-resolution.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies display resolution and physical dimensions in the `r_hmd.c` file of the Monado remote driver. It changes pixel counts from 1920x1080 to 5120x1440 and adjusts corresponding physical measurements. There is no network access, obfuscation, file manipulation, or any behavior that deviates from standard patch adjustments. The changes are consistent with upstream development work to support a different headset configuration.
</details>
<evidence></evidence>
<summary>Patch adjusts display values; no malicious behavior.</summary>
</security_assessment>

[6/8] Reviewing src/WiVRn-25.12/CMakeLists.txt, src/WiVRn-25.12/flatpak/boostpfr-gcc-12-internal-compiler-error.patch...
+ Reviewed src/WiVRn-25.12/patches/monado-ci/0001-remote-resolution.patch. Status: SAFE -- Patch adjusts display values; no malicious behavior.
LLM auditresponse for boostpfr-gcc-12-internal-compiler-error.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple upstream patch for the Boost.PFR library to fix an internal compiler error when using GCC 12. It changes the return type of a `detect_fields_count_dispatch` overload from `decltype(sizeof(T{}))` to `std::size_t`. The patch is short, clear, and only modifies one line. There is no evidence of malicious behavior such as network requests, obfuscated code, file operations, or data exfiltration. The patch serves the legitimate purpose of fixing a compiler error and follows standard packaging practices for applying patches.
</details>
<evidence></evidence>
<summary>Patch fixes GCC 12 compiler error, no malicious behavior.</summary>
</security_assessment>

[7/8] Reviewing src/WiVRn-25.12/CMakeLists.txt...
+ Reviewed src/WiVRn-25.12/flatpak/boostpfr-gcc-12-internal-compiler-error.patch. Status: SAFE -- Patch fixes GCC 12 compiler error, no malicious behavior.
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake build configuration for the WiVRn project. It defines build options, finds required system dependencies via `find_package` and `pkg_check_modules`, and declares external dependencies using `FetchContent` with pinned versions and SHA256 hashes. All network sources point to the project's own upstream repositories (GitHub, GitLab). The `FetchContent` declarations are normal CMake practice and do not constitute suspicious network activity. There are no obfuscated commands, no `eval`, `curl|bash`, or system modification operations. The use of a GIT_TAG from a file (`monado-rev`) is consistent with development workflow and does not introduce an attack vector beyond what is normal for VCS-source packages. No evidence of malicious injection, backdoors, or data exfiltration is present.
</details>
<evidence></evidence>
<summary>Standard CMake build file, no malicious code.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed src/WiVRn-25.12/CMakeLists.txt. Status: SAFE -- Standard CMake build file, no malicious code.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: wivrn-dashboard-25.12.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 33,937
  Completion Tokens: 6,079
  Total Tokens: 40,016
  Total Cost: $0.002252
  Execution Time: 84.90 seconds

Final Status: SAFE


No issues found.


Audit Skips:

wivrn-dashboard-25.12.tar.gz: [SKIPPED] Skipping binary file: wivrn-dashboard-25.12.tar.gz
