---
package: fastmc
pkgver: 6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 56580919ea5cd225cb34031d0932798021e4a0d8
prompt_tokens: 44493
completion_tokens: 7408
total_tokens: 51901
cost: 0.0034043366
execution_time: 86.54
files_reviewed: 8
files_skipped: 1
files_unauditable: 0
unpinned_sources: 1
date: 2026-08-24T07:32:27Z
file_verdicts:
  - file: fastmc-6.tar.gz
    status: skipped
    summary: "Skipping binary file: fastmc-6.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard Rust PKGBUILD with no malicious indicators.
  - file: src/fastmc-latest/Cargo.toml
    status: safe
    summary: Standard Rust Cargo.toml, no security issues.
  - file: src/fastmc-latest/src/main.rs
    status: safe
    summary: No evidence of supply-chain attack; standard server management tool.
  - file: src/fastmc-latest/src/config.rs
    status: safe
    summary: "Safe: standard file I/O configuration code."
  - file: src/fastmc-latest/src/download.rs
    status: safe
    summary: Standard helper functions for a Minecraft server launcher; no malicious behavior.
  - file: src/fastmc-latest/src/backup.rs
    status: safe
    summary: Normal backup tool, no malicious code detected.
  - file: src/fastmc-latest/src/rcon.rs
    status: safe
    summary: Standard RCON client for Minecraft server management.
  - file: src/fastmc-latest/src/server.rs
    status: safe
    summary: Legitimate application code, no security issues.
---

Cloning https://aur.archlinux.org/fastmc.git...
Cloned fastmc
Analyzing fastmc AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments and function definitions in its global scope. There is no `pkgver()` function and no top-level command substitution or code execution. The source fetches from the project's own GitHub repository, which is expected. The `sha256sums` is set to `'SKIP'`, but per the instructions this is not a safety concern for this gate. No dangerous operations occur during the sourcing or source fetching phases.
</details>
<evidence></evidence>
<summary>No malicious code executes during source fetch or parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during source fetch or parsing.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: fastmc-6.tar.gz::https://github.com/CallMeAlphabet/fastmc/archive/refs/tags/latest.tar.gz
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, fastmc-6.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed fastmc-6.tar.gz. Status: SKIPPED -- Skipping binary file: fastmc-6.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Rust packaging practices for the AUR. It downloads the source tarball from the project&#8217;s own GitHub repository, fetches dependencies via `cargo fetch` with a locked Cargo.lock, and builds with `cargo build --frozen`. No suspicious network requests, obfuscated commands, or unexpected file operations are present. The `sha256sums` set to `SKIP` and the use of a `latest` tag are packaging hygiene concerns, not evidence of malice. The unsetting of `LDFLAGS`/`CFLAGS`/`CXXFLAGS` is unusual but harmless in this context. No red flags indicative of a supply-chain attack were found.
</details>
<evidence>
</evidence>
<summary>Standard Rust PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust PKGBUILD with no malicious indicators.
Reviewed all required files.
Deciding which files to review next...
LLM response for file selection:
src/fastmc-latest/Cargo.toml
src/fastmc-latest/src/main.rs
src/fastmc-latest/src/config.rs
src/fastmc-latest/src/backup.rs
src/fastmc-latest/src/download.rs
src/fastmc-latest/src/rcon.rs
src/fastmc-latest/src/server.rs
Decided to review 7 additional files: src/fastmc-latest/Cargo.toml, src/fastmc-latest/src/main.rs, src/fastmc-latest/src/config.rs, src/fastmc-latest/src/backup.rs, src/fastmc-latest/src/download.rs, src/fastmc-latest/src/rcon.rs, src/fastmc-latest/src/server.rs
Reviewing additional files...
Reviewing additional files...
[0/7] Reviewing src/fastmc-latest/src/main.rs...
[0/7] Reviewing src/fastmc-latest/src/main.rs, src/fastmc-latest/Cargo.toml...
[0/7] Reviewing src/fastmc-latest/src/main.rs, src/fastmc-latest/Cargo.toml, src/fastmc-latest/src/config.rs...
LLM auditresponse for Cargo.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Rust package manifest (`Cargo.toml`) for the `fastmc` application. It declares a package name, version, description, repository, license, edition, and a list of dependencies that are typical for a Minecraft server setup tool (e.g., `reqwest` for HTTP requests, `serde_json` for JSON handling, `chrono`, `rand`, etc.). The `[profile.release]` section contains standard compiler optimizations (LTO, codegen-units, panic=abort, strip). None of these lines contain any suspicious URLs, obfuscated code, system modifications, or commands. The file follows normal Rust packaging practices and presents no security concerns.
</details>
<evidence></evidence>
<summary>Standard Rust Cargo.toml, no security issues.</summary>
</security_assessment>

[0/7] Reviewing src/fastmc-latest/src/main.rs, src/fastmc-latest/Cargo.toml, src/fastmc-latest/src/config.rs, src/fastmc-latest/src/backup.rs...
[1/7] Reviewing src/fastmc-latest/src/main.rs, src/fastmc-latest/src/config.rs, src/fastmc-latest/src/backup.rs...
+ Reviewed src/fastmc-latest/Cargo.toml. Status: SAFE -- Standard Rust Cargo.toml, no security issues.
LLM auditresponse for main.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This `main.rs` file is the entry point for the `fastmc` Minecraft server management tool. It provides an interactive CLI for adding, starting, stopping, and managing local Minecraft servers. The code uses standard dependencies (`tmux`, `mcrcon`, `curl`) for server lifecycle tasks and relies on the **user** to manually download a server JAR from the project's own vendor download pages (Paper, Purpur, etc.) – it never fetches or executes code from untrusted external sources. The raw terminal editing via `libc::tcsetattr` is a legitimate technique for interactive character-by-character input, not obfuscation. No data exfiltration, backdoors, unexpected system modifications, or injected attacker-controlled code are present. The file follows normal packaging and tool behavior for a Minecraft server manager.
</details>
<evidence>
</evidence>
<summary>No evidence of supply-chain attack; standard server management tool.</summary>
</security_assessment>

[1/7] Reviewing src/fastmc-latest/src/main.rs, src/fastmc-latest/src/config.rs, src/fastmc-latest/src/backup.rs, src/fastmc-latest/src/download.rs...
[2/7] Reviewing src/fastmc-latest/src/config.rs, src/fastmc-latest/src/backup.rs, src/fastmc-latest/src/download.rs...
+ Reviewed src/fastmc-latest/src/main.rs. Status: SAFE -- No evidence of supply-chain attack; standard server management tool.
LLM auditresponse for config.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `config.rs` is a Rust source file providing configuration utilities for a Minecraft server manager (fastmc). It reads and writes metadata files and a configuration file (`.mcserver.conf`) under a specified directory. All operations are confined to the input directory and involve only file I/O and string parsing. There are no network requests, encoded payloads, command execution, or any behavior outside normal packaging or application functionality. The permission-setting to 600 on `.mcserver.conf` is a standard security practice. No evidence of malicious code injection or supply-chain attack was found.
</details>
<evidence>
</evidence>
<summary>
Safe: standard file I/O configuration code.</summary>
</security_assessment>

[2/7] Reviewing src/fastmc-latest/src/config.rs, src/fastmc-latest/src/backup.rs, src/fastmc-latest/src/download.rs, src/fastmc-latest/src/rcon.rs...
[3/7] Reviewing src/fastmc-latest/src/backup.rs, src/fastmc-latest/src/download.rs, src/fastmc-latest/src/rcon.rs...
+ Reviewed src/fastmc-latest/src/config.rs. Status: SAFE -- Safe: standard file I/O configuration code.
LLM auditresponse for download.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `download.rs` contains helper functions for a Minecraft server launcher: constructing download URLs for various server types (LeafMC, Paper, Purpur, Spigot, Fabric, vanilla), fetching the public IP via `api.ipify.org`, looking up a player UUID via the Mojang API, and opening a URL with `xdg-open`. All network requests go to standard, well-known services (Mojang, PaperMC, PurpurMC, etc.). The `get_public_ip` function retrieves the external IP address but does not exfiltrate it to any third party; it is returned to the caller for likely local use (e.g., display or server configuration). This is consistent with the expected functionality of a server management tool. There is no obfuscated code, no encoded commands, no unexpected file operations, and no downloading and execution of arbitrary code from untrusted sources. The file does not contain any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard helper functions for a Minecraft server launcher; no malicious behavior.</summary>
</security_assessment>

[4/7] Reviewing src/fastmc-latest/src/backup.rs, src/fastmc-latest/src/rcon.rs...
+ Reviewed src/fastmc-latest/src/download.rs. Status: SAFE -- Standard helper functions for a Minecraft server launcher; no malicious behavior.
[4/7] Reviewing src/fastmc-latest/src/backup.rs, src/fastmc-latest/src/rcon.rs, src/fastmc-latest/src/server.rs...
LLM auditresponse for backup.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements backup functionality for a Minecraft server management tool (fastmc). It provides archive creation using standard system tools (`zip`, `tar`) and allows the user to enter a custom command via `sh -c` with path placeholders. There is no evidence of malicious behavior: no network requests, obfuscation, exfiltration of data, download and execute of code, or modification of system files outside the server's working directory. The custom command feature is a user-controlled convenience function for server administrators, not a supply-chain attack. All operations are consistent with the stated purpose of the package.
</details>
<evidence></evidence>
<summary>Normal backup tool, no malicious code detected.</summary>
</security_assessment>

[5/7] Reviewing src/fastmc-latest/src/rcon.rs, src/fastmc-latest/src/server.rs...
+ Reviewed src/fastmc-latest/src/backup.rs. Status: SAFE -- Normal backup tool, no malicious code detected.
LLM auditresponse for rcon.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file implements a standard RCON client for sending commands to a Minecraft server running on localhost. It reads configuration (password and port) from the package's config module, connects to 127.0.0.1, and sends a properly formatted RCON packet. There is no evidence of malicious behavior: no data exfiltration, no unexpected network destinations, no obfuscated code, and no system modifications. The code is a routine part of the application's upstream functionality.</details>
<evidence></evidence>
<summary>Standard RCON client for Minecraft server management.</summary>
</security_assessment>

[6/7] Reviewing src/fastmc-latest/src/server.rs...
+ Reviewed src/fastmc-latest/src/rcon.rs. Status: SAFE -- Standard RCON client for Minecraft server management.
LLM auditresponse for server.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `server.rs` is a legitimate Rust source file for the fastmc Minecraft server manager. It implements standard server management functionality: starting and stopping servers, running first-time setup, managing whitelists, backing up, duplicating, and monitoring resources. All operations are confined to the application's own data directories (servers, logs, backups) and interact with the system only through expected means (tmux, java, ps, pgrep, libc). There are no obfuscated commands, no data exfiltration, no unexpected network requests (the only external calls are for public IP and Mojang UUID lookup, which are legitimate for the application's purpose), and no code that downloads or executes from untrusted sources. The code is well-structured and consistent with the application's stated purpose.
</details>
<evidence></evidence>
<summary>Legitimate application code, no security issues.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed src/fastmc-latest/src/server.rs. Status: SAFE -- Legitimate application code, no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: fastmc-6.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 44,493
  Completion Tokens: 7,408
  Total Tokens: 51,901
  Total Cost: $0.003404
  Execution Time: 86.54 seconds

Final Status: SAFE


No issues found.


Audit Skips:

fastmc-6.tar.gz: [SKIPPED] Skipping binary file: fastmc-6.tar.gz
