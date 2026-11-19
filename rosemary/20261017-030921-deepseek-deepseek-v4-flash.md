---
package: rosemary
pkgver: 0.3.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7492
completion_tokens: 982
total_tokens: 8474
cost: 0.000860496
execution_time: 15.68
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-17T03:09:20Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with no malicious indicators.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust AUR package with pinned source and clean build steps.
---

Materializing rosemary from local mirror...
Materialized rosemary
Analyzing rosemary AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable definitions and function declarations at the top level. There are no command substitutions, eval statements, or any executable code that would run during sourcing. The `source` array uses a fixed URL and the checksum is a static string. No dangerous operations like downloading, exfiltration, or executing arbitrary code are present at global scope. The functions are defined but not invoked, so they cannot execute during `makepkg --printsrcinfo`.</details>
<evidence></evidence>
<summary>No top-level malicious code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; safe to parse.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, .SRCINFO...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR metadata file describing the `rosemary` package. It defines a source tarball from the official GitHub release (`https://github.com/microlift/rosemary/archive/refs/tags/v0.3.0.tar.gz`) with a pinned checksum. Dependencies listed (curl, glibc, libgcc, etc.) are consistent with the package description as a macOS compatibility layer. No unusual network destinations, obfuscated code, or unexpected operations are present. The file contains only declarative metadata; there is no executable or script content.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with no malicious indicators.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with no malicious indicators.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Rust project. The source is pinned to a specific release tarball with a verified SHA-256 checksum. The build process uses `cargo fetch --locked` and `cargo build --frozen`, which is the recommended way to ensure reproducible builds with Cargo. All file operations are confined to the expected install locations (`$pkgdir/usr/bin/` and `$pkgdir/usr/share/licenses/`). There are no network requests beyond fetching the declared upstream source and the normal Cargo crate resolution. No obfuscated code, dangerous commands (eval, base64, curl|bash), or unusual system modifications are present. The package is safe.
</details>
<evidence></evidence>
<summary>Standard Rust AUR package with pinned source and clean build steps.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust AUR package with pinned source and clean build steps.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,492
  Completion Tokens: 982
  Total Tokens: 8,474
  Total Cost: $0.000860
  Execution Time: 15.68 seconds

Final Status: SAFE


No issues found.
