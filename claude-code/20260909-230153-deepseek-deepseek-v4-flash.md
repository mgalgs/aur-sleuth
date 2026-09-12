---
package: claude-code
pkgver: 2.1.267
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10244
completion_tokens: 1951
total_tokens: 12195
cost: 0.00099022
execution_time: 70.17
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-09T23:01:53Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Clean, standard PKGBUILD with pinned checksums and official sources.
  - file: .nvchecker.toml
    status: safe
    summary: Legitimate nvchecker config for version checking.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function declarations at the top level. All variable assignments (pkgname, pkgver, source arrays, sha256sums, etc.) are simple string or array definitions with no command substitutions, backticks, eval calls, or any other code that would execute during `makepkg --printsrcinfo`. The `package()` function is defined but not invoked during sourcing. The only dynamic content is `${pkgver}` and `$CARCH` interpolation in source array strings, which are standard variable expansions and not dangerous. No network requests, file operations, or data exfiltration occur at the global scope.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to parse.
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
This `.SRCINFO` file is a standard AUR metadata file. It declares the package name, version, dependencies, and source URLs. All sources point to official Anthropic/Claude domains (`code.claude.com` and `downloads.claude.ai`). The `x86_64` and `aarch64` binary sources include pinned SHA256 checksums, providing integrity verification. The only `SKIP` checksum is on the documentation source (`cc-legal`), which is a documentation reference and not executable code — this is a normal trust/verification choice, not malicious. There are no dangerous commands, obfuscated content, network exfiltration, or unexpected operations. The file is purely declarative and consistent with standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads the official Claude Code binary from Anthropic&#39;s own domain (`downloads.claude.ai`) with pinned SHA-256 checksums for both architectures. The legal/license file is fetched from `code.claude.com`. All source URLs point to the project&#39;s legitimate upstream. The package function installs the binary to `/opt/claude-code/bin/` and creates a small wrapper script in `/usr/bin/` that sets environment variables to suppress upstream update checks and installation warnings — a standard practice for distro-packaged software. No obfuscated code, no unexpected network requests, no dangerous commands (eval, curl, base64, etc.), and no manipulation of files outside the package&#39;s own installation paths. The only minor hygiene note is that the legal doc checksum is set to `SKIP`, but this is not malicious.
</details>
<evidence></evidence>
<summary>Clean, standard PKGBUILD with pinned checksums and official sources.</summary>
</security_assessment>

[2/3] Reviewing .nvchecker.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Clean, standard PKGBUILD with pinned checksums and official sources.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for **nvchecker**, a tool used to monitor upstream releases for package updates. It defines a single source `[claude-code]` with type `regex`, pointing at `https://downloads.claude.ai/claude-code-releases/latest` (the official upstream distribution endpoint for Claude Code). The regex pattern `.+` matches everything on the page to extract version information. There is no code execution, no data exfiltration, no obfuscation, and no unexpected network destination. It is a standard, benign metadata file used in AUR maintenance workflows.
</details>
<evidence>
</evidence>
<summary>Legitimate nvchecker config for version checking.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Legitimate nvchecker config for version checking.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,244
  Completion Tokens: 1,951
  Total Tokens: 12,195
  Total Cost: $0.000990
  Execution Time: 70.17 seconds

Final Status: SAFE


No issues found.
