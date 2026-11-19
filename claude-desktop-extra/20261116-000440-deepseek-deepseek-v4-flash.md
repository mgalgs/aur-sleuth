---
package: claude-desktop-extra
pkgver: 5.11492.5
pkgrel: 5
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 20881
completion_tokens: 8047
total_tokens: 28928
cost: 0.00332775
execution_time: 35.91
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-16T00:04:40Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard pinned source PKGBUILD, no malicious patterns found.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard install hook mirroring upstream postinst behavior.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable definitions (strings, arrays, and comments) and a single function definition (`package()`). No command substitutions (`$(...)`), backtick-executions, arithmetic evaluations, `eval`, `source` of external files, or any other executable constructs exist at the global scope. The variable expansions in `source_x86_64` and `source_aarch64` are simple string interpolation within double quotes (expanding `$pkgver`, `$pkgrel`), which is standard and does not invoke shell commands. The `install="$pkgname.install"` line is likewise a static string assignment. None of the code inside the `package()` function can execute during `makepkg --printsrcinfo`, as function bodies are only parsed, not invoked, at source time. There is no mechanism here that could exfiltrate data, download payloads, or modify system state when the PKGBUILD is sourced.
</details>
<evidence></evidence>
<summary>No executable code at top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code at top-level scope.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file for a package distributing prebuilt binaries from GitHub releases. All checksums are pinned (not SKIP), and all download URLs point to the package maintainer's own GitHub releases over HTTPS. There is no obfuscated code, suspicious network destinations, or dangerous commands in this metadata. The `install` script referenced is not part of this file, so it cannot be evaluated here. Based solely on the `.SRCINFO`, there is no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata with pinned checksums; no malicious content.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows secure packaging practices. All sources are pinned to specific GitHub release tarballs with hard-coded SHA256 checksums. The `package()` function performs standard file installation for a prebuilt Electron application: copying the runtime tree, setting the SUID sandbox bit, creating a version metadata file, and deploying application configuration (desktop entry, icons, MIME types, udev rules, polkit actions). There are no dynamic code executions, encoded payloads, suspicious network requests, or attempts to exfiltrate data. The polkit policies and udev rules for TPM/KVM access are transparently documented as part of the package's Cowork agent VM functionality, which is consistent with the application's stated purpose. The PKGBUILD itself contains no injected malicious code.
</details>
<evidence></evidence>
<summary>Standard pinned source PKGBUILD, no malicious patterns found.</summary>
</security_assessment>

[2/3] Reviewing claude-desktop-extra.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard pinned source PKGBUILD, no malicious patterns found.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard pacman post-installation hook (`.install`) that mirrors the behavior of the official Claude Desktop Linux postinst. It performs routine packaging tasks strictly within the package's own scope:

*   **Permission hardening:** Sets `root:root` ownership and `4755` (SUID) on `/usr/lib/claude-desktop/chrome-sandbox`. This is the standard requirement for Chromium's setuid sandbox.
*   **AppArmor integration:** Writes an AppArmor profile at `/etc/apparmor.d/claude-desktop` granting the `userns` permission. This is the identical allowlisting pattern used by Google Chrome, VS Code, and 1Password to bypass the `kernel.unprivileged_userns_clone` restriction.
*   **Cache updates:** Calls `update-desktop-database` and `gtk-update-icon-cache` so the launcher entry appears immediately.
*   **Informational messages:** Prints non-executing `echo` text to the console about optional QEMU dependencies (Cowork VM) and a legacy repository name transition.

There is no evidence of malicious or dangerous behavior: no network requests, no code downloads, no obfuscated or encoded commands (no `eval`, `base64`, hex/octal strings), no data exfiltration, no tampering with files outside the application's own installation paths, and no execution of unchecked fetched content. The code is transparent, well-commented, and implements only expected post-install operations.
</details>
<evidence></evidence>
<summary>Standard install hook mirroring upstream postinst behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard install hook mirroring upstream postinst behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,881
  Completion Tokens: 8,047
  Total Tokens: 28,928
  Total Cost: $0.003328
  Execution Time: 35.91 seconds

Final Status: SAFE


No issues found.
