---
package: computer-use-linux
pkgver: 0.6.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 8806
completion_tokens: 2166
total_tokens: 10972
cost: 0.001164105628
execution_time: 38.26
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-16T07:21:36Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned upstream source and checksum; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust PKGBUILD with no suspicious content.
---

Materializing computer-use-linux from local mirror...
Materialized computer-use-linux
Analyzing computer-use-linux AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>The top-level scope of this PKGBUILD consists solely of variable assignments (pkgname, pkgver, source, checksums, etc.) and function definitions. No commands, command substitutions, or other executable code exist outside of function bodies. During `makepkg --printsrcinfo`, only the global scope is sourced, so none of the function-internal commands (cargo fetch, cargo build, etc.) are executed. There are no suspicious patterns such as `eval`, `curl`, `wget`, or obfuscated strings at the top level. Therefore, sourcing this PKGBUILD to print metadata is safe.</details>
<evidence></evidence>
<summary>No executable code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in global scope.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is an AUR `.SRCINFO` metadata file. It defines a single package from the upstream GitHub repository `agent-sh/computer-use-linux` using a pinned release tag (`v0.6.0`) with a specific `sha256sums` value. The dependencies, optional dependencies, and build dependencies are all consistent with the package's stated purpose of controlling a Linux desktop via AT-SPI and portal technologies. There are no suspicious network endpoints, no encoded or obfuscated commands, and no file operations or execution hooks. The source is fetched from the project's own upstream GitHub repository, which is standard packaging practice. The checksum is provided rather than `SKIP`, improving integrity verification. No malicious or supply-chain-related behavior is present.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned upstream source and checksum; no malicious behavior.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned upstream source and checksum; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard practices for a Rust package from a trusted upstream (GitHub with a tagged release and SHA‑256 checksum). All build steps are conventional: `cargo fetch --locked` pins Rust dependencies, `cargo build --frozen --release` compiles with Cargo.lock enforced, and `cargo test` runs the test suite. The only network activity is fetching the upstream tarball (via the declared source URL) and fetching Rust crate dependencies from crates.io during the build – both expected for Rust packages. No obfuscation, no downloads of unknown executables, no exfiltration, and no manipulation of files outside the application’s own install paths.
</details>
<evidence></evidence>
<summary>Standard Rust PKGBUILD with no suspicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust PKGBUILD with no suspicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,806
  Completion Tokens: 2,166
  Total Tokens: 10,972
  Total Cost: $0.001164
  Execution Time: 38.26 seconds

Final Status: SAFE


No issues found.
