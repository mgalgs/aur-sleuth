---
package: claude-code
pkgver: 2.1.290
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10319
completion_tokens: 1950
total_tokens: 12269
cost: 0.0027065076
execution_time: 34.88
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-06T03:07:36Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version tracking, benign.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with official binary sources and verified checksums.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only variable and array assignments (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.) plus the definition of the `package()` function. There are no command substitutions, backticks, eval statements, network calls, or any other executable operations outside of the function definitions. Running `makepkg --printsrcinfo` will simply source these variable declarations and function bodies without executing any dangerous code.

All source URLs point to the legitimate Anthropic/Claude Code domains (code.claude.com, downloads.claude.ai). The checksums provided are either SKIP (for the legal text source) or valid SHA256 hashes (for the binary sources) – but checksums are irrelevant for this gate as they are not verified during `--printsrcinfo`.
</details>
<evidence></evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR metadata file describing the `claude-code` package. It declares the upstream source, binary download URLs, and checksums. All binary source URLs point to `downloads.claude.ai`, the official Anthropic CDN, and have pinned SHA256 checksums provided. The legal document source (`cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md`) lists `sha256sums = SKIP`, which is expected for a documentation/resource file that is not a binary — this is not a security concern. No encoded commands, network requests, file operations, or other dangerous patterns are present. The file consists solely of declarative metadata and contains no executable content.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file used to track upstream releases of the `claude-code` package. The `source = "regex"` directive instructs nvchecker to fetch the URL and apply a regex to extract a version string. The URL points to `https://downloads.claude.ai/claude-code-releases/latest`, which is the official upstream download location for Claude Code (Anthropic), consistent with the package's purpose. The regex `.+` is broad but benign—it simply instructs nvchecker to match the entire response, which is typical in simple version-checking configurations. There is no executable code, no network requests beyond fetching from the authoritative upstream domain, and no obfuscation or suspicious operations. This file presents no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for version tracking, benign.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version tracking, benign.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard, well-constructed AUR package for `claude-code` (Anthropic's agentic coding tool). The binary is sourced from Anthropic&#x27;s official download server (`downloads.claude.ai`) with pinned version and SHA256 checksums for both x86_64 and aarch64. The wrapper script simply sets two harmless environment variables (`DISABLE_UPDATES`, `DISABLE_INSTALLATION_CHECKS`) to suppress the application&#x27;s built-in self-updater and installation-verification logic, which is a normal and expected packaging practice when a tool is managed via the system package manager. No obfuscated code, unexpected network requests, file exfiltration, or backdoors are present. The only source with a SKIP checksum is a static license file fetched from the project&#x27;s own documentation site, which is standard and not suspicious.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD with official binary sources and verified checksums.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with official binary sources and verified checksums.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,319
  Completion Tokens: 1,950
  Total Tokens: 12,269
  Total Cost: $0.002707
  Execution Time: 34.88 seconds

Final Status: SAFE


No issues found.
