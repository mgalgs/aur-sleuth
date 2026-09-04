---
package: claude-code
pkgver: 2.1.260
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10268
completion_tokens: 1981
total_tokens: 12249
cost: 0.001260863380
execution_time: 41.46
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-04T03:01:25Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version checking.
  - file: PKGBUILD
    status: safe
    summary: Standard package with official sources and checksums.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with official upstream sources.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable definitions (pkgname, pkgver, arch, source URLs, checksums, etc.) at the global scope. There are no command substitutions, function calls, or any code that would execute during sourcing. The `package()` function is defined but is not invoked by `makepkg --printsrcinfo`, so its contents are out of scope for this gate. All source URLs point to the official Anthropic/Claude CDN over HTTPS. No malicious or dangerous behavior exists at the top level.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to source.
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
This file is a configuration for nvchecker, a tool used to check for new upstream releases. It defines a source named `claude-code` that fetches a URL from the official `downloads.claude.ai` domain and uses a regex `.` to extract version information. There is no obfuscation, no hidden commands, no data exfiltration, and no execution of untrusted code. The URL points to the package&#x27;s own upstream, which is expected behavior. This is a standard and safe automation helper for AUR maintenance.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for version checking.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version checking.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch package for Claude Code, an upstream tool from Anthropic. All binary downloads come from the official `downloads.claude.ai` domain with pinned sha256 checksums. The wrapper script at `/usr/bin/claude` simply sets environment variables to disable the upstream version checker and installation health checks, which is a routine and expected packaging practice for tools that would otherwise pester users about non-package-manager updates. There are no network requests during `build()` or `package()`, no obfuscated code, no attempts to access or exfiltrate sensitive data, and no operations outside the application's install scope.
</details>
<evidence></evidence>
<summary>Standard package with official sources and checksums.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard package with official sources and checksums.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a declarative metadata file for the AUR `claude-code` package. It contains no executable code. All source URLs point to the official Anthropic infrastructure (`downloads.claude.ai` and `code.claude.com`), which is the legitimate upstream for this package. Binary checksums are provided and pinned (SHA256 for both `x86_64` and `aarch64`). The sole `SKIP` on the legal-document source (`cc-legal`) is for a plain-text markdown file, not an executable or build-critical artifact — this is a routine trust choice and not evidence of malice. No suspicious network destinations, obfuscation, or dangerous operations are present.

The file conforms to standard AUR packaging practices for distributing a precompiled binary from its official vendor.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with official upstream sources.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with official upstream sources.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,268
  Completion Tokens: 1,981
  Total Tokens: 12,249
  Total Cost: $0.001261
  Execution Time: 41.46 seconds

Final Status: SAFE


No issues found.
