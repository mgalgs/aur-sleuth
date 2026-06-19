---
package: oyui
pkgver: 0.2.0
pkgrel: 1
result: unsafe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 04f91022df66399cc45c448ff8c0391dcf3e1054
prompt_tokens: 32190
completion_tokens: 9694
total_tokens: 41884
cost: 0.00464202
execution_time: 171.23
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T07:54:44Z
file_verdicts:
  - file: oyui-0.2.0.tgz
    status: skipped
    summary: "Skipping binary file: oyui-0.2.0.tgz"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious elements.
  - file: .nvchecker.toml
    status: safe
    summary: Standard version-checker configuration, no security risks.
  - file: src/oyui-0.2.0/crates/oyui/src/commands/diff.rs
    status: safe
    summary: No security issues; standard application code.
  - file: src/oyui-0.2.0/cliff.toml
    status: safe
    summary: Benign TOML configuration for changelog generation tool.
  - file: src/oyui-0.2.0/Cargo.toml
    status: safe
    summary: Standard Rust workspace config, no malicious code.
  - file: src/oyui-0.2.0/crates/oyui/src/main.rs
    status: safe
    summary: Benign Rust CLI entry point, no malicious behavior.
  - file: src/oyui-0.2.0/crates/oyui/src/config/script.rs
    status: safe
    summary: No threats; standard scripting integration.
  - file: src/oyui-0.2.0/crates/oyui/src/commands/language_server.rs
    status: safe
    summary: No security issues found; normal Rust LSP code.
  - file: src/oyui-0.2.0/crates/oyui/build.rs
    status: safe
    summary: Standard build script; no malicious behavior detected.
  - file: src/oyui-0.2.0/crates/oyui/src/config/theme.rs
    status: safe
    summary: "Safe: standard Rust data definitions, no malicious behavior detected."
  - file: src/oyui-0.2.0/scripts/release/package.json
    status: unsafe
    summary: "Suspicious dependency on typo-squatted package \"relacher\"."
---

Cloning https://aur.archlinux.org/oyui.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-xh4kwfyg...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-xh4kwfyg
Analyzing oyui AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-xh4kwfyg) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines standard top-level variables and arrays. The `source` entry downloads a specific tagged release tarball from the official GitHub repository with a pinned SHA-256 checksum. No code executes in the global scope beyond variable assignments and array definitions; there is no `pkgver()` function or dangerous top-level command substitution. The `prepare()`, `build()`, and `package()` functions are not run during the `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo` commands. All content is consistent with normal packaging practices.
</details>
<summary>
No dangerous code executes; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No dangerous code executes; safe to fetch sources.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, oyui-0.2.0.tgz...
[1/2] Reviewing PKGBUILD...
! Reviewed oyui-0.2.0.tgz. Status: SKIPPED -- Skipping binary file: oyui-0.2.0.tgz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Rust-based project. It sources the official tarball from the project&#39;s GitHub releases, verifies it with a SHA-256 checksum (not SKIP), and uses standard `cargo` commands (`fetch`, `build`) to compile and install the binary. There are no suspicious network destinations, no obfuscated code, no dangerous commands like `eval`, `curl|bash`, or base64 decoding, and no attempts to access or exfiltrate system data. The `cargo update --precise` line is unusual but appears to be a harmless attempt to pin the package&#39;s own version in the lockfile; it does not introduce any supply-chain risk. Overall, the file contains only routine packaging logic with no evidence of malicious behavior.
</details>
<summary>Standard AUR PKGBUILD, no malicious elements.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious elements.
Reviewed all required files.
Deciding which files to review next...
Note: 179 files available for selection; offering the 50 highest-priority to the model. 84 lower-priority file(s) were not offered.
LLM response for file selection:
src/oyui-0.2.0/crates/oyui/build.rs
src/oyui-0.2.0/Cargo.toml
src/oyui-0.2.0/scripts/release/package.json
.nvchecker.toml
src/oyui-0.2.0/cliff.toml
src/oyui-0.2.0/crates/oyui/src/config/script.rs
src/oyui-0.2.0/crates/oyui/src/config/theme.rs
src/oyui-0.2.0/crates/oyui/src/commands/diff.rs
src/oyui-0.2.0/crates/oyui/src/commands/language_server.rs
src/oyui-0.2.0/crates/oyui/src/main.rs
Decided to review 10 additional files: src/oyui-0.2.0/crates/oyui/build.rs, src/oyui-0.2.0/Cargo.toml, src/oyui-0.2.0/scripts/release/package.json, .nvchecker.toml, src/oyui-0.2.0/cliff.toml, src/oyui-0.2.0/crates/oyui/src/config/script.rs, src/oyui-0.2.0/crates/oyui/src/config/theme.rs, src/oyui-0.2.0/crates/oyui/src/commands/diff.rs, src/oyui-0.2.0/crates/oyui/src/commands/language_server.rs, src/oyui-0.2.0/crates/oyui/src/main.rs
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/oyui-0.2.0/Cargo.toml...
[0/10] Reviewing src/oyui-0.2.0/Cargo.toml, src/oyui-0.2.0/crates/oyui/build.rs...
[0/10] Reviewing src/oyui-0.2.0/Cargo.toml, src/oyui-0.2.0/crates/oyui/build.rs, .nvchecker.toml...
[0/10] Reviewing src/oyui-0.2.0/Cargo.toml, src/oyui-0.2.0/crates/oyui/build.rs, .nvchecker.toml, src/oyui-0.2.0/scripts/release/package.json...
[0/10] Reviewing src/oyui-0.2.0/Cargo.toml, src/oyui-0.2.0/crates/oyui/build.rs, .nvchecker.toml, src/oyui-0.2.0/scripts/release/package.json, src/oyui-0.2.0/cliff.toml...
[0/10] Reviewing src/oyui-0.2.0/Cargo.toml, src/oyui-0.2.0/crates/oyui/build.rs, .nvchecker.toml, src/oyui-0.2.0/scripts/release/package.json, src/oyui-0.2.0/cliff.toml, src/oyui-0.2.0/crates/oyui/src/config/script.rs...
[0/10] Reviewing src/oyui-0.2.0/Cargo.toml, src/oyui-0.2.0/crates/oyui/build.rs, .nvchecker.toml, src/oyui-0.2.0/scripts/release/package.json, src/oyui-0.2.0/cliff.toml, src/oyui-0.2.0/crates/oyui/src/config/script.rs, src/oyui-0.2.0/crates/oyui/src/commands/language_server.rs...
[0/10] Reviewing src/oyui-0.2.0/Cargo.toml, src/oyui-0.2.0/crates/oyui/build.rs, .nvchecker.toml, src/oyui-0.2.0/scripts/release/package.json, src/oyui-0.2.0/cliff.toml, src/oyui-0.2.0/crates/oyui/src/config/script.rs, src/oyui-0.2.0/crates/oyui/src/commands/language_server.rs, src/oyui-0.2.0/crates/oyui/src/commands/diff.rs...
[0/10] Reviewing src/oyui-0.2.0/Cargo.toml, src/oyui-0.2.0/crates/oyui/build.rs, .nvchecker.toml, src/oyui-0.2.0/scripts/release/package.json, src/oyui-0.2.0/cliff.toml, src/oyui-0.2.0/crates/oyui/src/config/script.rs, src/oyui-0.2.0/crates/oyui/src/commands/language_server.rs, src/oyui-0.2.0/crates/oyui/src/commands/diff.rs, src/oyui-0.2.0/crates/oyui/src/config/theme.rs...
[0/10] Reviewing src/oyui-0.2.0/Cargo.toml, src/oyui-0.2.0/crates/oyui/build.rs, .nvchecker.toml, src/oyui-0.2.0/scripts/release/package.json, src/oyui-0.2.0/cliff.toml, src/oyui-0.2.0/crates/oyui/src/config/script.rs, src/oyui-0.2.0/crates/oyui/src/commands/language_server.rs, src/oyui-0.2.0/crates/oyui/src/commands/diff.rs, src/oyui-0.2.0/crates/oyui/src/config/theme.rs, src/oyui-0.2.0/crates/oyui/src/main.rs...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a configuration for nvchecker, a tool used to check for new releases of upstream software. It declares the package name, source type (GitHub), repository path, and flags to use the latest release with a `v` prefix. There is no executable code, network call, or any operation that could be malicious. This is a standard and benign packaging-support file.
</details>
<summary>Standard version-checker configuration, no security risks.</summary>
</security_assessment>

[1/10] Reviewing src/oyui-0.2.0/Cargo.toml, src/oyui-0.2.0/crates/oyui/build.rs, src/oyui-0.2.0/scripts/release/package.json, src/oyui-0.2.0/cliff.toml, src/oyui-0.2.0/crates/oyui/src/config/script.rs, src/oyui-0.2.0/crates/oyui/src/commands/language_server.rs, src/oyui-0.2.0/crates/oyui/src/commands/diff.rs, src/oyui-0.2.0/crates/oyui/src/config/theme.rs, src/oyui-0.2.0/crates/oyui/src/main.rs...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard version-checker configuration, no security risks.
LLM auditresponse for diff.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Rust source file implementing the `run_diff` function for the oyui application. It imports crate modules, sets up shared state with `Arc` and `RwLock`, builds worker and handler contexts, and starts the application. There is no obfuscated code, no network requests, no execution of external commands, and no deviation from normal application logic. The code appears to be a legitimate part of a diff viewer tool with no security concerns.
</details>
<summary>No security issues; standard application code.</summary>
</security_assessment>

[2/10] Reviewing src/oyui-0.2.0/Cargo.toml, src/oyui-0.2.0/crates/oyui/build.rs, src/oyui-0.2.0/scripts/release/package.json, src/oyui-0.2.0/cliff.toml, src/oyui-0.2.0/crates/oyui/src/config/script.rs, src/oyui-0.2.0/crates/oyui/src/commands/language_server.rs, src/oyui-0.2.0/crates/oyui/src/config/theme.rs, src/oyui-0.2.0/crates/oyui/src/main.rs...
+ Reviewed src/oyui-0.2.0/crates/oyui/src/commands/diff.rs. Status: SAFE -- No security issues; standard application code.
LLM auditresponse for cliff.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `cliff.toml` is a configuration file for the `git-cliff` changelog generator. It contains only TOML-format settings: a changelog header/body/footer template using the Tera templating engine, a `[git]` section specifying the backend (`jujutsu`) and conventional commit parsing rules, and a list of commit parsers to group commits by type. There is no executable code, no network requests, no obfuscated or encoded commands, and no file or system manipulation. All URLs point to the project&#x27;s own GitHub repository (`https://github.com/emilien-jegou/oyui`) for linking commits, which is standard behavior. Nothing in this file deviates from normal packaging or upstream configuration practices.
</details>
<summary>
Benign TOML configuration for changelog generation tool.</summary>
</security_assessment>

[3/10] Reviewing src/oyui-0.2.0/Cargo.toml, src/oyui-0.2.0/crates/oyui/build.rs, src/oyui-0.2.0/scripts/release/package.json, src/oyui-0.2.0/crates/oyui/src/config/script.rs, src/oyui-0.2.0/crates/oyui/src/commands/language_server.rs, src/oyui-0.2.0/crates/oyui/src/config/theme.rs, src/oyui-0.2.0/crates/oyui/src/main.rs...
+ Reviewed src/oyui-0.2.0/cliff.toml. Status: SAFE -- Benign TOML configuration for changelog generation tool.
LLM auditresponse for Cargo.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Cargo.toml for a Rust workspace. It declares workspace members and dependencies with version constraints. All dependencies are sourced from the official crates.io registry or via local path references. There are no obfuscated commands, network requests (beyond normal dependency resolution during build), or any signs of malicious activity such as data exfiltration, backdoors, or unauthorized code execution. The content is consistent with routine packaging practices.
</details>
<summary>Standard Rust workspace config, no malicious code.</summary>
</security_assessment>

[4/10] Reviewing src/oyui-0.2.0/crates/oyui/build.rs, src/oyui-0.2.0/scripts/release/package.json, src/oyui-0.2.0/crates/oyui/src/config/script.rs, src/oyui-0.2.0/crates/oyui/src/commands/language_server.rs, src/oyui-0.2.0/crates/oyui/src/config/theme.rs, src/oyui-0.2.0/crates/oyui/src/main.rs...
+ Reviewed src/oyui-0.2.0/Cargo.toml. Status: SAFE -- Standard Rust workspace config, no malicious code.
LLM auditresponse for main.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the main entry point for a Rust CLI application named "oyui". It follows standard Rust packaging practices: it parses CLI arguments via `clap`, sets up tracing/logging, and runs a command defined in the `commands` module. The only unusual line is the explicit call to `config::clear_registry()`, which the comment explains is to prevent TLS drop order issues with `scc::HashMap` — a benign technical workaround, not a security concern. There is no obfuscation, no network requests, no system file manipulation, and no code execution outside the application's intended scope. The code is consistent with a normal, well-structured Rust application.
</details>
<summary>
Benign Rust CLI entry point, no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing src/oyui-0.2.0/crates/oyui/build.rs, src/oyui-0.2.0/scripts/release/package.json, src/oyui-0.2.0/crates/oyui/src/config/script.rs, src/oyui-0.2.0/crates/oyui/src/commands/language_server.rs, src/oyui-0.2.0/crates/oyui/src/config/theme.rs...
+ Reviewed src/oyui-0.2.0/crates/oyui/src/main.rs. Status: SAFE -- Benign Rust CLI entry point, no malicious behavior.
LLM auditresponse for script.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements a Rune scripting engine integration for an application's keybinding configuration system. It registers two safe functions (`keybind` and `on_mode`) that enable users to define keyboard shortcuts via a configuration script. The script is compiled from a local file path and executed to call a `config()` function. There is no obfuscated code, no network requests, no file operations outside the application's own scope, and no execution of untrusted binaries or shell commands. The code follows standard Rust practices for embedding a scripting runtime and poses no supply-chain risk.
</details>
<summary>No threats; standard scripting integration.</summary>
</security_assessment>

[6/10] Reviewing src/oyui-0.2.0/crates/oyui/build.rs, src/oyui-0.2.0/scripts/release/package.json, src/oyui-0.2.0/crates/oyui/src/commands/language_server.rs, src/oyui-0.2.0/crates/oyui/src/config/theme.rs...
+ Reviewed src/oyui-0.2.0/crates/oyui/src/config/script.rs. Status: SAFE -- No threats; standard scripting integration.
LLM auditresponse for language_server.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains a standard Rust function that initializes and runs a language server using the `rune` crate. It calls `script::build_context`, `Options::from_default_env`, and `languageserver::run` with standard error handling and logging via `tracing`. There are no suspicious network requests, obfuscated code, dangerous system calls, or any deviation from expected packaging or application logic. The code is transparent and typical for a language server implementation.
</details>
<summary>No security issues found; normal Rust LSP code.</summary>
</security_assessment>

[7/10] Reviewing src/oyui-0.2.0/crates/oyui/build.rs, src/oyui-0.2.0/scripts/release/package.json, src/oyui-0.2.0/crates/oyui/src/config/theme.rs...
+ Reviewed src/oyui-0.2.0/crates/oyui/src/commands/language_server.rs. Status: SAFE -- No security issues found; normal Rust LSP code.
LLM auditresponse for build.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Rust build script (`build.rs`) for the `oyui` package. It loads theme files from a local `themes` directory and embeds them into the binary at compile time using the `syntect` library. All paths referenced are within the package's own source tree (e.g., `src/config/theme.rs`). There are no network requests (no `curl`, `wget`, or HTTP calls), no base64/obfuscated code, no dangerous system modifications, and no execution of untrusted downloaded content. The script only performs local file I/O and uses safe, deterministic compilation steps. This is a normal and expected build process for a Rust application that bundles themes.
</details>
<summary>
Standard build script; no malicious behavior detected.</summary>
</security_assessment>

[8/10] Reviewing src/oyui-0.2.0/scripts/release/package.json, src/oyui-0.2.0/crates/oyui/src/config/theme.rs...
+ Reviewed src/oyui-0.2.0/crates/oyui/build.rs. Status: SAFE -- Standard build script; no malicious behavior detected.
LLM auditresponse for theme.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file (`theme.rs`) is a standard Rust source file defining color types and a UI theme struct for what appears to be a terminal diff viewer (likely part of the `oyui` package). It uses `serde` for serialization, `typed_builder` for a builder pattern, and `rune::Any` to allow the types to be used in the Rune scripting runtime. There are no network requests, base64 decoding, `eval`, file operations, system commands, or any other indicators of malicious behavior. The code is purely declarative data structures with simple helper methods for color conversion and luminance calculation. The `Color::to_string_val` and `is_dark` functions are standard Rust implementations. No suspicious encoding, obfuscation, or unexpected external interactions exist. This file is entirely benign and consistent with normal Rust packaging practices.
</details>
<summary>Safe: standard Rust data definitions, no malicious behavior detected.</summary>
</security_assessment>

[9/10] Reviewing src/oyui-0.2.0/scripts/release/package.json...
+ Reviewed src/oyui-0.2.0/crates/oyui/src/config/theme.rs. Status: SAFE -- Safe: standard Rust data definitions, no malicious behavior detected.
LLM auditresponse for package.json:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The `package.json` file defines a dependency on the package `"relacher"` at version `"0.0.6"`. This package name is highly suspicious: it is a likely typo-squatting variant of legitimate release‑related tools (e.g., `release`, `releaser`, `semantic-release`). The cryptic name and very early version number are consistent with patterns seen in supply‑chain attacks where a malicious package is published under a name that is easily mistaken for a common tool. If this `package.json` is used during the build or packaging of the AUR package (e.g., via `npm install`), it would automatically download and execute the `relacher` package&#x27;s lifecycle scripts, granting arbitrary code execution from an untrusted, unrelated source. This represents a genuine supply‑chain risk and deviates from standard, trustworthy packaging practices.
</details>
<summary>Suspicious dependency on typo-squatted package &quot;relacher&quot;.</summary>
</security_assessment>

[10/10] Reviewing ...
x Reviewed src/oyui-0.2.0/scripts/release/package.json. Status: UNSAFE -- Suspicious dependency on typo-squatted package "relacher".
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: Unsafe -- DO NOT INSTALL!
# Issues (1 total)

## package.json

Status: UNSAFE

Summary: Suspicious dependency on typo-squatted package "relacher".

Details:

The `package.json` file defines a dependency on the package `"relacher"` at version `"0.0.6"`. This package name is highly suspicious: it is a likely typo-squatting variant of legitimate release‑related tools (e.g., `release`, `releaser`, `semantic-release`). The cryptic name and very early version number are consistent with patterns seen in supply‑chain attacks where a malicious package is published under a name that is easily mistaken for a common tool. If this `package.json` is used during the build or packaging of the AUR package (e.g., via `npm install`), it would automatically download and execute the `relacher` package&#x27;s lifecycle scripts, granting arbitrary code execution from an untrusted, unrelated source. This represents a genuine supply‑chain risk and deviates from standard, trustworthy packaging practices.

---

(Skipped 1 file: oyui-0.2.0.tgz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 32,190
  Completion Tokens: 9,694
  Total Tokens: 41,884
  Total Cost: $0.004642
  Execution Time: 171.23 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-oyui.txt
Final Status: UNSAFE


Issues Found:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-xh4kwfyg/src/oyui-0.2.0/scripts/release/package.json: [UNSAFE] Suspicious dependency on typo-squatted package "relacher". / The `package.json` file defines a dependency on the package `"relacher"` at version `"0.0.6"`. This package name is highly suspicious: it is a likely typo-squatting variant of legitimate release‑related tools (e.g., `release`, `releaser`, `semantic-release`). The cryptic name and very early version number are consistent with patterns seen in supply‑chain attacks where a malicious package is published under a name that is easily mistaken for a common tool. If this `package.json` is used during the build or packaging of the AUR package (e.g., via `npm install`), it would automatically download and execute the `relacher` package&#x27;s lifecycle scripts, granting arbitrary code execution from an untrusted, unrelated source. This represents a genuine supply‑chain risk and deviates from standard, trustworthy packaging practices.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-xh4kwfyg/oyui-0.2.0.tgz: [SKIPPED] Skipping binary file: oyui-0.2.0.tgz
