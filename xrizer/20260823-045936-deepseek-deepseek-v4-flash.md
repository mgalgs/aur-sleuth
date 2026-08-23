---
package: xrizer
pkgver: 0.5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3aa684c47f9b6bac5667ff3cee413c3a000b1b0d
prompt_tokens: 65130
completion_tokens: 7299
total_tokens: 72429
cost: 0.00423036768
execution_time: 104.39
files_reviewed: 12
files_skipped: 0
files_unauditable: 10
unpinned_sources: 0
date: 2026-08-23T04:59:36Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned commit, no red flags.
  - file: openvrpaths.vrpath
    status: safe
    summary: Static JSON config, no malicious content.
  - file: src/xrizer/.cargo/config.toml
    status: safe
    summary: Standard Rust config, no malicious content.
  - file: src/xrizer/build.rs
    status: safe
    summary: Standard Rust build script with no malicious behavior.
  - file: src/xrizer/fakexr/src/lib.rs
    status: safe
    summary: Standard OpenXR mock implementation, no malicious code found.
  - file: src/xrizer/fakexr/src/monado_xdev.rs
    status: safe
    summary: Rust OpenXR extension code; no malicious indicators.
  - file: src/xrizer/Cargo.toml
    status: safe
    summary: Standard Rust manifest; no malicious content detected.
  - file: src/xrizer/fakexr/src/vulkan.rs
    status: safe
    summary: No malicious code; standard Vulkan/OpenXR FFI bindings.
  - file: src/xrizer/src/graphics_backends.rs
    status: safe
    summary: No evidence of malicious behavior; standard graphics backend code.
  - file: src/xrizer/src/input/devices.rs
    status: safe
    summary: Standard VR device driver code, no malicious behavior detected.
  - file: src/xrizer/src/clientcore.rs
    status: safe
    summary: Standard upstream Rust code, no malicious content.
  - file: src/xrizer/src/applications.rs
    status: safe
    summary: Standard OpenVR interface implementation, no malicious behavior found.
---

Cloning https://aur.archlinux.org/xrizer.git...
Cloned xrizer
Analyzing xrizer AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables and function stubs in global scope. There are no top-level command substitutions, `eval`, or inline executable code. The `source` array specifies a git repository with a pinned commit (`_commit`), which is fetched via `git clone` during source retrieval, a standard and expected operation. The `sha256sums` are `SKIP`, which is typical for VCS sources and does not introduce malicious execution. All potentially dangerous operations reside inside `prepare()`, `build()`, and `package_*()` functions, which are **not** executed by `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. Therefore, running these commands is safe.
</details>
<summary>No dangerous code in global scope; functions deferred.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope; functions deferred.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, openvrpaths.vrpath...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR practices for a Rust-based package. The source is pinned to a specific commit (`_commit=a99ba5b6812f65ef8ca0d93ac4729e1deeb25171`), so the build is reproducible. Checksums are `SKIP`, which is required for VCS sources and is not a security concern. The `prepare()` and `build()` functions only perform normal Rust build operations: adding targets via `rustup target add` (a build environment setup, not a supply-chain risk) and `cargo fetch`/`cargo build --frozen`. No network requests to unexpected hosts, no encoded or obfuscated commands, no exfiltration, and no alteration of system files outside the package’s installation path. The file is a straightforward packaging script with no evidence of malicious or dangerous behavior.
</details>
<summary>Standard PKGBUILD with pinned commit, no red flags.</summary>
</security_assessment>

[1/2] Reviewing openvrpaths.vrpath...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned commit, no red flags.
LLM auditresponse for openvrpaths.vrpath:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for SteamVR's `vrpathreg` tool, used to register a custom OpenVR runtime path. It contains a simple JSON object specifying the runtime directory as `/opt/xrizer`. There is no executable code, no network requests, no obfuscation, and no system manipulation. It is a standard AUR packaging pattern for registering an OpenVR-compatible runtime. No security concerns.
</details>
<summary>Static JSON config, no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed openvrpaths.vrpath. Status: SAFE -- Static JSON config, no malicious content.
Reviewed all required files.
Deciding which files to review next...
Note: 10 compiled/archived file(s) cannot be audited as text and were not reviewed (src/xrizer/resources/rendermodels/generic_controller.obj.lz4, src/xrizer/resources/rendermodels/oculus_quest2_controller_left.obj.lz4, src/xrizer/resources/rendermodels/oculus_quest_plus_controller_left.obj.lz4 and 7 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 132 files available for selection; offering the 50 highest-priority to the model. 65 lower-priority file(s) were not offered.
LLM response for file selection:
src/xrizer/build.rs
src/xrizer/.cargo/config.toml
src/xrizer/Cargo.toml
src/xrizer/fakexr/src/lib.rs
src/xrizer/fakexr/src/monado_xdev.rs
src/xrizer/fakexr/src/vulkan.rs
src/xrizer/src/clientcore.rs
src/xrizer/src/graphics_backends.rs
src/xrizer/src/input/devices.rs
src/xrizer/src/applications.rs
Decided to review 10 additional files: src/xrizer/build.rs, src/xrizer/.cargo/config.toml, src/xrizer/Cargo.toml, src/xrizer/fakexr/src/lib.rs, src/xrizer/fakexr/src/monado_xdev.rs, src/xrizer/fakexr/src/vulkan.rs, src/xrizer/src/clientcore.rs, src/xrizer/src/graphics_backends.rs, src/xrizer/src/input/devices.rs, src/xrizer/src/applications.rs
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/xrizer/build.rs...
[0/10] Reviewing src/xrizer/build.rs, src/xrizer/Cargo.toml...
[0/10] Reviewing src/xrizer/build.rs, src/xrizer/Cargo.toml, src/xrizer/.cargo/config.toml...
LLM auditresponse for config.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Rust Cargo configuration file (`config.toml`). It sets environment variables for `miri` (a Rust undefined behavior checker) with flags commonly used to reduce false positives during testing. The `[alias]` section defines shorthand commands (`xbuild` and `c`) for running specific cargo subcommands. The `[profile.release]` section strips debug information from release builds. There is no evidence of malicious code, obfuscation, network requests, or unexpected system operations. The file is benign and consistent with normal build tooling.

</details>
<summary>Standard Rust config, no malicious content.</summary>
</security_assessment>

[0/10] Reviewing src/xrizer/build.rs, src/xrizer/Cargo.toml, src/xrizer/.cargo/config.toml, src/xrizer/fakexr/src/lib.rs...
[1/10] Reviewing src/xrizer/build.rs, src/xrizer/Cargo.toml, src/xrizer/fakexr/src/lib.rs...
+ Reviewed src/xrizer/.cargo/config.toml. Status: SAFE -- Standard Rust config, no malicious content.
LLM auditresponse for build.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Rust build script (`build.rs`) for the `xrizer` package. It performs the following routine actions:
- Compiles shaders using a `shaders::compile` helper and registers the files for re-run tracking.
- Sets environment variables based on the target OS and architecture, using logic derived from Valve's openvr code, which is expected for a VR-related application.
- Uses the `vergen_gitcl` crate to embed Git metadata (description, commit info) into the build.
- No network requests, no obfuscation, no dangerous commands (no `eval`, `curl`, unexpected file operations, or data exfiltration). All operations are standard compile-time tasks that serve the package's stated purpose. The code is transparent and aligns with normal Rust packaging practices.
</details>
<summary>Standard Rust build script with no malicious behavior.</summary>
</security_assessment>

[1/10] Reviewing src/xrizer/build.rs, src/xrizer/Cargo.toml, src/xrizer/fakexr/src/lib.rs, src/xrizer/fakexr/src/monado_xdev.rs...
[2/10] Reviewing src/xrizer/Cargo.toml, src/xrizer/fakexr/src/lib.rs, src/xrizer/fakexr/src/monado_xdev.rs...
+ Reviewed src/xrizer/build.rs. Status: SAFE -- Standard Rust build script with no malicious behavior.
LLM auditresponse for lib.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Rust implementation of an OpenXR fake/runtime, providing mock implementations of OpenXR functions (e.g., `create_instance`, `create_session`, `sync_actions`, `locate_space`). It uses standard Rust FFI patterns, macros for generating function pointer tables, and includes `monado_xdev` integration for cross-device spaces. No network requests, no obfuscated code, no file system exfiltration, and no backdoors are present. The `println!` calls are for debugging/logging, not data theft. The `std::mem::transmute` usage is typical for low-level FFI in Rust and is not obfuscated. The code is consistent with a test harness or lightweight runtime for OpenXR development.
</details>
<summary>Standard OpenXR mock implementation, no malicious code found.</summary>
</security_assessment>

[2/10] Reviewing src/xrizer/Cargo.toml, src/xrizer/fakexr/src/lib.rs, src/xrizer/fakexr/src/monado_xdev.rs, src/xrizer/fakexr/src/vulkan.rs...
[3/10] Reviewing src/xrizer/Cargo.toml, src/xrizer/fakexr/src/monado_xdev.rs, src/xrizer/fakexr/src/vulkan.rs...
+ Reviewed src/xrizer/fakexr/src/lib.rs. Status: SAFE -- Standard OpenXR mock implementation, no malicious code found.
LLM auditresponse for monado_xdev.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements OpenXR extension functions (MNDX_XDEV_SPACE) for managing virtual xdev devices in a Rust-based OpenXR runtime. It contains standard FFI calls, handle management, and struct manipulation. No network requests, obfuscation, or unusual system modifications are present. The code is consistent with legitimate OpenXR implementation patterns. There is no evidence of supply-chain attack or malicious behavior.
</details>
<summary>Rust OpenXR extension code; no malicious indicators.</summary>
</security_assessment>

[3/10] Reviewing src/xrizer/Cargo.toml, src/xrizer/fakexr/src/monado_xdev.rs, src/xrizer/fakexr/src/vulkan.rs, src/xrizer/src/clientcore.rs...
[4/10] Reviewing src/xrizer/Cargo.toml, src/xrizer/fakexr/src/vulkan.rs, src/xrizer/src/clientcore.rs...
+ Reviewed src/xrizer/fakexr/src/monado_xdev.rs. Status: SAFE -- Rust OpenXR extension code; no malicious indicators.
LLM auditresponse for Cargo.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Rust project manifest (Cargo.toml) for the xrizer package. It declares standard metadata, dependencies, workspace members, and build configuration. All dependencies point to well-known crates (openxr, ash, glam, serde, etc.) or to the project's own local paths. Pinning openxr and openxr-sys to a specific commit via `[patch.crates-io]` is a normal practice for vendoring or fixing a version. There are no network requests, obfuscated code, dangerous commands, or other indicators of malicious intent. The file is purely declarative and contains no executable logic.
</details>
<summary>Standard Rust manifest; no malicious content detected.</summary>
</security_assessment>

[5/10] Reviewing src/xrizer/fakexr/src/vulkan.rs, src/xrizer/src/clientcore.rs...
+ Reviewed src/xrizer/Cargo.toml. Status: SAFE -- Standard Rust manifest; no malicious content detected.
[5/10] Reviewing src/xrizer/fakexr/src/vulkan.rs, src/xrizer/src/clientcore.rs, src/xrizer/src/graphics_backends.rs...
LLM auditresponse for vulkan.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements Vulkan graphics bindings for the OpenXR runtime (xrizer). It defines mock Vulkan instance/device creation functions and procedure address lookup, along with OpenXR interop helpers. The code uses `unsafe` blocks and `transmute`, which is expected for FFI with Vulkan and OpenXR. There is no evidence of malicious behavior: no network requests, no file operations, no obfuscated code, no data exfiltration, and no backdoors. The allocation of `Box` and conversion to raw pointers is standard Rust FFI practice. The `Device::validate` function is a simple sanity check on a debug value and does not expose any attack surface. The file is consistent with the package's stated purpose of providing Vulkan/OpenXR bridging.
</details>
<summary>No malicious code; standard Vulkan/OpenXR FFI bindings.</summary>
</security_assessment>

[5/10] Reviewing src/xrizer/fakexr/src/vulkan.rs, src/xrizer/src/clientcore.rs, src/xrizer/src/graphics_backends.rs, src/xrizer/src/input/devices.rs...
[6/10] Reviewing src/xrizer/src/clientcore.rs, src/xrizer/src/graphics_backends.rs, src/xrizer/src/input/devices.rs...
+ Reviewed src/xrizer/fakexr/src/vulkan.rs. Status: SAFE -- No malicious code; standard Vulkan/OpenXR FFI bindings.
LLM auditresponse for graphics_backends.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is standard Rust source code defining graphics backend types and traits for a VR compositor using OpenVR and OpenXR. It contains no network requests, no obfuscated code, no system file modifications, and no data exfiltration. The `unsafe` blocks are standard for FFI dereferencing of pointers from the OpenVR C API, which is expected and appropriate for this kind of low-level graphics interop. No deviations from normal packaging or development practices were detected.
</details>
<summary>No evidence of malicious behavior; standard graphics backend code.</summary>
</security_assessment>

[6/10] Reviewing src/xrizer/src/clientcore.rs, src/xrizer/src/graphics_backends.rs, src/xrizer/src/input/devices.rs, src/xrizer/src/applications.rs...
[7/10] Reviewing src/xrizer/src/clientcore.rs, src/xrizer/src/input/devices.rs, src/xrizer/src/applications.rs...
+ Reviewed src/xrizer/src/graphics_backends.rs. Status: SAFE -- No evidence of malicious behavior; standard graphics backend code.
LLM auditresponse for devices.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Rust source file from the `xrizer` package, implementing VR device tracking and pose retrieval using OpenXR and OpenVR. It is part of the upstream application functionality and does not contain any injected malicious code. The code performs standard operations for a VR driver: enumerating devices, reading poses, caching, and handling interaction profiles. The use of `std::env::var("XRIZER_TRACKER_SERIALS")` is a normal configuration mechanism, not a supply-chain attack. There are no network requests, no obfuscated or encoded strings, no file system manipulation outside of the application's scope, and no execution of untrusted code. The file is consistent with the stated purpose of a VR device driver and does not exhibit any indicators of compromise.
</details>
<summary>
Standard VR device driver code, no malicious behavior detected.
</summary>
</security_assessment>

[8/10] Reviewing src/xrizer/src/clientcore.rs, src/xrizer/src/applications.rs...
+ Reviewed src/xrizer/src/input/devices.rs. Status: SAFE -- Standard VR device driver code, no malicious behavior detected.
LLM auditresponse for clientcore.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard upstream Rust source module from the xrizer package, which implements an OpenVR-to-OpenXR translation layer. It contains typical FFI interfaces, interface registration, and OpenXR initialization. There is no evidence of malicious behavior: no network requests, obfuscated code, dangerous shell commands, or attempts to exfiltrate or modify system files. The JSON deserialization of startup info is an expected part of the application's functionality when used in a Proton context. All `unsafe` blocks are routine for Rust FFI and do not indicate a supply-chain attack.
</details>
<summary>
Standard upstream Rust code, no malicious content.</summary>
</security_assessment>

[9/10] Reviewing src/xrizer/src/applications.rs...
+ Reviewed src/xrizer/src/clientcore.rs. Status: SAFE -- Standard upstream Rust code, no malicious content.
LLM auditresponse for applications.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Rust implementation of OpenVR's `IVRApplications` interface. It contains no obfuscation, no network requests, no base64 decoding, no suspicious downloads, and no unexpected system modifications. The `LaunchInternalProcess` function spawns a process using the caller-supplied binary path, arguments, and working directory, which is exactly the expected behavior of this OpenVR interface method. All other methods are stubs (`todo!()` or return default values). There is no evidence of malicious code, backdoors, or exfiltration. The code is consistent with the upstream OpenVR specification and serves the application's stated purpose as a VR runtime interface.
</details>
<summary>
Standard OpenVR interface implementation, no malicious behavior found.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/xrizer/src/applications.rs. Status: SAFE -- Standard OpenVR interface implementation, no malicious behavior found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 65,130
  Completion Tokens: 7,299
  Total Tokens: 72,429
  Total Cost: $0.004230
  Execution Time: 104.39 seconds

Final Status: SAFE


No issues found.
