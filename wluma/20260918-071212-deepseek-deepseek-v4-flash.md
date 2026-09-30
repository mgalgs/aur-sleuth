---
package: wluma
pkgver: 5.0.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 12947
completion_tokens: 3861
total_tokens: 16808
cost: 0.001831397414
execution_time: 150.37
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-18T07:12:12Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard Rust PKGBUILD with pinned checksums and PGP verification.
  - file: .SRCINFO
    status: safe
    summary: Source URL discrepancy noted but no malicious code found
---

Materializing wluma from local mirror...
Materialized wluma
Analyzing wluma AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable definitions and function declarations at the global scope. There are no command substitutions, backtick executions, or other dangerous operations (e.g., eval, curl, wget, base64) that would execute when sourcing the file for `makepkg --printsrcinfo`. The `source` array and checksum arrays are simple string literals. All potentially risky operations (cargo fetching, building, installing) are confined within `prepare()`, `build()`, `check()`, and `package()` functions, which are not invoked during the metadata parsing step. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to parse.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Rust application. It downloads the source from the official GitHub repository, verifies it with both BLAKE2b checksums and a PGP signature, and builds using `cargo` with `--frozen` and `--locked` flags to ensure reproducible builds. There are no suspicious network requests, obfuscated code, or unexpected system modifications. All operations are consistent with the package&#x27;s stated purpose of automatic brightness adjustment.
</details>
<evidence></evidence>
<summary>Standard Rust PKGBUILD with pinned checksums and PGP verification.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust PKGBUILD with pinned checksums and PGP verification.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The source URL in `.SRCINFO` points to `github.com/max-baz/wluma` while the package's official upstream URL is `github.com/maximbaz/wluma`. This discrepancy is a strong indicator of a potential supply‑chain attack: an attacker could have created a repository under `max-baz` containing malicious code that mimics the legitimate project. Although PGP signature and checksums are provided, they only verify the integrity of the tarball downloaded from `max-baz`, not its authenticity relative to the official upstream. Without an explanation or a verified chain of trust linking `max-baz` to the real maintainer (`maximbaz`), the source must be considered untrusted. This is not a harmless typo—it substitutes a different account for the official one, which is exactly the kind of vector used in recent AUR attacks.
</details>
<evidence>
source = wluma-5.0.0.tar.gz::https://github.com/max-baz/wluma/archive/5.0.0.tar.gz
</evidence>
<summary>Source URL points to different GitHub user than official upstream</summary>
</security_assessment>

Second look for .SRCINFO (incontext):
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is metadata only; it does not contain any executable code or direct commands. The suspicious source URL pointing to `max-baz` instead of `maximbaz` is a hygiene concern (possible typo or account change) but not, by itself, evidence of malicious code injection in the packaging. No exfiltration, code execution, obfuscated commands, or other malicious behaviors listed in rule 4 are present in this file. The presence of a PGP signature and a validpgpkeys entry suggests an attempt at verification, and the actual security risk would depend on the PKGBUILD and how the source is verified. Per rule 5, such a discrepancy is best treated as a trust/hygiene note, not as a definitive attack.
</details>
<evidence></evidence>
<summary>Source URL discrepancy noted but no malicious code found</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Source URL discrepancy noted but no malicious code found
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,947
  Completion Tokens: 3,861
  Total Tokens: 16,808
  Total Cost: $0.001831
  Execution Time: 150.37 seconds

Final Status: SAFE


No issues found.
