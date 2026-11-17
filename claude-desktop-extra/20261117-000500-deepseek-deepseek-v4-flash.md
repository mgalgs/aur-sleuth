---
package: claude-desktop-extra
pkgver: 5.11492.5
pkgrel: 8
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 20557
completion_tokens: 2879
total_tokens: 23436
cost: 0.00236835
execution_time: 28.19
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-17T00:05:00Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with pinned checksums, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD, no malicious behavior detected.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard pacman install hook, no malicious behavior.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only standard variable assignments (pkgname, pkgver, depends, source, sha256sums, etc.) and the definition of the package() function. No command substitutions, function calls, or other executable code are present at the global scope that would run when the file is sourced by `makepkg --printsrcinfo`. There are no network requests, data exfiltration, or dangerous operations that would execute during this command. The package() function contains the package installation logic but is not called by `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>Safe: no executable code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no executable code in global scope.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, claude-desktop-extra.install...
[0/3] Reviewing .SRCINFO, claude-desktop-extra.install, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR .SRCINFO metadata file for the `claude-desktop-extra` package. It declares package metadata, dependencies, and source URLs with SHA256 checksums. The sources are fetched from the package maintainer's GitHub releases page using pinned tarballs with valid checksums. There are no suspicious network requests, obfuscated code, dangerous commands, or unexpected file operations. The optional dependencies are legitimate features (e.g., VM support, sandboxing). No evidence of a supply-chain attack or malicious injection is present. The file is a normal packaging descriptor.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO with pinned checksums, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing claude-desktop-extra.install, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with pinned checksums, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a binary distribution. The source tarball is pinned with a SHA256 checksum (not SKIP) for both architectures, ensuring integrity. The `package()` function installs pre-built binaries from the tarball into standard system paths, sets the SUID bit on `chrome-sandbox` (required for Chromium's sandbox, standard for Electron apps), and installs desktop files, icons, search provider configurations, MIME types, udev rules, and polkit policies that are all part of the application's declared functionality (Cowork VM, TPM/KVM access). There is no obfuscated code, no unexpected network requests, no data exfiltration, and no execution of code from untrusted sources. The release stamp JSON written is merely metadata for the in-app update check. The only trust assumption is that the pre-built tarball from the maintainer's GitHub releases is benign — but that is inherent to any binary AUR package and is mitigated by the pinned checksum. No evidence of a supply-chain attack or malicious injection is present.
</details>
<evidence></evidence>
<summary>Standard binary PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[2/3] Reviewing claude-desktop-extra.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD, no malicious behavior detected.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman install hook for the `claude-desktop-extra` package. Its actions are all consistent with normal packaging practices and the application&#x27;s stated requirements:

1. **chrome-sandbox SUID**: Sets the chromium sandbox binary to SUID root (4755) — this is required by Chromium&#x27;s setuid sandbox and mirrors what the official Claude Desktop .deb does.
2. **AppArmor profile**: Writes an unconfined userns profile to `/etc/apparmor.d/claude-desktop` so that Chromium&#x27;s namespace sandbox works on systems with unprivileged user namespace restrictions. The profile is gated on AppArmor 4.0 availability, is loaded only when AppArmor is active, and failures are silently ignored. This is identical to patterns used by Chrome, VS Code, and 1Password.
3. **Cache refreshing**: Calls `update-desktop-database` and `gtk-update-icon-cache` — routine post-install steps to make the launcher entry appear.
4. **Informational notes**: Prints messages about optional QEMU dependencies for a Cowork VM and a legacy package rename. These are harmless user-facing notices.
No network requests, no obfuscated code, no data exfiltration, no execution of untrusted downloaded content, and no backdoors. The file is benign.
</details>
<evidence>
</evidence>
<summary>Standard pacman install hook, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard pacman install hook, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,557
  Completion Tokens: 2,879
  Total Tokens: 23,436
  Total Cost: $0.002368
  Execution Time: 28.19 seconds

Final Status: SAFE


No issues found.
