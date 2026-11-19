---
package: deckcraft-bin
pkgver: 0.17.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8083
completion_tokens: 1213
total_tokens: 9296
cost: 0.000956319
execution_time: 19.08
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-09T20:11:50Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned checksums; no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with pinned checksums; no suspicious content.
---

Materializing deckcraft-bin from local mirror...
Materialized deckcraft-bin
Analyzing deckcraft-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and a `package()` function. No command substitutions, backtick expansions, or function calls exist in the global scope that would execute during sourcing. All strings are properly quoted, and no network requests or system modifications are triggered at the top level. The `makepkg --printsrcinfo` command will merely parse and print metadata without executing any malicious payload.
</details>
<evidence></evidence>
<summary>No dangerous global-level code present.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous global-level code present.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD fetches prebuilt binaries from the official GitHub releases of deckcraft, with pinned SHA256 checksums for both architectures. The `package()` function only extracts and installs the application binaries and data files into standard locations. There are no dynamic downloads, eval/injection, suspicious network calls, or system modifications beyond expected packaging steps. No red flags or supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned checksums; no malicious behavior.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned checksums; no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard .SRCINFO metadata file for the AUR package `deckcraft-bin`. It contains no executable code, no obfuscation, and no commands whatsoever. The source URLs point directly to the official upstream GitHub releases (`https://github.com/storytold/deckcraft/releases/download/v0.17.0/`) and are pinned with explicit SHA256 checksums for both the x86_64 and aarch64 architectures. This is a secure and verifiable packaging practice. There are no suspicious network requests, no data exfiltration, no backdoors, and no deviations from standard AUR metadata. The file is purely declarative and poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO with pinned checksums; no suspicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with pinned checksums; no suspicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,083
  Completion Tokens: 1,213
  Total Tokens: 9,296
  Total Cost: $0.000956
  Execution Time: 19.08 seconds

Final Status: SAFE


No issues found.
