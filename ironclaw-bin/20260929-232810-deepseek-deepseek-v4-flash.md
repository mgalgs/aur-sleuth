---
package: ironclaw-bin
pkgver: 1.4.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8732
completion_tokens: 863
total_tokens: 9595
cost: 0.0007979454
execution_time: 17.19
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-29T23:28:08Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary PKGBUILD, no signs of malice.
  - file: .SRCINFO
    status: safe
    summary: Legitimate package metadata; no malicious content.
---

Materializing ironclaw-bin from local mirror...
Materialized ironclaw-bin
Analyzing ironclaw-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the top-level scope of this PKGBUILD. The top-level content consists solely of standard variable declarations, `source` array definitions, checksum arrays, and the definition of the `package()` function. There are no top-level command substitutions, network downloads, `eval`, `curl`, `wget`, base64 decoding, or other executable statements that would run during sourcing. The `package()` function is not executed by `makepkg --printsrcinfo`, so its contents are out of scope for this gate and will be reviewed separately. No malicious behavior is present at the top level.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD contains only standard metadata; no dangerous execution occurs during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD contains only standard metadata; no dangerous execution occurs during printsrcinfo.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a binary package. All sources are fetched from the project's official GitHub repository via pinned git tags, and every source tarball and shell completion script has a SHA256 checksum provided. The `package()` function simply extracts the tarball and installs the binary and completions into the package directory. There are no obfuscated commands, unexpected network requests, or attempts to execute untrusted code. The file contains no indicators of malicious activity.</details>
<evidence></evidence>
<summary>Standard AUR binary PKGBUILD, no signs of malice.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary PKGBUILD, no signs of malice.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file defines package metadata for ironclaw-bin. All sources point to the project's own GitHub repository (nearai/ironclaw) at the announced release tag. Checksums (SHA256) are provided for each downloadable artifact. No code is executed from this file; it is purely declarative. There is no evidence of malicious content, obfuscation, or supply-chain attack indicators. Standard AUR packaging practice.</details>
<evidence></evidence>
<summary>Legitimate package metadata; no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Legitimate package metadata; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,732
  Completion Tokens: 863
  Total Tokens: 9,595
  Total Cost: $0.000798
  Execution Time: 17.19 seconds

Final Status: SAFE


No issues found.
