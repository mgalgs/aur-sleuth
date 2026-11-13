---
package: ghostty-terminfo-nightly-bin
pkgbase: ghostty-nightly-bin
pkgver: 20261113.r18821.gcf3a8a6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 11274
completion_tokens: 3452
total_tokens: 14726
cost: 0.00163602
execution_time: 45.07
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-13T12:11:40Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: License file with no executable content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums, no malicious behavior.
---

ghostty-terminfo-nightly-bin is built from ghostty-nightly-bin
Materializing ghostty-terminfo-nightly-bin from local mirror...
Materialized ghostty-terminfo-nightly-bin
Analyzing ghostty-terminfo-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>Running `makepkg --printsrcinfo` sources the PKGBUILD's global scope only. This PKGBUILD restricts itself to straightforward variable assignments (source URLs, checksums, dependencies, metadata) and function definitions for the `package_*()` routines. There are no calls to `eval`, `curl`, `wget`, command substitutions executing arbitrary code, or any other executables in the global scope, nor any obfuscated or encoded payloads. Therefore, sourcing this file to parse its metadata poses no risk.</details>
<evidence></evidence>
<summary>Safe for `makepkg --printsrcinfo` parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe for `makepkg --printsrcinfo` parsing.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC license text file. It contains no executable code, no commands, and no references to any system operations. There is no obfuscation, no network requests, and no file operations. It is purely a legal notice and poses no security risk.
</details>
<evidence></evidence>
<summary>License file with no executable content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- License file with no executable content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard AUR package metadata. It defines a binary nightly package for the Ghostty terminal emulator, sourced from GitHub releases by a third-party packager (jpenilla). All source URLs point to the packager&#39;s own release assets over HTTPS, and each source has a valid SHA256 checksum. No executable code, obfuscation, network exfiltration, or system modification is present. The file only declares package names, versions, dependencies, checksums, and other metadata. There is no evidence of supply-chain compromise or malicious intent.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows a standard pattern for a nightly binary package. Sources are fetched from a GitHub releases page (jpenilla/ghostty-nightly-bin) with pinned SHA-256 checksums, ensuring integrity at build time. Each packaging function merely extracts the corresponding tarball into the package directory using `bsdtar`. There are no encoded commands, no execution of fetched scripts, no network requests beyond the declared sources, and no attempts to modify system files outside of `$pkgdir`. The use of a third‑party repository for prebuilt binaries is a trust choice, but the PKGBUILD itself does not contain any malicious code.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with pinned checksums, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,274
  Completion Tokens: 3,452
  Total Tokens: 14,726
  Total Cost: $0.001636
  Execution Time: 45.07 seconds

Final Status: SAFE


No issues found.
