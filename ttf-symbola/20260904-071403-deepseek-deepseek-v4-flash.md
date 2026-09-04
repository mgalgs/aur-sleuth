---
package: ttf-symbola
pkgbase: font-symbola
pkgver: 14.00
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 8326
completion_tokens: 1149
total_tokens: 9475
cost: 0.000941350144
execution_time: 43.27
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-04T07:14:02Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard font packaging, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no malicious content.
---

ttf-symbola is built from font-symbola
Materializing ttf-symbola from local mirror...
Materialized ttf-symbola
Analyzing ttf-symbola AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable declarations (pkgbase, pkgname, pkgver, pkgrel, pkgdesc, arch, url, license, makedepends, _srcurl, source, sha512sums) and comments. There are no command substitutions (e.g., $(...)), backtick executions, eval calls, or any other code that would execute during sourcing. The source array uses simple string concatenation with a variable (_srcurl) — no dangerous commands. Since `makepkg --printsrcinfo` only sources the global scope and does not invoke pkgver(), prepare(), build(), or package(), there is no risk of malicious execution at this step. The content in those functions (pdfdetach, fontforge, pdftotext, install) will be audited later in the full PKGBUILD review.
</details>
<evidence></evidence>
<summary>Safe: only static variable definitions in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: only static variable definitions in global scope.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard packaging practices for Arch Linux. It downloads the Symbola font and license from a pinned Wayback Machine snapshot of the upstream site, verifies them with SHA-512 checksums, extracts the font from a PDF using `pdfdetach`, converts it to OTF/TTF via `fontforge`, and installs the files and license. No obfuscation, unexpected network requests, dangerous commands, or exfiltration is present. The use of web.archive.org for archival purposes is legitimate and does not introduce supply-chain risk when combined with pinned checksums.
</details>
<evidence></evidence>
<summary>Standard font packaging, no security issues.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard font packaging, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file. It defines package metadata and sources for a font package. The sources are PDF files fetched from web.archive.org, with SHA512 checksums provided. There are no executable commands, no obfuscated code, no suspicious network requests beyond the expected upstream sources, and no evidence of malicious intent. The file is consistent with normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,326
  Completion Tokens: 1,149
  Total Tokens: 9,475
  Total Cost: $0.000941
  Execution Time: 43.27 seconds

Final Status: SAFE


No issues found.
