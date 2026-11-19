---
package: claude-desktop-extra
pkgver: 2.31226.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 18889
completion_tokens: 2652
total_tokens: 21541
cost: 0.0035022273
execution_time: 26.92
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-09T23:14:17Z
file_verdicts:
  - file: claude-desktop-extra.install
    status: safe
    summary: Benign package install hook; no malicious behavior or injected code found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata with pinned checksums and no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard Electron AUR packaging with pinned checksums; no malicious code found.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD&#39;s global (top-level) scope contains only standard variable definitions (pkgname, pkgver, arch, depends, source arrays, checksums, etc.) and a `package()` function definition. There are no command substitutions, no invocations of `curl`, `wget`, `eval`, `base64`, or any other potentially dangerous commands. No network requests, file writes, or data exfiltration occurs when the PKGBUILD is sourced. The `install` variable references `$pkgname.install` which is a simple string expansion and does not trigger any execution. Since `makepkg --printsrcinfo` only sources the global scope and does not execute `pkgver()`, `prepare()`, `build()`, or `package()`, there is no risk of executing malicious code at this stage.
</details>
<evidence></evidence>
<summary>Top-level code is declarative only; no dangerous execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code is declarative only; no dangerous execution.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman install hook for a packaged application. It performs three routine actions: setting SUID on the package's own chrome-sandbox binary, writing/removing an AppArmor profile that allowlists the packaged application for user namespaces, and refreshing desktop/icon caches. These actions directly support the application's stated purpose on Linux and mirror the official upstream postinst behavior.

There is no network access, no fetching or executing remote code, no obfuscation, no encoding tricks, and no eval-style behavior. File modifications are confined to the package's own installed files (`/usr/lib/claude-desktop/`), its own AppArmor profile (`/etc/apparmor.d/claude-desktop`), and standard system caches. The printed notes are informational only. Writing an AppArmor profile and setting SUID on the sandbox are security-relevant, but they are expected packaging steps for Chromium-based applications and are not malicious.
</details>
<evidence>
</evidence>
<summary>
Benign package install hook; no malicious behavior or injected code found.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Benign package install hook; no malicious behavior or injected code found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file describes a standard AUR package that packages an official/prebuilt Claude Desktop build with maintainer-provided extras. The sources are pinned release tarballs from the package's declared upstream GitHub repository (`patrickjaja/claude-desktop-extra`) and both `x86_64` and `aarch64` variants include explicit `sha256sums` values, so the artifacts are checksum-verified and the sources are not mutable or unpinned. Dependencies and optdepends are appropriate for a desktop Electron application with optional features such as a VM coworker, Wayland tooling, and desktop integration.

There is no obfuscated code, no suspicious network calls, no dynamic download-and-execute behavior, and no indication of data exfiltration or system tampering in this metadata file. The only fetch is the package's own declared upstream release tarball, which is standard packaging practice. The install script (`claude-desktop-extra.install`) is not part of the provided content, so it cannot be audited here; however, nothing in the `.SRCINFO` itself indicates malicious behavior. The maintainer's fork and the GitHub release channel are a trust consideration, but they are the package's declared upstream and the checksums mitigate artifact integrity risks.
</details>
<evidence>
</evidence>
<summary>
Standard AUR package metadata with pinned checksums and no malicious behavior found.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata with pinned checksums and no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt Electron application. It downloads a tarball from the package maintainer's own GitHub releases with pinned `sha256sums` for both x86_64 and aarch64, then installs the extracted tree into `/usr/lib/claude-desktop`, installs a launcher, desktop entry, icons, GNOME Shell search provider files, MIME data, and license. There are no suspicious network operations, no obfuscated code, and no use of `eval`, `curl`, `wget`, or encoded payloads.

The `chmod 4755` on `chrome-sandbox` is the standard, expected setup for Chromium/Electron applications and is not malicious. The `.install` hook is referenced but not present in this file; based on the comments, it is described as re-asserting the correct ownership and SUID mode at install time, which is normal for this class of application. The source is a prebuilt, patched third-party tarball rather than an official Anthropic artifact, so users are placing trust in the maintainer's release process, but that is a supply-chain trust consideration and not evidence of injected malicious behavior in this PKGBUILD.
</details>
<evidence>
</evidence>
<summary>
Standard Electron AUR packaging with pinned checksums; no malicious code found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Electron AUR packaging with pinned checksums; no malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,889
  Completion Tokens: 2,652
  Total Tokens: 21,541
  Total Cost: $0.003502
  Execution Time: 26.92 seconds

Final Status: SAFE


No issues found.
