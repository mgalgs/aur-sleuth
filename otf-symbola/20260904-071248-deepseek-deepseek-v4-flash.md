---
package: otf-symbola
pkgbase: font-symbola
pkgver: 14.00
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 8326
completion_tokens: 1550
total_tokens: 9876
cost: 0.001012412156
execution_time: 41.15
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-04T07:12:48Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard font PKGBUILD with checksums.
  - file: .SRCINFO
    status: safe
    summary: No security concerns; standard AUR metadata.
---

otf-symbola is built from font-symbola
Materializing otf-symbola from local mirror...
Materialized otf-symbola
Analyzing otf-symbola AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions (pkgbase, pkgname, pkgver, etc.), a source array with static strings and a variable prefix, and sha512sums. No command substitutions, external downloads, or other dangerous operations are present in the global/top-level scope. All functional code is contained within prepare(), build(), and package_*() functions, which are not executed during `makepkg --printsrcinfo`. Sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No malicious code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch Linux packaging practices for a font package. Sources are PDF files downloaded from an archived URL with checksums provided. The prepare step extracts font data from the PDF, build generates OTF/TTF using fontforge, and package steps install the font files and license. There is no obfuscated code, no network requests beyond the declared sources, no execution of untrusted content, and no system modifications outside the expected install paths. The file does not contain any indicators of malicious supply-chain activity.
</details>
<evidence></evidence>
<summary>Standard font PKGBUILD with checksums.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard font PKGBUILD with checksums.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .SRCINFO metadata file for a font package on the Arch User Repository (AUR). It defines package names, descriptions, dependencies, and source URLs with corresponding SHA-512 checksums. The sources are fetched from web.archive.org, a legitimate internet archive service, and include PDF files for the font and its license. The checksums are present and not set to SKIP, providing integrity verification. There are no dangerous commands, obfuscated code, network connections to unexpected hosts, or any other indicators of malicious behavior. The file strictly conforms to expected AUR packaging practices.
</details>
<evidence></evidence>
<summary>No security concerns; standard AUR metadata.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- No security concerns; standard AUR metadata.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,326
  Completion Tokens: 1,550
  Total Tokens: 9,876
  Total Cost: $0.001012
  Execution Time: 41.15 seconds

Final Status: SAFE


No issues found.
