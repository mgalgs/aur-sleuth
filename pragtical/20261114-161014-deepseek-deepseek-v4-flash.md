---
package: pragtical
pkgver: 3.14.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 8078
completion_tokens: 1526
total_tokens: 9604
cost: 0.00100170
execution_time: 20.73
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-14T16:10:14Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no security concerns.
---

Materializing pragtical from local mirror...
Materialized pragtical
Analyzing pragtical AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains static variable assignments and function definitions in the global scope. No command substitutions, backtick executions, or any other imperative code is executed during sourcing. The `build()` and `package()` functions are defined but not invoked by `makepkg --printsrcinfo`. Therefore, running `makepkg --printsrcinfo` on this file poses no security risk.
</details>
<evidence></evidence>
<summary>No malicious code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR .SRCINFO metadata file for the pragtical package. It defines the package version, source URL (from the official GitHub releases), SHA256 checksum, dependencies, and architecture. There are no encoded commands, suspicious network requests, or file operations. The checksum is provided and pinned, which is good practice. No evidence of supply-chain attack or malicious injection is present. The file conforms to normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux packaging practices. The source is fetched from the official GitHub repository using a pinned version tag with a sha256sum checksum, ensuring integrity. The build system uses meson, which is expected for this project. The optional PGO (Profile-Guided Optimization) section runs the application&#x27;s own profiling script (`scripts/lua/pgo.lua`) from the unpacked source — this is normal upstream functionality and not a supply-chain injection. No obfuscated code, unexpected network requests, file exfiltration, or dangerous commands (curl, wget, eval, base64) are present. The PKGBUILD is clean and contains no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no security concerns.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,078
  Completion Tokens: 1,526
  Total Tokens: 9,604
  Total Cost: $0.001002
  Execution Time: 20.73 seconds

Final Status: SAFE


No issues found.
