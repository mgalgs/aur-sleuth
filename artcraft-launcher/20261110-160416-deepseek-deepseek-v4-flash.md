---
package: artcraft-launcher
pkgver: 0.18.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 9809
completion_tokens: 1815
total_tokens: 11624
cost: 0.001222949
execution_time: 17.97
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-10T16:04:15Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: No malicious content; standard nvchecker config.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksum; no evidence of malice.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO, no malicious content.
---

Materializing artcraft-launcher from local mirror...
Materialized artcraft-launcher
Analyzing artcraft-launcher AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only static variable definitions and function declarations. There are no command substitutions, backtick executions, or any code that would execute during sourcing. The functions (`_srcenv`, `prepare`, `build`, `package`) are defined but never invoked by the top-level code. The `source` array and `sha256sums` are simple string assignments with no runtime side effects. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD does not execute any malicious or dangerous code.
</details>
<evidence>

</evidence>
<summary>Top-level code is safe for sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code is safe for sourcing.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard configuration file for nvchecker which automates version checking. It specifies a Git source pointing to the upstream repository `https://github.com/storytold/craft-launcher.git` with a version prefix of `v`. There is no embedded code, no suspicious network destinations, no obfuscation, and no commands that could execute arbitrary actions. This is a routine packaging helper file with no security concerns.
</details>
<evidence></evidence>
<summary>No malicious content; standard nvchecker config.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- No malicious content; standard nvchecker config.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Rust-based application. The source is fetched from the upstream GitHub release tag with a pinned SHA-256 checksum, ensuring integrity of the downloaded archive. Build and prepare functions use `cargo fetch` and `cargo build --frozen`, which rely on the project's own lock file and the standard Rust registry (crates.io), not on any uncontrolled external sources. There is no obfuscated code, no inline network requests to unexpected hosts, no dangerous commands (eval, curl|bash, etc.), and no file operations outside the expected installation paths under `$pkgdir`. The package function installs the binary, desktop file, icons, and licenses in standard locations—nothing unusual or malicious.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksum; no evidence of malice.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksum; no evidence of malice.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file contains standard package metadata for the artcraft-launcher package. It lists the package name, version, description, URL, architecture, licenses, build dependency (cargo), runtime dependencies, and a source tarball from the project's official GitHub repository with a pinned SHA-256 checksum. There is no obfuscated code, no suspicious network requests, no file operations, and no instructions that deviate from normal packaging practices. The file is safe.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO, no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,809
  Completion Tokens: 1,815
  Total Tokens: 11,624
  Total Cost: $0.001223
  Execution Time: 17.97 seconds

Final Status: SAFE


No issues found.
