---
package: wayvr
pkgver: 26.8.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 4fdfd87aaec54365f5eb3ea9cd4b5b3cd402f1d8
prompt_tokens: 18150
completion_tokens: 4330
total_tokens: 22480
cost: 0.00130993660
execution_time: 76.32
files_reviewed: 5
files_skipped: 1
files_unauditable: 23
unpinned_sources: 0
date: 2026-08-23T19:24:52Z
file_verdicts:
  - file: wayvr-26.8.0.tar.gz
    status: skipped
    summary: "Skipping binary file: wayvr-26.8.0.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with pinned source and standard Rust build.
  - file: src/wayvr-26.8.0/wayvr/contrib/wayvr.service
    status: safe
    summary: Standard systemd service file; no security issues
  - file: src/wayvr-26.8.0/wayvr/build.rs
    status: safe
    summary: Standard build script, no security issues.
  - file: src/wayvr-26.8.0/wayvr/wayvr.desktop
    status: safe
    summary: Standard desktop entry file, no malicious content.
  - file: src/wayvr-26.8.0/Cargo.toml
    status: safe
    summary: Standard Cargo.toml; no security issues found.
---

Cloning https://aur.archlinux.org/wayvr.git...
Cloned wayvr
Analyzing wayvr AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is standard and straightforward. The `source` array points to a tarball from the official upstream GitHub repository with a matching SHA256 checksum (not SKIP). No top-level code executes any network requests, command substitutions, or dangerous operations beyond variable assignments and benign exports (setting environment variables for the build). `pkgver()` is not defined, so no additional code is sourced. The commands `makepkg --nobuild --nodeps --noprepare` will only fetch the source tarball and parse the global scope, which poses no security risk. The content inside `prepare()`, `build()`, and `package()` is not executed during this step and will be audited separately.
</details>
<evidence></evidence>
<summary>No malicious code in top-level scope or source definition.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in top-level scope or source definition.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, wayvr-26.8.0.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed wayvr-26.8.0.tar.gz. Status: SKIPPED -- Skipping binary file: wayvr-26.8.0.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Rust-based project. The source tarball is fetched from the project's official GitHub repository and its checksum is pinned (not SKIP). The build uses `cargo fetch --locked` and `cargo build --frozen`, both standard for reproducible Rust builds. There are no suspicious network requests, obfuscated code, or dangerous commands. The installation steps are conventional, copying binaries and data files to the appropriate locations. No evidence of malicious behavior is present.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD with pinned source and standard Rust build.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with pinned source and standard Rust build.
Reviewed all required files.
Deciding which files to review next...
Note: 23 compiled/archived file(s) cannot be audited as text and were not reviewed (src/wayvr-26.8.0/dash-frontend/assets/Quicksand-Bold.ttf.gz, src/wayvr-26.8.0/dash-frontend/assets/Quicksand-Light.ttf.gz, src/wayvr-26.8.0/dash-frontend/assets/Quicksand-Regular.ttf.gz and 20 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 456 files available for selection; offering the 50 highest-priority to the model. 283 lower-priority file(s) were not offered.
LLM response for file selection:
src/wayvr-26.8.0/wayvr/build.rs
src/wayvr-26.8.0/Cargo.toml
src/wayvr-26.8.0/wayvr/contrib/wayvr.service
src/wayvr-26.8.0/wayvr/wayvr.desktop
Decided to review 4 additional files: src/wayvr-26.8.0/wayvr/build.rs, src/wayvr-26.8.0/Cargo.toml, src/wayvr-26.8.0/wayvr/contrib/wayvr.service, src/wayvr-26.8.0/wayvr/wayvr.desktop
Reviewing additional files...
Reviewing additional files...
[0/4] Reviewing src/wayvr-26.8.0/wayvr/build.rs...
[0/4] Reviewing src/wayvr-26.8.0/wayvr/build.rs, src/wayvr-26.8.0/wayvr/contrib/wayvr.service...
[0/4] Reviewing src/wayvr-26.8.0/wayvr/build.rs, src/wayvr-26.8.0/wayvr/contrib/wayvr.service, src/wayvr-26.8.0/Cargo.toml...
LLM auditresponse for wayvr.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the WayVR package. It defines a service that starts after `monado.service` and requires `monado.socket` and `graphical-session.target`. The only action is `ExecStart=@prefix@/bin/wayvr`, which is a placeholder replaced during installation (typical for Meson/CMake builds). There are no network requests, obfuscated code, or file operations beyond launching the application's own binary. No evidence of malice or injection.
</details>
<evidence>
</evidence>
<summary>Standard systemd service file; no security issues</summary>
</security_assessment>

[0/4] Reviewing src/wayvr-26.8.0/wayvr/build.rs, src/wayvr-26.8.0/wayvr/contrib/wayvr.service, src/wayvr-26.8.0/Cargo.toml, src/wayvr-26.8.0/wayvr/wayvr.desktop...
[1/4] Reviewing src/wayvr-26.8.0/wayvr/build.rs, src/wayvr-26.8.0/Cargo.toml, src/wayvr-26.8.0/wayvr/wayvr.desktop...
+ Reviewed src/wayvr-26.8.0/wayvr/contrib/wayvr.service. Status: SAFE -- Standard systemd service file; no security issues
LLM auditresponse for build.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This `build.rs` file is a standard Rust build script that derives a version string from `git describe` output and injects it as an environment variable (`WLX_BUILD`). There is no network access, no file system manipulation outside the build directory, no encoded or obfuscated commands, and no execution of externally fetched code. The script simply runs `git describe` with common flags, parses the output with a safe regex, and formats the result. This is entirely normal for Rust packages built from VCS sources and does not exhibit any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard build script, no security issues.</summary>
</security_assessment>

[2/4] Reviewing src/wayvr-26.8.0/Cargo.toml, src/wayvr-26.8.0/wayvr/wayvr.desktop...
+ Reviewed src/wayvr-26.8.0/wayvr/build.rs. Status: SAFE -- Standard build script, no security issues.
LLM auditresponse for wayvr.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Linux desktop entry file for the WayVR application. It contains only metadata (name, comment, executable path, categories) and a custom X-XR-Plugin key typical for VR plugin discovery. There are no scripts, network requests, obfuscated code, or system modifications. The Exec field simply runs the `wayvr` binary with an optional flag, which is expected behavior. No security issues detected.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no malicious content.</summary>
</security_assessment>

[3/4] Reviewing src/wayvr-26.8.0/Cargo.toml...
+ Reviewed src/wayvr-26.8.0/wayvr/wayvr.desktop. Status: SAFE -- Standard desktop entry file, no malicious content.
LLM auditresponse for Cargo.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Rust workspace manifest (Cargo.toml) for the wayvr package. It declares workspace members, dependencies with pinned versions, and a single custom patch for the `vulkano` crate that points to a GitHub repository at a specific commit hash (`cf7f928...`). All URLs use HTTPS. No obfuscation, encoded commands, suspicious network requests, or any behavior deviating from normal Rust packaging practices is present. The file does not contain any code that could exfiltrate data, install backdoors, or execute untrusted instructions.
</details>
<evidence></evidence>
<summary>Standard Cargo.toml; no security issues found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed src/wayvr-26.8.0/Cargo.toml. Status: SAFE -- Standard Cargo.toml; no security issues found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: wayvr-26.8.0.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,150
  Completion Tokens: 4,330
  Total Tokens: 22,480
  Total Cost: $0.001310
  Execution Time: 76.32 seconds

Final Status: SAFE


No issues found.


Audit Skips:

wayvr-26.8.0.tar.gz: [SKIPPED] Skipping binary file: wayvr-26.8.0.tar.gz
