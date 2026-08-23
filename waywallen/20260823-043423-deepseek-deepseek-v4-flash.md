---
package: waywallen
pkgver: 0.3.5
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3aa684c47f9b6bac5667ff3cee413c3a000b1b0d
prompt_tokens: 40846
completion_tokens: 7968
total_tokens: 48814
cost: 0.00301285292
execution_time: 150.62
files_reviewed: 11
files_skipped: 1
files_unauditable: 22
unpinned_sources: 0
date: 2026-08-23T04:34:22Z
file_verdicts:
  - file: 0002-cmake-Use-system-Corrosion.patch
    status: skipped
    summary: "Skipping binary file: 0002-cmake-Use-system-Corrosion.patch"
  - file: PKGBUILD
    status: safe
    summary: Standard packaging, no malicious indicators found.
  - file: src/waywallen/cmake/FetchDeps.cmake
    status: safe
    summary: Legitimate CMake dependency manager; no malicious indicators.
  - file: src/waywallen/build.rs
    status: safe
    summary: Standard Rust build script, no security issues.
  - file: src/QmlMaterial/build_wasm.sh
    status: safe
    summary: Standard WebAssembly build script, no malicious code.
  - file: src/waywallen/cmake/FetchDepsProvider.cmake
    status: safe
    summary: Legitimate CMake dependency provider; no malicious behavior found.
  - file: src/waywallen/plugins/org.waywallen.wallhaven/wallhaven/api.lua
    status: safe
    summary: Legitimate API client for Wallhaven wallpaper service.
  - file: src/waywallen/plugins/org.waywallen.wallhaven/wallhaven/discover.lua
    status: safe
    summary: Clean Lua wrapper for Wallhaven API; no security issues found.
  - file: src/waywallen/plugins/org.waywallen.wallhaven/wallhaven/session.lua
    status: safe
    summary: Clean session management module for Wallhaven API.
  - file: src/waywallen/plugins/org.waywallen.image/main.lua
    status: safe
    summary: No malicious code; standard module definition.
  - file: src/QExtra/CMakeLists.txt
    status: safe
    summary: Standard CMake build file, no security issues.
  - file: src/QmlMaterial/update_icon_code.sh
    status: safe
    summary: Legitimate maintainer helper script, no malicious behavior.
---

Cloning https://aur.archlinux.org/waywallen.git...
Cloned waywallen
Analyzing waywallen AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions, an array of git+https sources pointing to the package's own upstream and its dependency projects on GitHub, and local patch files. There is no `pkgver()` function, no top-level command substitution, no use of `eval`, `base64`, `curl`, `wget`, or any other dangerous constructs in the global scope. The `prepare()`, `build()`, and `package()` functions are not executed during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. All source URLs reference legitimate repositories (waywallen, litocpp, hypengw) over https. No code in the sourced file performs any network operations or system modifications outside of what is expected for a standard AUR package. The `git lfs pull` call resides in `prepare()` and is therefore out of scope for this gate. There is no evidence of malicious behavior in the top-level code or source fetching steps.
</details>
<summary>No malicious code executes during source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during source fetch.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, 0002-cmake-Use-system-Corrosion.patch...
[1/2] Reviewing PKGBUILD...
! Reviewed 0002-cmake-Use-system-Corrosion.patch. Status: SKIPPED -- Skipping binary file: 0002-cmake-Use-system-Corrosion.patch
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Rust/C++ project using CMake and Cargo. All source URLs point to the official GitHub repositories of the project and its dependencies, with pinned commits (except the main package which uses a tag). Checksums are provided for every source, including patches.  

The `prepare()` function includes a `git lfs pull` from an additional remote added to the `QmlMaterial` repository. This fetches LFS objects from the same upstream (https://github.com/hypengw/QmlMaterial.git) needed for the build. While this introduces a mutable fetch (the LFS objects are not pinned), it is not executing arbitrary code or exfiltrating data – it merely downloads binary assets from the package's own declared dependency. This is a reproducibility/hygiene concern but not malicious.  

No suspicious commands (eval, base64, curl, bash pipe), obfuscation, unexpected network destinations, or data exfiltration are present. The build and install steps are routine for the project type.
</details>
<summary>Standard packaging, no malicious indicators found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard packaging, no malicious indicators found.
Reviewed all required files.
Deciding which files to review next...
Note: 22 compiled/archived file(s) cannot be audited as text and were not reviewed (0001-cmake-Use-system-VulkanMemoryAllocator.patch, waywallen/objects/pack/pack-2d9730991610be0607a2e49bd0af44ccf84fa2c7.pack, waywallen/objects/pack/pack-2d9730991610be0607a2e49bd0af44ccf84fa2c7.rev and 19 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 1728 files available for selection; offering the 50 highest-priority to the model. 1221 lower-priority file(s) were not offered.
LLM response for file selection:
src/waywallen/build.rs
src/waywallen/cmake/FetchDeps.cmake
src/waywallen/cmake/FetchDepsProvider.cmake
src/QmlMaterial/build_wasm.sh
src/QmlMaterial/update_icon_code.sh
src/waywallen/plugins/org.waywallen.wallhaven/wallhaven/api.lua
src/waywallen/plugins/org.waywallen.wallhaven/wallhaven/discover.lua
src/waywallen/plugins/org.waywallen.wallhaven/wallhaven/session.lua
src/waywallen/plugins/org.waywallen.image/main.lua
src/QExtra/CMakeLists.txt
Decided to review 10 additional files: src/waywallen/build.rs, src/waywallen/cmake/FetchDeps.cmake, src/waywallen/cmake/FetchDepsProvider.cmake, src/QmlMaterial/build_wasm.sh, src/QmlMaterial/update_icon_code.sh, src/waywallen/plugins/org.waywallen.wallhaven/wallhaven/api.lua, src/waywallen/plugins/org.waywallen.wallhaven/wallhaven/discover.lua, src/waywallen/plugins/org.waywallen.wallhaven/wallhaven/session.lua, src/waywallen/plugins/org.waywallen.image/main.lua, src/QExtra/CMakeLists.txt
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/waywallen/build.rs...
[0/10] Reviewing src/waywallen/build.rs, src/waywallen/cmake/FetchDeps.cmake...
[0/10] Reviewing src/waywallen/build.rs, src/waywallen/cmake/FetchDeps.cmake, src/waywallen/cmake/FetchDepsProvider.cmake...
LLM auditresponse for FetchDeps.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a CMake helper module for fetching project dependencies from a JSON manifest. It uses standard CMake features (`FetchContent`, `string(JSON)`, `add_subdirectory`) and contains no hardcoded URLs, no obfuscated code, and no dangerous system commands. The module reads a user-provided JSON file and fetches dependencies from URLs specified therein, with support for local overrides (via `FETCHDEPS_LOCAL_*` cache variables) and optional hash verification for archive/file types. The structure and behavior are consistent with legitimate build-system dependency management; there is no evidence of exfiltration, backdoors, or other supply-chain attack patterns.
</details>
<summary>Legitimate CMake dependency manager; no malicious indicators.</summary>
</security_assessment>

[1/10] Reviewing src/waywallen/build.rs, src/waywallen/cmake/FetchDepsProvider.cmake...
+ Reviewed src/waywallen/cmake/FetchDeps.cmake. Status: SAFE -- Legitimate CMake dependency manager; no malicious indicators.
[1/10] Reviewing src/waywallen/build.rs, src/waywallen/cmake/FetchDepsProvider.cmake, src/QmlMaterial/build_wasm.sh...
LLM auditresponse for build.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Rust build script (`build.rs`) typical of projects that use code generation and native dependencies. It performs the following legitimate operations:

- Sets `cargo:rerun-if-changed` triggers for relevant source files.
- Reads XML protocol definition files from the project's own `protocol/` directory and generates Rust code using the project's own `wayproto-gen` tool, writing output to the build output directory (`OUT_DIR`).
- Compiles Protobuf definitions from `proto/` using the `prost_build` crate, a normal build dependency.
- Builds a C source file (`pulse_adapter.c`) using the `cc` crate and links it with `libpulse` (found via `pkg-config`) and `libdl` – all standard for binding native libraries.

All file operations are confined to the project’s source tree (`CARGO_MANIFEST_DIR`) and the build output directory (`OUT_DIR`). There are no network requests, obfuscated code, eval, base64, or any other indicators of supply-chain attack. The build script behaves exactly as expected for a legitimate Rust package with native code generation and linking.
</details>
<summary>Standard Rust build script, no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/waywallen/build.rs, src/waywallen/cmake/FetchDepsProvider.cmake, src/QmlMaterial/build_wasm.sh, src/QmlMaterial/update_icon_code.sh...
[2/10] Reviewing src/waywallen/cmake/FetchDepsProvider.cmake, src/QmlMaterial/build_wasm.sh, src/QmlMaterial/update_icon_code.sh...
+ Reviewed src/waywallen/build.rs. Status: SAFE -- Standard Rust build script, no security issues.
LLM auditresponse for build_wasm.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard build helper for compiling a Qt application to WebAssembly. It orchestrates locating Qt and Emscripten toolchains, running CMake, building the project, verifying output files, and copying them to a site directory. All operations are limited to local files and directories; there are no network requests, no obfuscated code, no dangerous commands like `eval`, `curl`, `wget`, or unexpected system modifications. The script sources `emsdk_env.sh` only after verifying its existence, which is a standard Emscripten workflow. The checks for missing outputs and missing QML plugins are quality-assurance measures, not security concerns. Nothing in this file deviates from normal packaging or build-script behavior.
</details>
<summary>Standard WebAssembly build script, no malicious code.</summary>
</security_assessment>

[3/10] Reviewing src/waywallen/cmake/FetchDepsProvider.cmake, src/QmlMaterial/update_icon_code.sh...
+ Reviewed src/QmlMaterial/build_wasm.sh. Status: SAFE -- Standard WebAssembly build script, no malicious code.
[3/10] Reviewing src/waywallen/cmake/FetchDepsProvider.cmake, src/QmlMaterial/update_icon_code.sh, src/waywallen/plugins/org.waywallen.wallhaven/wallhaven/api.lua...
LLM auditresponse for FetchDepsProvider.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a CMake module that sets up a dependency provider for `FetchContent`. It records transitive dependencies to a JSON file and optionally supports Flatpak builds by using `add_subdirectory` from a path derived from the environment variable `FLATPAK_BUILDER_BUILDDIR`. The operations are standard build-time dependency management: reading and writing JSON inside the build directory, invoking CMake’s own `FetchContent_MakeAvailable`, and calling `add_subdirectory`. There is no obfuscation, no execution of external commands (no `curl`, `wget`, `eval`), no exfiltration of sensitive data, and no modification of system files outside the build tree. The use of an environment variable in the Flatpak path is expected in that build context and does not constitute a supply-chain attack. All network fetching is delegated to CMake’s `FetchContent`, which pulls from the package’s declared upstream sources. Nothing in this file deviates from normal CMake packaging practices or exhibits malicious intent.
</details>
<summary>
Legitimate CMake dependency provider; no malicious behavior found.
</summary>
</security_assessment>

[3/10] Reviewing src/waywallen/cmake/FetchDepsProvider.cmake, src/QmlMaterial/update_icon_code.sh, src/waywallen/plugins/org.waywallen.wallhaven/wallhaven/api.lua, src/waywallen/plugins/org.waywallen.wallhaven/wallhaven/discover.lua...
[4/10] Reviewing src/QmlMaterial/update_icon_code.sh, src/waywallen/plugins/org.waywallen.wallhaven/wallhaven/api.lua, src/waywallen/plugins/org.waywallen.wallhaven/wallhaven/discover.lua...
+ Reviewed src/waywallen/cmake/FetchDepsProvider.cmake. Status: SAFE -- Legitimate CMake dependency provider; no malicious behavior found.
LLM auditresponse for api.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `api.lua` is a standard Lua module that implements a client for the Wallhaven wallpaper API (`https://wallhaven.cc/api/v1`). It constructs HTTP requests with query parameters for search, filtering by purity, category, resolution, and sorting. The code is straightforward and transparent: it uses the official API endpoint, handles authentication via a session module, and performs no file operations, system modifications, or network requests to any host other than the Wallhaven API. There is no obfuscation, encoded commands, or other suspicious patterns. The module is a normal part of a wallpaper application and does not exhibit any supply-chain attack indicators.
</details>
<summary>Legitimate API client for Wallhaven wallpaper service.</summary>
</security_assessment>

[5/10] Reviewing src/QmlMaterial/update_icon_code.sh, src/waywallen/plugins/org.waywallen.wallhaven/wallhaven/discover.lua...
+ Reviewed src/waywallen/plugins/org.waywallen.wallhaven/wallhaven/api.lua. Status: SAFE -- Legitimate API client for Wallhaven wallpaper service.
[5/10] Reviewing src/QmlMaterial/update_icon_code.sh, src/waywallen/plugins/org.waywallen.wallhaven/wallhaven/discover.lua, src/waywallen/plugins/org.waywallen.wallhaven/wallhaven/session.lua...
LLM auditresponse for discover.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Lua module that acts as a high-level interface for the Wallhaven API (wallhaven.cc). It imports internal modules `wallhaven.api` and `wallhaven.map` and provides three functions: `search`, `details`, and `download`. All operations are standard API calls to fetch wallpaper data — no network requests to unexpected hosts, no obfuscated code, no dangerous commands (like `eval`, `curl`, `wget`, or file manipulation). The code is clear, minimal, and serves only the application's stated purpose of interacting with the Wallhaven wallpaper service. No malicious or supply-chain attack indicators are present.
</details>
<summary>
Clean Lua wrapper for Wallhaven API; no security issues found.</summary>
</security_assessment>

[5/10] Reviewing src/QmlMaterial/update_icon_code.sh, src/waywallen/plugins/org.waywallen.wallhaven/wallhaven/discover.lua, src/waywallen/plugins/org.waywallen.wallhaven/wallhaven/session.lua, src/waywallen/plugins/org.waywallen.image/main.lua...
[6/10] Reviewing src/QmlMaterial/update_icon_code.sh, src/waywallen/plugins/org.waywallen.wallhaven/wallhaven/session.lua, src/waywallen/plugins/org.waywallen.image/main.lua...
+ Reviewed src/waywallen/plugins/org.waywallen.wallhaven/wallhaven/discover.lua. Status: SAFE -- Clean Lua wrapper for Wallhaven API; no security issues found.
LLM auditresponse for session.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Lua module for managing authentication with the Wallhaven API. It provides functions to load, save, check, and validate an API key. The `sign_in` function verifies the key by making an HTTP GET request to the official Wallhaven settings endpoint (`https://wallhaven.cc/api/v1/settings`) with the key in the `X-API-Key` header. There is no obfuscation, no suspicious network requests to unknown hosts, no execution of downloaded code, and no file operations outside normal application logic. The API key is stored in memory only. The code is clean and consistent with the package's stated purpose of interacting with Wallhaven.
</details>
<summary>Clean session management module for Wallhaven API.</summary>
</security_assessment>

[6/10] Reviewing src/QmlMaterial/update_icon_code.sh, src/waywallen/plugins/org.waywallen.wallhaven/wallhaven/session.lua, src/waywallen/plugins/org.waywallen.image/main.lua, src/QExtra/CMakeLists.txt...
[7/10] Reviewing src/QmlMaterial/update_icon_code.sh, src/waywallen/plugins/org.waywallen.image/main.lua, src/QExtra/CMakeLists.txt...
+ Reviewed src/waywallen/plugins/org.waywallen.wallhaven/wallhaven/session.lua. Status: SAFE -- Clean session management module for Wallhaven API.
LLM auditresponse for main.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Lua module for the waywallen application. It defines metadata about the image source and wallpaper capabilities, including scanning directories for image files. There are no network requests, obfuscated code, suspicious file operations, or any behavior that deviates from normal packaging. The content is straightforward and serves only the application's stated purpose of managing wallpapers.
</details>
<summary>No malicious code; standard module definition.</summary>
</security_assessment>

[8/10] Reviewing src/QmlMaterial/update_icon_code.sh, src/QExtra/CMakeLists.txt...
+ Reviewed src/waywallen/plugins/org.waywallen.image/main.lua. Status: SAFE -- No malicious code; standard module definition.
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard CMakeLists.txt that defines build targets for Qt6 libraries. It uses `find_package`, `add_library`, `target_sources`, `target_link_libraries`, and standard CMake commands. There is no evidence of malicious code such as network requests, file exfiltration, obfuscated commands, or system modifications. The file follows typical packaging practices for a C++/Qt project.
</details>
<summary>Standard CMake build file, no security issues.</summary>
</security_assessment>

[9/10] Reviewing src/QmlMaterial/update_icon_code.sh...
+ Reviewed src/QExtra/CMakeLists.txt. Status: SAFE -- Standard CMake build file, no security issues.
LLM auditresponse for update_icon_code.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script downloads a `.codepoints` mapping file from Google&#39;s official Material Design Icons repository (`github.com/google/material-design-icons`) and transforms it into a C++ source fragment (`include/qml_material/token/icon_code.inl`). This is a standard maintainer helper script to update icon code definitions when upstream releases new icons. The URL points to a legitimate, well-known upstream source, and the content is never executed—it is only processed by `sed` to generate source code. There is no exfiltration, backdoor, obfuscated code, or execution of downloaded content. The use of a mutable branch (`master`) is typical for such update scripts and does not constitute a supply-chain attack; it is a trust/hygiene consideration, not malware.
</details>
<summary>Legitimate maintainer helper script, no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/QmlMaterial/update_icon_code.sh. Status: SAFE -- Legitimate maintainer helper script, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: 0002-cmake-Use-system-Corrosion.patch)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 40,846
  Completion Tokens: 7,968
  Total Tokens: 48,814
  Total Cost: $0.003013
  Execution Time: 150.62 seconds

Final Status: SAFE


No issues found.


Audit Skips:

/data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-b2twbh04/0002-cmake-Use-system-Corrosion.patch: [SKIPPED] Skipping binary file: 0002-cmake-Use-system-Corrosion.patch
