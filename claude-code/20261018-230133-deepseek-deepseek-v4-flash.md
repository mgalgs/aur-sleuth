---
package: claude-code
pkgver: 2.1.303
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10304
completion_tokens: 1903
total_tokens: 12207
cost: 0.001284010
execution_time: 32.0
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-18T23:01:33Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version checking; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned checksums, no malicious behavior.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments, array definitions, and one function definition (`package()`) in its top-level scope. There are no command substitutions, backticks, `eval`, `curl`, `wget`, or any other code execution constructs at the global level that would trigger during `makepkg --printsrcinfo`. Function bodies (`package()`) are not executed during this parsing step, only defined. The source arrays reference standard upstream URLs (downloads.claude.ai) and a legal-docs URL (code.claude.com), but these are merely string assignments — no fetching occurs during `--printsrcinfo`. Therefore, sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No executable code at top-level scope; only variable assignments and function declarations.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code at top-level scope; only variable assignments and function declarations.
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
This file is a configuration for nvchecker, a tool used by AUR maintainers to automatically check for new upstream releases. It defines a regex source that scrapes a `claude.ai` URL (the project's own upstream) for version strings matching ".+". There is no executable code, no obfuscation, no network requests to unexpected hosts, and no file or system operations. This is a standard, benign packaging helper file.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for version checking; no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version checking; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR package metadata declaration. It specifies package information, dependencies, sources, and checksums. The binary sources are fetched over HTTPS from the official Anthropic domain (downloads.claude.ai) and have pinned SHA-256 checksums. The legal document source has a SKIP checksum, which is normal for non-essential documentation URLs. No code execution, obfuscation, or suspicious commands are present. All operations are consistent with legitimate packaging practices for a prebuilt binary package.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata with no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
<details>
The PKGBUILD is a straightforward AUR packaging file for Anthropic&#x27;s Claude Code CLI tool. It fetches prebuilt binaries from the official Anthropic downloads domain (downloads.claude.ai) with pinned SHA-256 checksums for both x86_64 and aarch64 architectures. The package() function installs the binary to /opt/claude-code/bin/claude and creates a wrapper script in /usr/bin/claude that sets two environment variables to disable upstream update checks (a standard packaging adaptation when installing outside the vendor&#x27;s expected layout). The only additional source is a license file from code.claude.com. No obfuscation, no unexpected network requests, no dangerous commands (eval, curl|bash, etc.), and no exfiltration or system tampering. The use of SKIP on the license source is standard practice when the file is used only for documentation/licensing and not integrity-critical. The binary sources have proper checksums.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned checksums, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned checksums, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,304
  Completion Tokens: 1,903
  Total Tokens: 12,207
  Total Cost: $0.001284
  Execution Time: 32.00 seconds

Final Status: SAFE


No issues found.
