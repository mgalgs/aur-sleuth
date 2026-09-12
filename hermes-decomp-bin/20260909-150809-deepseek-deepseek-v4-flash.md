---
package: hermes-decomp-bin
pkgver: 0.2.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 7684
completion_tokens: 1439
total_tokens: 9123
cost: 0.00090347348
execution_time: 42.26
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-09T15:08:09Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD with no malicious indicators.
---

Materializing hermes-decomp-bin from local mirror...
Materialized hermes-decomp-bin
Analyzing hermes-decomp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and function definitions (`latestver()` and `package()`). Neither function is invoked during `makepkg --printsrcinfo`, as only the global scope is executed. No top-level command substitutions, network requests, or dangerous operations are present. The file is safe to source for metadata extraction.
</details>
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
The `.SRCINFO` file is a purely declarative metadata file describing the package. It specifies standard fields (pkgbase, pkgdesc, pkgver, etc.), dependencies (gcc-libs, glibc), and two source files fetched over HTTPS from the official GitHub repository of the upstream project (SymbioticSec/hermes-decomp). Both sources have pinned SHA-256 checksums. No commands, scripts, obfuscation, or suspicious behavior are present. This file conforms to normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Declarative metadata; no security concerns.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a precompiled binary package. Sources are downloaded over HTTPS from the project&#x27;s own GitHub releases and include pinned SHA256 checksums. The `package()` function only installs prebuilt binaries and a license file into standard system directories. No obfuscation, external script execution, unexpected network requests, or system modifications are present. The `latestver()` helper function is defined but not called during the build; it only queries the project&#x27;s own GitHub API for version information, which is a normal maintainer convenience. No evidence of supply-chain tampering or malicious intent.
</details>
<evidence></evidence>
<summary>Standard binary PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD with no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,684
  Completion Tokens: 1,439
  Total Tokens: 9,123
  Total Cost: $0.000903
  Execution Time: 42.26 seconds

Final Status: SAFE


No issues found.
