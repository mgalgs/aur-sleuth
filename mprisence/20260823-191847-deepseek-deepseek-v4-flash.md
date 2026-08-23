---
package: mprisence
pkgver: 1.8.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 4fdfd87aaec54365f5eb3ea9cd4b5b3cd402f1d8
prompt_tokens: 43558
completion_tokens: 7476
total_tokens: 51034
cost: 0.00285879860
execution_time: 90.47
files_reviewed: 12
files_skipped: 0
files_unauditable: 1
unpinned_sources: 1
date: 2026-08-23T19:18:46Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators.
  - file: mprisence.install
    status: safe
    summary: Standard service management script, no security issues.
  - file: mprisence.service
    status: safe
    summary: Standard systemd service file, no malicious content.
  - file: src/mprisence-1.8.4/extension/build.mjs
    status: safe
    summary: Standard build script; no malicious behavior detected.
  - file: src/mprisence-1.8.4/build.rs
    status: safe
    summary: Standard Rust build script; no security concerns.
  - file: src/mprisence-1.8.4/Cargo.toml
    status: safe
    summary: Standard Rust project manifest, no security issues.
  - file: src/mprisence-1.8.4/extension/package.json
    status: safe
    summary: Normal package.json for a browser extension; no security issues.
  - file: src/mprisence-1.8.4/.cargo/config.toml
    status: safe
    summary: Standard Cargo linker configuration, no security issues.
  - file: src/mprisence-1.8.4/packaging/package.sh
    status: safe
    summary: Standard packaging script, no malicious behavior.
  - file: src/mprisence-1.8.4/packaging/arch/publish.sh
    status: safe
    summary: Standard AUR publication script; no malicious behavior.
  - file: src/mprisence-1.8.4/config/config.default.toml
    status: safe
    summary: Static configuration file; no code or malicious content.
  - file: src/mprisence-1.8.4/src/cover/providers/catbox.rs
    status: safe
    summary: Legitimate cover art upload provider, no malicious code.
---

Cloning https://aur.archlinux.org/mprisence.git...
Cloned mprisence
Analyzing mprisence AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions and function declarations in its global scope. No `pkgver()` function is present (pkgver is a static string). The source array references a standard GitHub tarball and two local files; all checksums are `SKIP`, which is permissible and does not constitute a safety risk at this stage (source fetching and extraction are expected). There are no top-level command substitutions, backticks, `eval`, `curl`, `wget`, or any other code that could execute during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The functions `prepare()`, `build()`, `check()`, and `package()` are defined but not executed during these commands. No malicious or suspicious behavior is present.
</details>
<evidence></evidence>
<summary>No executable malice in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable malice in global scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: mprisence-1.8.4.tar.gz::https://github.com/lazykern/mprisence/archive/v1.8.4.tar.gz
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, mprisence.install...
[0/3] Reviewing PKGBUILD, mprisence.install, mprisence.service...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch Linux packaging practices for a Rust project using Cargo. The source is fetched from the official GitHub repository of the project. All operations are typical: `cargo fetch --locked` in `prepare()`, `cargo build --frozen --release` in `build()`, `cargo test --frozen` in `check()`, and standard file installation in `package()`. There are no suspicious network requests, obfuscated code, or dangerous commands. The `SKIP` checksums are a trust/hygiene choice and not evidence of malice per the analysis guidelines. No malicious behavior is detected.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[1/3] Reviewing mprisence.install, mprisence.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators.
LLM auditresponse for mprisence.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `mprisence.install` is a standard Arch Linux install script that manages a systemd user service for the mprisence application. It performs routine operations: reloading the user daemon, enabling/disabling/restarting the service, and printing user instructions. There are no network requests, obfuscated code, downloads, or unexpected system modifications. All commands are expected for package lifecycle hooks and pose no security threat.
</details>
<evidence>
</evidence>
<summary>Standard service management script, no security issues.</summary>
</security_assessment>

[2/3] Reviewing mprisence.service...
+ Reviewed mprisence.install. Status: SAFE -- Standard service management script, no security issues.
LLM auditresponse for mprisence.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for a package named `mprisence`, which provides Discord Rich Presence for MPRIS media players. It defines a simple service that executes `/usr/bin/mprisence` with environment variables for logging (`RUST_LOG`, `RUST_BACKTRACE`). There is no obfuscated code, no network requests, no file downloads, no execution of arbitrary commands, and no attempts to exfiltrate data or modify system files outside the expected scope. The file is perfectly normal and follows standard packaging practices for a systemd service.
</details>
<evidence>
</evidence>
<summary>Standard systemd service file, no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed mprisence.service. Status: SAFE -- Standard systemd service file, no malicious content.
Reviewed all required files.
Deciding which files to review next...
Note: 1 compiled/archived file(s) cannot be audited as text and were not reviewed (mprisence-1.8.4.tar.gz). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 79 files available for selection; offering the 50 highest-priority to the model. 20 lower-priority file(s) were not offered.
LLM response for file selection:
src/mprisence-1.8.4/build.rs
src/mprisence-1.8.4/extension/build.mjs
src/mprisence-1.8.4/extension/package.json
src/mprisence-1.8.4/Cargo.toml
src/mprisence-1.8.4/.cargo/config.toml
src/mprisence-1.8.4/config/config.default.toml
src/mprisence-1.8.4/packaging/package.sh
src/mprisence-1.8.4/packaging/arch/publish.sh
src/mprisence-1.8.4/src/cover/providers/catbox.rs
Decided to review 9 additional files: src/mprisence-1.8.4/build.rs, src/mprisence-1.8.4/extension/build.mjs, src/mprisence-1.8.4/extension/package.json, src/mprisence-1.8.4/Cargo.toml, src/mprisence-1.8.4/.cargo/config.toml, src/mprisence-1.8.4/config/config.default.toml, src/mprisence-1.8.4/packaging/package.sh, src/mprisence-1.8.4/packaging/arch/publish.sh, src/mprisence-1.8.4/src/cover/providers/catbox.rs
Reviewing additional files...
Reviewing additional files...
[0/9] Reviewing src/mprisence-1.8.4/build.rs...
[0/9] Reviewing src/mprisence-1.8.4/build.rs, src/mprisence-1.8.4/extension/build.mjs...
[0/9] Reviewing src/mprisence-1.8.4/build.rs, src/mprisence-1.8.4/extension/build.mjs, src/mprisence-1.8.4/extension/package.json...
LLM auditresponse for build.mjs:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard build script for a browser extension using esbuild. It handles manifest merging, TypeScript compilation, file copying, and optional store packaging. The only external commands executed are `git rev-parse --short HEAD`, `git status --porcelain`, and `zip -r`, all of which are routine and serve the packaging workflow. There is no obfuscated code, no unexpected network requests, no exfiltration of data, and no execution of fetched content. The script is transparent and consistent with normal AUR packaging practices for a browser extension.
</details>
<evidence></evidence>
<summary>Standard build script; no malicious behavior detected.</summary>
</security_assessment>

[0/9] Reviewing src/mprisence-1.8.4/build.rs, src/mprisence-1.8.4/extension/build.mjs, src/mprisence-1.8.4/extension/package.json, src/mprisence-1.8.4/Cargo.toml...
[1/9] Reviewing src/mprisence-1.8.4/build.rs, src/mprisence-1.8.4/extension/package.json, src/mprisence-1.8.4/Cargo.toml...
+ Reviewed src/mprisence-1.8.4/extension/build.mjs. Status: SAFE -- Standard build script; no malicious behavior detected.
LLM auditresponse for build.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Rust build script (`build.rs`) that embeds the current Git commit hash into the compiled binary via the `cargo:rustc-env=GIT_SHA` directive. It runs `git rev-parse --short HEAD` and `git status --porcelain` locally to determine the revision and whether the tree is dirty. There are no network requests, no downloads, no obfuscation, and no execution of untrusted code. The script only interacts with the local Git repository and sets a build-time environment variable, which is a normal and expected practice in Rust projects.
</details>
<evidence></evidence>
<summary>Standard Rust build script; no security concerns.</summary>
</security_assessment>

[1/9] Reviewing src/mprisence-1.8.4/build.rs, src/mprisence-1.8.4/extension/package.json, src/mprisence-1.8.4/Cargo.toml, src/mprisence-1.8.4/.cargo/config.toml...
[2/9] Reviewing src/mprisence-1.8.4/extension/package.json, src/mprisence-1.8.4/Cargo.toml, src/mprisence-1.8.4/.cargo/config.toml...
+ Reviewed src/mprisence-1.8.4/build.rs. Status: SAFE -- Standard Rust build script; no security concerns.
LLM auditresponse for Cargo.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Cargo.toml for a Rust project called mprisence. It declares workspace settings, package metadata, dependencies, and packaging metadata (Debian). All dependencies are from the official Rust crate registry (crates.io) and are pinned to specific versions or version ranges. There are no embedded scripts, network requests to unexpected hosts, obfuscated code, or dangerous commands. The file contains only declarative configuration for building the project. No evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard Rust project manifest, no security issues.</summary>
</security_assessment>

[3/9] Reviewing src/mprisence-1.8.4/extension/package.json, src/mprisence-1.8.4/.cargo/config.toml...
+ Reviewed src/mprisence-1.8.4/Cargo.toml. Status: SAFE -- Standard Rust project manifest, no security issues.
[3/9] Reviewing src/mprisence-1.8.4/extension/package.json, src/mprisence-1.8.4/.cargo/config.toml, src/mprisence-1.8.4/config/config.default.toml...
LLM auditresponse for package.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard package.json for a browser extension project. It defines build scripts (using node and esbuild), packaging commands (zip), and test scripts. The dependencies are legitimate npm packages (esbuild and @types/webextension-polyfill). There are no suspicious network requests, obfuscated code, system modifications, or any commands that deviate from normal development/packaging workflows. The file contains no malicious payloads or supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Normal package.json for a browser extension; no security issues.</summary>
</security_assessment>

[3/9] Reviewing src/mprisence-1.8.4/extension/package.json, src/mprisence-1.8.4/.cargo/config.toml, src/mprisence-1.8.4/config/config.default.toml, src/mprisence-1.8.4/packaging/package.sh...
[4/9] Reviewing src/mprisence-1.8.4/.cargo/config.toml, src/mprisence-1.8.4/config/config.default.toml, src/mprisence-1.8.4/packaging/package.sh...
+ Reviewed src/mprisence-1.8.4/extension/package.json. Status: SAFE -- Normal package.json for a browser extension; no security issues.
LLM auditresponse for config.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Cargo configuration (`config.toml`) that sets the Rust compiler to use the lld linker via `rustflags`. This is a common optimization for Rust projects and does not perform any network requests, execute arbitrary code, or modify system files. There is no obfuscation or suspicious content. It is a normal build configuration file.
</details>
<evidence></evidence>
<summary>Standard Cargo linker configuration, no security issues.</summary>
</security_assessment>

[4/9] Reviewing src/mprisence-1.8.4/.cargo/config.toml, src/mprisence-1.8.4/config/config.default.toml, src/mprisence-1.8.4/packaging/package.sh, src/mprisence-1.8.4/packaging/arch/publish.sh...
[5/9] Reviewing src/mprisence-1.8.4/config/config.default.toml, src/mprisence-1.8.4/packaging/package.sh, src/mprisence-1.8.4/packaging/arch/publish.sh...
+ Reviewed src/mprisence-1.8.4/.cargo/config.toml. Status: SAFE -- Standard Cargo linker configuration, no security issues.
LLM auditresponse for package.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `package.sh` is a standard build/packaging helper for the mprisence project. It performs routine tasks: compiling the Rust binary with `cargo build --release`, creating a tar.gz archive of the binary, and building a .deb package via `cargo deb`. There are no network requests to unexpected hosts, no obfuscated or encoded commands, no file operations outside the project tree, and no system modifications beyond what is expected for a packaging workflow. The script does not contain any injected malicious code or supply-chain attack indicators.
</details>
<evidence>

</evidence>
<summary>
Standard packaging script, no malicious behavior.
</summary>
</security_assessment>

LLM auditresponse for publish.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard AUR package publication helper. It performs routine tasks: checking the environment, extracting the version from Cargo.toml, syncing version to PKGBUILD, generating .SRCINFO, cloning the official AUR repository over SSH, copying the necessary package files, and committing/pushing changes. There is no obfuscation, no unexpected network requests, no data exfiltration, and no execution of untrusted code. All operations are consistent with normal AUR maintenance workflow.
</details>
<evidence></evidence>
<summary>Standard AUR publication script; no malicious behavior.</summary>
</security_assessment>

[6/9] Reviewing src/mprisence-1.8.4/config/config.default.toml, src/mprisence-1.8.4/packaging/arch/publish.sh...
+ Reviewed src/mprisence-1.8.4/packaging/package.sh. Status: SAFE -- Standard packaging script, no malicious behavior.
[6/9] Reviewing src/mprisence-1.8.4/config/config.default.toml, src/mprisence-1.8.4/packaging/arch/publish.sh, src/mprisence-1.8.4/src/cover/providers/catbox.rs...
[7/9] Reviewing src/mprisence-1.8.4/config/config.default.toml, src/mprisence-1.8.4/src/cover/providers/catbox.rs...
+ Reviewed src/mprisence-1.8.4/packaging/arch/publish.sh. Status: SAFE -- Standard AUR publication script; no malicious behavior.
LLM auditresponse for config.default.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a TOML configuration file (default configuration for mprisence, an MPRIS-to-Discord presence bridge). It contains only static configuration values: polling intervals, player identity patterns, app IDs, icon URLs, and templating strings. All URLs point to well-known domains (wikimedia.org, github.com/lazykern/mprisence, flathub.org, snapcraft.io, upload.wikimedia.org, etc.) and are used solely as icon sources or asset references — there are no dynamic command executions, obfuscated code, network fetch-and-run patterns, or file system operations. Every configuration key serves the application’s stated purpose of mapping media players and web players to Discord Rich Presence fields. No code is present; this is a data-only file.
</details>
<evidence></evidence>
<summary>Static configuration file; no code or malicious content.</summary>
</security_assessment>

[8/9] Reviewing src/mprisence-1.8.4/src/cover/providers/catbox.rs...
+ Reviewed src/mprisence-1.8.4/config/config.default.toml. Status: SAFE -- Static configuration file; no code or malicious content.
LLM auditresponse for catbox.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a legitimate cover art provider for the mprisence application. It implements uploading album cover images to the external hosting services catbox.moe and litterbox (temporary file hosting) via the offical `catbox` crate. The code performs standard operations: reading image data from file paths, byte buffers, or base64 strings; optionally resizing images if they exceed 512×512 or 256 KB; and uploading them to a configured hosting service. All network destinations (catbox.moe) are consistent with the package’s stated purpose of sharing cover art for Discord Rich Presence. There are no signs of obfuscated code, unexpected command execution, exfiltration of sensitive system data, or supply-chain injection. The `validate_upload_response` function even includes defense-in-depth to reject non-URL responses from the upload API, which is a good security practice. The code is clean, well-structured, and performs only the functions advertised by the package.
</details>
<evidence></evidence>
<summary>Legitimate cover art upload provider, no malicious code.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed src/mprisence-1.8.4/src/cover/providers/catbox.rs. Status: SAFE -- Legitimate cover art upload provider, no malicious code.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 43,558
  Completion Tokens: 7,476
  Total Tokens: 51,034
  Total Cost: $0.002859
  Execution Time: 90.47 seconds

Final Status: SAFE


No issues found.
