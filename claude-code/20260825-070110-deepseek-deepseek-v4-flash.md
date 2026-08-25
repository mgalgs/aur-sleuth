---
package: claude-code
pkgver: 2.1.245
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 34eecedf33cdb5da67bea8964402044d560850d8
prompt_tokens: 11370
completion_tokens: 2285
total_tokens: 13655
cost: 0.001412379640
execution_time: 50.2
files_reviewed: 3
files_skipped: 0
files_unauditable: 1
unpinned_sources: 1
date: 2026-08-25T07:01:09Z
file_verdicts:
  - file: cc-legal
    status: safe
    summary: Standard legal documentation file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious code detected.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version checking.
---

Cloning https://aur.archlinux.org/claude-code.git...
Cloned claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments at the top level and a `package()` function definition. There is no `pkgver()` function. No dangerous commands (curl, wget, eval, exec, etc.) are executed in global scope. The `source` arrays reference the official Claude Code domains (code.claude.com, downloads.claude.ai) over HTTPS, which is expected for this package. The `sha256sums` for the legal document is SKIP, but per the gate criteria that is acceptable and not grounds to block. The binary sources have valid SHA256 checksums. The `package()` function, which contains `install` commands and a heredoc, is not executed during the source-fetching commands (`--nobuild`/`--noprepare`). No malicious or suspicious behavior is present in the code that would execute during PKGBUILD sourcing or source fetching.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; sources are from official domains.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sources are from official domains.
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
The file is a plain Markdown document containing legal and compliance information for Claude Code. It includes links to Anthropic's official sites, usage policies, and trademark guidelines. There are no executable commands, no obfuscated code, no network requests, no file operations, and no system modifications. The content is purely informational and consistent with standard documentation files found in software packages. No evidence of supply-chain attack or malicious intent.
</details>
<evidence>

</evidence>
<summary>Standard legal documentation file, no security concerns.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed cc-legal. Status: SAFE -- Standard legal documentation file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging conventions for a prebuilt binary package. All sources are fetched from the official Claude domain (downloads.claude.ai, code.claude.com), which is the expected upstream for this package. The binary sources have pinned SHA-256 checksums, providing integrity verification. The legal document source uses `SKIP` for checksums, which is a minor hygiene concern but not malicious.

The `package()` function performs only expected operations: installing the binary to `/opt/claude-code/bin/claude`, creating a wrapper script at `/usr/bin/claude` that sets environment variables to suppress upstream update checks (a reasonable adaptation for AUR-managed installations), and installing the license file. There are no suspicious network requests, obfuscated code, or dangerous commands. The wrapper script simply sets two environment variables and execs the real binary — no data exfiltration, backdoors, or unexpected behavior.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious code detected.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious code detected.
Reviewed all required files.
Deciding which files to review next...
Note: 1 compiled/archived file(s) cannot be audited as text and were not reviewed (claude-2.1.245-x86_64). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Decided to review 1 additional files: .nvchecker.toml
Reviewing additional files...
Reviewing additional files...
[0/1] Reviewing .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for `nvchecker`, a tool used by AUR maintainers to automatically detect new upstream releases. It defines a single source `[claude-code]` that fetches the latest release info from the official Anthropic downloads URL (`https://downloads.claude.ai/claude-code-releases/latest`). The regex pattern `.+` matches any content, which is typical for extracting version strings from such endpoints. There is no obfuscation, no execution of arbitrary code, no network requests to untrusted hosts, and no file operations. The URL points to the legitimate domain for Claude Code releases. This is a standard and benign maintainer helper script.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for version checking.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version checking.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,370
  Completion Tokens: 2,285
  Total Tokens: 13,655
  Total Cost: $0.001412
  Execution Time: 50.20 seconds

Final Status: SAFE


No issues found.
