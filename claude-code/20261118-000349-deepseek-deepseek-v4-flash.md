---
package: claude-code
pkgver: 2.1.327
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 10334
completion_tokens: 1677
total_tokens: 12011
cost: 0.00123192
execution_time: 17.0
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-11-18T00:03:48Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata file with pinned checksums; no security concerns.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version checking, safe.
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD from official Anthropic sources.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD has no dangerous top-level code. All global scope statements are static variable assignments (pkgname, pkgver, source arrays, sha256sums, etc.) with no command substitutions (`$()`, backticks), no `eval`, no function calls, and no network or file operations. The `package()` function contains installation logic but is never executed during `makepkg --printsrcinfo`. The `sha256sums` array contains `'SKIP'` for the generic source entry, but this does not cause any code execution during sourcing. The binary source entries have pinned SHA-256 checksums. Running `makepkg --printsrcinfo` on this file is safe.</details>
<evidence></evidence>
<summary>No dangerous top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sourcing is safe.
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
This `.SRCINFO` file is a purely declarative metadata file for the AUR package. It defines package name, version, dependencies, and source URLs. All binary sources point to the official Anthropic domain (`downloads.claude.ai`) and include pinned SHA256 checksums, which is standard and secure practice. The legal document source uses `SKIP` for checksums, which is acceptable for a non-executable documentation file. There is no code execution, no obfuscation, no unexpected network destinations, and no deviation from normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Declarative metadata file with pinned checksums; no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata file with pinned checksums; no security concerns.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.nvchecker.toml` configuration file for the `nvchecker` tool. It defines a single source (`claude-code`) that uses the `regex` source type to monitor the upstream release page at `https://downloads.claude.ai/claude-code-releases/latest`. The regex pattern is `.+`, which matches any non-empty content on that page (effectively returning the page text as the version string). This is typical for tools that track rolling or latest releases. There are no commands, no executable content, no network destinations beyond the project&#39;s own official HTTPS URL, and no obfuscation or encoded payloads. The file poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for version checking, safe.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version checking, safe.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads a prebuilt binary from the official Anthropic domain (`downloads.claude.ai`) and a legal notice from `code.claude.com`. The binary checksums are pinned (not SKIP), ensuring integrity. The `package()` function simply installs the binary and creates a wrapper script that sets two environment variables (`DISABLE_UPDATES`, `DISABLE_INSTALLATION_CHECKS`) to suppress upstream update/install warnings — this is a standard packaging adjustment, not a supply-chain attack. There is no obfuscation, no unexpected network requests, no execution of unchecked code at build time, and no modification of system files outside the package's own install paths. The `SKIP` on the legal document source is acceptable (plain-text file, not an executable).
</details>
<evidence></evidence>
<summary>Standard binary PKGBUILD from official Anthropic sources.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD from official Anthropic sources.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,334
  Completion Tokens: 1,677
  Total Tokens: 12,011
  Total Cost: $0.001232
  Execution Time: 17.00 seconds

Final Status: SAFE


No issues found.
