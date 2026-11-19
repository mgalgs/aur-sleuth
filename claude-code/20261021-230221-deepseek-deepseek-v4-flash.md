---
package: claude-code
pkgver: 2.1.307
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10353
completion_tokens: 4487
total_tokens: 14840
cost: 0.001758757
execution_time: 49.92
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-21T23:02:21Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with pinned binary checksums; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; no supply-chain attack indicators found.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` on this PKGBUILD only sources the global scope (top-level variable assignments and function definitions). The global scope in this file consists solely of standard PKGBUILD variable definitions (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.) and the definition of a `package()` function. No command substitutions (`$()` or backticks) are present in the global scope, and no calls to `eval`, `curl`, `wget`, or any other command are made at the top level. The `package()` function is defined but not executed during `makepkg --printsrcinfo`, so its contents are out of scope for this specific safety gate. Therefore, sourcing the PKGBUILD to extract its metadata carries no risk of executing malicious code.
</details>
<evidence></evidence>
<summary>No malicious code executes during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during sourcing.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is an nvchecker configuration for checking new releases of the `claude-code` package. It uses the `regex` source type and points to the official Claude AI downloads domain (`downloads.claude.ai`). The regex `.+` is a broad pattern, but this is standard for nvchecker configs and does not indicate malicious activity. No commands, encoded data, or suspicious network destinations are present. The file is a benign automation helper for version tracking.
</details>
<evidence></evidence>
<summary>Standard nvchecker config; no malicious code.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file defines metadata for the `claude-code` package from its official upstream (Anthropic, via downloads.claude.ai). The primary binary sources are pinned with SHA-256 checksums, ensuring integrity for those downloads. The single SKIP checksum is for an auxiliary legal/README document (`cc-legal`), which is an ordinary packaging choice and not evidence of malice. No executable code, obfuscation, unexpected network requests, or system modifications are present in this file. This is a standard AUR metadata file with no security concerns.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO with pinned binary checksums; no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with pinned binary checksums; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard, well-maintained AUR package for `claude-code`. All binary sources are pinned by version and include SHA256 checksums from the official `downloads.claude.ai` domain. The legal/license source uses `SKIP` checksum, which is explicitly noted as a normal packaging choice, not evidence of malice.

The `package()` function performs routine operations: installing the prebuilt binary into `/opt/claude-code/bin/`, creating a thin wrapper in `/usr/bin/claude` that sets benign environment variables to suppress upstream update checks and installation-wizard warnings (expected behavior for a distro-packaged binary), and copying the license file. There are no network requests, no obfuscated code, no dangerous commands, and no manipulation of files outside the application&#x27;s own scope. The wrapper script is plaintext and does nothing beyond exporting two environment variables and executing the real binary.

No genuinely malicious behavior (data exfiltration, backdoors, credential theft, or arbitrary code execution) is present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD; no supply-chain attack indicators found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; no supply-chain attack indicators found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,353
  Completion Tokens: 4,487
  Total Tokens: 14,840
  Total Cost: $0.001759
  Execution Time: 49.92 seconds

Final Status: SAFE


No issues found.
