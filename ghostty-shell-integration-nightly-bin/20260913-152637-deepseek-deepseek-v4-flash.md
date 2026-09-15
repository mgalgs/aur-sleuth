---
package: ghostty-shell-integration-nightly-bin
pkgbase: ghostty-nightly-bin
pkgver: 20260913.r17764.g5252b19
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 11118
completion_tokens: 1883
total_tokens: 13001
cost: 0.00072098096
execution_time: 59.14
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-13T15:26:36Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious content found.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: No malicious code in this metadata file.
---

ghostty-shell-integration-nightly-bin is built from ghostty-nightly-bin
Materializing ghostty-shell-integration-nightly-bin from local mirror...
Materialized ghostty-shell-integration-nightly-bin
Analyzing ghostty-shell-integration-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable definitions (pkgbase, pkgname, pkgver, pkgrel, pkgdesc, arch, url, license, _source_rev, depends, source, sha256sums). There are no top-level command substitutions, eval calls, or any other executable statements that would run when the file is sourced. The `package_*` functions that contain `bsdtar` and other operations are not executed during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD presents no risk of executing malicious code at this step.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to source</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, LICENSE...
[0/3] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. All source archives are downloaded from a GitHub releases page over HTTPS with pinned SHA256 checksums. The package functions extract the archives into the package directory using `bsdtar`. No suspicious network requests, obfuscated code, eval, or dangerous operations are present. The only potential concern is that the binary archives are from a third-party repository (jpenilla/ghostty-nightly-bin) rather than upstream directly, but this is typical for AUR `-bin` packages and is not inherently malicious. The checksums verify integrity.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious content found.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, LICENSE...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious content found.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC license text. No executable code, obfuscation, network requests, system modifications, or other dangerous operations are present. The content is purely a copyright and license notice. There are no indicators of malicious intent.</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a metadata description for a multi-package AUR PKGBUILD that provides nightly binary builds of the Ghostty terminal emulator. The sources are all downloaded from a third-party GitHub repository (`jpenilla/ghostty-nightly-bin`), which is a standard pattern for nightlies built by a maintainer. The file contains only declarative data (dependencies, checksums, conflicts, provides) and no executable code or logic. No suspicious URLs, obfuscation, or dangerous commands are present. The checksums are provided and not set to `SKIP`, allowing integrity verification. There is no evidence of data exfiltration, backdoors, or supply-chain tampering in this file. The reliance on a third-party binary distribution is a trust/hygiene choice, not malice.
</details>
<evidence></evidence>
<summary>No malicious code in this metadata file.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- No malicious code in this metadata file.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,118
  Completion Tokens: 1,883
  Total Tokens: 13,001
  Total Cost: $0.000721
  Execution Time: 59.14 seconds

Final Status: SAFE


No issues found.
