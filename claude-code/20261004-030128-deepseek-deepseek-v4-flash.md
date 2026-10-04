---
package: claude-code
pkgver: 2.1.289
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10252
completion_tokens: 1780
total_tokens: 12032
cost: 0.000386736
execution_time: 34.24
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-04T03:01:28Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious indicators.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned checksums, no malicious indicators.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only static variable assignments (pkgname, pkgver, source arrays, checksums, etc.) and a function definition for `package()`. There are no command substitutions (`$(...)`), backtick executions, `eval` calls, or any other code that would execute at top-level when the file is sourced. The `package()` function runs only during the packaging phase, which is out of scope for the `makepkg --printsrcinfo` step. No network requests, file writes, or code execution occurs at parse time.
</details>
<evidence></evidence>
<summary>No malicious top-level code executed during parsing</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code executed during parsing
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR package metadata file. It declares the package&#39;s upstream source (official Anthropic domain `downloads.claude.ai`), architecture-specific binary downloads with pinned SHA256 checksums, and standard dependencies. No obfuscated code, unexpected network destinations, or system manipulation is present. The `sha256sums = SKIP` on the legal documentation source is a non-issue, as SHA256 sums are pinned for the actual binary archives.
</details>
<evidence>

</evidence>
<summary>Standard AUR metadata; no malicious indicators.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, .nvchecker.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious indicators.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard configuration for the `nvchecker` tool, used by AUR maintainers to automatically check for new upstream releases. It instructs nvchecker to visit the official URLs under `downloads.claude.ai`, scrape the page, and match version information using the regex pattern `.+`. There is no obfuscation, no dangerous commands, no data exfiltration, and no deviation from normal packaging tooling. The URL points to the package's own upstream, which is expected behavior. The file is entirely benign.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config, no security concerns.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for `claude-code` follows standard AUR packaging practices. All binary sources are fetched from the official Anthropic downloads domain (`downloads.claude.ai`) with pinned SHA256 checksums, ensuring integrity. The wrapper script created in the `package()` function merely sets environment variables to suppress upstream update checks and native-install warnings, a common and transparent practice for AUR packages that install software outside the upstream&#8217;s expected layout. There are no obfuscated commands, unexpected network requests, file exfiltration, or any other indicators of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned checksums, no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned checksums, no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,252
  Completion Tokens: 1,780
  Total Tokens: 12,032
  Total Cost: $0.000387
  Execution Time: 34.24 seconds

Final Status: SAFE


No issues found.
