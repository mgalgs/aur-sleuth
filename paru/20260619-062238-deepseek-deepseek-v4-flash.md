---
package: paru
pkgver: 2.1.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 5790943c1b39200ecdf449522971aa7db90ade4a
prompt_tokens: 61457
completion_tokens: 7420
total_tokens: 68877
cost: 0.00686673
execution_time: 94.37
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T06:22:38Z
file_verdicts:
  - file: paru-2.1.0.tar.gz
    status: skipped
    summary: "Skipping binary file: paru-2.1.0.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for paru AUR helper; no malicious indicators
  - file: src/paru-2.1.0/src/exec.rs
    status: safe
    summary: Standard command execution helpers for pacman/makepkg; no malicious content.
  - file: src/paru-2.1.0/paru.conf
    status: safe
    summary: Configuration file with no executable content.
  - file: src/paru-2.1.0/src/upgrade.rs
    status: safe
    summary: Standard paru upgrade logic; no malicious behavior found.
  - file: src/paru-2.1.0/src/devel.rs
    status: safe
    summary: Standard paru devel tracking code, no malicious behavior.
  - file: src/paru-2.1.0/src/resolver.rs
    status: safe
    summary: Standard AUR helper source, no malicious code found.
  - file: src/paru-2.1.0/Dockerfile
    status: safe
    summary: Standard Docker build for paru; no malicious code.
  - file: src/paru-2.1.0/src/download.rs
    status: safe
    summary: Standard AUR helper code, no malicious behavior.
  - file: src/paru-2.1.0/src/sync.rs
    status: safe
    summary: Routine AUR helper code; no security concerns.
  - file: src/paru-2.1.0/src/config.rs
    status: safe
    summary: Standard paru configuration file, no security issues.
  - file: src/paru-2.1.0/src/pkgbuild.rs
    status: safe
    summary: Standard AUR helper code, no malicious content.
---

Cloning https://aur.archlinux.org/paru.git to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-_zae31a9...
Cloned repository to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-_zae31a9
Analyzing paru AUR package (working in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-_zae31a9) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables and a `source` array pointing to the official upstream tarball on GitHub. There is no `pkgver()` function and no top-level command substitutions or dangerous operations. The checksum is provided (not SKIP). The commands `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only fetch the source tarball and source the PKGBUILD without executing `prepare()`, `build()`, or `package()`, which are the only functions containing potentially risky commands (like `cargo fetch` and file installations). No malicious or unexpected behavior exists in the global scope.
</details>
<summary>PKGBUILD global scope is benign; source fetch is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- PKGBUILD global scope is benign; source fetch is safe.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing paru-2.1.0.tar.gz...
[0/2] Reviewing paru-2.1.0.tar.gz, PKGBUILD...
[1/2] Reviewing PKGBUILD...
! Reviewed paru-2.1.0.tar.gz. Status: SKIPPED -- Skipping binary file: paru-2.1.0.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Rust-based AUR helper. The source is pinned to a specific version with a valid SHA256 checksum from the project's official GitHub repository. The build process uses `cargo build --frozen` with a lock file, ensuring reproducible dependencies. The `pacman -T` call is a legitimate conditional check for a build-time feature flag (pacman-git), not an execution of untrusted code. All installed files are standard (binary, config, man pages, completions, locale) and are placed in expected locations. There are no obfuscated commands, suspicious network requests, or unexpected system modifications. The script does nothing beyond building and packaging the upstream project.
</details>
<summary>Standard PKGBUILD for paru AUR helper; no malicious indicators</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for paru AUR helper; no malicious indicators
Reviewed all required files.
Deciding which files to review next...
Note: 301 files available for selection; offering the 50 highest-priority to the model. 50 lower-priority file(s) were not offered.
LLM response for file selection:
src/paru-2.1.0/src/download.rs
src/paru-2.1.0/src/exec.rs
src/paru-2.1.0/src/pkgbuild.rs
src/paru-2.1.0/src/sync.rs
src/paru-2.1.0/src/upgrade.rs
src/paru-2.1.0/src/config.rs
src/paru-2.1.0/paru.conf
src/paru-2.1.0/Dockerfile
src/paru-2.1.0/src/resolver.rs
src/paru-2.1.0/src/devel.rs
Decided to review 10 additional files: src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/exec.rs, src/paru-2.1.0/src/pkgbuild.rs, src/paru-2.1.0/src/sync.rs, src/paru-2.1.0/src/upgrade.rs, src/paru-2.1.0/src/config.rs, src/paru-2.1.0/paru.conf, src/paru-2.1.0/Dockerfile, src/paru-2.1.0/src/resolver.rs, src/paru-2.1.0/src/devel.rs
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/paru-2.1.0/src/download.rs...
[0/10] Reviewing src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/exec.rs...
[0/10] Reviewing src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/exec.rs, src/paru-2.1.0/src/sync.rs...
[0/10] Reviewing src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/exec.rs, src/paru-2.1.0/src/sync.rs, src/paru-2.1.0/src/upgrade.rs...
[0/10] Reviewing src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/exec.rs, src/paru-2.1.0/src/sync.rs, src/paru-2.1.0/src/upgrade.rs, src/paru-2.1.0/src/config.rs...
[0/10] Reviewing src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/exec.rs, src/paru-2.1.0/src/sync.rs, src/paru-2.1.0/src/upgrade.rs, src/paru-2.1.0/src/config.rs, src/paru-2.1.0/paru.conf...
[0/10] Reviewing src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/exec.rs, src/paru-2.1.0/src/sync.rs, src/paru-2.1.0/src/upgrade.rs, src/paru-2.1.0/src/config.rs, src/paru-2.1.0/paru.conf, src/paru-2.1.0/Dockerfile...
[0/10] Reviewing src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/exec.rs, src/paru-2.1.0/src/sync.rs, src/paru-2.1.0/src/upgrade.rs, src/paru-2.1.0/src/config.rs, src/paru-2.1.0/paru.conf, src/paru-2.1.0/Dockerfile, src/paru-2.1.0/src/pkgbuild.rs...
[0/10] Reviewing src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/exec.rs, src/paru-2.1.0/src/sync.rs, src/paru-2.1.0/src/upgrade.rs, src/paru-2.1.0/src/config.rs, src/paru-2.1.0/paru.conf, src/paru-2.1.0/Dockerfile, src/paru-2.1.0/src/pkgbuild.rs, src/paru-2.1.0/src/resolver.rs...
[0/10] Reviewing src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/exec.rs, src/paru-2.1.0/src/sync.rs, src/paru-2.1.0/src/upgrade.rs, src/paru-2.1.0/src/config.rs, src/paru-2.1.0/paru.conf, src/paru-2.1.0/Dockerfile, src/paru-2.1.0/src/pkgbuild.rs, src/paru-2.1.0/src/resolver.rs, src/paru-2.1.0/src/devel.rs...
LLM auditresponse for exec.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains standard Rust helper functions for executing pacman, makepkg, and sudo commands with proper signal handling and lock-waiting logic. No obfuscated code, suspicious network requests, unexpected file operations, or backdoors are present. The sudo credential refresh loop is typical for tools that require elevated privileges throughout a session. All command execution uses the standard `std::process::Command` API with paths and arguments derived from the application&#x27;s configuration. Nothing in this code deviates from normal packaging or system utility behavior.
</details>
<summary>
Standard command execution helpers for pacman/makepkg; no malicious content.
</summary>
</security_assessment>

[1/10] Reviewing src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/sync.rs, src/paru-2.1.0/src/upgrade.rs, src/paru-2.1.0/src/config.rs, src/paru-2.1.0/paru.conf, src/paru-2.1.0/Dockerfile, src/paru-2.1.0/src/pkgbuild.rs, src/paru-2.1.0/src/resolver.rs, src/paru-2.1.0/src/devel.rs...
+ Reviewed src/paru-2.1.0/src/exec.rs. Status: SAFE -- Standard command execution helpers for pacman/makepkg; no malicious content.
LLM auditresponse for paru.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard configuration file for the paru AUR helper. It contains only comments and commented-out configuration options. There is no executable code, no network requests, no file operations, and no system modifications. The file poses no security risk.
</details>
<summary>Configuration file with no executable content.</summary>
</security_assessment>

[2/10] Reviewing src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/sync.rs, src/paru-2.1.0/src/upgrade.rs, src/paru-2.1.0/src/config.rs, src/paru-2.1.0/Dockerfile, src/paru-2.1.0/src/pkgbuild.rs, src/paru-2.1.0/src/resolver.rs, src/paru-2.1.0/src/devel.rs...
+ Reviewed src/paru-2.1.0/paru.conf. Status: SAFE -- Configuration file with no executable content.
LLM auditresponse for upgrade.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is part of the paru AUR helper's upgrade logic and contains nothing suspicious or malicious. It performs standard package management operations: querying local and sync databases, fetching AUR and VCS (devel) package update information, and presenting a numbered upgrade menu to the user. Network requests are handled through the `aur_depends::Resolver` and `possible_devel_updates` functions, which are normal paru components for checking AUR and VCS sources. All file operations and system modifications are confined to legitimately interacting with pacman's package database and installing/upgrading packages. No obfuscated code, unexpected system modifications, exfiltration, backdoors, or dangerous command execution is present.
</details>
<summary>Standard paru upgrade logic; no malicious behavior found.</summary>
</security_assessment>

[3/10] Reviewing src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/sync.rs, src/paru-2.1.0/src/config.rs, src/paru-2.1.0/Dockerfile, src/paru-2.1.0/src/pkgbuild.rs, src/paru-2.1.0/src/resolver.rs, src/paru-2.1.0/src/devel.rs...
+ Reviewed src/paru-2.1.0/src/upgrade.rs. Status: SAFE -- Standard paru upgrade logic; no malicious behavior found.
LLM auditresponse for devel.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard component of the paru AUR helper, implementing development package update tracking. It performs routine operations:

- Parses `.SRCINFO` files from locally built AUR packages to extract git remote URLs
- Uses `git ls-remote` to check for new commits on those remotes (normal for `-git` packages)
- Serializes/deserializes devel info to a TOML file in the state directory
- Filters and queries AUR for package information

The code uses standard Rust patterns and libraries (tokio, serde, srcinfo). There is no obfuscation, no `eval`, `base64`, `curl`, or similar. The network requests go to the package's own upstream git remotes (as declared in the PKGBUILD source), which is expected behavior for tracking devel updates. File operations are limited to the package's own state directory and build directory.

The `ls_remote_internal` function sets `GIT_TERMINAL_PROMPT=0` to prevent interactive prompts, which is a security/hygiene consideration but not malicious. The `#[cfg(feature = "mock")]` block is for testing only. No evidence of data exfiltration, unauthorized code execution, or supply chain attack behavior.
</details>
<summary>Standard paru devel tracking code, no malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/sync.rs, src/paru-2.1.0/src/config.rs, src/paru-2.1.0/Dockerfile, src/paru-2.1.0/src/pkgbuild.rs, src/paru-2.1.0/src/resolver.rs...
+ Reviewed src/paru-2.1.0/src/devel.rs. Status: SAFE -- Standard paru devel tracking code, no malicious behavior.
LLM auditresponse for resolver.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Rust module from the paru AUR helper package. It defines functions for building AUR dependency resolution flags and a resolver. All operations are normal library calls, I/O with stdin/stdout for user prompts, and configuration parsing. There is no obfuscated code, no network requests, no execution of untrusted content, and no signs of malicious injection. It is part of the expected upstream application code.
</details>
<summary>Standard AUR helper source, no malicious code found.</summary>
</security_assessment>

[5/10] Reviewing src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/sync.rs, src/paru-2.1.0/src/config.rs, src/paru-2.1.0/Dockerfile, src/paru-2.1.0/src/pkgbuild.rs...
+ Reviewed src/paru-2.1.0/src/resolver.rs. Status: SAFE -- Standard AUR helper source, no malicious code found.
LLM auditresponse for Dockerfile:
<security_assessment>
<decision>SAFE</decision>
<details>
The Dockerfile describes a standard multi-stage build for the paru AUR helper. It fetches official, well-known sources: the pacman library from `gitlab.archlinux.org`, the Rust toolchain from `sh.rustup.rs` (the official rustup installer), and the paru source code from the build context via `COPY`. All network destinations are expected and related to the package&#39;s own dependencies. The `curl | sh` pattern for Rust installation is the standard, trusted method for that toolchain and is not evidence of a supply-chain attack. No obfuscated commands, base64-encoded payloads, unexpected file writes, or data exfiltration are present. The final stage simply copies the built artifact out of the container. The file represents conventional packaging practices.
</details>
<summary>Standard Docker build for paru; no malicious code.</summary>
</security_assessment>

[6/10] Reviewing src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/sync.rs, src/paru-2.1.0/src/config.rs, src/paru-2.1.0/src/pkgbuild.rs...
+ Reviewed src/paru-2.1.0/Dockerfile. Status: SAFE -- Standard Docker build for paru; no malicious code.
LLM auditresponse for download.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file (`download.rs`) is part of the paru AUR helper source code. It implements standard functionality for an AUR helper: fetching PKGBUILDs from the AUR and Arch Linux repositories, displaying package information, and showing AUR comments. All network requests target official Arch/ AUR domains (`gitlab.archlinux.org`, `aur.archlinux.org`). External command execution (`pkgctl`, `bat`) is expected for the application's purpose. There is no obfuscated code, suspicious payloads, or data exfiltration. The code aligns with normal packaging and upstream functionality for a tool that manages AUR packages.
</details>
<summary>Standard AUR helper code, no malicious behavior.</summary>
</security_assessment>

[7/10] Reviewing src/paru-2.1.0/src/sync.rs, src/paru-2.1.0/src/config.rs, src/paru-2.1.0/src/pkgbuild.rs...
+ Reviewed src/paru-2.1.0/src/download.rs. Status: SAFE -- Standard AUR helper code, no malicious behavior.
LLM auditresponse for sync.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `sync.rs` is a standard Rust source file for the paru AUR helper. It contains functions for filtering and listing AUR packages by querying the official AUR endpoint (`packages.gz`) and local repositories. All network requests go to the expected AUR URL configured in `config.aur_url`. There is no obfuscated code, no use of dangerous commands (e.g., `eval`, `curl`, `base64`), no file operations outside normal packaging scope, and no signs of data exfiltration, backdoors, or system tampering. The code performs only routine operations for an AUR helper: fetching package lists, parsing them, and printing formatted output. No supply-chain attack indicators are present.
</details>
<summary>Routine AUR helper code; no security concerns.</summary>
</security_assessment>

[8/10] Reviewing src/paru-2.1.0/src/config.rs, src/paru-2.1.0/src/pkgbuild.rs...
+ Reviewed src/paru-2.1.0/src/sync.rs. Status: SAFE -- Routine AUR helper code; no security concerns.
LLM auditresponse for config.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This is standard configuration and initialization code for the paru AUR helper. It sets up default paths, parses configuration files, handles command-line arguments, and initializes ALPM and AUR API connections. All network requests are to the official Arch Linux and AUR endpoints (aur.archlinux.org, archlinux.org). No obfuscated code, no suspicious downloads, no unexpected system modifications. The file is consistent with its role as an AUR helper.
</details>
<summary>Standard paru configuration file, no security issues.</summary>
</security_assessment>

[9/10] Reviewing src/paru-2.1.0/src/pkgbuild.rs...
+ Reviewed src/paru-2.1.0/src/config.rs. Status: SAFE -- Standard paru configuration file, no security issues.
LLM auditresponse for pkgbuild.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Rust module for the `paru` AUR helper, responsible for managing PKGBUILD repositories. It performs routine operations: fetching AUR repos via `aur_fetch`, generating `.SRCINFO` by executing `makepkg --printsrcinfo`, and recursively scanning directories for PKGBUILD files. All network requests are directed to the AUR (`aur_fetch::Repo` sources), and file operations are confined to the package build directory. No obfuscated code, unexpected network destinations, or exfiltration mechanisms are present. The code is consistent with normal AUR helper functionality.
</details>
<summary>Standard AUR helper code, no malicious content.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/paru-2.1.0/src/pkgbuild.rs. Status: SAFE -- Standard AUR helper code, no malicious content.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: paru-2.1.0.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 61,457
  Completion Tokens: 7,420
  Total Tokens: 68,877
  Total Cost: $0.006867
  Execution Time: 94.37 seconds
Full audit report can be found in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-paru.txt
Final Status: SAFE


No issues found.


Audit Skips:

/tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-_zae31a9/paru-2.1.0.tar.gz: [SKIPPED] Skipping binary file: paru-2.1.0.tar.gz
