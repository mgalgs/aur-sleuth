---
package: claude-desktop-extra
pkgver: 4.4212.0
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 19587
completion_tokens: 15449
total_tokens: 35036
cost: 0.004594135
execution_time: 73.41
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-02T20:04:10Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious behavior.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard install script, no malicious behavior found.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only standard variable definitions (pkgname, pkgver, arrays for depends, source, etc.) and a deferred function definition for `package()`. No command substitutions, external commands (curl, wget, eval, base64), or any executable code exist at the top level that would run when the file is sourced by `makepkg --printsrcinfo`. Code inside the `package()` function is explicitly out of scope for this narrow sourcing gate. Therefore, executing `makepkg --printsrcinfo` against this file poses no risk.
</details>
<evidence>
</evidence>
<summary>SAFE: No top-level code execution during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- SAFE: No top-level code execution during printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, claude-desktop-extra.install...
[0/3] Reviewing .SRCINFO, claude-desktop-extra.install, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard AUR package metadata. It declares a package `claude-desktop-extra` with sources fetched from the project's own GitHub releases URL. Checksums are pinned (not SKIP) for both x86_64 and aarch64 tarballs. Dependencies and optional dependencies are typical for a desktop application like this (GTK, DBus, audio, etc.). No suspicious URLs, obfuscation, or commands are present. The file is purely declarative and contains no executable code. There is no evidence of malicious behavior or supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO metadata, no security issues.</summary>
</security_assessment>

[1/3] Reviewing claude-desktop-extra.install, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package for distributing Claude Desktop with extra features. All operations are legitimate packaging tasks:

- **Source integrity**: The tarball is fetched from the package maintainer's GitHub releases with pinned SHA-256 checksums for both architectures. No VCS sources, no `SKIP` checksums.
- **No dynamic code execution**: There is no `curl|bash`, no `eval`, no base64 decoding, no obfuscated strings, no `git pull` or `git fetch` that could pull unchecked code at build time. The `package()` function only copies files from the tarball, sets permissions, and writes configuration files (desktop entry, MIME types, a JSON release stamp).
- **Standard packaging operations**: `install`, `cp`, `chmod`, and writing static `.desktop`/`.ini`/`.service`/`.xml` files are all expected. The SUID bit on `chrome-sandbox` is required for Chromium's sandbox and is standard for Electron apps.
- **No data exfiltration or backdoors**: The file does not read or send any local data, does not make outbound connections, and does not modify files outside its own installation prefix (`$pkgdir`).

The only noteworthy observation is that this packages a pre-built binary from a third-party GitHub account rather than from Anthropic's official distribution. However, the checksums pin the exact release, and this is the stated purpose of the package — it is not an injected supply-chain attack. All operations serve the packaging workflow.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing claude-desktop-extra.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious behavior.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman install script for a Claude Desktop package. It performs typical post-install operations: setting the SUID bit on the Chromium sandbox, creating an AppArmor profile (unconfined userns) for the application, refreshing desktop/icon caches, and printing informational messages about optional dependencies and a legacy repository rename. Every operation is local, read-only (except intended writes to package-owned files), and follows the same pattern as the official upstream .deb postinst. No network requests, obfuscated code, or exfiltration of data is present. The script only manipulates files within the package’s own scope and prints advisory messages.
</details>
<evidence></evidence>
<summary>Standard install script, no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard install script, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,587
  Completion Tokens: 15,449
  Total Tokens: 35,036
  Total Cost: $0.004594
  Execution Time: 73.41 seconds

Final Status: SAFE


No issues found.
