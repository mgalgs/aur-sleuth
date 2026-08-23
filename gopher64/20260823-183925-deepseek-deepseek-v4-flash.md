---
package: gopher64
pkgver: 1.1.36
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: fe97f45c52ce35303ffaaa9e3aab59c432e69008
prompt_tokens: 57917
completion_tokens: 7911
total_tokens: 65828
cost: 0.00360288754
execution_time: 157.19
files_reviewed: 12
files_skipped: 0
files_unauditable: 10
unpinned_sources: 0
date: 2026-08-23T18:39:24Z
file_verdicts:
  - file: gopher64.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious code.
  - file: src/gopher64/data/shader/output.sh
    status: safe
    summary: Standard shader compilation script; no malicious content.
  - file: src/gopher64/.cargo/config.toml
    status: safe
    summary: Standard Cargo build config, no threats.
  - file: src/gopher64/Cargo.toml
    status: safe
    summary: Standard Rust crate manifest; no malicious content.
  - file: src/gopher64/build.rs
    status: safe
    summary: Standard build script; no malicious behavior detected.
  - file: src/gopher64/rust-toolchain.toml
    status: safe
    summary: Rust toolchain config with no security issues.
  - file: src/gopher64/parallel-rdp/interface.cpp
    status: safe
    summary: Standard graphics plugin, no malicious code.
  - file: src/gopher64/retroachievements/retroachievements.c
    status: safe
    summary: Standard RetroAchievements integration, no malicious code.
  - file: src/gopher64/data/icon/generate.sh
    status: safe
    summary: Standard icon resizing script, no security issues.
  - file: src/gopher64/src/cheats.rs
    status: safe
    summary: Standard cheat engine for N64 emulator; no malicious behavior.
  - file: src/gopher64/src/device/cart/rom.rs
    status: safe
    summary: Legitimate N64 emulator cartridge code.
---

Cloning https://aur.archlinux.org/gopher64.git...
Cloned gopher64
Analyzing gopher64 AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only static variable assignments (pkgname, pkgver, etc.) and array definitions. There are no command substitutions, backticks, `$()` calls, or any other code that would execute during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The `source` array uses standard `git+https://` URLs pointing to the project's own repositories and a local `.desktop` file. The `sha256sums` include `SKIP` for the two VCS sources, which is normal and expected for VCS sources. The only functions defined (`prepare()`, `build()`, `check()`, `package()`) are not executed during this narrow gate. No malicious or suspicious code is present in the top-level scope.
</details>
<evidence></evidence>
<summary>No executable code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in global scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, gopher64.desktop...
LLM auditresponse for gopher64.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Linux desktop entry specification file. It contains only metadata (type, version, name, comment, icon, categories) and the executable path for the application. There is no obfuscation, no network requests, no dangerous commands, and no deviation from normal packaging practices. The `Exec` line simply points to the installed binary, which is expected behavior.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed gopher64.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard packaging practices for a Rust-based Nintendo 64 emulator. All sources are fetched from the official upstream repositories (gopher64, parallel-rdp-standalone, rcheevos) via git with a tagged version for the main source. The `SKIP` checksums for the two VCS submodule sources are normal—they cannot be pinned because they are git repos without a fixed commit in the source array. The `prepare()` function configures submodules to use local copies (already fetched via the `source` array) instead of remote URLs, which is a common technique to avoid network access during `git submodule update`. The `build()` and `check()` functions run standard `cargo` commands with `--frozen` and `--locked`, ensuring reproducible builds. The `package()` function installs binaries and shared libraries to standard system paths, along with a desktop file and icons. There are no obfuscated commands, no unexpected network requests (the only downloads are the declared upstream sources), no attempts to exfiltrate data, and no execution of untrusted code. The file is consistent with a legitimate AUR package.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious code.
Reviewed all required files.
Deciding which files to review next...
Note: 10 compiled/archived file(s) cannot be audited as text and were not reviewed (src/gopher64/android-project/gradle/wrapper/gradle-wrapper.jar, gopher64/objects/pack/pack-1998aebab0202dba16badda465cbc770bb7f810e.pack, gopher64/objects/pack/pack-1998aebab0202dba16badda465cbc770bb7f810e.rev and 7 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 500 files available for selection; offering the 50 highest-priority to the model. 392 lower-priority file(s) were not offered.
LLM response for file selection:
src/gopher64/build.rs
src/gopher64/data/icon/generate.sh
src/gopher64/data/shader/output.sh
src/gopher64/.cargo/config.toml
src/gopher64/Cargo.toml
src/gopher64/rust-toolchain.toml
src/gopher64/retroachievements/retroachievements.c
src/gopher64/parallel-rdp/interface.cpp
src/gopher64/src/cheats.rs
src/gopher64/src/device/cart/rom.rs
Decided to review 10 additional files: src/gopher64/build.rs, src/gopher64/data/icon/generate.sh, src/gopher64/data/shader/output.sh, src/gopher64/.cargo/config.toml, src/gopher64/Cargo.toml, src/gopher64/rust-toolchain.toml, src/gopher64/retroachievements/retroachievements.c, src/gopher64/parallel-rdp/interface.cpp, src/gopher64/src/cheats.rs, src/gopher64/src/device/cart/rom.rs
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/gopher64/build.rs...
[0/10] Reviewing src/gopher64/build.rs, src/gopher64/data/shader/output.sh...
[0/10] Reviewing src/gopher64/build.rs, src/gopher64/data/shader/output.sh, src/gopher64/data/icon/generate.sh...
LLM auditresponse for output.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script compiles GLSL shader source files into SPIR-V binaries using the standard `glslc` compiler from the Vulkan SDK. All operations are local file system operations with no network access, no code execution beyond the intended compilation, and no obfuscation. The flags (`-O`, `--target-env=vulkan1.1`, `-mfmt=c`) are all standard and expected for such a task. There is no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard shader compilation script; no malicious content.</summary>
</security_assessment>

[0/10] Reviewing src/gopher64/build.rs, src/gopher64/data/shader/output.sh, src/gopher64/data/icon/generate.sh, src/gopher64/.cargo/config.toml...
[1/10] Reviewing src/gopher64/build.rs, src/gopher64/data/icon/generate.sh, src/gopher64/.cargo/config.toml...
+ Reviewed src/gopher64/data/shader/output.sh. Status: SAFE -- Standard shader compilation script; no malicious content.
LLM auditresponse for config.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Cargo configuration file for the gopher64 Rust project. It sets platform-specific linker flags, target CPU optimizations, and environment variables needed for building (e.g., macOS SDK path, CMake policy). No network requests, obfuscated code, system modifications, or other malicious patterns are present. It is a typical build configuration and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard Cargo build config, no threats.</summary>
</security_assessment>

[1/10] Reviewing src/gopher64/build.rs, src/gopher64/data/icon/generate.sh, src/gopher64/.cargo/config.toml, src/gopher64/Cargo.toml...
[2/10] Reviewing src/gopher64/build.rs, src/gopher64/data/icon/generate.sh, src/gopher64/Cargo.toml...
+ Reviewed src/gopher64/.cargo/config.toml. Status: SAFE -- Standard Cargo build config, no threats.
LLM auditresponse for Cargo.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Rust `Cargo.toml` manifest for the `gopher64` project. It declares package metadata, features, dependencies, build dependencies, and profile settings. All dependencies are pulled from crates.io (the official Rust package registry) and are version-pinned with semver ranges, which is normal practice. The presence of `obfstr` (a string obfuscation crate) is not inherently malicious; it is a legitimate crate often used in game development to obscure strings from casual inspection. There are no suspicious downloads, obfuscated commands, file operations, or system modifications. The file does not contain any executable code—it is purely declarative configuration. No evidence of supply-chain attack or malicious intent is present.
</details>
<evidence></evidence>
<summary>Standard Rust crate manifest; no malicious content.</summary>
</security_assessment>

[2/10] Reviewing src/gopher64/build.rs, src/gopher64/data/icon/generate.sh, src/gopher64/Cargo.toml, src/gopher64/rust-toolchain.toml...
[3/10] Reviewing src/gopher64/build.rs, src/gopher64/data/icon/generate.sh, src/gopher64/rust-toolchain.toml...
+ Reviewed src/gopher64/Cargo.toml. Status: SAFE -- Standard Rust crate manifest; no malicious content.
LLM auditresponse for build.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Rust build script (build.rs) for the gopher64 N64 emulator. It compiles C/C++ components (parallel-rdp Vulkan renderer, retroachievements library), generates FFI bindings via bindgen, and handles platform-specific build steps (Windows icon embedding, macOS compiler runtime linking, Android SDL source copying). All external commands (`git describe`, `clang --print-runtime-dir`) and file operations are normal build-time operations that do not modify system files, exfiltrate data, or fetch/execute untrusted code. No obfuscation, network requests, or backdoors are present. The script is consistent with standard packaging practices for an emulator project.
</details>
<evidence></evidence>
<summary>Standard build script; no malicious behavior detected.</summary>
</security_assessment>

[4/10] Reviewing src/gopher64/data/icon/generate.sh, src/gopher64/rust-toolchain.toml...
+ Reviewed src/gopher64/build.rs. Status: SAFE -- Standard build script; no malicious behavior detected.
[4/10] Reviewing src/gopher64/data/icon/generate.sh, src/gopher64/rust-toolchain.toml, src/gopher64/retroachievements/retroachievements.c...
LLM auditresponse for rust-toolchain.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Rust toolchain configuration file that specifies the Rust channel version (1.98.0). It contains no executable code, no network requests, no obfuscation, and no system modifications. It is a simple TOML configuration file used by the Rust toolchain to set the Rust version for the project. There are no security concerns.
</details>
<evidence>
</evidence>
<summary>Rust toolchain config with no security issues.</summary>
</security_assessment>

[4/10] Reviewing src/gopher64/data/icon/generate.sh, src/gopher64/rust-toolchain.toml, src/gopher64/retroachievements/retroachievements.c, src/gopher64/parallel-rdp/interface.cpp...
[5/10] Reviewing src/gopher64/data/icon/generate.sh, src/gopher64/retroachievements/retroachievements.c, src/gopher64/parallel-rdp/interface.cpp...
+ Reviewed src/gopher64/rust-toolchain.toml. Status: SAFE -- Rust toolchain config with no security issues.
LLM auditresponse for interface.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard graphics plugin (parallel-rdp) for an N64 emulator. It manages Vulkan rendering, SDL event handling, keyboard shortcuts, joystick input, on-screen messages, and save states. There is no obfuscation, no network requests, no execution of untrusted code, and no exfiltration of data. All operations are confined to the emulator's rendering pipeline and user interface. The only external dependencies are SDL, Vulkan, and TTF font rendering, all used in an expected manner. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard graphics plugin, no malicious code.</summary>
</security_assessment>

[5/10] Reviewing src/gopher64/data/icon/generate.sh, src/gopher64/retroachievements/retroachievements.c, src/gopher64/parallel-rdp/interface.cpp, src/gopher64/src/cheats.rs...
[6/10] Reviewing src/gopher64/data/icon/generate.sh, src/gopher64/retroachievements/retroachievements.c, src/gopher64/src/cheats.rs...
+ Reviewed src/gopher64/parallel-rdp/interface.cpp. Status: SAFE -- Standard graphics plugin, no malicious code.
LLM auditresponse for retroachievements.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard integration with the RetroAchievements client library (`rc_client`). It implements callbacks for memory reading, HTTP requests, event handling, and user authentication. All network operations are delegated to the official `rc_client` library, which communicates with legit RetroAchievements servers. No obfuscated code, unexpected downloads, file tampering, or data exfiltration is present. The code only performs expected emulator functions: managing achievements, leaderboards, and state serialization.
</details>
<evidence>
</evidence>
<summary>Standard RetroAchievements integration, no malicious code.</summary>
</security_assessment>

[6/10] Reviewing src/gopher64/data/icon/generate.sh, src/gopher64/retroachievements/retroachievements.c, src/gopher64/src/cheats.rs, src/gopher64/src/device/cart/rom.rs...
[7/10] Reviewing src/gopher64/data/icon/generate.sh, src/gopher64/src/cheats.rs, src/gopher64/src/device/cart/rom.rs...
+ Reviewed src/gopher64/retroachievements/retroachievements.c. Status: SAFE -- Standard RetroAchievements integration, no malicious code.
LLM auditresponse for generate.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script simply uses ImageMagick's `magick` command to resize an existing PNG file (`gopher64.png`) to multiple standard icon sizes (512x512, 256x256, 128x256 for ICO). There are no network requests, no obfuscation, no execution of untrusted code, and no unexpected file operations. This is a standard icon generation script commonly found in packaging workflows.
</details>
<evidence></evidence>
<summary>Standard icon resizing script, no security issues.</summary>
</security_assessment>

[8/10] Reviewing src/gopher64/src/cheats.rs, src/gopher64/src/device/cart/rom.rs...
+ Reviewed src/gopher64/data/icon/generate.sh. Status: SAFE -- Standard icon resizing script, no security issues.
LLM auditresponse for cheats.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `cheats.rs` implements cheat code functionality for the gopher64 N64 emulator. It reads cheat data from an embedded JSON file (`cheats.json`), parses user-selected cheats, and applies them by writing to the emulated N64 memory (`rdram.mem`). The code performs standard emulator operations: memory reads/writes, conditional checks, and expansion of compressed cheat lines. There is no network connectivity, no external command execution, no obfuscation, and no file system manipulation outside the emulation scope. The `regex` replacement of `?` placeholders uses user-provided option values, which is expected cheat customization and not arbitrary injection. All data originates from the package's own compiled-in JSON file. No malicious or supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard cheat engine for N64 emulator; no malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/gopher64/src/device/cart/rom.rs...
+ Reviewed src/gopher64/src/cheats.rs. Status: SAFE -- Standard cheat engine for N64 emulator; no malicious behavior.
LLM auditresponse for rom.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `rom.rs` contains standard cartridge ROM emulation logic for a Nintendo 64 emulator. It includes functions for reading/writing cartridge memory, DMA transfers, initialization, and CIC seed detection using SHA-256 hashes. There is no obfuscation, no unexpected network requests, no base64-encoded or eval-like constructs, and no attempt to access files outside the emulator's own data structures. All operations are confined to the emulated device state (ROM, RDRAM, PI registers, UI storage) and serve the legitimate purpose of simulating N64 cartridge hardware. No malicious behavior is present.
</details>
<evidence>

</evidence>
<summary>Legitimate N64 emulator cartridge code.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/gopher64/src/device/cart/rom.rs. Status: SAFE -- Legitimate N64 emulator cartridge code.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 57,917
  Completion Tokens: 7,911
  Total Tokens: 65,828
  Total Cost: $0.003603
  Execution Time: 157.19 seconds

Final Status: SAFE


No issues found.
