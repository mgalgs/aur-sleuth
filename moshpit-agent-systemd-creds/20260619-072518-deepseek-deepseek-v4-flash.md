---
package: moshpit-agent-systemd-creds
pkgver: 0.9.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 65e0c3f98e3e15c2f2b5d512e37cace17814cac6
prompt_tokens: 49427
completion_tokens: 7318
total_tokens: 56745
cost: 0.00576567
execution_time: 94.24
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T07:25:17Z
file_verdicts:
  - file: moshpit-agent-systemd-creds-0.9.2.tar.gz
    status: skipped
    summary: "Skipping binary file: moshpit-agent-systemd-creds-0.9.2.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no signs of malicious code.
  - file: src/moshpit-0.9.2/agent/build.rs
    status: safe
    summary: Standard Rust build script with no security issues.
  - file: src/moshpit-0.9.2/Cargo.toml
    status: safe
    summary: Standard Rust workspace manifest; no malicious content.
  - file: src/moshpit-0.9.2/dist/mpa/moshpit-agent.service
    status: safe
    summary: Standard systemd service unit file, no security issues.
  - file: src/moshpit-0.9.2/Cross.toml
    status: safe
    summary: Cross-compilation config file; no malicious content.
  - file: src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install
    status: safe
    summary: Standard install script with no malicious behavior.
  - file: src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD
    status: safe
    summary: Clean PKGBUILD with pinned checksums, no malicious code.
  - file: src/moshpit-0.9.2/agent/src/unlock/systemd_creds.rs
    status: safe
    summary: Legitimate systemd credential backend; no security issues.
  - file: src/moshpit-0.9.2/.cargo/config.toml
    status: safe
    summary: Standard Cargo alias configuration, no security issues.
  - file: src/moshpit-0.9.2/agent/src/runtime.rs
    status: safe
    summary: "Safe: Standard agent runtime with no malicious code."
  - file: src/moshpit-0.9.2/agent/src/main.rs
    status: safe
    summary: Standard Rust agent entry point; no malicious content
---

Cloning https://aur.archlinux.org/moshpit-agent-systemd-creds.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-acy7jm48...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-acy7jm48
Analyzing moshpit-agent-systemd-creds AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-acy7jm48) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no executable code in its global/top-level scope or in a `pkgver()` function (the latter is absent). The only operations performed when sourcing the PKGBUILD are variable assignments and an array definition for `source`, which points to a standard GitHub release tarball with a pinned version and a SHA-256 checksum (not SKIP). There are no command substitutions, backticks, `eval`, or other dynamic constructs that could execute during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The `prepare()`, `build()`, and `package()` functions contain `cargo fetch`, `cargo build`, and `install` commands, but these are not invoked by the specified commands due to the `--noprepare` and `--nobuild` flags. Therefore, fetching the source and parsing the PKGBUILD is safe.
</details>
<summary>No risky code in global scope; source is pinned tarball with checksum.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No risky code in global scope; source is pinned tarball with checksum.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, moshpit-agent-systemd-creds-0.9.2.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed moshpit-agent-systemd-creds-0.9.2.tar.gz. Status: SKIPPED -- Skipping binary file: moshpit-agent-systemd-creds-0.9.2.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux packaging practices for a Rust-based project. The source is pinned to a specific upstream version (v0.9.2) with a valid SHA256 checksum. The build process uses `cargo fetch` and `cargo build` with `--locked` to ensure deterministic dependency resolution. The `cargo xtask` invocation is a standard mechanism for executing custom build-time tasks in Rust projects, typically used here to generate man pages and shell completions. There are no obfuscated commands, no unexpected network requests (only upstream source and crate downloads via cargo), no exfiltration of data, and no modifications to system files beyond the package installation directory (`$pkgdir`). All operations are consistent with the stated purpose of packaging the moshpit-agent daemon with systemd credentials support.
</details>
<summary>Standard PKGBUILD, no signs of malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no signs of malicious code.
Reviewed all required files.
Deciding which files to review next...
Note: 2458 files available for selection; offering the 50 highest-priority to the model. 2322 lower-priority file(s) were not offered.
LLM response for file selection:
src/moshpit-0.9.2/agent/build.rs
src/moshpit-0.9.2/dist/mpa/moshpit-agent.service
src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install
src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD
src/moshpit-0.9.2/Cargo.toml
src/moshpit-0.9.2/Cross.toml
src/moshpit-0.9.2/.cargo/config.toml
src/moshpit-0.9.2/agent/src/main.rs
src/moshpit-0.9.2/agent/src/runtime.rs
src/moshpit-0.9.2/agent/src/unlock/systemd_creds.rs
Decided to review 10 additional files: src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/Cross.toml, src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/agent/src/main.rs, src/moshpit-0.9.2/agent/src/runtime.rs, src/moshpit-0.9.2/agent/src/unlock/systemd_creds.rs
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/moshpit-0.9.2/dist/mpa/moshpit-agent.service...
[0/10] Reviewing src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/agent/build.rs...
[0/10] Reviewing src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD...
[0/10] Reviewing src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/Cargo.toml...
[0/10] Reviewing src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install...
[0/10] Reviewing src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/Cross.toml...
[0/10] Reviewing src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/Cross.toml, src/moshpit-0.9.2/.cargo/config.toml...
[0/10] Reviewing src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/Cross.toml, src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/agent/src/runtime.rs...
[0/10] Reviewing src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/Cross.toml, src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/agent/src/runtime.rs, src/moshpit-0.9.2/agent/src/main.rs...
[0/10] Reviewing src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/Cross.toml, src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/agent/src/runtime.rs, src/moshpit-0.9.2/agent/src/main.rs, src/moshpit-0.9.2/agent/src/unlock/systemd_creds.rs...
LLM auditresponse for build.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This `build.rs` is a standard Rust build script that uses the `vergen_gix` crate to embed build metadata (git info, compiler version, system info) and conditionally links against `libfido2`. There is no obfuscation, network requests, data exfiltration, or execution of untrusted code. The hardcoded static link paths for the MUSL target are a common pattern for cross-compilation environments and do not represent a security threat. The file follows normal packaging and build practices for a Rust project.
</details>
<summary>Standard Rust build script with no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/Cross.toml, src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/agent/src/runtime.rs, src/moshpit-0.9.2/agent/src/main.rs, src/moshpit-0.9.2/agent/src/unlock/systemd_creds.rs...
+ Reviewed src/moshpit-0.9.2/agent/build.rs. Status: SAFE -- Standard Rust build script with no security issues.
LLM auditresponse for Cargo.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Rust workspace `Cargo.toml` that defines workspace members (`agent`, `keygen`, `libmoshpit`, `moshpit`, `moshpits`, `xtask`) and a list of external crate dependencies with version numbers. There are no embedded scripts, no network requests to unexpected hosts, no obfuscated or encoded content, and no instructions that deviate from normal packaging practices. The content is purely declarative and poses no security threat.
</details>
<summary>Standard Rust workspace manifest; no malicious content.</summary>
</security_assessment>

[2/10] Reviewing src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/Cross.toml, src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/agent/src/runtime.rs, src/moshpit-0.9.2/agent/src/main.rs, src/moshpit-0.9.2/agent/src/unlock/systemd_creds.rs...
+ Reviewed src/moshpit-0.9.2/Cargo.toml. Status: SAFE -- Standard Rust workspace manifest; no malicious content.
LLM auditresponse for moshpit-agent.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the `moshpit-agent` package. It launches an agent binary (`mpa`) from the user&#39;s home Cargo bin directory, sets a socket path environment variable, and configures restart behavior. There are no network requests, obfuscated commands, unexpected file operations, or other signs of malicious activity. The unit file follows normal packaging and systemd conventions.
</details>
<summary>Standard systemd service unit file, no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/Cross.toml, src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/agent/src/runtime.rs, src/moshpit-0.9.2/agent/src/main.rs, src/moshpit-0.9.2/agent/src/unlock/systemd_creds.rs...
+ Reviewed src/moshpit-0.9.2/dist/mpa/moshpit-agent.service. Status: SAFE -- Standard systemd service unit file, no security issues.
LLM auditresponse for Cross.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for a cross-compilation tool (likely `cross` or similar). It declares an environment passthrough for `VERGEN_IDEMPOTENT` and maps two Rust compilation targets to custom Docker images. There is no executable code, no network download, no system modification, no obfuscation, and no data exfiltration. The content is standard and benign.
</details>
<summary>Cross-compilation config file; no malicious content.</summary>
</security_assessment>

[4/10] Reviewing src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/agent/src/runtime.rs, src/moshpit-0.9.2/agent/src/main.rs, src/moshpit-0.9.2/agent/src/unlock/systemd_creds.rs...
+ Reviewed src/moshpit-0.9.2/Cross.toml. Status: SAFE -- Cross-compilation config file; no malicious content.
LLM auditresponse for moshpits.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard pacman `.install` script for the `moshpits` package. It performs routine post-install tasks: creating configuration and log directories with proper ownership/permissions, copying an example config file if absent, and generating a host key pair using the application's own `mp-keygen` tool. The script also handles service restart on upgrade and cleanly stops/disables the service on removal. No network requests, obfuscated code, unexpected commands, or data exfiltration are present. All operations are confined to the package's own directories (`/etc/moshpits`, `/var/log/moshpits`). The key generation uses a local binary (`mp-keygen`) with no external downloads. This is a safe, conventional AUR packaging script.
</details>
<summary>Standard install script with no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/agent/src/runtime.rs, src/moshpit-0.9.2/agent/src/main.rs, src/moshpit-0.9.2/agent/src/unlock/systemd_creds.rs...
+ Reviewed src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install. Status: SAFE -- Standard install script with no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward packaging recipe for a pre-compiled binary from the project's official GitHub releases. All source URLs point to the upstream repository's release assets, with explicit SHA-256 checksums provided for the tarball and architecture-specific binaries. There are no uses of `eval`, `base64`, `curl`, `wget`, or any other suspicious commands beyond standard `install` operations. The package function only copies files into the package directory without executing any downloaded code or modifying system state outside the expected install locations. No obfuscation, backdoors, or exfiltration patterns are present. The file conforms to normal AUR packaging practices for a `-bin` package.
</details>
<summary>Clean PKGBUILD with pinned checksums, no malicious code.</summary>
</security_assessment>

[6/10] Reviewing src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/agent/src/runtime.rs, src/moshpit-0.9.2/agent/src/main.rs, src/moshpit-0.9.2/agent/src/unlock/systemd_creds.rs...
+ Reviewed src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD. Status: SAFE -- Clean PKGBUILD with pinned checksums, no malicious code.
LLM auditresponse for systemd_creds.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file implements a systemd credential backend that reads a vault passphrase from a file in `$CREDENTIALS_DIRECTORY` (set by systemd when using `LoadCredentialEncrypted`).  
- It only reads the named credential file and trims trailing newlines.  
- No network access, obfuscated code, dangerous commands, or data exfiltration.  
- No deviation from the stated purpose; the code is standard Rust file I/O with proper error handling.  

This is a legitimate, well-structured source file from the upstream project. There is no evidence of a supply-chain attack or malicious behavior.
</details>
<summary>Legitimate systemd credential backend; no security issues.</summary>
</security_assessment>

[7/10] Reviewing src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/agent/src/runtime.rs, src/moshpit-0.9.2/agent/src/main.rs...
+ Reviewed src/moshpit-0.9.2/agent/src/unlock/systemd_creds.rs. Status: SAFE -- Legitimate systemd credential backend; no security issues.
LLM auditresponse for config.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `config.toml` contains a standard Cargo alias definition for a Rust project. The alias `xtask` maps to `run -p xtask --`, which is a common pattern for invoking a custom task runner binary. There is no obfuscation, no network requests, no file operations, and no system modifications. The content is benign and consistent with normal packaging practices.
</details>
<summary>Standard Cargo alias configuration, no security issues.</summary>
</security_assessment>

[8/10] Reviewing src/moshpit-0.9.2/agent/src/runtime.rs, src/moshpit-0.9.2/agent/src/main.rs...
+ Reviewed src/moshpit-0.9.2/.cargo/config.toml. Status: SAFE -- Standard Cargo alias configuration, no security issues.
LLM auditresponse for runtime.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements the daemon runtime for the moshpit-agent—a Unix-domain socket-based SSH agent that manages cryptographic identities. The code is well-structured Rust that:
- Listens on a Unix socket, accepts serialized agent requests (list identities, add/remove keys, sign, lock/unlock), and dispatches them to in-memory key handlers.
- Loads private keys from disk (with optional passphrase protection), stores them in a vault that can be encrypted with a master passphrase.
- Supports multiple unlock backends (FIDO2, TPM, systemd-creds, fingerprint, macOS keychain, etc.) via feature gates.
- Spawns a foreground child process with `spawn_daemon_child()` using `Command::new(exe).arg("start")`—this is standard AUR daemon behavior (re-executing itself with `--foreground` to detach from the terminal).
- Uses `tokio::signal::unix` for graceful shutdown on SIGTERM/SIGINT, and `process_group(0)` to isolate the child from terminal signals.

There is **no obfuscated code**, no suspicious network requests (no `curl`, `wget`, or remote downloads), no base64-encoded payloads, no `eval`-like constructs, and no attempts to exfiltrate data. All file operations are confined to the package's own socket/lock/vault paths. The `fs::remove_file` calls on shutdown clean up the socket and lock file—this is expected daemon cleanup, not tampering.

While some build-time dependencies (e.g., `nix` for process signaling) are unpinned in practice, that is a hygiene concern rather than a threat. The file itself is a legitimate, well-commented component of the moshpit-agent package. No red flags.
</details>
<summary>Safe: Standard agent runtime with no malicious code.</summary>
</security_assessment>

[9/10] Reviewing src/moshpit-0.9.2/agent/src/main.rs...
+ Reviewed src/moshpit-0.9.2/agent/src/runtime.rs. Status: SAFE -- Safe: Standard agent runtime with no malicious code.
LLM auditresponse for main.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `main.rs` is a standard Rust entry point for a Unix binary (uses `tokio` runtime and `libmoshpit` for a key agent). It contains extensive but harmless lint attributes (enabling and denying various compiler and Clippy lints), which is common in well-configured Rust projects for code quality. There are no suspicious network requests, obfuscated commands, or other supply-chain attack indicators. The `#[cfg(unix)]` and `#[cfg(not(unix))]` conditional compilation ensures the main logic only runs on Unix, and the non-Unix path simply prints an error message. No data exfiltration, backdoors, or unexpected system modifications are present.
</details>
<summary>Standard Rust agent entry point; no malicious content</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/moshpit-0.9.2/agent/src/main.rs. Status: SAFE -- Standard Rust agent entry point; no malicious content
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: moshpit-agent-systemd-creds-0.9.2.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 49,427
  Completion Tokens: 7,318
  Total Tokens: 56,745
  Total Cost: $0.005766
  Execution Time: 94.24 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-moshpit-agent-systemd-creds.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-acy7jm48/moshpit-agent-systemd-creds-0.9.2.tar.gz: [SKIPPED] Skipping binary file: moshpit-agent-systemd-creds-0.9.2.tar.gz
