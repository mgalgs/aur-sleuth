---
package: claude-code
pkgver: 2.1.240
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: ab8f04a045309f11c3e319d8a061c88f7bc8df51
prompt_tokens: 11078
completion_tokens: 1862
total_tokens: 12940
cost: 0.00084756252
execution_time: 39.0
files_reviewed: 3
files_skipped: 0
files_unauditable: 1
unpinned_sources: 1
date: 2026-08-22T23:00:51Z
file_verdicts:
  - file: cc-legal
    status: safe
    summary: Documentation file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; no evidence of malicious code.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version tracking; no security issues.
---

Cloning https://aur.archlinux.org/claude-code.git...
Cloned claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no top-level code execution, no `pkgver()` function, and no commands such as `eval`, `curl`, `wget`, or similar that could execute arbitrary code during the `makepkg --nobuild --nodeps --noprepare` step. All `source` entries are HTTPS URLs pointing to the official Claude Code infrastructure (`code.claude.com` and `downloads.claude.ai`). The SKIP checksum on the legal document is standard practice for non‑VCS sources and does not introduce executable content – extraction writes files to disk only, and no code from those files is run at this stage. The `package()` function (which creates a wrapper script and installs files) is not executed during this narrow gate, so any concerns about its content are deferred to the full audit.
</details>
<summary>No executable top-level code; sources from official domains.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable top-level code; sources from official domains.
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
This file is purely documentation in Markdown format. It contains legal terms, compliance information, and links to official Anthropic websites (anthropic.com, code.claude.com, trust.anthropic.com, hackerone.com). There are no executable commands, obfuscated code, suspicious network requests, or system modifications. The content is consistent with standard documentation expected for a software package and does not exhibit any evidence of a supply-chain attack.
</details>
<summary>Documentation file with no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed cc-legal. Status: SAFE -- Documentation file with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a precompiled binary application. The binary source is fetched from the official Claude AI downloads domain (`downloads.claude.ai`) with pinned SHA256 checksums for both architectures. The packaging function installs the binary to `/opt/claude-code/bin/` and creates a simple wrapper script that sets two benign environment variables (`DISABLE_UPDATES=1`, `DISABLE_INSTALLATION_CHECKS=1`) to suppress upstream self-update logic, then `exec`s the real binary. This is a standard approach for package-manager-based installations of applications that have their own update mechanisms.

The only checksum set to `SKIP` is for the license file source, which is a minor trust/pinning concern but explicitly not grounds for an UNSAFE classification per the analysis guidelines. There are no obfuscated commands, no unexpected network requests, no data exfiltration, no execution of untrusted code, and no modifications to files outside the package's own installed paths.
</details>
<summary>Standard AUR PKGBUILD; no evidence of malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; no evidence of malicious code.
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
This is a configuration file for `nvchecker`, a tool that monitors upstream releases for new versions. The settings are benign: `source = "regex"` tells nvchecker to fetch the given URL and apply a regex pattern to extract the version string. The URL points to `downloads.claude.ai/claude-code-releases/latest`, which is the official Claude Code download endpoint. The regex `".+"` is overly permissive (matches any non-empty string) but does not introduce any security risk — it would simply cause nvchecker to report whatever text is returned, which is a configuration quality issue, not a supply-chain attack. There is no code execution, data exfiltration, or unexpected behavior.
</details>
<summary>
Standard nvchecker config for version tracking; no security issues.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version tracking; no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,078
  Completion Tokens: 1,862
  Total Tokens: 12,940
  Total Cost: $0.000848
  Execution Time: 39.00 seconds

Final Status: SAFE


No issues found.
