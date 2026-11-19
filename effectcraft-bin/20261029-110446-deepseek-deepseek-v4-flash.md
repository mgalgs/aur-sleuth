---
package: effectcraft-bin
pkgver: 0.18.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10004
completion_tokens: 2299
total_tokens: 12303
cost: 0.001328782
execution_time: 38.74
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-29T11:04:46Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: AUR metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Clean package with pinned sources and verified checksums.
---

Materializing effectcraft-bin from local mirror...
Materialized effectcraft-bin
Analyzing effectcraft-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions (pkgname, pkgver, source arrays, checksums) and a `package()` function. No top-level command substitutions, function calls, or executable statements are present that would execute during `makepkg --printsrcinfo`. The `package()` function is not executed during this step. Therefore, sourcing this PKGBUILD for metadata extraction poses no security risk.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO file that only contains metadata (version, dependencies, source URLs, and SHA-256 checksums) for the effectcraft-bin package. All source URLs point to the project's official GitHub repository (github.com/storytold/effectcraft) for license files and prebuilt binary tarballs. Each source has a pinned SHA-256 checksum, so there are no unpinned or SKIPped entries. No executable code, commands, or obfuscation is present. There is no evidence of malicious behavior such as data exfiltration, remote code execution, or tampering with system files.
</details>
<evidence>
</evidence>
<summary>AUR metadata, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- AUR metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard packaging practices for a prebuilt binary package. The source tarballs are fetched from the project's own GitHub releases page over HTTPS, with hardcoded SHA256 checksums verifying the downloads. All version references are pinned to a specific tag (`v0.18.0`). The `package()` function performs only routine installation operations (`install`, `cp`) within the package destination directory. There are no network requests in build or install steps, no use of dangerous commands (eval, curl, wget), no obfuscation, and no modification of system files outside of `$pkgdir`. Dependencies are appropriate for a Vulkan/GL/compositing application. This file exhibits no behaviors associated with supply-chain attacks.
</details>
<evidence>
</evidence>
<summary>Clean package with pinned sources and verified checksums.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean package with pinned sources and verified checksums.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,004
  Completion Tokens: 2,299
  Total Tokens: 12,303
  Total Cost: $0.001329
  Execution Time: 38.74 seconds

Final Status: SAFE


No issues found.
