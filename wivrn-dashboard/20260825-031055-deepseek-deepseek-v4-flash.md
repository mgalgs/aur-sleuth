---
package: wivrn-dashboard
pkgbase: wivrn-server
pkgver: 26.6.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 76c02596d4f1a58500b30a8fd37c0598e2c7d68c
prompt_tokens: 41049
completion_tokens: 6962
total_tokens: 48011
cost: 0.004870937638
execution_time: 258.81
files_reviewed: 10
files_skipped: 1
files_unauditable: 18
unpinned_sources: 0
date: 2026-08-25T03:10:54Z
file_verdicts:
  - file: wivrn-server-26.6.2.tar.gz
    status: skipped
    summary: "Skipping binary file: wivrn-server-26.6.2.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious indicators found.
  - file: src/WiVRn-26.6.2/patches/apply.sh
    status: safe
    summary: Standard patch application script, no malice.
  - file: src/WiVRn-26.6.2/cmake/GenerateAssets.cmake
    status: safe
    summary: Standard asset generation CMake file with pinned dependency download.
  - file: src/WiVRn-26.6.2/CMakeLists.txt
    status: safe
    summary: Standard CMake build with no malicious elements.
  - file: src/WiVRn-26.6.2/cmake/I18n.cmake
    status: safe
    summary: Standard CMake i18n module with no malicious behavior.
  - file: src/WiVRn-26.6.2/cmake/GitVersion.cmake
    status: safe
    summary: Benign git version extraction script, no security issues.
  - file: src/WiVRn-26.6.2/cmake/CompileGLSL.cmake
    status: safe
    summary: Standard shader compilation CMake module, no malicious behavior.
  - file: src/WiVRn-26.6.2/patches/monado-ci/0001-remote-resolution.patch
    status: safe
    summary: Simple display parameter tweak; no malicious behavior detected.
  - file: src/WiVRn-26.6.2/flatpak/boostpfr-gcc-12-internal-compiler-error.patch
    status: safe
    summary: Standard compiler error fix patch, no security issues.
  - file: src/WiVRn-26.6.2/cmake/FreetypeHarfbuzz.cmake
    status: safe
    summary: Standard CMake dependency bundling, no security issues.
---

wivrn-dashboard is built from wivrn-server
Cloning https://aur.archlinux.org/wivrn-server.git...
Cloned wivrn-dashboard
Analyzing wivrn-dashboard AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is safe to run through `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`. The only action these commands will take is fetching the declared source tarball from the project's own GitHub repository (`https://github.com/WiVRn/WiVRn/archive/refs/tags/v$pkgver.tar.gz`) and parsing the PKGBUILD. There are no top-level command substitutions, no `pkgver()` function, and no code outside variable/function definitions that executes during sourcing.

The `build()` and `package_*()` functions contain only normal CMake configuration, build, and install operations. These functions are not executed by the narrow commands in scope here due to `--nobuild`/`--noprepare`, so they do not affect this gate. The source has a pinned tag and a sha256 checksum, and the URL points to the upstream project itself, which is expected packaging behavior.
</details>
<evidence>
</evidence>
<summary>
No malicious code executes during source fetch or PKGBUILD parsing; safe.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during source fetch or PKGBUILD parsing; safe.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing wivrn-server-26.6.2.tar.gz...
[0/2] Reviewing wivrn-server-26.6.2.tar.gz, PKGBUILD...
[1/2] Reviewing PKGBUILD...
! Reviewed wivrn-server-26.6.2.tar.gz. Status: SKIPPED -- Skipping binary file: wivrn-server-26.6.2.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It fetches a pinned tarball from the official GitHub repository with a valid checksum. The build and package functions use cmake, ninja, and standard `DESTDIR` installs. There are no suspicious commands (curl, wget, eval, base64), no obfuscation, and no network requests beyond the declared source. The environment file written is a normal OpenXR runtime configuration. No evidence of malicious or unexpected behavior.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious indicators found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious indicators found.
Reviewed all required files.
Deciding which files to review next...
Note: 18 compiled/archived file(s) cannot be audited as text and were not reviewed (src/WiVRn-26.6.2/assets-source/ground.glb, src/WiVRn-26.6.2/assets/left-hand.glb, src/WiVRn-26.6.2/assets/ray-htc.glb and 15 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 488 files available for selection; offering the 50 highest-priority to the model. 401 lower-priority file(s) were not offered.
LLM response for file selection:
src/WiVRn-26.6.2/CMakeLists.txt
src/WiVRn-26.6.2/patches/apply.sh
src/WiVRn-26.6.2/cmake/GenerateAssets.cmake
src/WiVRn-26.6.2/cmake/CompileGLSL.cmake
src/WiVRn-26.6.2/cmake/GitVersion.cmake
src/WiVRn-26.6.2/cmake/I18n.cmake
src/WiVRn-26.6.2/cmake/FreetypeHarfbuzz.cmake
src/WiVRn-26.6.2/patches/monado-ci/0001-remote-resolution.patch
src/WiVRn-26.6.2/flatpak/boostpfr-gcc-12-internal-compiler-error.patch
Decided to review 9 additional files: src/WiVRn-26.6.2/CMakeLists.txt, src/WiVRn-26.6.2/patches/apply.sh, src/WiVRn-26.6.2/cmake/GenerateAssets.cmake, src/WiVRn-26.6.2/cmake/CompileGLSL.cmake, src/WiVRn-26.6.2/cmake/GitVersion.cmake, src/WiVRn-26.6.2/cmake/I18n.cmake, src/WiVRn-26.6.2/cmake/FreetypeHarfbuzz.cmake, src/WiVRn-26.6.2/patches/monado-ci/0001-remote-resolution.patch, src/WiVRn-26.6.2/flatpak/boostpfr-gcc-12-internal-compiler-error.patch
Reviewing additional files...
Reviewing additional files...
[0/9] Reviewing src/WiVRn-26.6.2/CMakeLists.txt...
[0/9] Reviewing src/WiVRn-26.6.2/CMakeLists.txt, src/WiVRn-26.6.2/patches/apply.sh...
[0/9] Reviewing src/WiVRn-26.6.2/CMakeLists.txt, src/WiVRn-26.6.2/patches/apply.sh, src/WiVRn-26.6.2/cmake/GenerateAssets.cmake...
LLM auditresponse for apply.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard shell script for applying patches to the WiVRn source code. It first checks if the working directory is a git repository and, if so, uses `git am` to apply patches after cleaning up with `git am --abort` and `git checkout .`. If not a git repository, it falls back to the `patch` command. The script performs no network requests, no data exfiltration, no obfuscated code, and no unexpected file operations. It only operates on the patch files passed as arguments and the repository/tree it is applied to. This is completely normal for software source trees that include their own patch application logic.
</details>
<evidence></evidence>
<summary>Standard patch application script, no malice.</summary>
</security_assessment>

[0/9] Reviewing src/WiVRn-26.6.2/CMakeLists.txt, src/WiVRn-26.6.2/patches/apply.sh, src/WiVRn-26.6.2/cmake/GenerateAssets.cmake, src/WiVRn-26.6.2/cmake/CompileGLSL.cmake...
[1/9] Reviewing src/WiVRn-26.6.2/CMakeLists.txt, src/WiVRn-26.6.2/cmake/GenerateAssets.cmake, src/WiVRn-26.6.2/cmake/CompileGLSL.cmake...
+ Reviewed src/WiVRn-26.6.2/patches/apply.sh. Status: SAFE -- Standard patch application script, no malice.
LLM auditresponse for GenerateAssets.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake file defines build helper functions for asset generation (rasterizing SVGs, converting textures, copying files, downloading WebXR input profiles). The only function performing a network operation is `wivrn_webxr_download`, which downloads a fixed version of `@webxr-input-profiles/assets` from the official npmjs.com registry and verifies it with an explicit SHA256 checksum. The download is skipped if the file already exists locally. No obfuscation, no execution of downloaded content (only archive extraction), no exfiltration of data, and no commands that deviate from standard packaging workflows. All other functions use tools like `toktx`, `rsvg-convert`, and `gltf-transform` in a straightforward manner. There are no signs of malicious supply-chain injection.
</details>
<evidence></evidence>
<summary>Standard asset generation CMake file with pinned dependency download.</summary>
</security_assessment>

[1/9] Reviewing src/WiVRn-26.6.2/CMakeLists.txt, src/WiVRn-26.6.2/cmake/GenerateAssets.cmake, src/WiVRn-26.6.2/cmake/CompileGLSL.cmake, src/WiVRn-26.6.2/cmake/GitVersion.cmake...
[2/9] Reviewing src/WiVRn-26.6.2/CMakeLists.txt, src/WiVRn-26.6.2/cmake/CompileGLSL.cmake, src/WiVRn-26.6.2/cmake/GitVersion.cmake...
+ Reviewed src/WiVRn-26.6.2/cmake/GenerateAssets.cmake. Status: SAFE -- Standard asset generation CMake file with pinned dependency download.
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMake build configuration for the WiVRn project. It declares build options, finds system dependencies, and uses FetchContent to download source dependencies from official project repositories (GitHub, GitLab) with pinned SHA256 hashes. There is no obfuscation, no unexpected network requests (the only URLs are from the project's own upstream sources), no execution of downloaded scripts, and no attempts to exfiltrate or modify system data outside the build directory. The file follows normal packaging and build practices. The use of a `GIT_TAG` from a file (`monado-rev`) is standard for tracking upstream commits in VCS packages and is not malicious. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard CMake build with no malicious elements.</summary>
</security_assessment>

[2/9] Reviewing src/WiVRn-26.6.2/CMakeLists.txt, src/WiVRn-26.6.2/cmake/CompileGLSL.cmake, src/WiVRn-26.6.2/cmake/GitVersion.cmake, src/WiVRn-26.6.2/cmake/I18n.cmake...
[3/9] Reviewing src/WiVRn-26.6.2/cmake/CompileGLSL.cmake, src/WiVRn-26.6.2/cmake/GitVersion.cmake, src/WiVRn-26.6.2/cmake/I18n.cmake...
+ Reviewed src/WiVRn-26.6.2/CMakeLists.txt. Status: SAFE -- Standard CMake build with no malicious elements.
LLM auditresponse for I18n.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard CMake module for internationalization using Gettext. It defines two functions:
- `CREATE_MO_FILES`: compiles .po translation files into .mo binary files and installs them into the system locale directory.
- `CREATE_GLYPHSET`: runs a Python script `extract_charset.py` from the package’s own `tools` directory to generate a C++ source file containing a glyph set based on the .po files.

All operations are local – reading .po files from the source tree, running `msgfmt`, and invoking a Python script shipped with the package. There are no network requests, obfuscated code, or unexpected file modifications. The use of `CMAKE_COMMAND -E make_directory`, `GETTEXT_MSGFMT_EXECUTABLE`, and `python3` with a relative path from the package’s own tools are normal build steps. The file does not contain any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard CMake i18n module with no malicious behavior.</summary>
</security_assessment>

[4/9] Reviewing src/WiVRn-26.6.2/cmake/CompileGLSL.cmake, src/WiVRn-26.6.2/cmake/GitVersion.cmake...
+ Reviewed src/WiVRn-26.6.2/cmake/I18n.cmake. Status: SAFE -- Standard CMake i18n module with no malicious behavior.
[4/9] Reviewing src/WiVRn-26.6.2/cmake/CompileGLSL.cmake, src/WiVRn-26.6.2/cmake/GitVersion.cmake, src/WiVRn-26.6.2/cmake/FreetypeHarfbuzz.cmake...
LLM auditresponse for GitVersion.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake script is a standard utility for extracting version and commit information from a local git repository during the build process. It runs `git describe --tags --always` and `git rev-parse HEAD` relative to `CMAKE_SOURCE_DIR`, then uses `configure_file` to generate output files. There is no network activity, no obfuscated code, no execution of untrusted content, and no file operations outside the normal build directory. The script performs only expected upstream build behavior and poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Benign git version extraction script, no security issues.</summary>
</security_assessment>

[4/9] Reviewing src/WiVRn-26.6.2/cmake/CompileGLSL.cmake, src/WiVRn-26.6.2/cmake/GitVersion.cmake, src/WiVRn-26.6.2/cmake/FreetypeHarfbuzz.cmake, src/WiVRn-26.6.2/patches/monado-ci/0001-remote-resolution.patch...
[5/9] Reviewing src/WiVRn-26.6.2/cmake/CompileGLSL.cmake, src/WiVRn-26.6.2/cmake/FreetypeHarfbuzz.cmake, src/WiVRn-26.6.2/patches/monado-ci/0001-remote-resolution.patch...
+ Reviewed src/WiVRn-26.6.2/cmake/GitVersion.cmake. Status: SAFE -- Benign git version extraction script, no security issues.
LLM auditresponse for CompileGLSL.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake module compiles GLSL shader files into SPIR-V binaries and generates C++ source files embedding the compiled shaders as hex dumps. All external commands invoked (`glslangValidator`, `spirv-opt`, `hexdump`) are standard development tools found on a typical build system; the script does not download any code, make network requests, or perform obfuscated operations. File writes are confined to the CMake build directory, and the only outputs are source/header files consumed by the target. There is no evidence of exfiltration, backdoors, execution of untrusted content, or deviation from standard CMake-based shader compilation practices.
</details>
<evidence></evidence>
<summary>Standard shader compilation CMake module, no malicious behavior.</summary>
</security_assessment>

[6/9] Reviewing src/WiVRn-26.6.2/cmake/FreetypeHarfbuzz.cmake, src/WiVRn-26.6.2/patches/monado-ci/0001-remote-resolution.patch...
+ Reviewed src/WiVRn-26.6.2/cmake/CompileGLSL.cmake. Status: SAFE -- Standard shader compilation CMake module, no malicious behavior.
[6/9] Reviewing src/WiVRn-26.6.2/cmake/FreetypeHarfbuzz.cmake, src/WiVRn-26.6.2/patches/monado-ci/0001-remote-resolution.patch, src/WiVRn-26.6.2/flatpak/boostpfr-gcc-12-internal-compiler-error.patch...
LLM auditresponse for 0001-remote-resolution.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a straightforward patch to a Monado remote driver, changing default display resolution and physical dimensions for the virtual HMD. It only adjusts constants (pixel counts, physical width, lens separation) and does not add any new functionality, network access, code execution, or system modification. The content is consistent with an upstream feature tweak for remote rendering.
</details>
<evidence>
</evidence>
<summary>
Simple display parameter tweak; no malicious behavior detected.</summary>
</security_assessment>

[7/9] Reviewing src/WiVRn-26.6.2/cmake/FreetypeHarfbuzz.cmake, src/WiVRn-26.6.2/flatpak/boostpfr-gcc-12-internal-compiler-error.patch...
+ Reviewed src/WiVRn-26.6.2/patches/monado-ci/0001-remote-resolution.patch. Status: SAFE -- Simple display parameter tweak; no malicious behavior detected.
LLM auditresponse for boostpfr-gcc-12-internal-compiler-error.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a patch to fix an internal compiler error in GCC 12 by changing the return type of a constexpr function from `decltype(sizeof(T{}))` to `std::size_t`. This is a legitimate upstream code fix and does not introduce any malicious behavior. There are no network requests, obfuscated code, or unexpected operations.</details>
<evidence></evidence>
<summary>Standard compiler error fix patch, no security issues.</summary>
</security_assessment>

[8/9] Reviewing src/WiVRn-26.6.2/cmake/FreetypeHarfbuzz.cmake...
+ Reviewed src/WiVRn-26.6.2/flatpak/boostpfr-gcc-12-internal-compiler-error.patch. Status: SAFE -- Standard compiler error fix patch, no security issues.
LLM auditresponse for FreetypeHarfbuzz.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake file is a standard build-system helper that conditionally downloads and compiles Freetype and Harfbuzz libraries as static dependencies. The downloads use HTTPS URLs to the official project releases (SourceForge for Freetype, GitHub for Harfbuzz) and are pinned to specific versions with SHA256 checksums. There is no obfuscated code, no execution of untrusted downloaded scripts, no data exfiltration, and no deviation from normal packaging practices. The file does exactly what the WiVRn project requires to bundle its font rendering dependencies.
</details>
<evidence></evidence>
<summary>Standard CMake dependency bundling, no security issues.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed src/WiVRn-26.6.2/cmake/FreetypeHarfbuzz.cmake. Status: SAFE -- Standard CMake dependency bundling, no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: wivrn-server-26.6.2.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 41,049
  Completion Tokens: 6,962
  Total Tokens: 48,011
  Total Cost: $0.004871
  Execution Time: 258.81 seconds

Final Status: SAFE


No issues found.


Audit Skips:

wivrn-server-26.6.2.tar.gz: [SKIPPED] Skipping binary file: wivrn-server-26.6.2.tar.gz
