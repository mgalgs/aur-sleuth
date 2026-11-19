---
package: yavcpdf
pkgver: 0.3.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8580
completion_tokens: 2442
total_tokens: 11022
cost: 0.001225224
execution_time: 22.63
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-09T08:07:27Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content
  - file: PKGBUILD
    status: safe
    summary: Pinned checksum, standard Rust build, no malicious indicators.
---

Materializing yavcpdf from local mirror...
Materialized yavcpdf
Analyzing yavcpdf AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD defines standard packaging variables and several shell functions (prepare, build, check, package). When `makepkg --printsrcinfo` sources the PKGBUILD, only the global/top-level scope is executed. The global scope consists solely of variable assignments (pkgname, pkgver, source, sha256sums, etc.) and function definitions—no dangerous commands, command substitutions, eval invocations, or network requests are present. The provided functions are only evaluated during their respective build stages, which are never run during the metadata-only printsrcinfo operation. Therefore, sourcing this PKGBUILD poses no security risk.
</details>
<evidence></evidence>
<summary>Safe: no dangerous top-level code</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no dangerous top-level code
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is standard package metadata for the yavcpdf AUR package. It declares the source tarball from the official GitHub releases page with a pinned SHA-256 checksum (not SKIP). All dependencies and build instructions are typical for a Rust-based PDF viewer. There is no embedded code, network fetch logic, or obfuscation. The file contains no commands to execute and presents no supply-chain attack vectors.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard packaging conventions for a Rust application and contains no evidence of malicious behavior. The source is fetched from the official GitHub releases page using a pinned SHA256 checksum, which ensures the downloaded tarball is integrity-checked. The build process uses `cargo fetch --locked` followed by `cargo build --frozen`, meaning no network access occurs during the build itself and the dependency tree is locked. There are no obfuscated commands, no unexpected network requests (curl, wget, git pull), no exfiltration of data, and no modifications to system files outside the package's installation scope. The file is a clean, well-structured PKGBUILD with clear comments and standard install targets.
</details>
<evidence></evidence>
<summary>Pinned checksum, standard Rust build, no malicious indicators.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Pinned checksum, standard Rust build, no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,580
  Completion Tokens: 2,442
  Total Tokens: 11,022
  Total Cost: $0.001225
  Execution Time: 22.63 seconds

Final Status: SAFE


No issues found.
