---
package: rosemary
pkgver: 0.4.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7551
completion_tokens: 848
total_tokens: 8399
cost: 0.000841477
execution_time: 20.21
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-29T23:23:47Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned source; no malicious behavior.
---

Materializing rosemary from local mirror...
Materialized rosemary
Analyzing rosemary AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and array assignments at global scope. There are no command substitutions, function calls, or any executable statements that would run during `makepkg --printsrcinfo`. All potentially dangerous code resides within `prepare()`, `build()`, and `package()` functions, which are not executed in this step. No concerns for this narrow gate.</details>
<evidence></evidence>
<summary>No malicious top-level code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code found.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file contains only standard package metadata, dependencies, and source information. The source URL points to the official GitHub repository of the project (`microlift/rosemary`), and the `sha256sums` field provides a fixed hash, ensuring integrity of the downloaded tarball. No suspicious commands, obfuscated code, network requests, or system modifications are present. This is a legitimate and typical AUR package definition with no signs of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file with no issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Rust-based application. It downloads a tarball from the project's official GitHub releases with a pinned SHA-256 checksum (`sha256sums` is not skipped). The `prepare()` and `build()` functions use `cargo fetch --locked` and `cargo build --frozen`, which are normal for Rust packages. The `package()` function installs only the binary and license file. There are no suspicious network requests, obfuscated commands, dangerous operations (curl|bash, eval, etc.), or attempts to modify system files outside the intended install paths. No evidence of a supply chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned source; no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned source; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,551
  Completion Tokens: 848
  Total Tokens: 8,399
  Total Cost: $0.000841
  Execution Time: 20.21 seconds

Final Status: SAFE


No issues found.
