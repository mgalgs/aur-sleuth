---
package: localsend
pkgver: 1.18.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 09f2e477a21d918155ca5fbfdf5bc833f8a3f124
prompt_tokens: 29573
completion_tokens: 7717
total_tokens: 37290
cost: 0.00339622822
execution_time: 145.56
files_reviewed: 8
files_skipped: 1
files_unauditable: 7
unpinned_sources: 0
date: 2026-08-22T03:42:38Z
file_verdicts:
  - file: localsend-1.18.2.tar.gz
    status: skipped
    summary: "Skipping binary file: localsend-1.18.2.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior detected.
  - file: src/localsend-1.18.2/cli/build.rs
    status: safe
    summary: Build script sets Windows metadata only; no malicious code.
  - file: src/localsend-1.18.2/app/linux/CMakeLists.txt
    status: safe
    summary: Standard Flutter Linux build file, no malicious behavior.
  - file: src/localsend-1.18.2/Cargo.toml
    status: safe
    summary: Standard Rust workspace manifest with dev optimization settings; no malicious behavior found.
  - file: src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/build_pod.sh
    status: safe
    summary: Build script for Flutter/Rust pod, no security issues.
  - file: src/localsend-1.18.2/app/linux/flutter/generated_plugins.cmake
    status: safe
    summary: Standard Flutter CMake plugin file, no security issues.
  - file: src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/cmake/cargokit.cmake
    status: safe
    summary: Standard CMake build script for Rust library in Flutter plugin.
  - file: src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/run_build_tool.sh
    status: safe
    summary: Standard build tool runner; no malicious behavior detected.
---

Cloning https://aur.archlinux.org/localsend.git...
Cloned localsend
Analyzing localsend AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope is entirely declarative: it sets environment variables, defines package metadata, and specifies a fixed source tarball from the official GitHub releases with a non-SKIP checksum. The `_rust_setup()` function is only invoked inside `prepare()`, `build()`, and `package()`, which are not executed by `makepkg --nobuild --nodeps --noprepare`. There are no top-level command substitutions, no `pkgver()` function, and no dangerous operations (eval, curl, base64, etc.) in the global scope. Fetching the source and sourcing the PKGBUILD is safe for this narrow gate.
</details>
<summary>No malicious code in global scope; safe to source and fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope; safe to source and fetch.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, localsend-1.18.2.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed localsend-1.18.2.tar.gz. Status: SKIPPED -- Skipping binary file: localsend-1.18.2.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Flutter/Cargo application.  
- The source is pinned to a specific version with a SHA-256 checksum.  
- Build steps use `cargo fetch --locked` and `cargo build --frozen`, ensuring reproducibility.  
- The `fvm install` and `fvm flutter` commands fetch the Flutter SDK from the official Flutter source, which is a normal dependency for building Flutter apps.  
- No obfuscated code, unexpected network requests, or suspicious file operations are present.  
- The `fakebin/rustup` script is a harmless workaround to use the system toolchain.  
- All other operations (installing binaries, setting rpath, creating symlinks, installing icons and desktop files) are standard packaging tasks.  

No evidence of supply-chain attack, data exfiltration, backdoors, or credential theft was found.
</details>
<summary>Standard AUR PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior detected.
Reviewed all required files.
Deciding which files to review next...
Note: 7 compiled/archived file(s) cannot be audited as text and were not reviewed (src/localsend-1.18.2/CHANGELOG.md, src/localsend-1.18.2/app/macos/ShareExtension/icon.icns, src/localsend-1.18.2/app/windows/localsend_app.exe.manifest and 4 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 845 files available for selection; offering the 50 highest-priority to the model. 685 lower-priority file(s) were not offered.
LLM response for file selection:
src/localsend-1.18.2/app/linux/CMakeLists.txt
src/localsend-1.18.2/cli/build.rs
src/localsend-1.18.2/Cargo.toml
src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/cmake/cargokit.cmake
src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/run_build_tool.sh
src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/build_pod.sh
src/localsend-1.18.2/app/linux/flutter/generated_plugins.cmake
Decided to review 7 additional files: src/localsend-1.18.2/app/linux/CMakeLists.txt, src/localsend-1.18.2/cli/build.rs, src/localsend-1.18.2/Cargo.toml, src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/cmake/cargokit.cmake, src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/run_build_tool.sh, src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/build_pod.sh, src/localsend-1.18.2/app/linux/flutter/generated_plugins.cmake
Reviewing additional files...
Reviewing additional files...
[0/7] Reviewing src/localsend-1.18.2/Cargo.toml...
[0/7] Reviewing src/localsend-1.18.2/Cargo.toml, src/localsend-1.18.2/cli/build.rs...
[0/7] Reviewing src/localsend-1.18.2/Cargo.toml, src/localsend-1.18.2/cli/build.rs, src/localsend-1.18.2/app/linux/CMakeLists.txt...
LLM auditresponse for build.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `build.rs` is a standard Rust build script that sets Windows resource metadata (product name, description, copyright, etc.) using the `winresource` crate. It only executes on Windows and does not perform any network requests, download or execute external code, read or exfiltrate system files, or contain obfuscated commands. This is normal and expected build-time behavior for packaging a Windows binary.
</details>
<summary>Build script sets Windows metadata only; no malicious code.</summary>
</security_assessment>

[1/7] Reviewing src/localsend-1.18.2/Cargo.toml, src/localsend-1.18.2/app/linux/CMakeLists.txt...
+ Reviewed src/localsend-1.18.2/cli/build.rs. Status: SAFE -- Build script sets Windows metadata only; no malicious code.
[1/7] Reviewing src/localsend-1.18.2/Cargo.toml, src/localsend-1.18.2/app/linux/CMakeLists.txt, src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/cmake/cargokit.cmake...
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMakeLists.txt is a standard build configuration file for a Flutter Linux desktop application named "localsend_app". It defines the project, sets compiler options, includes Flutter managed build rules, links against GTK, and sets up an installation procedure. All operations are confined to building and installing the application bundle:

- Standard CMake instructions: `cmake_minimum_required`, `project`, `add_executable`, `target_link_libraries`, `install`.
- The `install(CODE ...)` blocks are used solely to clean the build bundle directory before re-installing (removing old data and asset directories) – this is normal packaging practice.
- There are no network requests, no execution of external scripts (e.g., `curl`, `wget`, `bash`), no obfuscated or encoded commands, no file system access beyond the build/install tree, and no attempt to exfiltrate data or modify system files outside the application scope.

The content matches the expected pattern of a Flutter-generated Linux CMakeLists.txt and does not exhibit any indicators of a supply-chain attack. It is safe.
</details>
<summary>Standard Flutter Linux build file, no malicious behavior.</summary>
</security_assessment>

[1/7] Reviewing src/localsend-1.18.2/Cargo.toml, src/localsend-1.18.2/app/linux/CMakeLists.txt, src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/cmake/cargokit.cmake, src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/run_build_tool.sh...
[2/7] Reviewing src/localsend-1.18.2/Cargo.toml, src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/cmake/cargokit.cmake, src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/run_build_tool.sh...
+ Reviewed src/localsend-1.18.2/app/linux/CMakeLists.txt. Status: SAFE -- Standard Flutter Linux build file, no malicious behavior.
LLM auditresponse for Cargo.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This Cargo.toml defines a Rust workspace with standard members and profile settings. The only non-default configuration is enabling a higher optimization level for two crypto-related crates (`rsa`, `num-bigint-dig`) during development builds to speed up RSA key generation tests. There are no network accesses, no downloads, no code execution, no obfuscation, and no file operations outside normal Rust build configuration. The file contains no suspicious content and is consistent with ordinary packaging practices for a Rust application.
</details>
<summary>
Standard Rust workspace manifest with dev optimization settings; no malicious behavior found.</summary>
</security_assessment>

[3/7] Reviewing src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/cmake/cargokit.cmake, src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/run_build_tool.sh...
+ Reviewed src/localsend-1.18.2/Cargo.toml. Status: SAFE -- Standard Rust workspace manifest with dev optimization settings; no malicious behavior found.
[3/7] Reviewing src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/cmake/cargokit.cmake, src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/run_build_tool.sh, src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/build_pod.sh...
LLM auditresponse for build_pod.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `build_pod.sh` is a build helper script for the Flutter/Dart ecosystem, specifically for an iOS pod build that integrates Rust code via Cargokit. It sets environment variables for the build tool, sources Flutter environment configurations from expected paths, and invokes `run_build_tool.sh`. The script also creates symlinks to force rebuilds, which is normal build system behavior.

There are no signs of malicious activity: no network requests, no obfuscated commands, no unexpected file operations, and no execution of untrusted content. The only sourced files (`flutter_export_environment.sh`) are part of the standard Flutter development environment and are located within the project's `Pods` directory, not from arbitrary or user-controlled locations. The script does not fetch or run code from external sources beyond the package's own declared build tool. This is consistent with ordinary packaging practices for a Flutter/Rust hybrid project and does not exhibit any supply-chain attack indicators.
</details>
<summary>Build script for Flutter/Rust pod, no security issues.</summary>
</security_assessment>

[3/7] Reviewing src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/cmake/cargokit.cmake, src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/run_build_tool.sh, src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/build_pod.sh, src/localsend-1.18.2/app/linux/flutter/generated_plugins.cmake...
[4/7] Reviewing src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/cmake/cargokit.cmake, src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/run_build_tool.sh, src/localsend-1.18.2/app/linux/flutter/generated_plugins.cmake...
+ Reviewed src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/build_pod.sh. Status: SAFE -- Build script for Flutter/Rust pod, no security issues.
LLM auditresponse for generated_plugins.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Flutter-generated CMake file that declares plugin subdirectories and links them into the build target. It contains no network requests, obfuscation, file modifications, or execution of untrusted code. The file simply iterates over predefined plugin lists and calls `add_subdirectory` and `target_link_libraries`—both normal CMake operations. The content is consistent with Flutter's build system and does not introduce any supply-chain attack vectors.
</details>
<summary>Standard Flutter CMake plugin file, no security issues.</summary>
</security_assessment>

[5/7] Reviewing src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/cmake/cargokit.cmake, src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/run_build_tool.sh...
+ Reviewed src/localsend-1.18.2/app/linux/flutter/generated_plugins.cmake. Status: SAFE -- Standard Flutter CMake plugin file, no security issues.
LLM auditresponse for cargokit.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake helper script for the cargokit tool, which integrates Rust crate builds into a Flutter/Dart plugin's CMake build system. It defines a function `apply_cargokit` that sets environment variables and invokes a bundled `run_build_tool.sh` or `.cmd` script to compile a Rust library.  

The script performs routine build operations: resolving symlinks (via a bundled PowerShell script on Windows), ensuring the build tool script is executable (`chmod +x`), and creating custom commands to run the builder. All paths are confined to the package's own source and binary directories.  

There is no obfuscated code, no network requests (to unexpected hosts), no downloading or execution of external code, and no attempts to read or exfiltrate sensitive system files. The operations are consistent with normal packaging practices for a Flutter plugin that requires native Rust compilation.
</details>
<summary>Standard CMake build script for Rust library in Flutter plugin.</summary>
</security_assessment>

[6/7] Reviewing src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/run_build_tool.sh...
+ Reviewed src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/cmake/cargokit.cmake. Status: SAFE -- Standard CMake build script for Rust library in Flutter plugin.
LLM auditresponse for run_build_tool.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard build tool runner for Cargokit, a Dart/Flutter build dependency. It creates a temporary Dart package that depends on a local build_tool directory, fetches dependencies via `dart pub get` from the official pub.dev registry (expected behavior), compiles a kernel snapshot, and runs it. There is no obfuscated code, no unexpected network requests to non-standard hosts, no use of dangerous commands like `eval`/`curl`/`wget`, and no modification of system files outside the designated temporary directory. The alias fallback for `shasum` is a benign compatibility shim. The overall pattern is consistent with normal Dart build automation and does not exhibit any indicators of a supply-chain attack.
</details>
<summary>
Standard build tool runner; no malicious behavior detected.
</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed src/localsend-1.18.2/packages/localsend_isolates/rust_builder/cargokit/run_build_tool.sh. Status: SAFE -- Standard build tool runner; no malicious behavior detected.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: localsend-1.18.2.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 29,573
  Completion Tokens: 7,717
  Total Tokens: 37,290
  Total Cost: $0.003396
  Execution Time: 145.56 seconds

Final Status: SAFE


No issues found.


Audit Skips:

/data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-6c38c1a5/localsend-1.18.2.tar.gz: [SKIPPED] Skipping binary file: localsend-1.18.2.tar.gz
