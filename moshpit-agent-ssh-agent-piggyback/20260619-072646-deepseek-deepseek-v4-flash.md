---
package: moshpit-agent-ssh-agent-piggyback
pkgver: 0.9.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 65e0c3f98e3e15c2f2b5d512e37cace17814cac6
prompt_tokens: 36128
completion_tokens: 6979
total_tokens: 43107
cost: 0.00450774
execution_time: 182.07
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T07:26:45Z
file_verdicts:
  - file: moshpit-agent-ssh-agent-piggyback-0.9.2.tar.gz
    status: skipped
    summary: "Skipping binary file: moshpit-agent-ssh-agent-piggyback-0.9.2.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no security concerns.
  - file: src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums; no malicious behavior detected.
  - file: src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service
    status: safe
    summary: Standard systemd service file, no malicious content.
  - file: src/moshpit-0.9.2/dist/mpa/mpa.bash
    status: safe
    summary: Standard bash completion script; no malicious code.
  - file: src/moshpit-0.9.2/agent/build.rs
    status: safe
    summary: Standard Rust build script, no security issues.
  - file: src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install
    status: safe
    summary: Standard package install script, no malicious content.
  - file: src/moshpit-0.9.2/.cargo/config.toml
    status: safe
    summary: No malicious content; standard Cargo alias.
  - file: src/moshpit-0.9.2/Cross.toml
    status: safe
    summary: Standard cross-compile configuration, no issues.
  - file: src/moshpit-0.9.2/dist/mps/mps.bash
    status: safe
    summary: Standard bash completion script, no malicious content.
  - file: src/moshpit-0.9.2/dist/mpa/moshpit-agent.service
    status: safe
    summary: No malicious code; standard systemd service unit.
  - file: src/moshpit-0.9.2/dist/mp-keygen/mp-keygen.bash
    status: safe
    summary: Standard bash completion script, no malicious code found.
---

Cloning https://aur.archlinux.org/moshpit-agent-ssh-agent-piggyback.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ga8ep9cd...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ga8ep9cd
Analyzing moshpit-agent-ssh-agent-piggyback AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ga8ep9cd) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope only contains variable assignments and array definitions. There are no command substitutions, function calls, or any code that would execute during sourcing. The `source` array points to a pinned version tarball from the official GitHub repository with a valid SHA256 checksum. No `pkgver()` function is defined. The `prepare()`, `build()`, and `package()` functions are not executed by the requested commands (`--nobuild --nodeps --noprepare`). Therefore, running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<summary>
No dangerous code executes during source fetch or PKGBUILD sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No dangerous code executes during source fetch or PKGBUILD sourcing.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing moshpit-agent-ssh-agent-piggyback-0.9.2.tar.gz...
[0/2] Reviewing moshpit-agent-ssh-agent-piggyback-0.9.2.tar.gz, PKGBUILD...
[1/2] Reviewing PKGBUILD...
! Reviewed moshpit-agent-ssh-agent-piggyback-0.9.2.tar.gz. Status: SKIPPED -- Skipping binary file: moshpit-agent-ssh-agent-piggyback-0.9.2.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. The source is fetched from the official repository at `github.com/rustyhorde/moshpit` with a pinned version and a valid SHA-256 checksum. The build process uses `cargo fetch --locked` and `cargo build --release --locked`, which is typical for Rust-based packages. Installation steps only copy files to expected locations under `$pkgdir`. There are no suspicious network requests, obfuscated code, eval, curl|bash, or any operations that deviate from legitimate packaging. No evidence of supply chain attack or malicious intent.
</details>
<summary>Standard PKGBUILD with no security concerns.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no security concerns.
Reviewed all required files.
Deciding which files to review next...
Note: 2458 files available for selection; offering the 50 highest-priority to the model. 2322 lower-priority file(s) were not offered.
LLM response for file selection:
src/moshpit-0.9.2/agent/build.rs
src/moshpit-0.9.2/.cargo/config.toml
src/moshpit-0.9.2/Cross.toml
src/moshpit-0.9.2/dist/mpa/moshpit-agent.service
src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install
src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service
src/moshpit-0.9.2/dist/mp-keygen/mp-keygen.bash
src/moshpit-0.9.2/dist/mpa/mpa.bash
src/moshpit-0.9.2/dist/mps/mps.bash
src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD
Decided to review 10 additional files: src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/Cross.toml, src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/dist/mp-keygen/mp-keygen.bash, src/moshpit-0.9.2/dist/mpa/mpa.bash, src/moshpit-0.9.2/dist/mps/mps.bash, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/moshpit-0.9.2/.cargo/config.toml...
[0/10] Reviewing src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/Cross.toml...
[0/10] Reviewing src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/Cross.toml, src/moshpit-0.9.2/agent/build.rs...
[0/10] Reviewing src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/Cross.toml, src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install...
[0/10] Reviewing src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/Cross.toml, src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/dist/mpa/moshpit-agent.service...
[0/10] Reviewing src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/Cross.toml, src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/dist/mp-keygen/mp-keygen.bash...
[0/10] Reviewing src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/Cross.toml, src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/dist/mp-keygen/mp-keygen.bash, src/moshpit-0.9.2/dist/mpa/mpa.bash...
[0/10] Reviewing src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/Cross.toml, src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/dist/mp-keygen/mp-keygen.bash, src/moshpit-0.9.2/dist/mpa/mpa.bash, src/moshpit-0.9.2/dist/mps/mps.bash...
[0/10] Reviewing src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/Cross.toml, src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/dist/mp-keygen/mp-keygen.bash, src/moshpit-0.9.2/dist/mpa/mpa.bash, src/moshpit-0.9.2/dist/mps/mps.bash, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service...
[0/10] Reviewing src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/Cross.toml, src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/dist/mp-keygen/mp-keygen.bash, src/moshpit-0.9.2/dist/mpa/mpa.bash, src/moshpit-0.9.2/dist/mps/mps.bash, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service, src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is straightforward and follows standard AUR packaging practices. It downloads a pre-compiled binary from the official GitHub releases of the `moshpit` project, with pinned SHA-256 checksums for all architectures. No obfuscation, no unexpected network requests, no execution of untrusted code at build time, and no manipulation of system files beyond the standard installation into `$pkgdir`. There is no evidence of malicious or dangerous behavior.
</details>
<summary>Standard PKGBUILD with pinned checksums; no malicious behavior detected.</summary>
</security_assessment>

[1/10] Reviewing src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/Cross.toml, src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/dist/mp-keygen/mp-keygen.bash, src/moshpit-0.9.2/dist/mpa/mpa.bash, src/moshpit-0.9.2/dist/mps/mps.bash, src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service...
+ Reviewed src/moshpit-0.9.2/packaging/arch/moshpit-agent-bin/PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums; no malicious behavior detected.
LLM auditresponse for mps.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the `mps` daemon (moshpits remote terminal server). It defines a service that runs as root, starts the `/usr/bin/mps` binary with configuration and key paths under `/etc/moshpits/`, and sets restart behavior. The comments explain why certain hardening options (like `ProtectSystem`, `PrivateTmp`, and strict syscall filters) are intentionally not applied: because the daemon spawns user shells that would inherit a restricted namespace, breaking expected functionality. The service also sets `ReadWritePaths` for log and key directories. There is no obfuscated code, no network requests, no downloads, no execution of untrusted content, and no deviation from standard packaging practices. The file is consistent with the stated purpose of providing a remote terminal server.
</details>
<summary>Standard systemd service file, no malicious content.</summary>
</security_assessment>

[2/10] Reviewing src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/Cross.toml, src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/dist/mp-keygen/mp-keygen.bash, src/moshpit-0.9.2/dist/mpa/mpa.bash, src/moshpit-0.9.2/dist/mps/mps.bash...
+ Reviewed src/moshpit-0.9.2/packaging/arch/moshpits-bin/mps.service. Status: SAFE -- Standard systemd service file, no malicious content.
LLM auditresponse for mpa.bash:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Bash tab-completion script for the `mpa` command. It defines the `_mpa` function and registers it with `complete`. The completion logic uses bash builtins (`compgen`, arrays) to suggest subcommands and flags (e.g. `start`, `add-key`, `lock`, `--socket`, `--help`). There are no network requests, file downloads, obfuscated code, or system modifications outside of normal completion behavior. The script does not execute any commands; it only populates the completion array. The content is consistent with auto-generated completions from a CLI argument parser.
</details>
<summary>
Standard bash completion script; no malicious code.</summary>
</security_assessment>

[3/10] Reviewing src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/Cross.toml, src/moshpit-0.9.2/agent/build.rs, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/dist/mp-keygen/mp-keygen.bash, src/moshpit-0.9.2/dist/mps/mps.bash...
+ Reviewed src/moshpit-0.9.2/dist/mpa/mpa.bash. Status: SAFE -- Standard bash completion script; no malicious code.
LLM auditresponse for build.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Rust build script (`build.rs`) for a crate that uses `vergen_gix` to embed build metadata (Git, Rustc, Sysinfo) and conditionally links the `libfido2` library for FIDO2 support. The script performs no network requests, no obfuscation, no execution of untrusted code, and no suspicious file operations. All operations are normal for a Cargo build script: emitting `cargo:` instructions for linker flags and configuration checks. The `nightly()` function uses the `rustversion` crate to detect the Rust toolchain channel, which is a common practice. There is no evidence of supply-chain attack or malicious behavior.
</details>
<summary>Standard Rust build script, no security issues.</summary>
</security_assessment>

[4/10] Reviewing src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/Cross.toml, src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install, src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/dist/mp-keygen/mp-keygen.bash, src/moshpit-0.9.2/dist/mps/mps.bash...
+ Reviewed src/moshpit-0.9.2/agent/build.rs. Status: SAFE -- Standard Rust build script, no security issues.
LLM auditresponse for moshpits.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The `moshpits.install` script performs routine package installation tasks: creating configuration and log directories, installing a default config file from the package's own example, generating a passwordless X25519 host key using the package's own `mp-keygen` binary, and managing the systemd service. There are no suspicious network requests, obfuscated code, unexpected file operations, or data exfiltration attempts. All actions are consistent with normal Arch Linux packaging practices for a server daemon that manages encrypted terminal sessions.
</details>
<summary>Standard package install script, no malicious content.</summary>
</security_assessment>

[5/10] Reviewing src/moshpit-0.9.2/.cargo/config.toml, src/moshpit-0.9.2/Cross.toml, src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/dist/mp-keygen/mp-keygen.bash, src/moshpit-0.9.2/dist/mps/mps.bash...
+ Reviewed src/moshpit-0.9.2/packaging/arch/moshpits-bin/moshpits.install. Status: SAFE -- Standard package install script, no malicious content.
LLM auditresponse for config.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple TOML configuration for a Cargo workspace alias. It defines an alias `xtask` that runs a Cargo command (`run -p xtask`). This is a standard and benign Cargo alias used to invoke a specific binary within a workspace. There is no evidence of malicious code, obfuscation, network requests, or any dangerous operations. It is purely a configuration convenience for the project's own build or development workflow.
</details>
<summary>No malicious content; standard Cargo alias.</summary>
</security_assessment>

[6/10] Reviewing src/moshpit-0.9.2/Cross.toml, src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/dist/mp-keygen/mp-keygen.bash, src/moshpit-0.9.2/dist/mps/mps.bash...
+ Reviewed src/moshpit-0.9.2/.cargo/config.toml. Status: SAFE -- No malicious content; standard Cargo alias.
LLM auditresponse for Cross.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `Cross.toml` configuration file used by the `cross` tool for cross-compilation. It defines build environment variables and Docker images for specific target architectures. There is no evidence of malicious behavior such as obfuscated code, suspicious network requests, or dangerous commands. It is a benign configuration file.
</details>
<summary>Standard cross-compile configuration, no issues.</summary>
</security_assessment>

[7/10] Reviewing src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/dist/mp-keygen/mp-keygen.bash, src/moshpit-0.9.2/dist/mps/mps.bash...
+ Reviewed src/moshpit-0.9.2/Cross.toml. Status: SAFE -- Standard cross-compile configuration, no issues.
LLM auditresponse for mps.bash:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Bash completion script for the `mps` command. It defines the `_mps` function and registers it with `complete` to provide tab completions for various command-line options. The script only uses `compgen` and standard shell constructs; there are no network requests, downloads, obfuscated code, or dangerous commands (e.g., `eval`, `curl`, `wget`). It performs no file operations or system modifications beyond setting up shell completions for the user's interactive shell. No evidence of malicious or supply-chain attack behavior is present.
</details>
<summary>Standard bash completion script, no malicious content.</summary>
</security_assessment>

[8/10] Reviewing src/moshpit-0.9.2/dist/mpa/moshpit-agent.service, src/moshpit-0.9.2/dist/mp-keygen/mp-keygen.bash...
+ Reviewed src/moshpit-0.9.2/dist/mps/mps.bash. Status: SAFE -- Standard bash completion script, no malicious content.
LLM auditresponse for moshpit-agent.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd user service unit file for the Moshpit Agent (an SSH key management daemon). It defines a service that starts a binary from the user's cargo directory (`%h/.cargo/bin/mpa`) with a socket path. The file contains no embedded code, no network requests, no obfuscation, and no suspicious file operations. It is a normal packaging of a service unit. There are no security concerns.
</details>
<summary>No malicious code; standard systemd service unit.</summary>
</security_assessment>

[9/10] Reviewing src/moshpit-0.9.2/dist/mp-keygen/mp-keygen.bash...
+ Reviewed src/moshpit-0.9.2/dist/mpa/moshpit-agent.service. Status: SAFE -- No malicious code; standard systemd service unit.
LLM auditresponse for mp-keygen.bash:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Bash completion script for the `mp-keygen` command. It defines a `_mp-keygen` function that generates tab-completion options for subcommands (fingerprint, generate, verify, help) using `compgen`. There are no network requests, no obfuscated or encoded code, no execution of external binaries, and no file operations beyond normal shell completion. The content is consistent with auto-generated completions (e.g., from a Rust CLI framework) and poses no supply-chain security threat.
</details>
<summary>Standard bash completion script, no malicious code found.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/moshpit-0.9.2/dist/mp-keygen/mp-keygen.bash. Status: SAFE -- Standard bash completion script, no malicious code found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: moshpit-agent-ssh-agent-piggyback-0.9.2.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,128
  Completion Tokens: 6,979
  Total Tokens: 43,107
  Total Cost: $0.004508
  Execution Time: 182.07 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-moshpit-agent-ssh-agent-piggyback.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ga8ep9cd/moshpit-agent-ssh-agent-piggyback-0.9.2.tar.gz: [SKIPPED] Skipping binary file: moshpit-agent-ssh-agent-piggyback-0.9.2.tar.gz
