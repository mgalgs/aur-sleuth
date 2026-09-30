---
package: claude-code
pkgver: 2.1.283
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10314
completion_tokens: 2593
total_tokens: 12907
cost: 0.00072912000
execution_time: 65.57
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-25T23:01:53Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD for a verified binary from the official upstream.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no malicious content.
  - file: .nvchecker.toml
    status: safe
    summary: Legitimate nvchecker config with no malicious behavior.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD only contains standard metadata variable assignments (pkgname, pkgver, arch, depends, source arrays, sha256sums) and the definition of the `package()` function. No code outside function bodies performs any action during `makepkg --printsrcinfo` — there are no top-level command substitutions, curl/wget calls, downloads, file modifications, or data exfiltration. The listed sources point to the expected upstream domains (code.claude.com and downloads.claude.ai) and are not fetched or verified when sourcing the PKGBUILD. A SKIP checksum is present for the legal text source, but this is irrelevant to the narrow gate and is not grounds for concern here. The `package()` function contains normal installation logic (copying the binary, creating a wrapper script, installing a license) but is not executed during `--printsrcinfo`. Therefore, running this command is safe.
</details>
<evidence>
</evidence>
<summary>
Top-level scope only defines variables/functions; no dangerous execution during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope only defines variables/functions; no dangerous execution during printsrcinfo.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .nvchecker.toml...
[0/3] Reviewing .nvchecker.toml, .SRCINFO...
[0/3] Reviewing .nvchecker.toml, .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for distributing a pre-built binary. The binary is downloaded from the official Anthropic distribution domain (`downloads.claude.ai`) with a pinned version (`2.1.283`) and verified with SHA256 checksums for both `x86_64` and `aarch64`. The `package()` function only installs the binary into `/opt/claude-code/bin/claude` and creates a harmless wrapper script that sets `DISABLE_UPDATES=1` and `DISABLE_INSTALLATION_CHECKS=1` — a standard practice for system-managed packages to prevent the application from attempting its own self-update mechanism. The legal/license file is fetched from the official documentation site. There are no obfuscated commands, unexpected network requests, backdoors, or data exfiltration. The single `SKIP` checksum on the legal markdown file is a minor hygiene note, not a security concern.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD for a verified binary from the official upstream.</summary>
</security_assessment>

[1/3] Reviewing .nvchecker.toml, .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD for a verified binary from the official upstream.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO metadata file for the `claude-code` AUR package. It defines package metadata, dependencies, and download sources. All binary sources are fetched from the official Anthropic domain (`downloads.claude.ai`) with explicit SHA-256 checksums provided, ensuring integrity. The optional documentation source has `SKIP` for sha256sums, which is normal for such non-essential files. No embedded scripts, obfuscated code, suspicious network destinations, or any executable logic exists in this file. The content conforms to standard AUR packaging practices and contains no indicators of malicious or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing .nvchecker.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no malicious content.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.nvchecker.toml` configuration file used to automate version checking for AUR packages. It defines a single source (`claude-code`) that fetches from `https://downloads.claude.ai/claude-code-releases/latest` using a regex source type. The URL points to an official first-party domain (claude.ai) that is consistent with the package's upstream. The regex `.+` is overly permissive, meaning it will match any content and may cause frequent false version bumps, but this is a configuration flaw or maintainer convenience choice, not a security issue. There are no dangerous commands, obfuscation, file operations, or unexpected network destinations. Nothing in this file suggests exfiltration, code execution, or supply-chain injection.
</details>
<evidence></evidence>
<summary>Legitimate nvchecker config with no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Legitimate nvchecker config with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,314
  Completion Tokens: 2,593
  Total Tokens: 12,907
  Total Cost: $0.000729
  Execution Time: 65.57 seconds

Final Status: SAFE


No issues found.
