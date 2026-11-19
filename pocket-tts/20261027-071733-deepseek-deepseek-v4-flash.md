---
package: pocket-tts
pkgver: 4.0.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7818
completion_tokens: 2800
total_tokens: 10618
cost: 0.00165090
execution_time: 40.29
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-27T07:17:33Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust PKGBUILD with pinned upstream source and normal Cargo build steps.
---

Materializing pocket-tts from local mirror...
Materialized pocket-tts
Analyzing pocket-tts AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level (global) scope of this PKGBUILD consists entirely of standard variable assignments (`pkgname`, `pkgver`, `pkgrel`, `url`, `license`, `depends`, `makedepends`, `source`, `sha256sums`, `options`) and function definitions (`prepare`, `build`, `check`, `package`). No commands (e.g. `eval`, `curl`, `wget`, `$(...)` or backtick command substitutions) are present outside of function bodies. Function bodies are not executed during `makepkg --printsrcinfo`, which only sources the file to load metadata. Therefore, running this specific command does not trigger any code execution beyond safe shell parameter expansions in variable assignments, posing no risk of exfiltration, download, or code injection during the parsing step.
</details>
<evidence>
</evidence>
<summary>No code execution in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No code execution in global scope.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the AUR package `pocket-tts`. It declares package metadata, dependencies, and a single source tarball from the project&#39;s official GitHub releases page (`https://github.com/kyutai-labs/pocket-tts/archive/refs/tags/v4.0.1.tar.gz`). The SHA-256 checksum is provided and pinned to a specific hash, ensuring the source is verified. There are no executable commands, no network requests outside the normal source fetch, no obfuscated content, and no references to dangerous tools like `eval`, `curl`, `wget`, or `base64`. The file conforms entirely to expected AUR packaging conventions and contains no supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no security concerns.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a Rust project. The source is a pinned GitHub release tarball from the project's official upstream repository with a fixed SHA-256 checksum. The `prepare()`, `build()`, `check()`, and `package()` functions only perform normal Cargo operations and install the built binary, license, and README into the package directory. Removing upstream's `.cargo/config.toml` and setting `RUSTUP_TOOLCHAIN=stable` are build configuration choices, not malicious behavior. `cargo fetch` downloads crates from the normal Cargo registry as part of the build, and `--frozen --locked` enforces the lockfile. There is no obfuscation, no unexpected network destination, no execution of downloaded scripts, and no access to sensitive system data.
</details>
<evidence>
</evidence>
<summary>
Standard Rust PKGBUILD with pinned upstream source and normal Cargo build steps.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust PKGBUILD with pinned upstream source and normal Cargo build steps.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,818
  Completion Tokens: 2,800
  Total Tokens: 10,618
  Total Cost: $0.001651
  Execution Time: 40.29 seconds

Final Status: SAFE


No issues found.
