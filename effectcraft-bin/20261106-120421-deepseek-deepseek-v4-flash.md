---
package: effectcraft-bin
pkgver: 0.21.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9921
completion_tokens: 2106
total_tokens: 12027
cost: 0.001286103
execution_time: 27.9
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-06T12:04:21Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata file. No code, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned sources and checksums.
---

Materializing effectcraft-bin from local mirror...
Materialized effectcraft-bin
Analyzing effectcraft-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable declarations for package metadata and source URLs. No command substitutions, function calls (like `pkgver()`, `prepare()`, `build()`, `package()`) or any other executable code exist at global scope. All source URLs point to the project&#x27;s own GitHub repository, which is expected. There are no `eval`, `curl`, `wget`, or other potentially dangerous commands. Checksums are provided for all source entries. Sourcing this PKGBUILD to run `makepkg --printsrcinfo` will not execute any code that could exfiltrate data, download unexpected payloads, or perform any malicious actions.
</details>
<evidence></evidence>
<summary>No executable code at top-level scope; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code at top-level scope; safe to source.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO metadata file for a prebuilt binary AUR package. It contains only package metadata: version, URL pointing to the upstream project on GitHub, architecture declarations, dependency lists, and source URLs with sha256 checksums.

All sources are pinned to a specific release version (v0.21.1) and reference the project's own GitHub repository. Both the license files and binary tarballs are hosted on the project&#39;s legitimate URLs (raw.githubusercontent.com and github.com/releases). SHA256 checksums are provided for every source, enabling integrity verification at build time.

There is no executable code, no obfuscation, no network requests to suspicious hosts, and no attempt to exfiltrate data or install backdoors. The file is ordinary packaging metadata consistent with AUR best practices.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata file. No code, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata file. No code, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package definition for `effectcraft-bin`, a prebuilt binary of a motion graphics compositor. All source URLs point to the official GitHub repository (raw.githubusercontent.com for license files, github.com/releases for binary tarballs). Each source has a pinned version tag (`v$pkgver`) and a corresponding SHA256 checksum — no `SKIP` checksums are used. The `package()` function performs only routine file installation: copying `bin` and `share` directories, and placing license files. There are no obfuscated commands, no inline code execution (eval, base64, curl|bash, etc.), no unexpected network requests, and no manipulation of files outside the package’s own installation path. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned sources and checksums.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned sources and checksums.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,921
  Completion Tokens: 2,106
  Total Tokens: 12,027
  Total Cost: $0.001286
  Execution Time: 27.90 seconds

Final Status: SAFE


No issues found.
