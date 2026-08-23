---
package: mdns-tui-browser
pkgver: 1.30.9
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 5790943c1b39200ecdf449522971aa7db90ade4a
prompt_tokens: 64830
completion_tokens: 8282
total_tokens: 73112
cost: 0.00732546
execution_time: 192.93
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T06:24:17Z
file_verdicts:
  - file: mdns-tui-browser-1.30.9.tar.gz
    status: skipped
    summary: "Skipping binary file: mdns-tui-browser-1.30.9.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard Rust PKGBUILD, no security issues.
  - file: src/mdns-tui-browser-1.30.9/.cargo/config.toml
    status: safe
    summary: Cross-compilation TOML config; no security issues.
  - file: src/mdns-tui-browser-1.30.9/packaging/aur/makepkg-lint.sh
    status: safe
    summary: Routine linting script, no malicious content.
  - file: src/mdns-tui-browser-1.30.9/src/input.rs
    status: safe
    summary: Standard TUI input widget code, no security issues.
  - file: src/mdns-tui-browser-1.30.9/Cargo.toml
    status: safe
    summary: Standard Cargo.toml; no security concerns.
  - file: src/mdns-tui-browser-1.30.9/src/main.rs
    status: safe
    summary: Legitimate Rust CLI application with no malicious behavior.
  - file: src/mdns-tui-browser-1.30.9/src/tui_app.rs
    status: safe
    summary: No malicious code found; standard application logic.
  - file: src/mdns-tui-browser-1.30.9/packaging/aur/generate-mdns-tui-browser.sh
    status: safe
    summary: Script generates a standard PKGBUILD; no malicious behavior detected.
  - file: src/mdns-tui-browser-1.30.9/src/popup.rs
    status: safe
    summary: No malicious code; standard TUI Rust component.
  - file: src/mdns-tui-browser-1.30.9/src/scroll.rs
    status: safe
    summary: Pure scroll UI logic, no security issues.
  - file: src/mdns-tui-browser-1.30.9/src/models.rs
    status: safe
    summary: Clean Rust data model with no security issues.
---

Cloning https://aur.archlinux.org/mdns-tui-browser.git to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-kquqc7z8...
Cloned repository to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-kquqc7z8
Analyzing mdns-tui-browser AUR package (working in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-kquqc7z8) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and function definitions. The `source` array points to a specific version tarball from the official GitHub repository with a fixed SHA-256 checksum. There is no top-level code execution, no `pkgver()` function, and no suspicious commands in the global scope. The functions `prepare()`, `build()`, `check()`, and `package()` are only defined and not invoked during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. No commands like `curl`, `wget`, `eval`, or base64 decoding appear anywhere. This is a clean, well-maintained PKGBUILD with no security concerns for the narrow scope of this audit.
</details>
<summary>Standard PKGBUILD with pinned source; no global code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD with pinned source; no global code execution risk.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, mdns-tui-browser-1.30.9.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed mdns-tui-browser-1.30.9.tar.gz. Status: SKIPPED -- Skipping binary file: mdns-tui-browser-1.30.9.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for Rust/cargo projects. It downloads the source tarball from the official GitHub repository using a pinned version tag with a valid SHA-256 checksum. There are no suspicious network requests, encoded or obfuscated commands, unexpected file operations, or any other indicators of supply chain attacks. The build and install steps are conventional and transparent.
</details>
<summary>Standard Rust PKGBUILD, no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust PKGBUILD, no security issues.
Reviewed all required files.
Deciding which files to review next...
LLM response for file selection:
src/mdns-tui-browser-1.30.9/packaging/aur/generate-mdns-tui-browser.sh
src/mdns-tui-browser-1.30.9/packaging/aur/makepkg-lint.sh
src/mdns-tui-browser-1.30.9/.cargo/config.toml
src/mdns-tui-browser-1.30.9/Cargo.toml
src/mdns-tui-browser-1.30.9/src/main.rs
src/mdns-tui-browser-1.30.9/src/tui_app.rs
src/mdns-tui-browser-1.30.9/src/input.rs
src/mdns-tui-browser-1.30.9/src/models.rs
src/mdns-tui-browser-1.30.9/src/popup.rs
src/mdns-tui-browser-1.30.9/src/scroll.rs
Decided to review 10 additional files: src/mdns-tui-browser-1.30.9/packaging/aur/generate-mdns-tui-browser.sh, src/mdns-tui-browser-1.30.9/packaging/aur/makepkg-lint.sh, src/mdns-tui-browser-1.30.9/.cargo/config.toml, src/mdns-tui-browser-1.30.9/Cargo.toml, src/mdns-tui-browser-1.30.9/src/main.rs, src/mdns-tui-browser-1.30.9/src/tui_app.rs, src/mdns-tui-browser-1.30.9/src/input.rs, src/mdns-tui-browser-1.30.9/src/models.rs, src/mdns-tui-browser-1.30.9/src/popup.rs, src/mdns-tui-browser-1.30.9/src/scroll.rs
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/mdns-tui-browser-1.30.9/packaging/aur/makepkg-lint.sh...
[0/10] Reviewing src/mdns-tui-browser-1.30.9/packaging/aur/makepkg-lint.sh, src/mdns-tui-browser-1.30.9/packaging/aur/generate-mdns-tui-browser.sh...
[0/10] Reviewing src/mdns-tui-browser-1.30.9/packaging/aur/makepkg-lint.sh, src/mdns-tui-browser-1.30.9/packaging/aur/generate-mdns-tui-browser.sh, src/mdns-tui-browser-1.30.9/.cargo/config.toml...
[0/10] Reviewing src/mdns-tui-browser-1.30.9/packaging/aur/makepkg-lint.sh, src/mdns-tui-browser-1.30.9/packaging/aur/generate-mdns-tui-browser.sh, src/mdns-tui-browser-1.30.9/.cargo/config.toml, src/mdns-tui-browser-1.30.9/Cargo.toml...
[0/10] Reviewing src/mdns-tui-browser-1.30.9/packaging/aur/makepkg-lint.sh, src/mdns-tui-browser-1.30.9/packaging/aur/generate-mdns-tui-browser.sh, src/mdns-tui-browser-1.30.9/.cargo/config.toml, src/mdns-tui-browser-1.30.9/Cargo.toml, src/mdns-tui-browser-1.30.9/src/tui_app.rs...
[0/10] Reviewing src/mdns-tui-browser-1.30.9/packaging/aur/makepkg-lint.sh, src/mdns-tui-browser-1.30.9/packaging/aur/generate-mdns-tui-browser.sh, src/mdns-tui-browser-1.30.9/.cargo/config.toml, src/mdns-tui-browser-1.30.9/Cargo.toml, src/mdns-tui-browser-1.30.9/src/tui_app.rs, src/mdns-tui-browser-1.30.9/src/main.rs...
[0/10] Reviewing src/mdns-tui-browser-1.30.9/packaging/aur/makepkg-lint.sh, src/mdns-tui-browser-1.30.9/packaging/aur/generate-mdns-tui-browser.sh, src/mdns-tui-browser-1.30.9/.cargo/config.toml, src/mdns-tui-browser-1.30.9/Cargo.toml, src/mdns-tui-browser-1.30.9/src/tui_app.rs, src/mdns-tui-browser-1.30.9/src/main.rs, src/mdns-tui-browser-1.30.9/src/input.rs...
[0/10] Reviewing src/mdns-tui-browser-1.30.9/packaging/aur/makepkg-lint.sh, src/mdns-tui-browser-1.30.9/packaging/aur/generate-mdns-tui-browser.sh, src/mdns-tui-browser-1.30.9/.cargo/config.toml, src/mdns-tui-browser-1.30.9/Cargo.toml, src/mdns-tui-browser-1.30.9/src/tui_app.rs, src/mdns-tui-browser-1.30.9/src/main.rs, src/mdns-tui-browser-1.30.9/src/input.rs, src/mdns-tui-browser-1.30.9/src/models.rs...
[0/10] Reviewing src/mdns-tui-browser-1.30.9/packaging/aur/makepkg-lint.sh, src/mdns-tui-browser-1.30.9/packaging/aur/generate-mdns-tui-browser.sh, src/mdns-tui-browser-1.30.9/.cargo/config.toml, src/mdns-tui-browser-1.30.9/Cargo.toml, src/mdns-tui-browser-1.30.9/src/tui_app.rs, src/mdns-tui-browser-1.30.9/src/main.rs, src/mdns-tui-browser-1.30.9/src/input.rs, src/mdns-tui-browser-1.30.9/src/models.rs, src/mdns-tui-browser-1.30.9/src/popup.rs...
[0/10] Reviewing src/mdns-tui-browser-1.30.9/packaging/aur/makepkg-lint.sh, src/mdns-tui-browser-1.30.9/packaging/aur/generate-mdns-tui-browser.sh, src/mdns-tui-browser-1.30.9/.cargo/config.toml, src/mdns-tui-browser-1.30.9/Cargo.toml, src/mdns-tui-browser-1.30.9/src/tui_app.rs, src/mdns-tui-browser-1.30.9/src/main.rs, src/mdns-tui-browser-1.30.9/src/input.rs, src/mdns-tui-browser-1.30.9/src/models.rs, src/mdns-tui-browser-1.30.9/src/popup.rs, src/mdns-tui-browser-1.30.9/src/scroll.rs...
LLM auditresponse for config.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Rust/Cargo configuration file for cross-compilation. It sets the linker path for aarch64-unknown-linux-gnu and arm-unknown-linux-gnueabihf targets. There is no executable code, no network requests, no encoded or obfuscated content, and no deviation from expected packaging practices.
</details>
<summary>Cross-compilation TOML config; no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/mdns-tui-browser-1.30.9/packaging/aur/makepkg-lint.sh, src/mdns-tui-browser-1.30.9/packaging/aur/generate-mdns-tui-browser.sh, src/mdns-tui-browser-1.30.9/Cargo.toml, src/mdns-tui-browser-1.30.9/src/tui_app.rs, src/mdns-tui-browser-1.30.9/src/main.rs, src/mdns-tui-browser-1.30.9/src/input.rs, src/mdns-tui-browser-1.30.9/src/models.rs, src/mdns-tui-browser-1.30.9/src/popup.rs, src/mdns-tui-browser-1.30.9/src/scroll.rs...
+ Reviewed src/mdns-tui-browser-1.30.9/.cargo/config.toml. Status: SAFE -- Cross-compilation TOML config; no security issues.
LLM auditresponse for makepkg-lint.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard AUR maintainer helper that runs `namcap` (a static analysis tool for PKGBUILDs) and then verifies sources with `makepkg --verifysource -o`. It only performs routine packaging operations—linting and source verification—using official Arch tools. There is no evidence of malicious behavior: no network requests to unexpected hosts, no obfuscated code, no data exfiltration, and no dangerous command execution beyond the intended packaging workflow. The script is transparent and follows normal AUR practices.
</details>
<summary>Routine linting script, no malicious content.</summary>
</security_assessment>

[2/10] Reviewing src/mdns-tui-browser-1.30.9/packaging/aur/generate-mdns-tui-browser.sh, src/mdns-tui-browser-1.30.9/Cargo.toml, src/mdns-tui-browser-1.30.9/src/tui_app.rs, src/mdns-tui-browser-1.30.9/src/main.rs, src/mdns-tui-browser-1.30.9/src/input.rs, src/mdns-tui-browser-1.30.9/src/models.rs, src/mdns-tui-browser-1.30.9/src/popup.rs, src/mdns-tui-browser-1.30.9/src/scroll.rs...
+ Reviewed src/mdns-tui-browser-1.30.9/packaging/aur/makepkg-lint.sh. Status: SAFE -- Routine linting script, no malicious content.
LLM auditresponse for input.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This Rust file (`input.rs`) is a standard TUI input widget implementation using the `ratatui` library. It defines an `InputState` struct for managing text input state (active/inactive, text content, title) and a `render_input` function that renders the input widget with a border, title, and cursor indicator (`_`). There are no network requests, file operations, system command execution, obfuscation, or any other suspicious activity. The code is purely UI-related and consistent with the stated purpose of a mDNS browser application.
</details>
<summary>
Standard TUI input widget code, no security issues.
</summary>
</security_assessment>

[3/10] Reviewing src/mdns-tui-browser-1.30.9/packaging/aur/generate-mdns-tui-browser.sh, src/mdns-tui-browser-1.30.9/Cargo.toml, src/mdns-tui-browser-1.30.9/src/tui_app.rs, src/mdns-tui-browser-1.30.9/src/main.rs, src/mdns-tui-browser-1.30.9/src/models.rs, src/mdns-tui-browser-1.30.9/src/popup.rs, src/mdns-tui-browser-1.30.9/src/scroll.rs...
+ Reviewed src/mdns-tui-browser-1.30.9/src/input.rs. Status: SAFE -- Standard TUI input widget code, no security issues.
LLM auditresponse for Cargo.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Rust Cargo.toml file for the `mdns-tui-browser` project. It declares metadata, build profiles, and a set of dependencies that are all legitimate Rust crates (e.g., `mdns-sd`, `tokio`, `ratatui`, `crossterm`, `clap`, `chrono`, `serde`, etc.) commonly used for building a terminal-based mDNS browser. No obfuscated code, suspicious network references, or dangerous operations are present. The file follows normal packaging and development practices.
</details>
<summary>
Standard Cargo.toml; no security concerns.</summary>
</security_assessment>

[4/10] Reviewing src/mdns-tui-browser-1.30.9/packaging/aur/generate-mdns-tui-browser.sh, src/mdns-tui-browser-1.30.9/src/tui_app.rs, src/mdns-tui-browser-1.30.9/src/main.rs, src/mdns-tui-browser-1.30.9/src/models.rs, src/mdns-tui-browser-1.30.9/src/popup.rs, src/mdns-tui-browser-1.30.9/src/scroll.rs...
+ Reviewed src/mdns-tui-browser-1.30.9/Cargo.toml. Status: SAFE -- Standard Cargo.toml; no security concerns.
LLM auditresponse for main.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `main.rs` is a standard Rust CLI application entry point for an mDNS service browser. It uses `clap` for argument parsing, `if_addrs::get_if_addrs` to enumerate network interfaces (expected for a network discovery tool), and `tokio` for async runtime. The `load_state` option reads a file from a user-specified path—this is a user-controlled feature for loading a JSON state file, not an exfiltration or injection. All operations are transparent and serve the stated purpose of the package. No obfuscation, network downloads, execution of external code, or manipulation of unrelated system files is present.
</details>
<summary>Legitimate Rust CLI application with no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing src/mdns-tui-browser-1.30.9/packaging/aur/generate-mdns-tui-browser.sh, src/mdns-tui-browser-1.30.9/src/tui_app.rs, src/mdns-tui-browser-1.30.9/src/models.rs, src/mdns-tui-browser-1.30.9/src/popup.rs, src/mdns-tui-browser-1.30.9/src/scroll.rs...
+ Reviewed src/mdns-tui-browser-1.30.9/src/main.rs. Status: SAFE -- Legitimate Rust CLI application with no malicious behavior.
LLM auditresponse for tui_app.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file (`tui_app.rs`) is a standard Rust terminal user interface (TUI) application for browsing mDNS services. It uses legitimate libraries such as `ratatui`, `crossterm`, `mdns-sd`, and `tokio`. The code implements service discovery, filtering, sorting, state persistence, and help/metrics popups.  

No signs of malicious activity were found:  
- No obfuscated or encoded commands (base64, eval, hex, etc.).  
- No downloads or execution of code from external sources (no `curl`, `wget`, or similar).  
- The only network-related operations are opening URLs in the user’s browser via `open::that_detached`, which is triggered explicitly by the user (viewing release notes or selecting a URL from mDNS data).  
- File operations are limited to saving a JSON state dump to the current working directory, a normal feature for a TUI application.  
- The `#[cfg(unix)]` suspend handler uses standard `nix` signal calls and terminal manipulation – expected behavior.  

All code is consistent with the stated purpose of an mDNS browser TUI. There is no evidence of supply-chain attack, data exfiltration, or hidden backdoors.
</details>
<summary>No malicious code found; standard application logic.</summary>
</security_assessment>

[6/10] Reviewing src/mdns-tui-browser-1.30.9/packaging/aur/generate-mdns-tui-browser.sh, src/mdns-tui-browser-1.30.9/src/models.rs, src/mdns-tui-browser-1.30.9/src/popup.rs, src/mdns-tui-browser-1.30.9/src/scroll.rs...
+ Reviewed src/mdns-tui-browser-1.30.9/src/tui_app.rs. Status: SAFE -- No malicious code found; standard application logic.
LLM auditresponse for generate-mdns-tui-browser.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `generate-mdns-tui-browser.sh` is a helper script that generates a PKGBUILD file for the `mdns-tui-browser` AUR package. It takes a version and a SHA-256 checksum as arguments and outputs a standard PKGBUILD template. The generated PKGBUILD fetches the source from the official GitHub repository, uses `cargo fetch` with `--locked`, builds with `cargo --frozen`, runs tests, and installs the binary, license, documentation, and man page. No network requests beyond the expected source download, no obfuscated code, no execution of untrusted content, and no system-level modifications outside the package directory. The script itself only performs string interpolation and stdout echoing. This is a normal AUR maintainer convenience script and does not contain any supply-chain attack indicators.
</details>
<summary>Script generates a standard PKGBUILD; no malicious behavior detected.</summary>
</security_assessment>

[7/10] Reviewing src/mdns-tui-browser-1.30.9/src/models.rs, src/mdns-tui-browser-1.30.9/src/popup.rs, src/mdns-tui-browser-1.30.9/src/scroll.rs...
+ Reviewed src/mdns-tui-browser-1.30.9/packaging/aur/generate-mdns-tui-browser.sh. Status: SAFE -- Script generates a standard PKGBUILD; no malicious behavior detected.
LLM auditresponse for popup.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains standard Rust terminal UI code for an mDNS browser TUI application. It defines three popup structs (help, metrics, URL selection) using crossterm and ratatui. There are no network requests, no downloads, no execution of external code, no obfuscation, no unsafe blocks, and no system modifications beyond normal terminal rendering. The code only handles key events, scrolling, and rendering UI elements. The `env!("CARGO_PKG_VERSION")` macro embeds the crate version at compile time, which is standard Rust practice. All operations are self-contained within the application's UI logic. No supply-chain attack indicators are present.
</details>
<summary>No malicious code; standard TUI Rust component.</summary>
</security_assessment>

[8/10] Reviewing src/mdns-tui-browser-1.30.9/src/models.rs, src/mdns-tui-browser-1.30.9/src/scroll.rs...
+ Reviewed src/mdns-tui-browser-1.30.9/src/popup.rs. Status: SAFE -- No malicious code; standard TUI Rust component.
LLM auditresponse for scroll.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `scroll.rs` is a straightforward Rust module implementing a scroll state manager for a terminal user interface. It uses safe Rust only, with `#![forbid(unsafe_code)]`. There are no network operations, file operations, system calls, obfuscation, or any commands that could execute external code. The code exclusively manipulates an in-memory struct (`ScrollState`) with simple arithmetic for offset calculation. The included test cases only verify basic numeric assertions. There is no evidence of malicious behavior; it is standard, benign application logic.
</details>
<summary>Pure scroll UI logic, no security issues.</summary>
</security_assessment>

[9/10] Reviewing src/mdns-tui-browser-1.30.9/src/models.rs...
+ Reviewed src/mdns-tui-browser-1.30.9/src/scroll.rs. Status: SAFE -- Pure scroll UI logic, no security issues.
LLM auditresponse for models.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `models.rs` is a Rust source file from the `mdns-tui-browser` package, defining data models for mDNS service discovery. The code is well-structured, uses `#![forbid(unsafe_code)]` for memory safety, and contains only standard Rust data structures, serialization, and utility functions for processing mDNS service information. There are no suspicious network requests, obfuscated commands, unexpected file operations, or system modifications. The `get_urls` method extracts URLs from mDNS TXT records, which is a normal function for the application's purpose. All operations are confined to modeling service discovery data and its display. No evidence of malicious or dangerous behavior is present.
</details>
<summary>Clean Rust data model with no security issues.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/mdns-tui-browser-1.30.9/src/models.rs. Status: SAFE -- Clean Rust data model with no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: mdns-tui-browser-1.30.9.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 64,830
  Completion Tokens: 8,282
  Total Tokens: 73,112
  Total Cost: $0.007325
  Execution Time: 192.93 seconds
Full audit report can be found in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-mdns-tui-browser.txt
Final Status: SAFE


No issues found.


Audit Skips:

/tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-kquqc7z8/mdns-tui-browser-1.30.9.tar.gz: [SKIPPED] Skipping binary file: mdns-tui-browser-1.30.9.tar.gz
