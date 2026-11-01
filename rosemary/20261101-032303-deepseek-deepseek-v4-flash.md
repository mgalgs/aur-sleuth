---
package: rosemary
pkgver: 0.5.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7578
completion_tokens: 1069
total_tokens: 8647
cost: 0.000884156
execution_time: 15.48
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-01T03:23:02Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard Rust PKGBUILD with pinned checksum, no anomalies.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO metadata, no security issues.
---

Materializing rosemary from local mirror...
Materialized rosemary
Analyzing rosemary AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only standard variable definitions (pkgname, pkgver, depends, source, sha256sums, etc.) with static strings or safe variable expansion. No command substitutions, backtick execution, or calls to dangerous commands (curl, wget, eval, base64, etc.) are present at the global level. The `source` array defines a URL but it is merely a string assignment; no downloading occurs during parsing. Therefore, running `makepkg --printsrcinfo` to source this file poses no security risk.
</details>
<evidence></evidence>
<summary>Top-level scope contains only safe variable definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope contains only safe variable definitions.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Rust-based project. The source tarball is downloaded from the official GitHub repository with a specified SHA256 checksum, ensuring integrity. The `prepare()`, `build()`, and `package()` functions use conventional Rust tooling (`cargo fetch --locked`, `cargo build --frozen`, and `install`). No suspicious network requests, obfuscated code, file operations beyond the build directory, or dangerous commands are present.
</details>
<evidence></evidence>
<summary>Standard Rust PKGBUILD with pinned checksum, no anomalies.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust PKGBUILD with pinned checksum, no anomalies.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file for the `rosemary` package. It defines the package base, version, dependencies, and a pinned source tarball from the official upstream GitHub repository with a valid SHA-256 checksum. There is no code execution, no obfuscation, no suspicious network destinations, and no deviation from normal packaging practices. All dependencies and optional dependencies are legitimate system libraries. The source URL points to the project's own release tag and the checksum is provided, ensuring integrity. No evidence of malicious or injected behavior.
</details>
<evidence></evidence>
<summary>Standard AUR .SRCINFO metadata, no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO metadata, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,578
  Completion Tokens: 1,069
  Total Tokens: 8,647
  Total Cost: $0.000884
  Execution Time: 15.48 seconds

Final Status: SAFE


No issues found.
