---
package: claude-desktop
pkgver: 2.2553.13
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16557
completion_tokens: 2746
total_tokens: 19303
cost: 0.001080401
execution_time: 35.49
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-22T23:04:09Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Clean metadata; no malicious content.
  - file: .gitignore
    status: safe
    summary: Benign .gitignore; standard AUR build artifact exclusions only.
  - file: PKGBUILD
    status: safe
    summary: Standard repackaging PKGBUILD; no malicious behavior found.
  - file: claude-desktop.sh
    status: safe
    summary: Legitimate Electron launcher; no security issues.
---

Materializing claude-desktop from local mirror...
Materialized claude-desktop
Analyzing claude-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only standard variable declarations: `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `optdepends`, `conflicts`, `options`, `_baseurl`, `source`, `source_x86_64`, `source_aarch64`, `sha256sums`, `sha256sums_x86_64`, `sha256sums_aarch64`. There are no command substitutions, function calls, network requests, eval statements, or any other executable operations that would run when the PKGBUILD is sourced. The `package()` function is defined but not invoked at top level, so it is not executed during `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>No executable operations at top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable operations at top-level scope.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .gitignore...
[0/4] Reviewing .gitignore, .SRCINFO...
[0/4] Reviewing .gitignore, .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata-only package descriptor for the claude-desktop AUR package. It contains standard fields: pkgbase, pkgver, dependencies, source URLs, and checksums. All source URLs point to the official Anthropic download server (downloads.claude.ai). The checksums are provided and not set to SKIP. Dependencies are appropriate for a proprietary Electron-based desktop application with virtual-machine-backed features (Cowork). There is no executable code, obfuscation, network redirection, or any other malicious indicator in this file. The content is consistent with legitimate AUR packaging practices.
</details>
<evidence></evidence>
<summary>Clean metadata; no malicious content.</summary>
</security_assessment>

[0/4] Reviewing .gitignore, .SRCINFO, PKGBUILD, claude-desktop.sh...
[1/4] Reviewing .gitignore, PKGBUILD, claude-desktop.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Clean metadata; no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file contains only standard ignore patterns for an Arch User Repository package repository. It excludes `.deb` source artifacts, built package tarballs (`*.pkg.tar*`), and makepkg working directories (`src/` and `pkg/`). There are no commands, network operations, obfuscated content, or any other behavior that could constitute a security risk. It is consistent with normal AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Benign .gitignore; standard AUR build artifact exclusions only.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, claude-desktop.sh...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore; standard AUR build artifact exclusions only.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward repackaging of Anthropic&#x2019;s official Claude Desktop Debian package into an Arch Linux package. All operations are standard for this type of package: extracting a .deb archive, replacing the upstream wrapper script with an Arch-appropriate launcher, setting setuid on chrome-sandbox (as every Chromium-based package does), removing Debian-specific lintian files, and creating compatibility symlinks for the Cowork VM feature.  

All source downloads come from the official `downloads.claude.ai` domain with pinned SHA-256 checksums. There is no obfuscated code, no unexpected network requests, no data exfiltration, and no execution of untrusted content. The file is well-commented and follows Arch packaging conventions throughout.
</details>
<evidence>
</evidence>
<summary>Standard repackaging PKGBUILD; no malicious behavior found.</summary>
</security_assessment>

[3/4] Reviewing claude-desktop.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard repackaging PKGBUILD; no malicious behavior found.
LLM auditresponse for claude-desktop.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Electron application launcher script. It reads optional user-provided flags from a local configuration file (~/.config/claude-desktop-flags.conf), detects whether the session is running under Wayland (to pass the appropriate Ozone platform flag), and then launches the main application binary. The script performs no network operations, no file writes, no obfuscation, and no execution of untrusted code. All operations are legitimate and expected for a desktop Electron launcher. There is no evidence of supply-chain compromise or malicious behavior.
</details>
<evidence></evidence>
<summary>Legitimate Electron launcher; no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed claude-desktop.sh. Status: SAFE -- Legitimate Electron launcher; no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,557
  Completion Tokens: 2,746
  Total Tokens: 19,303
  Total Cost: $0.001080
  Execution Time: 35.49 seconds

Final Status: SAFE


No issues found.
