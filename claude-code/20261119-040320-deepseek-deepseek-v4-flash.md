---
package: claude-code
pkgver: 2.1.328
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 10235
completion_tokens: 2156
total_tokens: 12391
cost: 0.00130923
execution_time: 44.74
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-11-19T04:03:20Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious code.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments at the top level (pkgname, pkgver, arch, source arrays, etc.) and a `package()` function definition. No code that executes during sourcing — no top-level command substitutions, eval, or function invocations. Running `makepkg --printsrcinfo` would safely source this file and print metadata. The `package()` function content is not executed during this parsing step and will be audited later.
</details>
<evidence>
</evidence>
<summary>No executable code at global scope; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code at global scope; safe to parse.
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
This is a standard configuration file for `nvchecker`, a tool used to monitor upstream releases for packaging updates. It defines a single checker named `claude-code` that uses the `regex` source type to fetch version information from the official Anthropic/Claude download page (`downloads.claude.ai`). The regex `.` simply matches any non-empty string, which is typical for capturing the version from the page content. There is no executable code, no network requests to unexpected hosts, no obfuscation, and no system-modifying operations. The file is purely declarative and serves the legitimate purpose of tracking upstream releases for an AUR package.
</details>
<evidence></evidence>
<summary>Standard nvchecker config, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard Arch Linux package metadata declaration for the claude-code AUR package. It defines the package name, version, description, dependencies, and source URLs. All executable binary sources point to the legitimate upstream domain (downloads.claude.ai) with pinned SHA256 checksums. The only source with a SKIP checksum is a documentation file (legal/compliance page), which is acceptable as it is not executed. There is no obfuscated code, no suspicious network destinations, and no executable instructions in this file — it is purely declarative metadata.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. It downloads the Claude Code binary from the official upstream CDN (`downloads.claude.ai`) and a legal document from `code.claude.com`. Both sources are directly related to the package&#x27;s upstream project. The architecture-specific sources have pinned SHA256 checksums, ensuring integrity.

The `package()` function installs the binary to `/opt/claude-code/bin/claude` and creates a wrapper script at `/usr/bin/claude`. The wrapper sets two environment variables (`DISABLE_UPDATES` and `DISABLE_INSTALLATION_CHECKS`) to suppress upstream update warnings and installation health checks — this is a common integration pattern when system-installing an application that normally manages its own updates. No obfuscation, unexpected network requests, data exfiltration, backdoors, or other malicious behaviors are present.

The only checksum set to `SKIP` is for the legal document source, which is a plaintext file; this is not evidence of malice per the analysis guidelines. All other identified behaviors are consistent with normal packaging.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,235
  Completion Tokens: 2,156
  Total Tokens: 12,391
  Total Cost: $0.001309
  Execution Time: 44.74 seconds

Final Status: SAFE


No issues found.
