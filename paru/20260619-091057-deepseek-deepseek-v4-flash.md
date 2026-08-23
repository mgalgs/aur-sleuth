---
package: paru
pkgver: 2.1.0
pkgrel: 2
result: unsafe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 64253
completion_tokens: 11111
total_tokens: 75364
cost: 0.00778275
execution_time: 201.34
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T09:10:57Z
file_verdicts:
  - file: paru-2.1.0.tar.gz
    status: skipped
    summary: "Skipping binary file: paru-2.1.0.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no signs of malicious intent.
  - file: src/paru-2.1.0/src/main.rs
    status: safe
    summary: Standard Rust binary entry point; no security issues.
  - file: src/paru-2.1.0/src/command_line.rs
    status: safe
    summary: Standard argument parser; no malicious behavior detected.
  - file: src/paru-2.1.0/src/devel.rs
    status: safe
    summary: Standard devel tracking for VCS packages; no malicious behavior.
  - file: src/paru-2.1.0/src/clean.rs
    status: safe
    summary: Legitimate cache cleaning code, no malicious behavior.
  - file: src/paru-2.1.0/src/exec.rs
    status: safe
    summary: Standard AUR helper command execution code, no malicious behavior.
  - file: src/paru-2.1.0/src/pkgbuild.rs
    status: safe
    summary: No suspicious code; standard AUR helper functionality.
  - file: src/paru-2.1.0/Cargo.toml
    status: safe
    summary: Standard Rust dependency manifest, no malicious content.
  - file: src/paru-2.1.0/src/download.rs
    status: safe
    summary: Standard AUR helper code; no malicious behavior detected.
  - file: src/paru-2.1.0/src/config.rs
    status: safe
    summary: Standard Rust configuration code for an AUR helper, no malicious behavior.
  - file: src/paru-2.1.0/src/auth.rs
    status: unsafe
    summary: Multiple infinite loops cause denial of service, suspicious sudo bypass.
---

Cloning https://aur.archlinux.org/paru.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-xr0so4sp...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-xr0so4sp
Analyzing paru AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-xr0so4sp) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines a single source as a tarball from the project's official GitHub release (github.com/Morganamilo/paru/archive/v$pkgver.tar.gz). There are no top-level command substitutions, no `pkgver()` function, and no immediate code execution outside the `prepare()`, `build()`, or `package()` functions which are not run during the specified `makepkg` commands. The `source` array is fetched from the expected upstream URL, and the checksum is provided (not SKIP). No malicious or suspicious behavior is present in the global scope or in the source definition. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<summary>Standard PKGBUILD with no dangerous top-level code</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD with no dangerous top-level code[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, paru-2.1.0.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed paru-2.1.0.tar.gz. Status: SKIPPED -- Skipping binary file: paru-2.1.0.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is standard for a Rust-based AUR helper. It downloads a pinned tarball from the official GitHub repository with a checksum provided. All build and packaging steps use normal tools (`cargo`, `install`, `cp`). There are no suspicious network requests (only `cargo fetch` from crates.io), no obfuscated code, no execution of untrusted scripts, and no system modifications beyond installing the package. The `cargo update alpm alpm-utils` command updates dependencies within the lockfile but is followed by a locked fetch and frozen build, which is routine. No evidence of supply-chain attack or malicious behavior.
</details>
<summary>Standard AUR PKGBUILD with no signs of malicious intent.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no signs of malicious intent.
Reviewed all required files.
Deciding which files to review next...
Note: 301 files available for selection; offering the 50 highest-priority to the model. 50 lower-priority file(s) were not offered.
LLM response for file selection:
src/paru-2.1.0/Cargo.toml
src/paru-2.1.0/src/download.rs
src/paru-2.1.0/src/exec.rs
src/paru-2.1.0/src/pkgbuild.rs
src/paru-2.1.0/src/config.rs
src/paru-2.1.0/src/auth.rs
src/paru-2.1.0/src/devel.rs
src/paru-2.1.0/src/clean.rs
src/paru-2.1.0/src/command_line.rs
src/paru-2.1.0/src/main.rs
Decided to review 10 additional files: src/paru-2.1.0/Cargo.toml, src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/exec.rs, src/paru-2.1.0/src/pkgbuild.rs, src/paru-2.1.0/src/config.rs, src/paru-2.1.0/src/auth.rs, src/paru-2.1.0/src/devel.rs, src/paru-2.1.0/src/clean.rs, src/paru-2.1.0/src/command_line.rs, src/paru-2.1.0/src/main.rs
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/paru-2.1.0/Cargo.toml...
[0/10] Reviewing src/paru-2.1.0/Cargo.toml, src/paru-2.1.0/src/exec.rs...
[0/10] Reviewing src/paru-2.1.0/Cargo.toml, src/paru-2.1.0/src/exec.rs, src/paru-2.1.0/src/download.rs...
[0/10] Reviewing src/paru-2.1.0/Cargo.toml, src/paru-2.1.0/src/exec.rs, src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/config.rs...
[0/10] Reviewing src/paru-2.1.0/Cargo.toml, src/paru-2.1.0/src/exec.rs, src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/config.rs, src/paru-2.1.0/src/pkgbuild.rs...
[0/10] Reviewing src/paru-2.1.0/Cargo.toml, src/paru-2.1.0/src/exec.rs, src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/config.rs, src/paru-2.1.0/src/pkgbuild.rs, src/paru-2.1.0/src/devel.rs...
[0/10] Reviewing src/paru-2.1.0/Cargo.toml, src/paru-2.1.0/src/exec.rs, src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/config.rs, src/paru-2.1.0/src/pkgbuild.rs, src/paru-2.1.0/src/devel.rs, src/paru-2.1.0/src/auth.rs...
[0/10] Reviewing src/paru-2.1.0/Cargo.toml, src/paru-2.1.0/src/exec.rs, src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/config.rs, src/paru-2.1.0/src/pkgbuild.rs, src/paru-2.1.0/src/devel.rs, src/paru-2.1.0/src/auth.rs, src/paru-2.1.0/src/clean.rs...
[0/10] Reviewing src/paru-2.1.0/Cargo.toml, src/paru-2.1.0/src/exec.rs, src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/config.rs, src/paru-2.1.0/src/pkgbuild.rs, src/paru-2.1.0/src/devel.rs, src/paru-2.1.0/src/auth.rs, src/paru-2.1.0/src/clean.rs, src/paru-2.1.0/src/command_line.rs...
[0/10] Reviewing src/paru-2.1.0/Cargo.toml, src/paru-2.1.0/src/exec.rs, src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/config.rs, src/paru-2.1.0/src/pkgbuild.rs, src/paru-2.1.0/src/devel.rs, src/paru-2.1.0/src/auth.rs, src/paru-2.1.0/src/clean.rs, src/paru-2.1.0/src/command_line.rs, src/paru-2.1.0/src/main.rs...
LLM auditresponse for main.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the standard entry point for a Rust binary application. It collects command-line arguments, delegates execution to the `paru::run` function, and exits with the returned status code. There are no suspicious network requests, obfuscated code, file operations, or system modifications. The code is minimal and performs exactly what is expected of a main.rs in a Rust project. No evidence of malicious or unsafe behavior.
</details>
<summary>Standard Rust binary entry point; no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/paru-2.1.0/Cargo.toml, src/paru-2.1.0/src/exec.rs, src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/config.rs, src/paru-2.1.0/src/pkgbuild.rs, src/paru-2.1.0/src/devel.rs, src/paru-2.1.0/src/auth.rs, src/paru-2.1.0/src/clean.rs, src/paru-2.1.0/src/command_line.rs...
+ Reviewed src/paru-2.1.0/src/main.rs. Status: SAFE -- Standard Rust binary entry point; no security issues.
LLM auditresponse for command_line.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a command-line argument parser for the paru AUR helper. It maps parsed flags (e.g., `--aururl`, `--makepkg`, `--sudo`, `--chroot`) to configuration fields using standard Rust match arms. There are no hidden network requests, obfuscated code, backdoors, or unexpected system modifications. The handling of binary paths and flags (e.g., `split_whitespace` on user-supplied arguments) is normal for a configurable package manager. All operations are confined to initializing the program's internal state; no commands are executed or data exfiltrated. The file is consistent with secure, standard packaging practices.
</details>
<summary>Standard argument parser; no malicious behavior detected.</summary>
</security_assessment>

[2/10] Reviewing src/paru-2.1.0/Cargo.toml, src/paru-2.1.0/src/exec.rs, src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/config.rs, src/paru-2.1.0/src/pkgbuild.rs, src/paru-2.1.0/src/devel.rs, src/paru-2.1.0/src/auth.rs, src/paru-2.1.0/src/clean.rs...
+ Reviewed src/paru-2.1.0/src/command_line.rs. Status: SAFE -- Standard argument parser; no malicious behavior detected.
LLM auditresponse for devel.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements development version tracking for VCS packages (e.g., `-git` packages) in the paru AUR helper. It performs `git ls-remote` to check for new commits on the package's declared upstream repository, stores commit hashes in a local TOML state file, and compares them to detect updates. All network requests go to the package's own upstream URLs as specified in the source array. The code sets `GIT_TERMINAL_PROMPT=0` to avoid interactive prompts and uses a 15-second timeout. There is no obfuscation, no execution of fetched content (only commit hash comparison), no exfiltration of data, and no modification of system files outside the state directory. The `mock` feature for testing is standard. This is normal, expected behavior for an AUR helper supporting VCS packages.
</details>
<summary>Standard devel tracking for VCS packages; no malicious behavior.</summary>
</security_assessment>

[3/10] Reviewing src/paru-2.1.0/Cargo.toml, src/paru-2.1.0/src/exec.rs, src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/config.rs, src/paru-2.1.0/src/pkgbuild.rs, src/paru-2.1.0/src/auth.rs, src/paru-2.1.0/src/clean.rs...
+ Reviewed src/paru-2.1.0/src/devel.rs. Status: SAFE -- Standard devel tracking for VCS packages; no malicious behavior.
LLM auditresponse for clean.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard cache cleaning module for the paru AUR helper. It removes old AUR package clones and diffs, and runs `git reset --hard HEAD` and `git clean -fx` on package directories to clean untracked files. All operations are confined to the configured clone and diff directories, and user confirmation is required before cleaning. There is no obfuscated code, no network requests, no execution of untrusted content, and no exfiltration of data. The use of user-configurable `git_bin` and `git_flags` is a design feature of paru, not an injection in this file. The code performs only its intended cache-cleaning functionality.
</details>
<summary>Legitimate cache cleaning code, no malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing src/paru-2.1.0/Cargo.toml, src/paru-2.1.0/src/exec.rs, src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/config.rs, src/paru-2.1.0/src/pkgbuild.rs, src/paru-2.1.0/src/auth.rs...
+ Reviewed src/paru-2.1.0/src/clean.rs. Status: SAFE -- Legitimate cache cleaning code, no malicious behavior.
LLM auditresponse for exec.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file (`exec.rs`) is a standard Rust source file for the `paru` AUR helper. It provides command execution wrappers for `pacman`, `makepkg`, and `sudo` with signal handling, lock waiting, and a sudo keep‑alive loop. All system commands (pacman, makepkg, sudo) are invoked using the standard `std::process::Command` API and their paths/flags come from the package configuration – this is expected behaviour for an AUR helper.

There is no evidence of malicious code: no obfuscated or encoded commands, no unexpected network requests, no data exfiltration, no backdoors, and no execution of attacker‑controlled content. The sudo loop (calling `sudo -v` every 250 seconds) is a common pattern to maintain root privileges during a build session. The `wait_for_lock` function merely polls for the pacman database lock file, which is a normal safety check.

While the file uses mutable configuration values (`sudo_bin`, `sudo_flags`, `mflags`, `makepkg_bin`, etc.), those are supplied by the user’s `paru` configuration file and are not under the attacker’s control solely from this file. The entire file is consistent with a legitimate AUR helper implementation and does not introduce any supply‑chain risk.
</details>
<summary>Standard AUR helper command execution code, no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing src/paru-2.1.0/Cargo.toml, src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/config.rs, src/paru-2.1.0/src/pkgbuild.rs, src/paru-2.1.0/src/auth.rs...
+ Reviewed src/paru-2.1.0/src/exec.rs. Status: SAFE -- Standard AUR helper command execution code, no malicious behavior.
LLM auditresponse for pkgbuild.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `pkgbuild.rs` is a standard Rust module for the `paru` AUR helper. It implements functionality for handling PKGBUILD repositories: downloading from AUR (via `aur_fetch`), generating `.SRCINFO` files by running `makepkg --printsrcinfo`, and parsing them. All operations are normal for an AUR helper: the network fetches target AUR URLs, file operations are confined to package directories, and the only external command executed is `makepkg --printsrcinfo` (a standard Arch packaging tool). There is no base64/hex obfuscation, no `eval`, no unexpected network destinations, no data exfiltration, and no tampering with system files outside the package scope. The `review` call for user confirmation before merging is expected behavior. No supply-chain attack indicators are present.
</details>
<summary>No suspicious code; standard AUR helper functionality.</summary>
</security_assessment>

[6/10] Reviewing src/paru-2.1.0/Cargo.toml, src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/config.rs, src/paru-2.1.0/src/auth.rs...
+ Reviewed src/paru-2.1.0/src/pkgbuild.rs. Status: SAFE -- No suspicious code; standard AUR helper functionality.
LLM auditresponse for Cargo.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `Cargo.toml` manifest file for the Rust project `paru`, an AUR helper. It contains only metadata (name, version, authors, description, license) and a list of dependencies with pinned versions from `crates.io`, which is the official Rust package registry. There are no executable commands, no network requests to suspicious hosts, no obfuscation, and no system-modifying operations. The commented-out `[patch.crates-io]` section is a normal development pattern for pointing to local copies during development and is harmless. No security issues are present.
</details>
<summary>Standard Rust dependency manifest, no malicious content.</summary>
</security_assessment>

[7/10] Reviewing src/paru-2.1.0/src/download.rs, src/paru-2.1.0/src/config.rs, src/paru-2.1.0/src/auth.rs...
+ Reviewed src/paru-2.1.0/Cargo.toml. Status: SAFE -- Standard Rust dependency manifest, no malicious content.
LLM auditresponse for download.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `download.rs` is a standard AUR helper component (part of the paru package) that handles downloading PKGBUILDs, fetching package information, and displaying comments. All network requests target official Arch Linux sources (gitlab.archlinux.org and the configured AUR URL). Command execution is limited to `pkgctl` (standard Arch tool for repo PKGBUILD cloning) and `bat` (a syntax highlighter). No suspicious or obfuscated code, unexpected file operations, or exfiltration mechanisms exist. The code follows typical AUR helper patterns and does not exhibit any malicious or supply-chain attack indicators.
</details>
<summary>Standard AUR helper code; no malicious behavior detected.</summary>
</security_assessment>

[8/10] Reviewing src/paru-2.1.0/src/config.rs, src/paru-2.1.0/src/auth.rs...
+ Reviewed src/paru-2.1.0/src/download.rs. Status: SAFE -- Standard AUR helper code; no malicious behavior detected.
LLM auditresponse for config.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration parser for the paru AUR helper. It handles command-line arguments, configuration file parsing (INI format), initialization of ALPM and AUR RPC clients, and setup of build directories and git fetchers. All network destinations are official Arch Linux domains (aur.archlinux.org, archlinux.org). There is no obfuscated code, base64/hidden strings, eval-style execution, or unexpected system modifications. The config parsing includes an `Include` directive that reads arbitrary files (a standard INI feature), but this is expected user-configuration behavior and not injected malicious code. The file performs no data exfiltration, no remote code execution from untrusted hosts, and no backdoors. It follows typical AUR helper code patterns.
</details>
<summary>Standard Rust configuration code for an AUR helper, no malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/paru-2.1.0/src/auth.rs...
+ Reviewed src/paru-2.1.0/src/config.rs. Status: SAFE -- Standard Rust configuration code for an AUR helper, no malicious behavior.
LLM auditresponse for auth.rs:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The file contains multiple deliberate infinite loops (`loop {}`) at critical points in the authentication pipeline, which will cause the program to hang indefinitely and never complete its intended function. Specifically:
- In `LazyPipe::run`, after obtaining the pipe, an infinite loop prevents any write or completion.
- In `spawn_auth`, immediately after spawning the child process, an infinite loop prevents the parent from reading the pipe and returning.
- In `authpipe`, after printing the file descriptors, an infinite loop before the main write loop prevents any communication.

Additionally, the code **comments out** the original sudo invocation (`Command::new(&amp;config.sudo_bin) ...`) and instead spawns the current executable directly with `--authpipe`, bypassing privilege escalation. Combined with the hangs, this suggests intentional disruption of the authentication flow—either as a denial-of-service vector or as a placeholder for more malicious injection. The infinite loops are not merely debugging artifacts (they appear in three separate functions) and render the `paru` authentication non-functional, which qualifies as a supply-chain attack against the package’s expected behavior.
</details>
<summary>Multiple infinite loops cause denial of service, suspicious sudo bypass.</summary>
</security_assessment>

[10/10] Reviewing ...
x Reviewed src/paru-2.1.0/src/auth.rs. Status: UNSAFE -- Multiple infinite loops cause denial of service, suspicious sudo bypass.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: Unsafe -- DO NOT INSTALL!
# Issues (1 total)

## auth.rs

Status: UNSAFE

Summary: Multiple infinite loops cause denial of service, suspicious sudo bypass.

Details:

The file contains multiple deliberate infinite loops (`loop {}`) at critical points in the authentication pipeline, which will cause the program to hang indefinitely and never complete its intended function. Specifically:
- In `LazyPipe::run`, after obtaining the pipe, an infinite loop prevents any write or completion.
- In `spawn_auth`, immediately after spawning the child process, an infinite loop prevents the parent from reading the pipe and returning.
- In `authpipe`, after printing the file descriptors, an infinite loop before the main write loop prevents any communication.

Additionally, the code **comments out** the original sudo invocation (`Command::new(&config.sudo_bin) ...`) and instead spawns the current executable directly with `--authpipe`, bypassing privilege escalation. Combined with the hangs, this suggests intentional disruption of the authentication flow—either as a denial-of-service vector or as a placeholder for more malicious injection. The infinite loops are not merely debugging artifacts (they appear in three separate functions) and render the `paru` authentication non-functional, which qualifies as a supply-chain attack against the package’s expected behavior.

---

(Skipped 1 file: paru-2.1.0.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 64,253
  Completion Tokens: 11,111
  Total Tokens: 75,364
  Total Cost: $0.007783
  Execution Time: 201.34 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-paru.txt
Final Status: UNSAFE


Issues Found:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-xr0so4sp/src/paru-2.1.0/src/auth.rs: [UNSAFE] Multiple infinite loops cause denial of service, suspicious sudo bypass. / The file contains multiple deliberate infinite loops (`loop {}`) at critical points in the authentication pipeline, which will cause the program to hang indefinitely and never complete its intended function. Specifically:
- In `LazyPipe::run`, after obtaining the pipe, an infinite loop prevents any write or completion.
- In `spawn_auth`, immediately after spawning the child process, an infinite loop prevents the parent from reading the pipe and returning.
- In `authpipe`, after printing the file descriptors, an infinite loop before the main write loop prevents any communication.

Additionally, the code **comments out** the original sudo invocation (`Command::new(&config.sudo_bin) ...`) and instead spawns the current executable directly with `--authpipe`, bypassing privilege escalation. Combined with the hangs, this suggests intentional disruption of the authentication flow—either as a denial-of-service vector or as a placeholder for more malicious injection. The infinite loops are not merely debugging artifacts (they appear in three separate functions) and render the `paru` authentication non-functional, which qualifies as a supply-chain attack against the package’s expected behavior.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-xr0so4sp/paru-2.1.0.tar.gz: [SKIPPED] Skipping binary file: paru-2.1.0.tar.gz
