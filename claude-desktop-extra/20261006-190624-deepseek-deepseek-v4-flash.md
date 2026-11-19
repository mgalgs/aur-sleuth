---
package: claude-desktop-extra
pkgver: 2.19675.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 18201
completion_tokens: 3634
total_tokens: 21835
cost: 0.0046569803
execution_time: 28.96
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-06T19:06:24Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: AUR package metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; pinned checksums, no malicious or obfuscated operations.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard install hooks; no malicious behavior.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments (pkgname, pkgver, depends, source arrays, etc.) and a function definition for package(). All variable values are static strings or arrays; there are no command substitutions, backtick executions, or eval statements in the global scope. The function body is not executed by `makepkg --printsrcinfo`. No content in the top-level scope would download, execute, or exfiltrate data during sourcing.
</details>
<evidence></evidence>
<summary>No malicious code in global scope for this PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope for this PKGBUILD.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, claude-desktop-extra.install...
[0/3] Reviewing .SRCINFO, claude-desktop-extra.install, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard metadata descriptor for an AUR package. It declares the package&#x27;s name, version, upstream URL, dependencies, optional dependencies, and source tarballs with verified SHA256 checksums. All source downloads point to the project&#x27;s own GitHub releases page, and checksums are pinned (not SKIP). There are no executable commands, no obfuscated code, no unexpected network destinations, and no signs of supply-chain tampering. The file is consistent with normal AUR packaging practices and contains no malicious content.
</details>
<evidence>
</evidence>
<summary>AUR package metadata file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing claude-desktop-extra.install, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- AUR package metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows ordinary AUR packaging practice for a repackaged Electron application. It downloads architecture-specific tarballs from the package maintainer's own GitHub releases with pinned sha256 checksums, then installs the contents under `/usr/lib/claude-desktop`, adds a launcher, desktop entry, icons, and GNOME search provider files. No `curl|bash`, `eval`, base64 decoding, obfuscated payloads, or writes outside normal package directories are present.

The `chmod 4755` on `chrome-sandbox` is standard for Chromium/Electron packages, and the referenced `.install` hook reasserting ownership and permissions is routine. The prebuilt tarball is produced by the maintainer rather than Anthropic directly, which is a trust consideration, but the checksums pin the exact artifact and there is no evidence of injected malicious code. The application-level behavior mentioned in `optdepends` (such as auto-downloading a checksum-verified CLI) is upstream application functionality, not a packaging supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard AUR PKGBUILD; pinned checksums, no malicious or obfuscated operations.</summary>
</security_assessment>

[2/3] Reviewing claude-desktop-extra.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; pinned checksums, no malicious or obfuscated operations.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.install` file performs standard post-installation tasks for a Chromium-based desktop application:

- Sets the SUID bit on the chrome-sandbox binary (required for Chromium's setuid sandbox).
- Writes an AppArmor profile that allowlists the application for unprivileged user namespaces (same pattern used by Chrome, VS Code, 1Password).
- Refreshes desktop database and icon caches so the launcher appears.
- Prints informational notes about optional dependencies (Cowork VM) and a legacy repo migration hint (reads `/etc/pacman.conf` with grep, no modifications).

There is **no** evidence of malicious behavior: no network downloads, no exfiltration of data, no obfuscated code, no dangerous commands like `eval` or `curl|bash`, and no execution of untrusted code. All operations are confined to the package's own files and standard system configuration paths.
</details>
<evidence></evidence>
<summary>Standard install hooks; no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard install hooks; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,201
  Completion Tokens: 3,634
  Total Tokens: 21,835
  Total Cost: $0.004657
  Execution Time: 28.96 seconds

Final Status: SAFE


No issues found.
