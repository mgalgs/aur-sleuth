---
package: shell-mcp
pkgver: 0.1.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3aa684c47f9b6bac5667ff3cee413c3a000b1b0d
prompt_tokens: 40570
completion_tokens: 6358
total_tokens: 46928
cost: 0.00290195556
execution_time: 88.75
files_reviewed: 10
files_skipped: 1
files_unauditable: 0
unpinned_sources: 0
date: 2026-08-23T03:24:47Z
file_verdicts:
  - file: shell-mcp-0.1.1.tar.gz
    status: skipped
    summary: "Skipping binary file: shell-mcp-0.1.1.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Clean, standard Rust crate PKGBUILD.
  - file: src/shell-mcp-0.1.1/src/exec.rs
    status: safe
    summary: Clean process execution module, no security concerns.
  - file: src/shell-mcp-0.1.1/src/safety.rs
    status: safe
    summary: Legitimate safety implementation, no malicious content.
  - file: src/shell-mcp-0.1.1/src/allowlist.rs
    status: safe
    summary: No malicious code found; standard allowlist implementation.
  - file: src/shell-mcp-0.1.1/src/root.rs
    status: safe
    summary: Legitimate root resolution module, no malicious code.
  - file: src/shell-mcp-0.1.1/src/config.rs
    status: safe
    summary: Standard config loader with no malicious behavior
  - file: src/shell-mcp-0.1.1/src/lib.rs
    status: safe
    summary: Standard Rust library; no malicious code.
  - file: src/shell-mcp-0.1.1/src/main.rs
    status: safe
    summary: No malicious behavior found, standard Rust entry point.
  - file: src/shell-mcp-0.1.1/Cargo.toml
    status: safe
    summary: Standard Rust project config, no malicious content.
  - file: src/shell-mcp-0.1.1/src/tools.rs
    status: safe
    summary: Clean Rust code; no security concerns found.
---

Cloning https://aur.archlinux.org/shell-mcp.git...
Cloned shell-mcp
Analyzing shell-mcp AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD has no code executing in global scope or in `pkgver()` (not defined) that could perform any malicious action. The `source` array downloads a `.crate` file from `static.crates.io` (the official crates.io CDN) with a pinned BLAKE2b checksum. The `prepare()`, `build()`, `check()`, and `package()` functions are not executed during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. No obfuscation, network requests to untrusted hosts, or dangerous commands are present. The file follows standard AUR packaging practices for a Rust crate.
</details>
<summary>No dangerous code in global scope or pkgver()</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope or pkgver()
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, shell-mcp-0.1.1.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed shell-mcp-0.1.1.tar.gz. Status: SKIPPED -- Skipping binary file: shell-mcp-0.1.1.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard, well-structured build script for a Rust crate from the official crates.io registry. The source is fetched from `static.crates.io` with a valid BLAKE2b checksum (not SKIP). All build steps (`cargo fetch --locked`, `cargo build --frozen`, `cargo test --frozen`, and binary installation) follow normal Arch packaging conventions for Rust projects. There are no unusual network calls, obfuscated code, dangerous command invocations (curl, wget, eval, base64), or file operations outside the package build directory. No evidence of supply-chain tampering or malicious intent.
</details>
<summary>Clean, standard Rust crate PKGBUILD.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean, standard Rust crate PKGBUILD.
Reviewed all required files.
Deciding which files to review next...
LLM response for file selection:
src/shell-mcp-0.1.1/src/exec.rs
src/shell-mcp-0.1.1/src/config.rs
src/shell-mcp-0.1.1/src/safety.rs
src/shell-mcp-0.1.1/src/allowlist.rs
src/shell-mcp-0.1.1/src/root.rs
src/shell-mcp-0.1.1/src/tools.rs
src/shell-mcp-0.1.1/src/lib.rs
src/shell-mcp-0.1.1/src/main.rs
src/shell-mcp-0.1.1/Cargo.toml
Decided to review 9 additional files: src/shell-mcp-0.1.1/src/exec.rs, src/shell-mcp-0.1.1/src/config.rs, src/shell-mcp-0.1.1/src/safety.rs, src/shell-mcp-0.1.1/src/allowlist.rs, src/shell-mcp-0.1.1/src/root.rs, src/shell-mcp-0.1.1/src/tools.rs, src/shell-mcp-0.1.1/src/lib.rs, src/shell-mcp-0.1.1/src/main.rs, src/shell-mcp-0.1.1/Cargo.toml
Reviewing additional files...
Reviewing additional files...
[0/9] Reviewing src/shell-mcp-0.1.1/src/exec.rs...
[0/9] Reviewing src/shell-mcp-0.1.1/src/exec.rs, src/shell-mcp-0.1.1/src/safety.rs...
[0/9] Reviewing src/shell-mcp-0.1.1/src/exec.rs, src/shell-mcp-0.1.1/src/safety.rs, src/shell-mcp-0.1.1/src/config.rs...
LLM auditresponse for exec.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `exec.rs` is a standard Rust module for executing commands with controlled capture of stdout and stderr. It uses `tokio::process::Command` with no shell invocation, which avoids shell injection risks. There are no network requests, no obfuscation, no unusual file operations, and no attempts to exfiltrate data or execute untrusted code. All operations are confined to running the specified program with the given arguments and capturing its output, with per-stream caps for safety. The code is clean and follows normal Rust packaging practices for process execution. No supply-chain attack indicators are present.
</details>
<summary>
Clean process execution module, no security concerns.</summary>
</security_assessment>

[0/9] Reviewing src/shell-mcp-0.1.1/src/exec.rs, src/shell-mcp-0.1.1/src/safety.rs, src/shell-mcp-0.1.1/src/config.rs, src/shell-mcp-0.1.1/src/allowlist.rs...
[1/9] Reviewing src/shell-mcp-0.1.1/src/safety.rs, src/shell-mcp-0.1.1/src/config.rs, src/shell-mcp-0.1.1/src/allowlist.rs...
+ Reviewed src/shell-mcp-0.1.1/src/exec.rs. Status: SAFE -- Clean process execution module, no security concerns.
LLM auditresponse for safety.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an upstream Rust source implementing safety checks for command execution. It defines metacharacter rejection, a hard denylist of dangerous commands (sudo, rm -rf /, mkfs, etc.), and working-directory containment. The code is straightforward, contains no obfuscation, no network requests, no suspicious system modifications, and no data exfiltration. It serves the stated purpose of hardening command execution and does not exhibit any supply-chain attack indicators.
</details>
<summary>Legitimate safety implementation, no malicious content.</summary>
</security_assessment>

[2/9] Reviewing src/shell-mcp-0.1.1/src/config.rs, src/shell-mcp-0.1.1/src/allowlist.rs...
+ Reviewed src/shell-mcp-0.1.1/src/safety.rs. Status: SAFE -- Legitimate safety implementation, no malicious content.
[2/9] Reviewing src/shell-mcp-0.1.1/src/config.rs, src/shell-mcp-0.1.1/src/allowlist.rs, src/shell-mcp-0.1.1/src/root.rs...
LLM auditresponse for allowlist.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Rust source file implementing an allowlist mechanism for command execution. It defines glob-based rule matching and provides a default set of read-only commands (e.g., `ls`, `cat`, `git status`, `cargo metadata`). The code is straightforward, contains no obfuscation, network requests, file exfiltration, or unexpected system modifications. The dependency on `shlex` and `glob` crates is typical for such functionality. The `platform_defaults()` function only uses built-in patterns and does not fetch any external data. There is no evidence of malicious behavior or supply-chain compromise.
</details>
<summary>No malicious code found; standard allowlist implementation.</summary>
</security_assessment>

[2/9] Reviewing src/shell-mcp-0.1.1/src/config.rs, src/shell-mcp-0.1.1/src/allowlist.rs, src/shell-mcp-0.1.1/src/root.rs, src/shell-mcp-0.1.1/src/tools.rs...
[3/9] Reviewing src/shell-mcp-0.1.1/src/config.rs, src/shell-mcp-0.1.1/src/root.rs, src/shell-mcp-0.1.1/src/tools.rs...
+ Reviewed src/shell-mcp-0.1.1/src/allowlist.rs. Status: SAFE -- No malicious code found; standard allowlist implementation.
LLM auditresponse for root.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
No malicious code detected. The file implements a legitimate root path resolution mechanism for the shell-mcp application, with a documented priority order (CLI flag, environment variable, then fallback to CWD). It performs standard validation (absolute path, existence, directory check) and canonicalization. There are no network requests, obfuscated code, hidden downloads, or any behavior that deviates from the application's stated purpose. The unit tests are clean and appropriate.
</details>
<summary>Legitimate root resolution module, no malicious code.</summary>
</security_assessment>

[3/9] Reviewing src/shell-mcp-0.1.1/src/config.rs, src/shell-mcp-0.1.1/src/root.rs, src/shell-mcp-0.1.1/src/tools.rs, src/shell-mcp-0.1.1/src/lib.rs...
[4/9] Reviewing src/shell-mcp-0.1.1/src/config.rs, src/shell-mcp-0.1.1/src/tools.rs, src/shell-mcp-0.1.1/src/lib.rs...
+ Reviewed src/shell-mcp-0.1.1/src/root.rs. Status: SAFE -- Legitimate root resolution module, no malicious code.
LLM auditresponse for config.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Rust configuration module for the `shell-mcp` application. It implements TOML-based config discovery (walking up directories from `cwd`, plus `~/.shell-mcp.toml`), parsing, merging, and caching. All file operations are limited to reading `.shell-mcp.toml` files from the filesystem. There are no network requests, no obfuscated code, no use of dangerous commands like `eval` or `curl`, and no instructions that deviate from normal packaging practices. The tests write only to temporary directories. No evidence of exfiltration, backdoors, or unexpected system modification exists.
</details>
<summary>Standard config loader with no malicious behavior</summary>
</security_assessment>

[4/9] Reviewing src/shell-mcp-0.1.1/src/config.rs, src/shell-mcp-0.1.1/src/tools.rs, src/shell-mcp-0.1.1/src/lib.rs, src/shell-mcp-0.1.1/src/main.rs...
[5/9] Reviewing src/shell-mcp-0.1.1/src/tools.rs, src/shell-mcp-0.1.1/src/lib.rs, src/shell-mcp-0.1.1/src/main.rs...
+ Reviewed src/shell-mcp-0.1.1/src/config.rs. Status: SAFE -- Standard config loader with no malicious behavior
LLM auditresponse for lib.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the library entry point for the `shell-mcp` Rust crate. It contains only module declarations and public re-exports for `allowlist`, `config`, `exec`, `root`, `safety`, and `tools`. There is no executable code, no network requests, no file operations, no obfuscation, and no system modifications. The content is entirely standard for a Rust library crate. No supply-chain attack indicators are present.
</details>
<summary>Standard Rust library; no malicious code.</summary>
</security_assessment>

[6/9] Reviewing src/shell-mcp-0.1.1/src/tools.rs, src/shell-mcp-0.1.1/src/main.rs...
+ Reviewed src/shell-mcp-0.1.1/src/lib.rs. Status: SAFE -- Standard Rust library; no malicious code.
[6/9] Reviewing src/shell-mcp-0.1.1/src/tools.rs, src/shell-mcp-0.1.1/src/main.rs, src/shell-mcp-0.1.1/Cargo.toml...
LLM auditresponse for main.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a straightforward Rust binary entry point for a shell MCP server. It parses CLI arguments, resolves a root directory, sets up structured logging to stderr (avoiding pollution of the stdio MCP transport), and starts the MCP service. There are no network requests, no code download or execution (eval, curl, wget, base64 decoding), no obfuscation, and no file modifications outside the application's own scope. The only external interaction is resolving a directory path from CLI or environment variables, which is the intended behavior of the application (scoped shell access). The code uses standard Rust dependencies and follows normal Rust project conventions. No evidence of supply-chain attack or malicious intent.

The application's purpose is to provide scoped shell access via the MCP protocol, and the code does exactly that without any hidden or unexpected operations.
</details>
<summary>No malicious behavior found, standard Rust entry point.</summary>
</security_assessment>

[7/9] Reviewing src/shell-mcp-0.1.1/src/tools.rs, src/shell-mcp-0.1.1/Cargo.toml...
+ Reviewed src/shell-mcp-0.1.1/src/main.rs. Status: SAFE -- No malicious behavior found, standard Rust entry point.
LLM auditresponse for Cargo.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Cargo.toml for a Rust project (shell-mcp). It contains only metadata, dependency declarations with semantic version ranges (e.g., `version = &quot;1&quot;`), and build profiles. There is no obfuscated code, no network requests, no system commands, no suspicious operations. The dependencies are all from crates.io, a trusted registry, and unpinned version ranges are a normal packaging choice, not evidence of malice. No supply chain attack indicators are present.
</details>
<summary>Standard Rust project config, no malicious content.</summary>
</security_assessment>

[8/9] Reviewing src/shell-mcp-0.1.1/src/tools.rs...
+ Reviewed src/shell-mcp-0.1.1/Cargo.toml. Status: SAFE -- Standard Rust project config, no malicious content.
LLM auditresponse for tools.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements a command-execution pipeline with deliberate safety mechanisms: metacharacter detection, a hard denylist, and a configuration-driven allowlist. There are no network requests, obfuscated code, or unexpected system modifications. The code is consistent with its stated purpose—providing scoped shell access—and follows standard Rust packaging practices. No supply-chain attack indicators are present.
</details>
<summary>Clean Rust code; no security concerns found.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed src/shell-mcp-0.1.1/src/tools.rs. Status: SAFE -- Clean Rust code; no security concerns found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: shell-mcp-0.1.1.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 40,570
  Completion Tokens: 6,358
  Total Tokens: 46,928
  Total Cost: $0.002902
  Execution Time: 88.75 seconds

Final Status: SAFE


No issues found.


Audit Skips:

/data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-mx69knrv/shell-mcp-0.1.1.tar.gz: [SKIPPED] Skipping binary file: shell-mcp-0.1.1.tar.gz
