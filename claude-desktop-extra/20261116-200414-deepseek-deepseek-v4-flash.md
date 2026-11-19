---
package: claude-desktop-extra
pkgver: 5.11492.5
pkgrel: 7
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 20653
completion_tokens: 3421
total_tokens: 24074
cost: 0.00247455
execution_time: 22.12
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-16T20:04:13Z
file_verdicts:
  - file: claude-desktop-extra.install
    status: safe
    summary: Clean install hook with no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with no malicious content.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only static variable and array definitions (`pkgname`, `pkgver`, `depends`, `source`, `sha256sums`, etc.) and function definitions (`package()`). There are no command substitutions, backtick executions, or any code that executes when the file is sourced. The `install="$pkgname.install"` variable is a standard PKGBUILD attribute; the `.install` file is not sourced during `makepkg --printsrcinfo`. All potentially active logic is inside the `package()` function, which is **not** executed by `--printsrcinfo`. No malicious behavior is possible at this step.
</details>
<evidence></evidence>
<summary>No global-scope execution; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No global-scope execution; safe to parse.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard pacman `.install` hook that mirrors the official Claude Desktop `.deb` post-install behavior. It performs three categories of actions, all well-documented and within the package's own scope:

1. **Sandbox permissions**: Sets the SUID bit on `chrome-sandbox` (path inside the app's own directory). This is the standard Chromium sandbox mechanism used by the official distribution.
2. **AppArmor profile**: Writes an `unconfined` userns profile for the app's binary to `/etc/apparmor.d/claude-desktop`. The `flags=(unconfined)` explicitly does *not* confine the application — it only allowlists it for kernel-restricted user namespace operations. This is the same pattern used by Chrome, VS Code, and 1Password on recent distributions. The function gates on the presence of AppArmor 4.0 ABI (`/etc/apparmor.d/abi/4.0`), which means the profile is only created on systems that can parse it.
3. **Cache refresh and notes**: Runs standard desktop-file/icon cache updates and prints informational messages about optional dependencies and a legacy repository rename. No commands are automatically executed from the user-facing notes — they are purely informational.

All file operations target either the package's own installation path (`/usr/lib/claude-desktop/`) or well-defined system configuration locations (`/etc/apparmor.d/`, `/usr/share/applications`, `/usr/share/icons/hicolor`). There are no network requests, no downloads, no obfuscated code, no data exfiltration, and no backdoors. The code is transparent and every action is justified by inline comments referencing upstream behavior.
</details>
<evidence></evidence>
<summary>Clean install hook with no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Clean install hook with no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux packaging practices for a pre-built binary Electron application. The source is downloaded from the package maintainer's own GitHub releases with pinned version numbers and SHA-256 checksums (not SKIP). The `package()` function performs routine installation operations:

- Copies the tarball's content into `/usr/lib/claude-desktop/`
- Sets SUID on chrome-sandbox (required by Chromium/Electron sandbox, standard for Electron packages)
- Installs launcher, desktop entry, icons, MIME types, GNOME search provider files, udev rules, polkit policies, and a copyright/license file

All operations are confined to the package's own installation directories and standard system paths for desktop integration (applications, icons, mime, polkit, dbus services, udev rules). There are no obfuscated commands, no network requests during build/install beyond the declared source download, no execution of fetched scripts, no data exfiltration, and no modification of files outside the package's scope. The file includes safety checks that abort if expected files from the tarball are missing, which is a robustness measure, not malice.

The SUID bit on chrome-sandbox and the polkit/udev rules for TPM/KVM access are legitimate system configuration to support the application's stated features (sandbox, Cowork VM, Computer Use), consistent with upstream expectations.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file containing only package description, version, dependencies, and source URLs with pinned SHA-256 checksums. No malicious content is present: there are no encoded commands, no obfuscation, no unexpected network requests, and no execution of unchecked code. The source tarball is fetched from the package maintainer&#x27;s own GitHub releases (https://github.com/patrickjaja/claude-desktop-extra/releases) and is integrity-protected by a SHA-256 checksum. All declared dependencies are typical for an Electron-based application. The optional dependencies describe legitimate upstream functionality (e.g., virtual machine support, Wayland input bridges, credential storage) and do not indicate any injected malicious behavior.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO with no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,653
  Completion Tokens: 3,421
  Total Tokens: 24,074
  Total Cost: $0.002475
  Execution Time: 22.12 seconds

Final Status: SAFE


No issues found.
