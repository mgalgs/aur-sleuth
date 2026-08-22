---
package: claude-code
pkgver: 2.1.239
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 09f2e477a21d918155ca5fbfdf5bc833f8a3f124
prompt_tokens: 11086
completion_tokens: 1763
total_tokens: 12849
cost: 0.00110262152
execution_time: 59.0
files_reviewed: 3
files_skipped: 0
files_unauditable: 1
unpinned_sources: 1
date: 2026-08-22T03:22:38Z
file_verdicts:
  - file: cc-legal
    status: safe
    summary: Documentation file, no executable or suspicious content.
  - file: PKGBUILD
    status: safe
    summary: Legitimate PKGBUILD with pinned checksums and standard packaging.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version checking; harmless.
---

Cloning https://aur.archlinux.org/claude-code.git...
Cloned claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD has no dangerous code in its global/top-level scope or any `pkgver()` function. All source URLs point to the project's official domains (`downloads.claude.ai` and `code.claude.com`) over HTTPS, and no network requests to unexpected hosts occur during sourcing. The `sha256sums_x86_64` and `sha256sums_aarch64` are pinned, while the legal document uses `SKIP` (acceptable per AUR norms and within our narrow gate). No `eval`, command substitution that invokes external commands, or other hazardous constructs exist outside `package()` (which is not executed by the commands in scope). Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<summary>Safe to fetch sources; no malicious code in scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe to fetch sources; no malicious code in scope.
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
The file `cc-legal` contains only documentation text describing legal agreements, compliance, usage policies, and security information for Claude Code. It includes standard hyperlinks to Anthropic's terms of service, trademark guidelines, and trust center — all expected references for an upstream project's legal documentation. There are no executable commands, obfuscated strings, network requests, file operations, or any code that could be considered malicious. The content is purely informational and poses no security risk.
</details>
<summary>Documentation file, no executable or suspicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed cc-legal. Status: SAFE -- Documentation file, no executable or suspicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices with no evidence of malicious behavior. Key observations:

- **Source integrity**: The binary is downloaded from the official Anthropic/Claude domain (`downloads.claude.ai`) with pinned SHA-256 checksums for both `x86_64` and `aarch64` architectures. Only the legal document source uses `SKIP` (acceptable for documentation).
- **Build/package steps**: The `package()` function simply installs the binary to `/opt/claude-code/bin/claude`, creates a wrapper script that sets `DISABLE_UPDATES=1` and `DISABLE_INSTALLATION_CHECKS=1` (standard practice for packaged applications to prevent self-update conflicts), and installs the license file. No unexpected or dangerous operations.
- **No obfuscation, network requests (beyond standard source downloads), or suspicious file manipulations**. The wrapper script is a plain shell script with hardcoded export values — no encoded/decoded commands, no external network calls.
</details>
<summary>Legitimate PKGBUILD with pinned checksums and standard packaging.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate PKGBUILD with pinned checksums and standard packaging.
Reviewed all required files.
Deciding which files to review next...
Note: 1 compiled/archived file(s) cannot be audited as text and were not reviewed (claude-2.1.239-x86_64). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Decided to review 1 additional files: .nvchecker.toml
Reviewing additional files...
Reviewing additional files...
[0/1] Reviewing .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for `nvchecker` (a tool to check for new upstream versions). It defines a check named `claude-code` that uses the `regex` source type to scrape the URL `https://downloads.claude.ai/claude-code-releases/latest` for version information using the regex `.` (which matches any characters). This is standard and expected behavior for version checking in AUR packages. There is no obfuscated code, no dangerous commands, no network requests outside the package's own upstream domain, and no data exfiltration. The file is entirely declarative and benign.
</details>
<summary>Standard nvchecker config for version checking; harmless.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version checking; harmless.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,086
  Completion Tokens: 1,763
  Total Tokens: 12,849
  Total Cost: $0.001103
  Execution Time: 59.00 seconds

Final Status: SAFE


No issues found.
