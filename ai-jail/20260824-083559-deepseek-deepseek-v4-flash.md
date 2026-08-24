---
package: ai-jail
pkgver: 1.20.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 56580919ea5cd225cb34031d0932798021e4a0d8
prompt_tokens: 84981
completion_tokens: 8762
total_tokens: 93743
cost: 0.0058837870
execution_time: 119.25
files_reviewed: 11
files_skipped: 1
files_unauditable: 0
unpinned_sources: 0
date: 2026-08-24T08:35:59Z
file_verdicts:
  - file: ai-jail-1.20.0.tar.gz
    status: skipped
    summary: "Skipping binary file: ai-jail-1.20.0.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard Rust PKGBUILD with pinned source, no threats.
  - file: src/ai-jail-1.20.0/dist/desktop/ai-jail-chromium.desktop
    status: safe
    summary: Standard desktop entry file; no security issues.
  - file: src/ai-jail-1.20.0/packaging/aur/publish.sh
    status: safe
    summary: Standard AUR publishing script, no malice.
  - file: src/ai-jail-1.20.0/dist/desktop/ai-jail-chromium
    status: safe
    summary: Non-malicious launcher script for ai-jail chromium.
  - file: src/ai-jail-1.20.0/Cargo.toml
    status: safe
    summary: Standard Cargo.toml; no security issues found.
  - file: src/ai-jail-1.20.0/packaging/aur/PKGBUILD-bin
    status: safe
    summary: Standard PKGBUILD, no malicious content detected.
  - file: src/ai-jail-1.20.0/src/config.rs
    status: safe
    summary: Normal configuration module for a sandboxing application.
  - file: src/ai-jail-1.20.0/src/command.rs
    status: safe
    summary: No malicious behavior; file contains benign command-line parsing logic only.
  - file: src/ai-jail-1.20.0/src/main.rs
    status: safe
    summary: Legitimate sandbox application source code, no malice found.
  - file: src/ai-jail-1.20.0/src/bootstrap.rs
    status: safe
    summary: Legitimate upstream configuration bootstrapper with strong security practices.
  - file: src/ai-jail-1.20.0/src/sandbox/bwrap.rs
    status: safe
    summary: Legitimate sandbox implementation with secure path validation.
---

Cloning https://aur.archlinux.org/ai-jail.git...
Cloned ai-jail
Analyzing ai-jail AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD source is a standard tarball from the project's GitHub releases page. Top-level code consists only of variable definitions and comments. There is no `pkgver()` function, no command substitution in global scope, and no network requests beyond the defined source. No obfuscation, encoding, or dangerous commands (eval, curl, wget) exist in the global scope. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only fetch the source archive and parse the PKGBUILD, which is safe.
</details>
<evidence></evidence>
<summary>No malicious code at top level; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code at top level; sourcing is safe.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, ai-jail-1.20.0.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed ai-jail-1.20.0.tar.gz. Status: SKIPPED -- Skipping binary file: ai-jail-1.20.0.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch Linux packaging conventions for a Rust-based application. All sources are pinned via a specific tarball URL and a concrete SHA-256 checksum, ensuring integrity. The build and packaging steps use `cargo build --frozen` and standard `install` commands, which are routine and non-malicious. No obfuscated commands, unexpected network requests, or file operations outside the package scope are present. The presence of `!debug` is a normal packaging option to avoid empty debug packages. There is no evidence of supply-chain attack code or any deviation from expected behavior for an AUR PKGBUILD.
</details>
<evidence></evidence>
<summary>Standard Rust PKGBUILD with pinned source, no threats.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust PKGBUILD with pinned source, no threats.
Reviewed all required files.
Deciding which files to review next...
Note: 101 files available for selection; offering the 50 highest-priority to the model. 50 lower-priority file(s) were not offered.
LLM response for file selection:
src/ai-jail-1.20.0/dist/desktop/ai-jail-chromium.desktop
src/ai-jail-1.20.0/dist/desktop/ai-jail-chromium
src/ai-jail-1.20.0/packaging/aur/publish.sh
src/ai-jail-1.20.0/packaging/aur/PKGBUILD-bin
src/ai-jail-1.20.0/Cargo.toml
src/ai-jail-1.20.0/src/main.rs
src/ai-jail-1.20.0/src/command.rs
src/ai-jail-1.20.0/src/config.rs
src/ai-jail-1.20.0/src/bootstrap.rs
src/ai-jail-1.20.0/src/sandbox/bwrap.rs
Decided to review 10 additional files: src/ai-jail-1.20.0/dist/desktop/ai-jail-chromium.desktop, src/ai-jail-1.20.0/dist/desktop/ai-jail-chromium, src/ai-jail-1.20.0/packaging/aur/publish.sh, src/ai-jail-1.20.0/packaging/aur/PKGBUILD-bin, src/ai-jail-1.20.0/Cargo.toml, src/ai-jail-1.20.0/src/main.rs, src/ai-jail-1.20.0/src/command.rs, src/ai-jail-1.20.0/src/config.rs, src/ai-jail-1.20.0/src/bootstrap.rs, src/ai-jail-1.20.0/src/sandbox/bwrap.rs
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/ai-jail-1.20.0/dist/desktop/ai-jail-chromium.desktop...
[0/10] Reviewing src/ai-jail-1.20.0/dist/desktop/ai-jail-chromium.desktop, src/ai-jail-1.20.0/dist/desktop/ai-jail-chromium...
[0/10] Reviewing src/ai-jail-1.20.0/dist/desktop/ai-jail-chromium.desktop, src/ai-jail-1.20.0/dist/desktop/ai-jail-chromium, src/ai-jail-1.20.0/packaging/aur/publish.sh...
LLM auditresponse for ai-jail-chromium.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file that defines a launcher entry for a sandboxed Chromium browser. It contains only metadata fields (Name, GenericName, Comment, Exec, Icon, Categories, MimeType, Keywords, etc.) and contains no executable code, network requests, obfuscation, or system modifications. The `Exec` line invokes `ai-jail-chromium`, which is the expected wrapper script provided by the package. There is no evidence of malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>Standard desktop entry file; no security issues.</summary>
</security_assessment>

[0/10] Reviewing src/ai-jail-1.20.0/dist/desktop/ai-jail-chromium.desktop, src/ai-jail-1.20.0/dist/desktop/ai-jail-chromium, src/ai-jail-1.20.0/packaging/aur/publish.sh, src/ai-jail-1.20.0/packaging/aur/PKGBUILD-bin...
[1/10] Reviewing src/ai-jail-1.20.0/dist/desktop/ai-jail-chromium, src/ai-jail-1.20.0/packaging/aur/publish.sh, src/ai-jail-1.20.0/packaging/aur/PKGBUILD-bin...
+ Reviewed src/ai-jail-1.20.0/dist/desktop/ai-jail-chromium.desktop. Status: SAFE -- Standard desktop entry file; no security issues.
LLM auditresponse for publish.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR publishing helper script. It performs routine operations: cloning the official AUR repositories via SSH, copying PKGBUILD files, running `makepkg --verifysource` to validate checksums, regenerating `.SRCINFO`, and optionally committing/pushing to the AUR. The only network requests are to the package's own GitHub release page (to verify the tag exists) and to the official AUR SSH endpoint—both expected and legitimate. There is no obfuscated code, no execution of fetched content beyond `makepkg` (which is the intended build tool), and no exfiltration of sensitive data. The script is a maintainer convenience tool and does not contain any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard AUR publishing script, no malice.</summary>
</security_assessment>

[1/10] Reviewing src/ai-jail-1.20.0/dist/desktop/ai-jail-chromium, src/ai-jail-1.20.0/packaging/aur/publish.sh, src/ai-jail-1.20.0/packaging/aur/PKGBUILD-bin, src/ai-jail-1.20.0/Cargo.toml...
[2/10] Reviewing src/ai-jail-1.20.0/dist/desktop/ai-jail-chromium, src/ai-jail-1.20.0/packaging/aur/PKGBUILD-bin, src/ai-jail-1.20.0/Cargo.toml...
+ Reviewed src/ai-jail-1.20.0/packaging/aur/publish.sh. Status: SAFE -- Standard AUR publishing script, no malice.
LLM auditresponse for ai-jail-chromium:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward launcher for the `ai-jail` tool with the Chromium browser. It sets up a working directory, adjusts the PATH to ensure the tool can be found (including mise shims and standard paths), and then executes `ai-jail --browser=soft chromium "$@"` if the command is available. There is no network activity, no code downloads, no obfuscation, and no manipulation of system files or data outside the application’s scope. The environment modifications are typical for a launcher script that may run outside an interactive shell. No evidence of malicious or supply-chain attack behavior.
</details>
<evidence>
</evidence>
<summary>Non-malicious launcher script for ai-jail chromium.</summary>
</security_assessment>

[2/10] Reviewing src/ai-jail-1.20.0/dist/desktop/ai-jail-chromium, src/ai-jail-1.20.0/packaging/aur/PKGBUILD-bin, src/ai-jail-1.20.0/Cargo.toml, src/ai-jail-1.20.0/src/main.rs...
[3/10] Reviewing src/ai-jail-1.20.0/packaging/aur/PKGBUILD-bin, src/ai-jail-1.20.0/Cargo.toml, src/ai-jail-1.20.0/src/main.rs...
+ Reviewed src/ai-jail-1.20.0/dist/desktop/ai-jail-chromium. Status: SAFE -- Non-malicious launcher script for ai-jail chromium.
LLM auditresponse for Cargo.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Cargo.toml manifest for the ai-jail Rust project. It declares package metadata, dependencies, and build profiles. All dependencies (lexopt, serde, toml, serde_json, vt100, nix, landlock, seccompiler) are relevant to the stated purpose of a sandboxing tool for AI agents. There is no obfuscated code, network requests, unusual system modifications, or any instructions that could execute arbitrary commands. The content is entirely declarative and follows normal packaging conventions.
</details>
<evidence></evidence>
<summary>Standard Cargo.toml; no security issues found.</summary>
</security_assessment>

[3/10] Reviewing src/ai-jail-1.20.0/packaging/aur/PKGBUILD-bin, src/ai-jail-1.20.0/Cargo.toml, src/ai-jail-1.20.0/src/main.rs, src/ai-jail-1.20.0/src/command.rs...
[4/10] Reviewing src/ai-jail-1.20.0/packaging/aur/PKGBUILD-bin, src/ai-jail-1.20.0/src/main.rs, src/ai-jail-1.20.0/src/command.rs...
+ Reviewed src/ai-jail-1.20.0/Cargo.toml. Status: SAFE -- Standard Cargo.toml; no security issues found.
LLM auditresponse for PKGBUILD-bin:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package for distributing a prebuilt binary (`ai-jail-bin`). It downloads the binary tarball and documentation from the official GitHub releases URL (`https://github.com/akitaonrails/ai-jail/releases/download/...`). All source files have pinned SHA-256 checksums (no `SKIP`). The `package()` function only installs the binary and documentation/license files using `install`. There are no suspicious operations: no `eval`, `base64`, `curl|bash`, network exfiltration, obfuscated code, or modifications to system files outside the package scope. The behavior is entirely consistent with normal AUR packaging practices for a prebuilt binary.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD, no malicious content detected.</summary>
</security_assessment>

[4/10] Reviewing src/ai-jail-1.20.0/packaging/aur/PKGBUILD-bin, src/ai-jail-1.20.0/src/main.rs, src/ai-jail-1.20.0/src/command.rs, src/ai-jail-1.20.0/src/config.rs...
[5/10] Reviewing src/ai-jail-1.20.0/src/main.rs, src/ai-jail-1.20.0/src/command.rs, src/ai-jail-1.20.0/src/config.rs...
+ Reviewed src/ai-jail-1.20.0/packaging/aur/PKGBUILD-bin. Status: SAFE -- Standard PKGBUILD, no malicious content detected.
LLM auditresponse for config.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the configuration module for the ai-jail sandboxing tool. It contains standard Rust code for parsing TOML config files, managing mount maps, handling environment variable filtering, and merging trusted vs untrusted configuration layers. All network-related features (e.g., `update_check`) are explicitly opt-in and belong to the application's upstream functionality. No obfuscated code, unexpected network requests, or arbitrary command execution is present. The file implements security-conscious path resolution (symlink validation, tilde expansion, containment checks) which is expected for a sandbox tool. The extensive test suite at the bottom validates these behaviors. There is no evidence of supply-chain attack.
</details>
<evidence></evidence>
<summary>Normal configuration module for a sandboxing application.</summary>
</security_assessment>

[5/10] Reviewing src/ai-jail-1.20.0/src/main.rs, src/ai-jail-1.20.0/src/command.rs, src/ai-jail-1.20.0/src/config.rs, src/ai-jail-1.20.0/src/bootstrap.rs...
[6/10] Reviewing src/ai-jail-1.20.0/src/main.rs, src/ai-jail-1.20.0/src/command.rs, src/ai-jail-1.20.0/src/bootstrap.rs...
+ Reviewed src/ai-jail-1.20.0/src/config.rs. Status: SAFE -- Normal configuration module for a sandboxing application.
LLM auditresponse for command.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Rust module that inspects command-line arguments to identify AI harnesses invoked via the `ai-memory run` wrapper. It parses argv locally, never executes external commands, performs no network I/O, and does not modify files. It only extracts and canonicalizes command names for policy and terminal behavior. The code is well-structured, documented, and includes unit tests. No evidence of injected malicious behavior, exfiltration, obfuscation, or unexpected system modifications. The file follows standard application logic consistent with the package's stated purpose.
</details>
<evidence>
</evidence>
<summary>
No malicious behavior; file contains benign command-line parsing logic only.
</summary>
</security_assessment>

[6/10] Reviewing src/ai-jail-1.20.0/src/main.rs, src/ai-jail-1.20.0/src/command.rs, src/ai-jail-1.20.0/src/bootstrap.rs, src/ai-jail-1.20.0/src/sandbox/bwrap.rs...
[7/10] Reviewing src/ai-jail-1.20.0/src/main.rs, src/ai-jail-1.20.0/src/bootstrap.rs, src/ai-jail-1.20.0/src/sandbox/bwrap.rs...
+ Reviewed src/ai-jail-1.20.0/src/command.rs. Status: SAFE -- No malicious behavior; file contains benign command-line parsing logic only.
LLM auditresponse for main.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the main Rust entry point for the `ai-jail` sandbox application. It contains standard packaging and execution logic: parsing CLI arguments, merging configuration from project and global files, applying browser profiles, setting up a PTY proxy, running sandbox tools (Landlock, seccomp, bwrap), and managing child processes. All network activity is limited to an opt-in update check (default off) that only activates with the status bar and explicit user configuration. File operations are confined to the application's own configuration files (`.ai-jail` in the project directory and `$HOME/.ai-jail`) and temporary sandbox resources. There is no obfuscated code, no unexpected network requests to unrelated hosts, no exfiltration of sensitive data, and no execution of attacker-controlled code. The code is consistent with the stated purpose of a security tool that restricts AI command-line tools.
</details>
<evidence></evidence>
<summary>Legitimate sandbox application source code, no malice found.</summary>
</security_assessment>

[8/10] Reviewing src/ai-jail-1.20.0/src/bootstrap.rs, src/ai-jail-1.20.0/src/sandbox/bwrap.rs...
+ Reviewed src/ai-jail-1.20.0/src/main.rs. Status: SAFE -- Legitimate sandbox application source code, no malice found.
LLM auditresponse for bootstrap.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is part of the ai-jail project (an upstream application), not an AUR packaging script. Its purpose is to bootstrap security policies for AI tools (Gemini, Claude, Codex, OpenCode, Crush) by writing configuration files to `$HOME` directories. The code is well-structured and includes multiple security hardening measures:

- **Fail‑closed HOME resolution** – refuses to run if `$HOME` is unset, empty, relative, missing, or foreign‑owned; no `/tmp` fallback.
- **Symlink attack protection** – `ensure_regular_file_or_absent` rejects symlink targets.
- **Atomic writes** with `0o600` permissions.
- **Backup before overwrite** with symlink verification on the backup path.
- **`trusted_claude_dir`** – prevents writing Claude config into the current project directory (project‑controlled paths are treated as untrusted).

The `ALLOW`/`DENY`/`ASK` lists are policy rules for the *AI tools' own bash execution*, not commands executed by this code. `curl`, `WebSearch`, and `WebFetch` appear in the allow list as tool permissions, not as operations performed by the bootstrapper. No network requests, code downloads, obfuscated commands, or data exfiltration are present. The `unsafe { nix::libc::getuid() }` call is used only for verifying HOME directory ownership.

All operations are confined to `$HOME` and are consistent with the package's stated purpose of configuring AI sandbox policies. There is no malicious behavior or supply‑chain attack evidence.
</details>
<evidence></evidence>
<summary>Legitimate upstream configuration bootstrapper with strong security practices.</summary>
</security_assessment>

[9/10] Reviewing src/ai-jail-1.20.0/src/sandbox/bwrap.rs...
+ Reviewed src/ai-jail-1.20.0/src/bootstrap.rs. Status: SAFE -- Legitimate upstream configuration bootstrapper with strong security practices.
LLM auditresponse for bwrap.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a legitimate sandbox implementation that constructs bubblewrap (bwrap) command-line arguments. It implements secure path validation for the bwrap binary using ownership and permission checks, creates temporary files securely for /etc/hosts and /etc/resolv.conf overrides, and builds filesystem isolation mounts. The code handles environment variable filtering, Nix store detection, DNS configuration with split-DNS awareness, and Landlock integration. All operations are standard sandbox preparation and execution — creating temp files, reading system configuration files, and constructing bwrap mount/isolation arguments. No network requests, obfuscated code, backdoors, or exfiltration is present. The file performs exactly the operations expected of a sandbox manager: validating its dependencies, preparing container mounts, and executing the sandboxed command.
</details>
<evidence></evidence>
<summary>Legitimate sandbox implementation with secure path validation.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/ai-jail-1.20.0/src/sandbox/bwrap.rs. Status: SAFE -- Legitimate sandbox implementation with secure path validation.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: ai-jail-1.20.0.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 84,981
  Completion Tokens: 8,762
  Total Tokens: 93,743
  Total Cost: $0.005884
  Execution Time: 119.25 seconds

Final Status: SAFE


No issues found.


Audit Skips:

ai-jail-1.20.0.tar.gz: [SKIPPED] Skipping binary file: ai-jail-1.20.0.tar.gz
