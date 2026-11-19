---
package: claude-code
pkgver: 2.1.314
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10575
completion_tokens: 3832
total_tokens: 14407
cost: 0.001659749
execution_time: 57.84
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-30T03:02:05Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Legitimate packaging of official binary with checksums.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata with pinned upstream binary sources.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only standard variable definitions (pkgname, pkgver, source arrays with checksums, depends, etc.) and a function definition (`package()`). No command substitution, `eval`, `curl`, `wget`, or any other code execution occurs while sourcing the file. The `package()` function is defined but not executed during `makepkg --printsrcinfo`, so its contents are out of scope for this gate. There is no top-level code that could exfiltrate data, download payloads, or perform malicious operations.</details>
<evidence></evidence>
<summary>No executable code at top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code at top-level scope.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, .nvchecker.toml...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for claude-code follows standard AUR packaging practices. The binary is fetched from the official Anthropic downloads domain (`downloads.claude.ai`) with pinned SHA256 checksums for both architectures. The legal file uses `SKIP` for its checksum, which is acceptable and not a security concern. The `package()` function simply installs the binary to `/opt/claude-code/bin/claude`, creates a wrapper script in `/usr/bin/claude` that disables upstream update checks (a common practice for distro-packaged applications to avoid conflicts), and installs the license file. There are no obfuscated commands, no unexpected network requests, no execution of untrusted code at build time, and no manipulation of files outside the package's scope. The wrapper script's use of environment variables to suppress update checks and installation warnings is an expected integration step, not evidence of malice.
</details>
<evidence></evidence>
<summary>Legitimate packaging of official binary with checksums.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate packaging of official binary with checksums.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard configuration file for `nvchecker`, a tool used by AUR maintainers to automatically check for new upstream releases. The file defines a version-checking rule for the `claude-code` package: it fetches from `https://downloads.claude.ai/claude-code-releases/latest` (the official Anthropic/Claude releases URL, which is the expected upstream for this package) and uses the regex `.` to extract version information from the response. There is no obfuscated code, no commands, no data exfiltration, no system modification, and no execution of downloaded content. The file is a straightforward, innocuous configuration describing how to poll the project's own upstream for version updates. No security issues are present.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config file, no security issues.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a `.SRCINFO` metadata file, which is purely declarative and contains no executable code. It defines the package structure, sources, checksums, and dependencies for the AUR helper to parse.

The binary sources (`source_x86_64`, `source_aarch64`) point to the official Anthropic / `downloads.claude.ai` domain under a version-specific path (`2.1.314`). Each binary has a pinned, non-SKIP SHA256 checksum, which ensures integrity verification. The auxiliary legal document source uses a `SKIP` checksum, which is explicitly permitted by the audit guidelines as a standard hygiene choice for non-build sources.

There is no obfuscation, no encoded commands, no exfiltration, no backdoors, and no deviation from standard AUR packaging practices for a binary release package.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO metadata with pinned upstream binary sources.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata with pinned upstream binary sources.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,575
  Completion Tokens: 3,832
  Total Tokens: 14,407
  Total Cost: $0.001660
  Execution Time: 57.84 seconds

Final Status: SAFE


No issues found.
