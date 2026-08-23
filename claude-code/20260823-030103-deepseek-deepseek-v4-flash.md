---
package: claude-code
pkgver: 2.1.241
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3aa684c47f9b6bac5667ff3cee413c3a000b1b0d
prompt_tokens: 11078
completion_tokens: 1695
total_tokens: 12773
cost: 0.00078792728
execution_time: 44.37
files_reviewed: 3
files_skipped: 0
files_unauditable: 1
unpinned_sources: 1
date: 2026-08-23T03:01:02Z
file_verdicts:
  - file: cc-legal
    status: safe
    summary: Documentation file with no executable content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned checksums, no suspicious behavior.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version checking; no security issues found.
---

Cloning https://aur.archlinux.org/claude-code.git...
Cloned claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD sets only static variables in its global scope—no command substitutions, `eval`, `base64`, `curl|bash`, or any code that executes during sourcing. No `pkgver()` function exists. The `source` array points to official Anthropic/Claude domains (`downloads.claude.ai`, `code.claude.com`) over HTTPS. All potentially dangerous code resides inside the `package()` function, which is **not** executed by `makepkg --nobuild --nodeps --noprepare` or `--printsrcinfo`. There is no mechanism for remote code execution, data exfiltration, or other supply-chain attacks in the scope that runs during these commands.
</details>
<summary>No malicious code in global scope or pkgver(). Safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope or pkgver(). Safe to fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing required files...
[0/2] Reviewing cc-legal...
[0/2] Reviewing cc-legal, PKGBUILD...
LLM auditresponse for cc-legal:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is plain documentation text written in Markdown format. It contains legal terms, compliance information, and links to Anthropic's official websites. There are no executable commands, obfuscated code, suspicious network requests, or system operations. The content is entirely informational and consistent with what one would expect from a legal/compliance document distributed with a legitimate package.
</details>
<summary>Documentation file with no executable content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed cc-legal. Status: SAFE -- Documentation file with no executable content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard, well-structured Arch package for the upstream Claude Code tool. All binary sources are fetched from the official Anthropic/Claude domain (`downloads.claude.ai`) with pinned SHA256 checksums, ensuring integrity. The `package()` function only installs the binary to `/opt/claude-code/bin/`, creates a harmless wrapper script that sets environment variables (`DISABLE_UPDATES`, `DISABLE_INSTALLATION_CHECKS`) to avoid upstream update prompts, and copies the license file. There is no obfuscated code, no unexpected network requests, no execution of untrusted content, and no file operations outside the package destination (`$pkgdir`). The `SKIP` checksum on the legal document (`cc-legal`) is not a security concern—it's a non-executable markdown file, and the binary sources are properly verified.
</details>
<summary>Standard AUR PKGBUILD with pinned checksums, no suspicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned checksums, no suspicious behavior.
Reviewed all required files.
Deciding which files to review next...
Note: 1 compiled/archived file(s) cannot be audited as text and were not reviewed (claude-2.1.241-x86_64). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Decided to review 1 additional files: .nvchecker.toml
Reviewing additional files...
Reviewing additional files...
[0/1] Reviewing .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file used to automate version checking for the claude-code package. It defines a source named "claude-code" with source type "regex", targeting the official Claude AI downloads URL (`https://downloads.claude.ai/claude-code-releases/latest`). The regex `.+` matches any content on that page, which is a typical pattern for extracting version information. The URL points to the project's own upstream domain, consistent with legitimate packaging practices. There is no malicious code, obfuscation, or unexpected behavior.
</details>
<summary>
Standard nvchecker config for version checking; no security issues found.
</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version checking; no security issues found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,078
  Completion Tokens: 1,695
  Total Tokens: 12,773
  Total Cost: $0.000788
  Execution Time: 44.37 seconds

Final Status: SAFE


No issues found.
