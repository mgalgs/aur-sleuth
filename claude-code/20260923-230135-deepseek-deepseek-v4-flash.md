---
package: claude-code
pkgver: 2.1.281
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10246
completion_tokens: 2428
total_tokens: 12674
cost: 0.0010359972
execution_time: 41.96
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-23T23:01:34Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version checking; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Legitimate AUR metadata; no malicious indicators found.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope consists entirely of static variable definitions and a single `package()` function definition. No command substitutions (`$()` or backticks), no `eval`, no outbound network calls, and no file operations are executed when the file is sourced. All data assignments (source arrays, checksums, dependencies) are inert string definitions. The `package()` function body is not invoked during `makepkg --printsrcinfo` — it will only run during the package stage, which is reviewed separately. There is no code in the global scope that could download, execute, or exfiltrate data.
</details>
<evidence></evidence>
<summary>No malicious top-level code during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code during sourcing.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .nvchecker.toml...
[0/3] Reviewing .nvchecker.toml, .SRCINFO...
[0/3] Reviewing .nvchecker.toml, .SRCINFO, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration for `nvchecker`, a tool used to check for new upstream releases. It defines a source named `claude-code` that fetches the latest release version by scraping the URL `https://downloads.claude.ai/claude-code-releases/latest`. The domain `downloads.claude.ai` is the official and expected upstream for the Claude Code application. No malicious behavior is present: there are no commands, no exfiltration, no obfuscation, no downloads to unexpected hosts, and no system or file modifications. The permissive regex `.+` is a configuration choice that matches any content at that URL, which is not inherently dangerous in this context.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for version checking; no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version checking; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch Linux package build file for the claude-code binary from Anthropic. The binary is downloaded from the official `downloads.claude.ai` domain over HTTPS, with pinned SHA256 checksums for both `x86_64` and `aarch64` architectures. The `package()` function performs only routine installation operations: placing the binary under `/opt/claude-code/bin/`, creating a thin wrapper in `/usr/bin/` that sets two harmless environment variables (`DISABLE_UPDATES=1` and `DISABLE_INSTALLATION_CHECKS=1`) to suppress upstream self-update mechanisms and native-install warnings (a standard practice for package-managed installations), and installing the license file. There are no suspicious network requests, no obfuscated or encoded code, no use of `eval`, `curl`, `wget`, or other dangerous commands in unexpected contexts, and no manipulation of files outside the application's own scope. The only `SKIP` checksum applies to a plain-text license/documentation file, which is a trust/hygiene choice but not evidence of malice.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR metadata file for the `claude-code` package. It declares sources from the official upstream domain (`downloads.claude.ai` and `code.claude.com`), with pinned version `2.1.281` and SHA256 checksums provided for both `x86_64` and `aarch64` binary sources. The `sha256sums = SKIP` on the legal document is an accepted practice and not a sign of malice. No executable code, obfuscation, suspicious network requests, or data exfiltration attempts are present. All dependencies (`bash`, `git`, `github-cli`, etc.) are reasonable for the application&#x27;s stated purpose as an agentic coding tool.</details>
<evidence></evidence>
<summary>Legitimate AUR metadata; no malicious indicators found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Legitimate AUR metadata; no malicious indicators found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,246
  Completion Tokens: 2,428
  Total Tokens: 12,674
  Total Cost: $0.001036
  Execution Time: 41.96 seconds

Final Status: SAFE


No issues found.
