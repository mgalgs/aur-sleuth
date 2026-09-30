---
package: computer-use-linux
pkgver: 0.7.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8498
completion_tokens: 1069
total_tokens: 9567
cost: 0.0008115268
execution_time: 35.63
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-29T23:29:44Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned upstream source; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Legitimate Rust PKGBUILD with no signs of malice.
---

Materializing computer-use-linux from local mirror...
Materialized computer-use-linux
Analyzing computer-use-linux AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only static variable assignments for standard packaging metadata (name, version, description, dependencies, source URL, checksum, etc.). There are no command substitutions, backtick executions, or dangerous function calls that would execute during `makepkg --printsrcinfo`. The `prepare()`, `build()`, `check()`, and `package()` functions are defined but not invoked at parse time, so they pose no risk for this command. The source is pinned to a specific version tag with a non-skipped SHA-256 checksum, and the download URL points to the project's official GitHub repository.</details>
<evidence></evidence>
<summary>No top-level execution risk; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution risk; safe to parse.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file describes a standard AUR package build for `computer-use-linux`. It declares the upstream project URL, architecture, dependencies, optional dependencies, and a single source tarball from the project's official GitHub releases page (`https://github.com/agent-sh/computer-use-linux/archive/refs/tags/v0.7.6.tar.gz`). The source archive is pinned to a specific tag/version and has a concrete sha256sum, which is consistent with normal packaging practice.

There are no suspicious network requests, no embedded scripts, no obfuscated or encoded content, no file operations, and no system modifications. The file only contains metadata for `makepkg`. The dependency and optional dependency lists relate to the application's stated purpose (Linux desktop automation and window targeting). No evidence of injected malicious code or supply-chain attack behavior exists in this file.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned upstream source; no malicious behavior found.
</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned upstream source; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a Rust project. It fetches the upstream source from the official GitHub repository with a pinned SHA256 checksum, uses `cargo fetch --locked` and `cargo build --frozen`, and installs the resulting binaries and LICENSE file. There are no obfuscated commands, no unexpected network requests, no encoded payloads, and no modifications to system files outside the package's own scope. The environment variable modifications (`CFLAGS`, `CXXFLAGS`, `CARGO_PROFILE_RELEASE_STRIP`, `CARGO_PROFILE_RELEASE_DEBUG`) are legitimate adjustments for Rust binary stripping behavior and LTO linking compatibility, not malicious tampering.
</details>
<evidence>
</evidence>
<summary>Legitimate Rust PKGBUILD with no signs of malice.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate Rust PKGBUILD with no signs of malice.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,498
  Completion Tokens: 1,069
  Total Tokens: 9,567
  Total Cost: $0.000812
  Execution Time: 35.63 seconds

Final Status: SAFE


No issues found.
