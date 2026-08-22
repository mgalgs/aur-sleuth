---
package: claude-code
pkgver: 2.1.240
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: ab8f04a045309f11c3e319d8a061c88f7bc8df51
prompt_tokens: 11078
completion_tokens: 1923
total_tokens: 13001
cost: 0.00085454824
execution_time: 67.35
files_reviewed: 3
files_skipped: 0
files_unauditable: 1
unpinned_sources: 1
date: 2026-08-22T22:23:27Z
file_verdicts:
  - file: cc-legal
    status: safe
    summary: Documentation file with no executable content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version checking; no malicious behavior.
---

Cloning https://aur.archlinux.org/claude-code.git...
Cloned claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments and function definitions at the global scope. There is no top-level command substitution, no `pkgver()` function, and no code that executes during sourcing. All `source` URLs point to the official Anthropic domains (`code.claude.com` and `downloads.claude.ai`), which are the legitimate upstream for this package. The `sha256sums_x86_64` and `sha256sums_aarch64` provide pinned checksums for the binary downloads; the legal document has `SKIP`, which is acceptable at this stage. No malicious behavior such as data exfiltration, unexpected network requests, or obfuscated code is present. The `prepare()`, `build()`, and `package()` functions (which contain the wrapper script creation) are not executed during the `--nobuild --noprepare` commands.
</details>
<summary>Sources from official domains, no dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sources from official domains, no dangerous top-level code.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, cc-legal...
LLM auditresponse for cc-legal:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a markdown documentation file containing legal and compliance information for Claude Code. It includes links to official Anthropic websites (anthropic.com, code.claude.com, trust.anthropic.com, hackerone.com) for terms of service, trust center, and vulnerability reporting. There is no executable code, no obfuscated content, no suspicious network requests, and no system modification commands. The file poses no security risk.
</details>
<summary>Documentation file with no executable content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed cc-legal. Status: SAFE -- Documentation file with no executable content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package for the legitimate Claude Code application. All sources are fetched from official Anthropic/Claude domains (`downloads.claude.ai`, `code.claude.com`). The `x86_64` and `aarch64` binaries are pinned with explicit SHA256 checksums, providing integrity verification. The wrapper script in `package()` simply sets two environment variables (`DISABLE_UPDATES`, `DISABLE_INSTALLATION_CHECKS`) to prevent the upstream binary from self-updating or performing native-install health checks — a common and expected packaging technique. There is no obfuscated code, no unexpected network requests, no data exfiltration, no backdoors, and no execution of untrusted content at build time. The `SKIP` checksum on the license file is a minor hygiene note but not evidence of malice.
</details>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
Reviewed all required files.
Deciding which files to review next...
Note: 1 compiled/archived file(s) cannot be audited as text and were not reviewed (claude-2.1.240-x86_64). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Decided to review 1 additional files: .nvchecker.toml
Reviewing additional files...
Reviewing additional files...
[0/1] Reviewing .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `nvchecker` configuration used to automatically check for new upstream releases of `claude-code`. It fetches the `latest` redirect endpoint on the project's own official domain (`downloads.claude.ai`) and applies a regex to extract the version string. There is no obfuscated code, no execution of downloaded content, no exfiltration of local data, and no network requests to unexpected or unrelated hosts. The configuration is consistent with normal AUR maintainer tooling.
</details>
<summary>Standard nvchecker config for version checking; no malicious behavior.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version checking; no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,078
  Completion Tokens: 1,923
  Total Tokens: 13,001
  Total Cost: $0.000855
  Execution Time: 67.35 seconds

Final Status: SAFE


No issues found.
