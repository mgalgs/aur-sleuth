---
package: claude-code
pkgver: 2.1.259
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e1aa01f19251c0ab5d086ae2b4a1ce353c3f844d
prompt_tokens: 10376
completion_tokens: 2006
total_tokens: 12382
cost: 0.00111996192
execution_time: 45.99
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-02T23:57:42Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata with no malicious content.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for upstream version checking.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD; no malicious or suspicious behavior detected.
---

Cloning https://aur.archlinux.org/claude-code.git...
Cloned claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and a `package()` function. No top-level command substitutions, backticks, `eval`, or code execution exists outside of `package()`. There is no `pkgver()` function. The `source` URLs point to the official upstream domains (code.claude.com and downloads.claude.ai) which is expected. The `--verifysource` and `--printsrcinfo` commands will only fetch these sources and source the PKGBUILD's top-level scope, which contains no executable code beyond variable assignments. The `package()` function is not executed during this verification step, so its contents are out of scope. The SKIP checksum on the legal source file is a standard practice and does not execute anything dangerous.
</details>
<evidence></evidence>
<summary>No malicious code executes during source verification.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during source verification.
Downloading sources...
makepkg --verifysource --nodeps successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing the 3 file(s) in the AUR repository. The 0 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .nvchecker.toml...
[0/3] Reviewing .nvchecker.toml, .SRCINFO...
[0/3] Reviewing .nvchecker.toml, .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata-only package descriptor with no executable code, no obfuscation, and no dangerous commands. All binary sources are downloaded from the official Anthropic domain (`downloads.claude.ai`) with pinned SHA256 checksums (`sha256sums_x86_64` and `sha256sums_aarch64`), ensuring integrity. The legal source uses `SKIP` for its checksum, which is a common and acceptable practice for non-essential documentation files and does not introduce risk. No unusual network destinations, file operations, or system modifications are present.
</details>
<evidence>
</evidence>
<summary>Standard package metadata with no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata with no malicious content.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file used to automatically check for new upstream releases of the `claude-code` package. It uses a regex source to parse version information from the official downloads URL (`https://downloads.claude.ai/claude-code-releases/latest`). The file performs no downloads or code execution beyond what nvchecker normally does (fetching the page to extract a version string). The URL points to the project's own domain, not an untrusted third party. There is no evidence of obfuscation, exfiltration, backdoors, or malicious intent.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for upstream version checking.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for upstream version checking.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a precompiled binary package. It downloads the official Claude Code binary from Anthropic&#39;s verified domain (downloads.claude.ai) and includes a valid SHA-256 checksum for each architecture. The wrapper script under `usr/bin/claude` sets two environment variables (`DISABLE_UPDATES=1` and `DISABLE_INSTALLATION_CHECKS=1`) to suppress upstream update and installation-check warnings that would otherwise appear due to the non-standard install path — this is a normal and expected workaround, not evidence of a supply-chain attack. No obfuscated code, unexpected network requests, dangerous commands, or exfiltration mechanisms are present.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD; no malicious or suspicious behavior detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD; no malicious or suspicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,376
  Completion Tokens: 2,006
  Total Tokens: 12,382
  Total Cost: $0.001120
  Execution Time: 45.99 seconds

Final Status: SAFE


No issues found.
