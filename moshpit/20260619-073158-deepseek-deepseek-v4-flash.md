---
package: moshpit
pkgver: 0.9.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 65e0c3f98e3e15c2f2b5d512e37cace17814cac6
prompt_tokens: 45749
completion_tokens: 6604
total_tokens: 52353
cost: 0.00530613
execution_time: 47.02
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T07:31:57Z
file_verdicts:
  - file: moshpit-0.9.2.tar.gz
    status: skipped
    summary: "Skipping binary file: moshpit-0.9.2.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with pinned source and standard Rust build.
  - file: src/moshpit-0.9.2/agent/src/unlock/ssh_agent.rs
    status: safe
    summary: Stub backend, no malicious code present.
  - file: src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD
    status: safe
    summary: Clean PKGBUILD with pinned checksums, no suspicious behavior.
  - file: src/moshpit-0.9.2/Cargo.toml
    status: safe
    summary: Standard Rust workspace Cargo.toml, no malicious content detected.
  - file: src/moshpit-0.9.2/agent/src/main.rs
    status: safe
    summary: No malicious code detected; standard Rust agent.
  - file: src/moshpit-0.9.2/agent/build.rs
    status: safe
    summary: Standard Rust build script, no security issues.
  - file: src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install
    status: safe
    summary: Standard service install script, no malicious code.
  - file: src/moshpit-0.9.2/libmoshpit/src/agent/client.rs
    status: safe
    summary: Standard Unix socket client code, no malicious behavior detected.
  - file: src/moshpit-0.9.2/libmoshpit/src/kex/negotiate.rs
    status: safe
    summary: Legitimate Rust crypto negotiation code, no malicious behavior.
  - file: src/moshpit-0.9.2/agent/src/vault.rs
    status: safe
    summary: Normal encrypted vault implementation; no supply‑chain attack indicators.
  - file: src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service
    status: safe
    summary: Clean systemd service file with no security issues.
---

Cloning https://aur.archlinux.org/moshpit.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-a8ye2bse...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-a8ye2bse
Analyzing moshpit AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-a8ye2bse) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and function definitions. No code executes at the global scope or in `pkgver()` (which is absent). The `source` array points to a single tarball from the official GitHub repository with a pinned version and a valid sha256sum. There are no suspicious network requests, obfuscated code, or dangerous commands in the sourcing path. The `prepare()`, `build()`, and `package()` functions are defined but will not run due to `--nobuild` and `--noprepare` flags. Therefore, the commands `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` are safe to execute.
</details>
<summary>
Standard PKGBUILD with no malicious top-level execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD with no malicious top-level execution.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, moshpit-0.9.2.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed moshpit-0.9.2.tar.gz. Status: SKIPPED -- Skipping binary file: moshpit-0.9.2.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for `moshpit` is a standard AUR packaging file. It downloads a versioned tarball from the official upstream GitHub repository with a pinned checksum (`sha256sums`). The build uses `cargo` (Rust's package manager) in a standard way with `--locked` to respect lockfile integrity. The `prepare()`, `build()`, and `package()` functions only perform routine operations: fetching dependencies, compiling the binary, and installing artifacts (binary, man page, shell completions, example config, documentation, and licenses) into the package directory. No suspicious network requests, obfuscated code, dangerous commands (`eval`, `base64`, `curl`, `wget`), or unexpected system modifications are present. The file does not exhibit any supply-chain attack indicators such as data exfiltration, backdoors, or execution of untrusted code.
</details>
<summary>Clean PKGBUILD with pinned source and standard Rust build.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with pinned source and standard Rust build.
Reviewed all required files.
Deciding which files to review next...
Note: 2458 files available for selection; offering the 50 highest-priority to the model. 2322 lower-priority file(s) were not offered.
LLM response for file selection:
src/moshpit-0.9.2/agent/build.rs
src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD
src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install
src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service
src/moshpit-0.9.2/Cargo.toml
src/moshpit-0.9.2/agent/src/main.rs
src/moshpit-0.9.2/agent/src/vault.rs
src/moshpit-0.9.2/agent/src/unlock/ssh_agent.rs
src/moshpit-0.9.2/libmoshpit/src/agent/client.rs
src/moshpit-0.9.2/libmoshpit/src/kex/negotiate.rs
Decided to review 10 additional files: src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/agent/src/main.rs, src/moshpit-0.9.2/agent/src/vault.rs, src/moshpit-0.9.2/agent/src/unlock/ssh_agent.rs, src/moshpit-0.9.2/libmoshpit/src/agent/client.rs, src/moshpit-0.9.2/libmoshpit/src/kex/negotiate.rs
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/moshpit-0.9.2/agent/build.rs...
[0/10] Reviewing src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD...
[0/10] Reviewing src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/Cargo.toml...
[0/10] Reviewing src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install...
[0/10] Reviewing src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service...
[0/10] Reviewing src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/agent/src/main.rs...
[0/10] Reviewing src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/agent/src/main.rs, src/moshpit-0.9.2/agent/src/vault.rs...
[0/10] Reviewing src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/agent/src/main.rs, src/moshpit-0.9.2/agent/src/vault.rs, src/moshpit-0.9.2/agent/src/unlock/ssh_agent.rs...
[0/10] Reviewing src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/agent/src/main.rs, src/moshpit-0.9.2/agent/src/vault.rs, src/moshpit-0.9.2/agent/src/unlock/ssh_agent.rs, src/moshpit-0.9.2/libmoshpit/src/agent/client.rs...
[0/10] Reviewing src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/agent/src/main.rs, src/moshpit-0.9.2/agent/src/vault.rs, src/moshpit-0.9.2/agent/src/unlock/ssh_agent.rs, src/moshpit-0.9.2/libmoshpit/src/agent/client.rs, src/moshpit-0.9.2/libmoshpit/src/kex/negotiate.rs...
LLM auditresponse for ssh_agent.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ssh_agent.rs` contains a stub implementation of an SSH agent backend for the moshpit vault. It only checks for the `SSH_AUTH_SOCK` environment variable and returns an error indicating the feature is not yet implemented. There are no network requests, no obfuscated or encoded commands, no file operations beyond reading an environment variable, and no execution of external programs. The code is entirely inert and poses no security threat.
</details>
<summary>Stub backend, no malicious code present.</summary>
</security_assessment>

[1/10] Reviewing src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/agent/src/main.rs, src/moshpit-0.9.2/agent/src/vault.rs, src/moshpit-0.9.2/libmoshpit/src/agent/client.rs, src/moshpit-0.9.2/libmoshpit/src/kex/negotiate.rs...
+ Reviewed src/moshpit-0.9.2/agent/src/unlock/ssh_agent.rs. Status: SAFE -- Stub backend, no malicious code present.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard, clean package for a pre-compiled binary. All sources are fetched from the project's own GitHub releases (`https://github.com/rustyhorde/moshpit/releases/download/v${pkgver}`) with pinned SHA-256 checksums for all three source files (dist tarball and per-architecture binaries). The package function only installs the binary, man page, shell completions, systemd user units, and license files using `install` commands. There is no obfuscated code, no unexpected network requests, no execution of downloaded scripts, no exfiltration of data, and no deviation from normal packaging practices. The architecture-specific source filenames use a colon-based rename syntax (`mpa-x86_64::`), which is standard for handling same-named files from different sources. This file presents no security concerns.
</details>
<summary>Clean PKGBUILD with pinned checksums, no suspicious behavior.</summary>
</security_assessment>

[2/10] Reviewing src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/Cargo.toml, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/agent/src/main.rs, src/moshpit-0.9.2/agent/src/vault.rs, src/moshpit-0.9.2/libmoshpit/src/agent/client.rs, src/moshpit-0.9.2/libmoshpit/src/kex/negotiate.rs...
+ Reviewed src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD. Status: SAFE -- Clean PKGBUILD with pinned checksums, no suspicious behavior.
LLM auditresponse for Cargo.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Rust workspace `Cargo.toml` configuration. It declares workspace members and their dependencies with version constraints. All dependencies are sourced from the official crates.io registry (implicitly through cargo). There are no network requests, obfuscated code, system file manipulations, or execution of external scripts. The pre-release dependency versions (`argon2 0.6.0-rc.8`, `bincode-next 3.0.0-rc.15`) are unconventional but not indicative of malicious intent. No deviations from normal packaging practices are present.
</details>
<summary>
Standard Rust workspace Cargo.toml, no malicious content detected.
</summary>
</security_assessment>

[3/10] Reviewing src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/agent/src/main.rs, src/moshpit-0.9.2/agent/src/vault.rs, src/moshpit-0.9.2/libmoshpit/src/agent/client.rs, src/moshpit-0.9.2/libmoshpit/src/kex/negotiate.rs...
+ Reviewed src/moshpit-0.9.2/Cargo.toml. Status: SAFE -- Standard Rust workspace Cargo.toml, no malicious content detected.
LLM auditresponse for main.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Rust main module for the `mpa` key agent. It contains extensive lint configuration flags (common in well-maintained Rust projects) and a main function that, on Unix, builds a multi-threaded Tokio runtime and runs the agent via `run::<Vec<&str>, &str>(None)`. On non-Unix, it prints an unsupported message. There are no network requests, no obfuscated code, no system modifications outside the application's expected scope, and no signs of malicious injection. The code purely implements the agent's intended functionality without any supply-chain attack vectors.
</details>
<summary>No malicious code detected; standard Rust agent.</summary>
</security_assessment>

[4/10] Reviewing src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/agent/src/vault.rs, src/moshpit-0.9.2/libmoshpit/src/agent/client.rs, src/moshpit-0.9.2/libmoshpit/src/kex/negotiate.rs...
+ Reviewed src/moshpit-0.9.2/agent/src/main.rs. Status: SAFE -- No malicious code detected; standard Rust agent.
LLM auditresponse for build.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The `build.rs` file is a standard Rust build script that generates version information using the `vergen_gix` crate and optionally links against `libfido2` when the FIDO2 feature is enabled. All operations are limited to cargo build directives (`cargo:rustc-*` strings) and conditional static linking path configuration for MUSL targets. There are no network requests, no execution of external downloaded content, no obfuscated code, and no exfiltration of sensitive data. The file performs only expected build-time configuration for the moshpit package.
</details>
<summary>Standard Rust build script, no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/agent/src/vault.rs, src/moshpit-0.9.2/libmoshpit/src/agent/client.rs, src/moshpit-0.9.2/libmoshpit/src/kex/negotiate.rs...
+ Reviewed src/moshpit-0.9.2/agent/build.rs. Status: SAFE -- Standard Rust build script, no security issues.
LLM auditresponse for moshpits.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script performs standard service installation tasks: creating configuration and log directories with appropriate permissions, deploying a default config file, generating a host key pair using the application's own `mp-keygen` tool, and managing a systemd service during upgrades and removals. All operations are confined to the package's own directories (`/etc/moshpits`, `/var/log/moshpits`, `/usr/share/doc/moshpits-bin`) and the systemd service unit. There are no network requests, obfuscated code, or unexpected system modifications. The key generation is expected for this type of service and uses the application's own binary. No malicious behavior detected.
</details>
<summary>Standard service install script, no malicious code.</summary>
</security_assessment>

[6/10] Reviewing src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/agent/src/vault.rs, src/moshpit-0.9.2/libmoshpit/src/agent/client.rs, src/moshpit-0.9.2/libmoshpit/src/kex/negotiate.rs...
+ Reviewed src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install. Status: SAFE -- Standard service install script, no malicious code.
LLM auditresponse for client.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `client.rs` is a standard Rust source file that implements an async Unix socket client for communicating with a local agent. It contains no network requests to external hosts, no obfuscation, no dangerous commands (eval, curl, wget, etc.), and no unexpected system modifications. The code uses standard Rust library functions for socket communication, serialization with bincode, and error handling. The included tests spawn temporary mock agents in isolated test directories, which is normal testing practice. There is no evidence of malicious or dangerous behavior; the file is consistent with legitimate application development.
</details>
<summary>Standard Unix socket client code, no malicious behavior detected.</summary>
</security_assessment>

[7/10] Reviewing src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/agent/src/vault.rs, src/moshpit-0.9.2/libmoshpit/src/kex/negotiate.rs...
+ Reviewed src/moshpit-0.9.2/libmoshpit/src/agent/client.rs. Status: SAFE -- Standard Unix socket client code, no malicious behavior detected.
LLM auditresponse for negotiate.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a well-documented Rust source module implementing cryptographic algorithm and protocol version negotiation for the moshpit package. It defines constants for key exchange, AEAD, MAC, and KDF algorithms; provides functions for negotiating common algorithms between client and server; and implements wire protocol version negotiation. The code is purely logical—no network requests, no file operations, no system command execution, no obfuscation, and no dynamic code evaluation. All operations stay within memory: creating and comparing data structures, returning results, or raising typed errors. The test suite exercises all paths without external side effects. There is no evidence of malicious or dangerous behavior.
</details>
<summary>Legitimate Rust crypto negotiation code, no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/agent/src/vault.rs...
+ Reviewed src/moshpit-0.9.2/libmoshpit/src/kex/negotiate.rs. Status: SAFE -- Legitimate Rust crypto negotiation code, no malicious behavior.
LLM auditresponse for vault.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This Rust file implements an encrypted vault for storing SSH key paths and passphrases used by the `moshpit` application. It uses standard, well-vetted cryptographic primitives (Argon2id for key derivation, AES-256-GCM-SIV for encryption, HKDF-SHA512 for entropy extraction). There are no network requests, code downloads, eval-like constructs, or obfuscated instructions. File I/O is confined to the vault file path supplied at the call site, with standard Unix permission‑mode (0o600) applied on creation. A plaintext (unencrypted) storage mode is offered for agent‑only setups, which is an expected design choice for a credential‑management tool. The vault defaults to `~/.mp/agent-vault`, which is the application’s own directory. No data exfiltration, backdoors, or deviation from the package’s stated purpose is present. The code is a legitimate encryption and persistence layer.
</details>
<summary>
Normal encrypted vault implementation; no supply‑chain attack indicators.
</summary>
</security_assessment>

[9/10] Reviewing src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service...
+ Reviewed src/moshpit-0.9.2/agent/src/vault.rs. Status: SAFE -- Normal encrypted vault implementation; no supply‑chain attack indicators.
LLM auditresponse for mps.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd unit definition for the moshpit remote terminal server. It runs `/usr/bin/mps` with paths under `/etc/moshpits` and `/var/log/moshpits`. The comments justify the relaxed hardening settings (e.g., `NoNewPrivileges=false`, omitted `ProtectSystem`/`PrivateTmp`) because the daemon spawns user shells and needs broad access. There is no obfuscated code, no network requests, no downloads, and no unusual file operations. The file simply declares how the service should be launched and restarted. No evidence of a supply-chain attack or malicious behavior is present.
</details>
<summary>
Clean systemd service file with no security issues.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service. Status: SAFE -- Clean systemd service file with no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: moshpit-0.9.2.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 45,749
  Completion Tokens: 6,604
  Total Tokens: 52,353
  Total Cost: $0.005306
  Execution Time: 47.02 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-moshpit.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-a8ye2bse/moshpit-0.9.2.tar.gz: [SKIPPED] Skipping binary file: moshpit-0.9.2.tar.gz
