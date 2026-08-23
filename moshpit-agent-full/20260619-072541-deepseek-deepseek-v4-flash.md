---
package: moshpit-agent-full
pkgver: 0.9.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 65e0c3f98e3e15c2f2b5d512e37cace17814cac6
prompt_tokens: 50545
completion_tokens: 8014
total_tokens: 58559
cost: 0.00599157
execution_time: 117.78
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T07:25:41Z
file_verdicts:
  - file: moshpit-agent-full-0.9.2.tar.gz
    status: skipped
    summary: "Skipping binary file: moshpit-agent-full-0.9.2.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard Rust AUR PKGBUILD with no malicious indicators.
  - file: src/moshpit-0.9.2/dist/mpa/moshpit-agent.service
    status: safe
    summary: Standard systemd service file, no security issues.
  - file: src/moshpit-0.9.2/.cargo/config.toml
    status: safe
    summary: Standard Cargo alias configuration, no security issues.
  - file: src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums and official upstream sources.
  - file: src/moshpit-0.9.2/agent/src/main.rs
    status: safe
    summary: Standard Rust agent code, no malicious behavior detected.
  - file: src/moshpit-0.9.2/agent/build.rs
    status: safe
    summary: Standard Cargo build script, no security concerns.
  - file: src/moshpit-0.9.2/agent/src/config.rs
    status: safe
    summary: Legitimate configuration module; no malicious code found.
  - file: src/moshpit-0.9.2/Cargo.toml
    status: safe
    summary: Standard Rust workspace configuration, no security issues.
  - file: src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service
    status: safe
    summary: Standard systemd service file for moshpit agent daemon, safe.
  - file: src/moshpit-0.9.2/agent/src/runtime.rs
    status: safe
    summary: No malicious behavior; standard SSH agent daemon code.
  - file: src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install
    status: safe
    summary: Standard install script, no malicious code detected.
---

Cloning https://aur.archlinux.org/moshpit-agent-full.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-npq_jrr4...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-npq_jrr4
Analyzing moshpit-agent-full AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-npq_jrr4) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
No dangerous code executes in the top-level scope or during source fetching. The `source` array points to a fixed version tarball from the package's own upstream GitHub repository, with a pinned SHA-256 checksum. There is no `pkgver()` function, and `prepare()`, `build()`, `package()` are not run during the specified commands. No obfuscation, suspicious network destinations, or code execution outside standard packaging.
</details>
<summary>No malicious behavior in sourcing or source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious behavior in sourcing or source fetch.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, moshpit-agent-full-0.9.2.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed moshpit-agent-full-0.9.2.tar.gz. Status: SKIPPED -- Skipping binary file: moshpit-agent-full-0.9.2.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a Rust project. It downloads the upstream source tarball from the official GitHub repository with a pinned version and a valid SHA256 checksum. The prepare, build, and package functions perform only expected operations: `cargo fetch`, `cargo build` with declared features, and installation of the compiled binary, man pages, shell completions, systemd user units, and license files. No suspicious network requests, obfuscated code, dangerous commands (eval, curl, wget), or unexpected file modifications are present. All actions serve the legitimate purpose of building and installing the moshpit-agent daemon.
</details>
<summary>Standard Rust AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust AUR PKGBUILD with no malicious indicators.
Reviewed all required files.
Deciding which files to review next...
Note: 2458 files available for selection; offering the 50 highest-priority to the model. 2322 lower-priority file(s) were not offered.
LLM response for file selection:
src/moshpit-0.9.2/agent/build.rs
src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD
src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install
src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service
src/moshpit-0.9.2/dist/mpa/moshpit-agent.service
src/moshpit-0.9.2/Cargo.toml
src/moshpit-0.9.2/.cargo/config.toml
src/moshpit-0.9.2/agent/src/main.rs
src/moshpit-0.9.2/agent/src/config.rs
src/moshpit-0.9.2/agent/src/runtime.rs
Decided to review 10 additional files: src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/agent/src/main.rs, src/moshpit-0.9.2/agent/src/config.rs, src/moshpit-0.9.2/agent/src/runtime.rs
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/moshpit-0.9.2/agent/build.rs...
[0/10] Reviewing src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD...
[0/10] Reviewing src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install...
[0/10] Reviewing src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service...
[0/10] Reviewing src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/Cargo.toml...
[0/10] Reviewing src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/.cargo/config.toml...
[0/10] Reviewing src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/dist/mpa/moshpit-agent.service...
[0/10] Reviewing src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/agent/src/config.rs...
[0/10] Reviewing src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/agent/src/config.rs, src/moshpit-0.9.2/agent/src/main.rs...
[0/10] Reviewing src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/agent/src/config.rs, src/moshpit-0.9.2/agent/src/main.rs, src/moshpit-0.9.2/agent/src/runtime.rs...
LLM auditresponse for moshpit-agent.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd user service file for the Moshpit Agent application. It launches the `mpa` binary from the user's `~/.cargo/bin/` directory, which is a typical location for Rust/Cargo-installed executables. The service runs as a non-root user (ConditionUser=!root), uses a socket in the runtime directory, and sets an environment variable for the socket path. There are no suspicious commands, network requests, or obfuscated code. The file follows normal packaging practices for a systemd service unit.
</details>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/agent/src/config.rs, src/moshpit-0.9.2/agent/src/main.rs, src/moshpit-0.9.2/agent/src/runtime.rs...
+ Reviewed src/moshpit-0.9.2/dist/mpa/moshpit-agent.service. Status: SAFE -- Standard systemd service file, no security issues.
LLM auditresponse for config.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `config.toml` contains a standard Cargo alias definition (`xtask = "run -p xtask --"`). This is a routine project configuration used to simplify running custom tasks in Rust projects. There is no obfuscation, no network requests, no file system modifications, no execution of arbitrary code, and no deviation from expected packaging practices. It poses no security risk.
</details>
<summary>Standard Cargo alias configuration, no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/agent/src/config.rs, src/moshpit-0.9.2/agent/src/main.rs, src/moshpit-0.9.2/agent/src/runtime.rs...
+ Reviewed src/moshpit-0.9.2/.cargo/config.toml. Status: SAFE -- Standard Cargo alias configuration, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is straightforward and follows standard AUR packaging practices for a pre-compiled binary package. The sources are fetched from the official GitHub releases page (`github.com/rustyhorde/moshpit/releases`) using pinned version `0.9.1`. Checksums are provided and non-SKIP for all sources, ensuring integrity. The `package()` function only installs the binary, man page, shell completions, systemd user units, and license files under `$pkgdir`. There is no obfuscation, no unusual network requests (only the package's own upstream), no execution of fetched content at build time beyond extraction, and no system modifications outside the package's own installation path. The maintainer contact information is present. This appears to be a clean and legitimate AUR package with no evidence of malicious or dangerous behavior.
</details>
<summary>Standard PKGBUILD with pinned checksums and official upstream sources.</summary>
</security_assessment>

[3/10] Reviewing src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/agent/src/config.rs, src/moshpit-0.9.2/agent/src/main.rs, src/moshpit-0.9.2/agent/src/runtime.rs...
+ Reviewed src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums and official upstream sources.
LLM auditresponse for main.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Rust `main.rs` for a Unix socket-based key agent. It contains extensive lint configuration (deny attributes) which is a sign of careful development, not malice. The actual runtime logic is minimal: on Unix it builds a Tokio runtime and calls `run()`, on non-Unix it prints an error. There are no network requests, obfuscated code, dangerous commands, or unexpected file operations. The code is consistent with the stated purpose of the package and shows no signs of a supply-chain attack.
</details>
<summary>Standard Rust agent code, no malicious behavior detected.</summary>
</security_assessment>

[4/10] Reviewing src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/agent/src/config.rs, src/moshpit-0.9.2/agent/src/runtime.rs...
+ Reviewed src/moshpit-0.9.2/agent/src/main.rs. Status: SAFE -- Standard Rust agent code, no malicious behavior detected.
LLM auditresponse for build.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Rust build script (`build.rs`) for a Cargo project. It uses the `vergen_gix` crate to emit build-time metadata (git info, cargo info, sysinfo, etc.), which is a common and legitimate practice. The only other functionality is linking the `libfido2` library when the `fido2` feature is enabled — either statically for MUSL targets or via pkg-config otherwise. There are no network requests, no downloads, no obfuscated code, no suspicious file operations, and no execution of untrusted content. All operations are confined to build-time configuration and library linkage, consistent with the project's stated purpose. No evidence of malicious or dangerous behavior.
</details>
<summary>Standard Cargo build script, no security concerns.</summary>
</security_assessment>

[5/10] Reviewing src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/agent/src/config.rs, src/moshpit-0.9.2/agent/src/runtime.rs...
+ Reviewed src/moshpit-0.9.2/agent/build.rs. Status: SAFE -- Standard Cargo build script, no security concerns.
LLM auditresponse for config.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `config.rs` is a standard Rust configuration module for the moshpit-agent daemon. It defines runtime paths (socket, lock, vault, FIDO2 state) using environment variables like `XDG_RUNTIME_DIR` and home directory fallbacks. There are no network requests, obfuscated code, downloads, or execution of untrusted content. All operations are limited to local file path construction and standard Rust functions. The use of `nix::unistd::getuid()` is normal for Unix socket paths. No evidence of supply-chain attack or malicious behavior.
</details>
<summary>Legitimate configuration module; no malicious code found.</summary>
</security_assessment>

[6/10] Reviewing src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/agent/src/runtime.rs...
+ Reviewed src/moshpit-0.9.2/agent/src/config.rs. Status: SAFE -- Legitimate configuration module; no malicious code found.
LLM auditresponse for Cargo.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Rust workspace configuration (`Cargo.toml`). It defines workspace members and lists dependencies with pinned versions and feature flags. There is no executable code, no network requests, no file operations, no obfuscation, and no commands. All dependencies are from the legitimate Rust ecosystem (crates.io). The content is entirely declarative and follows normal packaging practices.
</details>
<summary>Standard Rust workspace configuration, no security issues.</summary>
</security_assessment>

[7/10] Reviewing src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/agent/src/runtime.rs...
+ Reviewed src/moshpit-0.9.2/Cargo.toml. Status: SAFE -- Standard Rust workspace configuration, no security issues.
LLM auditresponse for mps.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service file for the `mps` daemon, a component of the moshpit-agent-full package. It runs the upstream binary `/usr/bin/mps` as root with configuration and logging paths under `/etc/moshpits/` and `/var/log/moshpits/`. The service unit does not perform any network requests, download or execute code, or manipulate data outside the application's scope. The hardening directives are intentionally relaxed (e.g., `NoNewPrivileges=false`, `ProtectHome=false`) because the daemon spawns user shells that would otherwise inherit namespace restrictions from the unit, which is a known trade-off for PTY-spawning servers. The comments clearly document this reasoning. No obfuscation, encoded commands, or signs of supply-chain injection are present. The file is purely a configuration file for systemd to launch the legitimate upstream binary.
</details>
<summary>Standard systemd service file for moshpit agent daemon, safe.</summary>
</security_assessment>

[8/10] Reviewing src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/agent/src/runtime.rs...
+ Reviewed src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service. Status: SAFE -- Standard systemd service file for moshpit agent daemon, safe.
LLM auditresponse for runtime.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `runtime.rs` implements a Unix-socket-based SSH-agent daemon. All network communication is local (Unix socket). File operations are restricted to the daemon&#x2019;s own runtime directories (socket, lock file, vault). Passphrase handling uses standard secure practices (zeroize, encrypted vault). The daemon spawns itself as a background child process via `Command::new(current_exe())` with `--foreground` and pipes the master passphrase to its stdin; this is the application&#x2019;s intended architecture for daemonization, not a supply-chain attack. No obfuscated code, no remote network requests, no arbitrary script execution, and no exfiltration of system data. All imports and feature-gated blocks (e.g., post-quantum signing) serve the legitimate purpose of managing SSH-agent identities and signing.
</details>
<summary>No malicious behavior; standard SSH agent daemon code.</summary>
</security_assessment>

[9/10] Reviewing src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install...
+ Reviewed src/moshpit-0.9.2/agent/src/runtime.rs. Status: SAFE -- No malicious behavior; standard SSH agent daemon code.
LLM auditresponse for moshpits.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script (`.install`). It performs expected administrative tasks: creating configuration and log directories, copying an example config file, generating a cryptographic host key using the package's own `mp-keygen` binary, and managing the `mps` systemd service. All operations are confined to `/etc/moshpits`, `/var/log/moshpits`, and systemd unit files. There are no obfuscated commands, no unexpected network requests, no downloads of external code, and no attempts to exfiltrate data or modify unrelated system files. The script faithfully implements the package's intended post-installation setup and is consistent with normal AUR packaging practices.
</details>
<summary>
Standard install script, no malicious code detected.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install. Status: SAFE -- Standard install script, no malicious code detected.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: moshpit-agent-full-0.9.2.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 50,545
  Completion Tokens: 8,014
  Total Tokens: 58,559
  Total Cost: $0.005992
  Execution Time: 117.78 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-moshpit-agent-full.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-npq_jrr4/moshpit-agent-full-0.9.2.tar.gz: [SKIPPED] Skipping binary file: moshpit-agent-full-0.9.2.tar.gz
