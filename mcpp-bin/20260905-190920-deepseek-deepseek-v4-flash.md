---
package: mcpp-bin
pkgver: 2026.9.5.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10630
completion_tokens: 1782
total_tokens: 12412
cost: 0.00119030884
execution_time: 69.92
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-05T19:09:19Z
file_verdicts:
  - file: mcpp.sh
    status: safe
    summary: Standard wrapper, no malicious behavior detected.
  - file: .SRCINFO
    status: safe
    summary: Metadata descriptor with no threats.
  - file: PKGBUILD
    status: safe
    summary: Standard binary AUR package, no malicious indicators.
---

Materializing mcpp-bin from local mirror...
Materialized mcpp-bin
Analyzing mcpp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments (pkgver, source arrays, checksums) and a `package()` function definition. No command substitutions, eval, backticks, or other code execution mechanisms appear in the global scope. The source arrays reference `${_relbase}` via simple variable expansion, and the checksums include `SKIP` for the shared source, which is a normal packaging choice. There is no code that would execute during `makepkg --printsrcinfo` and no risk of malicious behavior at this stage.
</details>
<evidence></evidence>
<summary>No executable code at top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code at top-level scope.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, mcpp.sh...
[0/3] Reviewing .SRCINFO, mcpp.sh, PKGBUILD...
LLM auditresponse for mcpp.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher wrapper for the `mcpp-bin` AUR package. It sets two environment variables (`MCPP_HOME` and `MCPP_VENDORED_XLINGS`) to ensure the application uses a per-user writable directory for its runtime data, then executes the binary under `/opt/mcpp`. The script contains no network requests, obfuscated code, unexpected file operations, dangerous commands, or any other indicators of malicious behavior. It follows normal AUR packaging practices for binary packages that need to redirect their data home directory.
</details>
<evidence></evidence>
<summary>Standard wrapper, no malicious behavior detected.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed mcpp.sh. Status: SAFE -- Standard wrapper, no malicious behavior detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a package metadata descriptor used by AUR helpers to download and build packages. It contains no executable code—only declarations for package name, version, dependencies, and sources. The prebuilt binary archives are sourced from the official GitHub releases of the upstream project (mcpp-community/mcpp) with pinned SHA256 checksums for both x86_64 and aarch64 architectures, which provides integrity verification for those downloads. The local helper script `mcpp.sh` has its checksum set to SKIP, but as per the guidelines, a SKIP checksum alone is not evidence of malice—it is a trust/hygiene choice that does not constitute a supply-chain attack. No network requests to unexpected hosts, no obfuscated code, no unusual system modifications, and no other indicators of malicious behavior are present. This file is consistent with standard AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Metadata descriptor with no threats.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata descriptor with no threats.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a binary release package. It downloads prebuilt tarballs from the official GitHub releases of the `mcpp-community/mcpp` project using a pinned version. Architecture-specific checksums are provided and match upstream artifacts. The `SKIP` checksum on the local `mcpp.sh` wrapper is typical for a non-downloaded local file and not inherently suspicious. The `package()` function only copies binaries and documentation into the package directory; no unexpected network access, obfuscated code, or system modifications are present. The listing of `git` as a runtime dependency is explained as necessary for package-index sync and is not evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard binary AUR package, no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary AUR package, no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,630
  Completion Tokens: 1,782
  Total Tokens: 12,412
  Total Cost: $0.001190
  Execution Time: 69.92 seconds

Final Status: SAFE


No issues found.
