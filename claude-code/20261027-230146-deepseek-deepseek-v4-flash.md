---
package: claude-code
pkgver: 2.1.312
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10237
completion_tokens: 1887
total_tokens: 12124
cost: 0.00066300052
execution_time: 31.22
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-27T23:01:46Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with pinned binary checksums from official domain.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no malicious behavior
  - file: PKGBUILD
    status: safe
    summary: Clean AUR PKGBUILD with official upstream sources and standard packaging.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD global scope contains only standard variable definitions (pkgname, pkgver, pkgrel, pkgdesc, arch, url, license, depends, options, optdepends, source arrays, sha256sums arrays) and comments. There are no command substitutions, function calls, or any executable statements in the top-level scope that would run during `makepkg --printsrcinfo`. The `package()` function definition is not invoked during this step. No malicious code executes when sourcing this PKGBUILD.
</details>
<evidence></evidence>
<summary>No top-level code executes during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code executes during sourcing.
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
The .SRCINFO file is standard AUR metadata for the `claude-code` package. All source URLs point to official, expected domains: `code.claude.com` and `downloads.claude.ai` (Anthropic's own distribution endpoints). Checksums are provided for the binary sources (`sha256sums_x86_64` and `sha256sums_aarch64` are non-SKIP hashes), which pins the downloaded binaries. The `SKIP` on the `cc-legal` documentation source is benign and common for text-only files. There is no embedded code, no obfuscation, no unexpected network requests, and no deviation from standard packaging practices.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO with pinned binary checksums from official domain.</summary>
</security_assessment>

[1/3] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with pinned binary checksums from official domain.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file. It defines a version check for the `claude-code` package by fetching the URL `https://downloads.claude.ai/claude-code-releases/latest` and applying a regex pattern to extract a version string. The domain `downloads.claude.ai` is the legitimate upstream provider for Claude Code releases. No commands are executed, no code is downloaded or run, and no data is exfiltrated. The regex `.+` is permissive but that is a quality-of-packaging concern, not a security threat.
</details>
<evidence></evidence>
<summary>Standard nvchecker config, no malicious behavior</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no malicious behavior
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward AUR package for `claude-code`. All source downloads come from official Anthropic/Claude AI HTTPS domains (`code.claude.com` and `downloads.claude.ai`). The arch-specific binaries have pinned SHA-256 checksums; the license source uses `SKIP`, which is normal for a text file fetched at build time. The `package()` function installs the binary to `/opt/claude-code/bin/claude`, creates a wrapper script under `/usr/bin/claude` that sets `DISABLE_UPDATES` and `DISABLE_INSTALLATION_CHECKS` to prevent the upstream binary from attempting self-update or complaining about non-standard path layout, then installs the license file. No obfuscated commands, no unexpected network destinations, no eval/base64/curl-to-bash patterns, and no system file tampering outside the package's own directories. The wrapper's environment variables are a legitimate packaging adaptation, not evidence of malice.
</details>
<evidence>
</evidence>
<summary>Clean AUR PKGBUILD with official upstream sources and standard packaging.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean AUR PKGBUILD with official upstream sources and standard packaging.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,237
  Completion Tokens: 1,887
  Total Tokens: 12,124
  Total Cost: $0.000663
  Execution Time: 31.22 seconds

Final Status: SAFE


No issues found.
