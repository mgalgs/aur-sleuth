---
package: claude-code
pkgver: 2.1.325
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 10256
completion_tokens: 1770
total_tokens: 12026
cost: 0.00124164
execution_time: 20.87
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-11-14T00:03:11Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no malicious content.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no malicious indicators.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD, no malicious behavior detected.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only static variable assignments (pkgname, pkgver, source arrays, checksum arrays, etc.) and a `package()` function definition. There are no command substitutions, backtick executions, eval calls, or any other executable statements at the top level. Since `makepkg --printsrcinfo` only sources the global scope and does not run `package()`, no malicious code can execute during this operation.
</details>
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
This is a standard `.SRCINFO` metadata file for an Arch User Repository package. It describes the package `claude-code` (an agentic coding tool from Anthropic). The file contains no executable code, no obfuscated content, and no suspicious network destinations. All sources point to official Anthropic domains (`code.claude.com` and `downloads.claude.ai`). The binary downloads have properly pinned SHA-256 checksums. The single `SKIP` checksum applies to a legal documentation file, which is a common and acceptable practice. No evidence of supply-chain compromise or malicious intent is present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no malicious content.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `nvchecker` configuration used by AUR maintainers to automate version update checks. It defines a regex-based source that fetches the latest release information from the official Claude AI downloads domain (`downloads.claude.ai`). The regex `.+` matches any content from that URL, which is typical for extracting version strings. There is no executable code, no obfuscation, no network requests to unexpected hosts, and no system modifications. This is a benign, transparent packaging helper file.
</details>
<evidence></evidence>
<summary>Standard nvchecker config; no malicious indicators.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no malicious indicators.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch Linux packaging file for the `claude-code` application. It downloads official binaries from `downloads.claude.ai` (Anthropic&#x27;s own distribution domain) with pinned sha256 checksums for each architecture. The legal/license file is also fetched from the official `code.claude.com` domain.

The `package()` function performs routine installation steps:
- Places the binary into `/opt/claude-code/bin/claude`
- Creates a wrapper script at `/usr/bin/claude` that sets `DISABLE_UPDATES=1` and `DISABLE_INSTALLATION_CHECKS=1` before executing the real binary. This is a standard packaging technique to prevent the upstream application from attempting self-updates (which would conflict with the package manager) and to suppress a benign health-check warning about missing `~/.local/bin/claude`. The wrapper is clearly documented in comments and serves no malicious purpose.
- Installs the license file.

There is no obfuscated code, no unexpected network requests during build/install, no data exfiltration, no execution of untrusted content, and no system modifications beyond installing files under the package&#x27;s own directories. The file follows standard AUR packaging practices and contains no supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD, no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,256
  Completion Tokens: 1,770
  Total Tokens: 12,026
  Total Cost: $0.001242
  Execution Time: 20.87 seconds

Final Status: SAFE


No issues found.
