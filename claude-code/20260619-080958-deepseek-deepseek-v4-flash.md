---
package: claude-code
pkgver: 2.1.183
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 10127
completion_tokens: 1882
total_tokens: 12009
cost: 0.00125019
execution_time: 67.83
files_reviewed: 3
files_skipped: 0
date: 2026-06-19T08:09:57Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with no signs of malicious behavior.
  - file: cc-legal
    status: safe
    summary: Static legal documentation; no executable content. Safe.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for official Claude Code releases
---

Cloning https://aur.archlinux.org/claude-code.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-7lwc3h3v...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-7lwc3h3v
Analyzing claude-code AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-7lwc3h3v) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD sources its binaries from the official Anthropic domain (`downloads.claude.ai`) and its legal document from the official `code.claude.com` domain. Both are the legitimate upstream for the claude-code tool. No global/top-level code executes during sourcing—only `source` array definitions and `sha256sums` are processed. The `package()` function (which creates a `/usr/bin/claude` wrapper with `DISABLE_UPDATES` and `DISABLE_INSTALLATION_CHECKS` environment variables) is not executed under `--nobuild --noprepare` and will be audited separately. No `eval`, `curl|bash`, or other dynamic execution occurs at the parse stage. Checksums are `SKIP` for the legal document (standard for a plain `.md` source) and properly pinned for the architecture-specific binaries.
</details>
<summary>Standard AUR package fetching from official upstream; no malicious code in scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard AUR package fetching from official upstream; no malicious code in scope.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, cc-legal...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. All sources are fetched from official Anthropic/Claude domains (code.claude.com and downloads.claude.ai). The binary downloads have pinned SHA-256 checksums, ensuring integrity. The legal license file uses `SKIP` for checksums, which is acceptable for a plain text document from the official source.

The package() function simply installs the binary to `/opt/claude-code/bin/claude` and creates a wrapper script at `/usr/bin/claude` that sets `DISABLE_UPDATES=1` and `DISABLE_INSTALLATION_CHECKS=1` — a routine and expected AUR practice to prevent the application from self-updating outside the package manager. No dangerous commands, obfuscated code, unexpected network requests, or data exfiltration is present. This is a legitimate and well-maintained packaging of the upstream claude-code tool.
</details>
<summary>Clean PKGBUILD with no signs of malicious behavior.</summary>
</security_assessment>

[1/2] Reviewing cc-legal...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with no signs of malicious behavior.
LLM auditresponse for cc-legal:
<security_assessment>
<decision>SAFE</decision>
<details>
The file "cc-legal" is a static documentation file containing legal and compliance information for Claude Code. It consists entirely of plain text markdown with hyperlinks to official Anthropic domains (anthropic.com, support.claude.com, trust.anthropic.com, platform.claude.com, hackerone.com). There is no executable code, no encoded or obfuscated content, no network request commands, no file operations, and no system modifications. No evidence of supply-chain attack, backdoor, data exfiltration, or any malicious behavior is present.
</details>
<summary>Static legal documentation; no executable content. Safe.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed cc-legal. Status: SAFE -- Static legal documentation; no executable content. Safe.
Reviewed all required files.
Deciding which files to review next...
Decided to review 1 additional files: .nvchecker.toml
Reviewing additional files...
Reviewing additional files...
[0/1] Reviewing .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard configuration file for nvchecker, a tool used to automate checking for new upstream releases. It defines a rule for the `claude-code` package that fetches the latest release URL from the official domain (`downloads.claude.ai`) and uses regex to extract the version string. There is no suspicious activity, obfuscation, or any behavior beyond normal packaging automation. The source URL is the official and expected upstream for Claude Code.
</details>
<summary>Standard nvchecker config for official Claude Code releases</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for official Claude Code releases
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,127
  Completion Tokens: 1,882
  Total Tokens: 12,009
  Total Cost: $0.001250
  Execution Time: 67.83 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-claude-code.txt
Final Status: SAFE


No issues found.
