---
package: claude-desktop-extra
pkgver: 4.23118.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 20445
completion_tokens: 5048
total_tokens: 25493
cost: 0.002779231
execution_time: 53.08
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-06T00:10:20Z
file_verdicts:
  - file: claude-desktop-extra.install
    status: safe
    summary: Clean install/upgrade hook; no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Declarative AUR metadata with pinned checksums and official upstream sources; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for binary redistribution of Claude Desktop.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only variable definitions (pkgname, pkgver, depends, source arrays, etc.) and a function definition for `package()`. There are no command substitutions, backticks, `eval` calls, or any other executable statements in the global scope that would run when the file is sourced by `makepkg --printsrcinfo`. The `package()` function body is defined but not executed during this parsing step.

All variable expansions in the source URLs (`${pkgver}`, `${pkgrel}`) are ordinary string interpolations inside double-quoted assignments — not command substitutions. There is no hidden or obfuscated code present. Running `makepkg --printsrcinfo` on this PKGBUILD would be safe.
</details>
<evidence></evidence>
<summary>No executable code in global scope; safe for parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in global scope; safe for parsing.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux `.install` hook script that performs expected post-install/post-remove tasks for the `claude-desktop-extra` package. The script:

- Sets the SUID bit on the bundled `chrome-sandbox` binary (required for Chromium's sandbox, matching upstream behavior).
- Installs an AppArmor profile that is explicitly `flags=(unconfined)` (a standard allowlist pattern used by Chrome/VS Code/1Password for user namespace access, not a confinement mechanism).
- Refreshes desktop database and icon caches (routine post-install housekeeping).
- Prints informational notes about optional dependencies (`cowork`) and a legacy repository rename.

There are no network requests, no downloads of external code, no obfuscated commands, no data exfiltration, and no unexpected file operations. All commands (`chown`, `chmod`, `apparmor_parser`, `update-desktop-database`, `gtk-update-icon-cache`) are standard system utilities called with appropriate paths and error suppression. The file is well-commented and its purpose aligns with the package's stated functionality.
</details>
<evidence></evidence>
<summary>Clean install/upgrade hook; no malicious code.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Clean install/upgrade hook; no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata for `claude-desktop-extra`. It declares the package version, dependencies, optional dependencies, architecture-specific sources, and pinned SHA-256 checksums for both `x86_64` and `aarch64` release tarballs.

The sources are HTTPS downloads from the project's own GitHub releases page (`https://github.com/patrickjaja/claude-desktop-extra/releases/...`), which is the package's declared upstream. Both source checksums are pinned, not skipped. No suspicious commands, obfuscated code, network exfiltration, or unexpected file operations are present — `.SRCINFO` is declarative metadata only.

The optional dependency descriptions mention application-level features such as auto-downloading a checksum-verified Claude Code CLI, local VM workspace sharing, and Computer Use input helpers. These are descriptions of upstream application behavior, not evidence of injected malicious code in the packaging metadata. The file contains no red flags.
</details>
<evidence>
</evidence>
<summary>
Declarative AUR metadata with pinned checksums and official upstream sources; no malicious behavior found.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative AUR metadata with pinned checksums and official upstream sources; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard binary redistribution wrapper for the Claude Desktop application. The source tarballs are pinned by specific URLs and SHA256 checksums on the maintainer's GitHub releases page, which is an expected practice for repackaged upstream software in the AUR.

The `package()` function performs routine operations: installing binaries, setting the SUID bit on Chromium's sandbox (required for Chrome/Electron-based apps), writing desktop entries, icons, MIME types, PolKit policies, and DBus services. There is no obfuscation, no use of dangerous commands like `eval` or `base64`, and no network access during the build phase beyond the declared source download. No instructions in the file attempt to exfiltrate data, download and execute code from an untrusted host, or modify unrelated system files.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for binary redistribution of Claude Desktop.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for binary redistribution of Claude Desktop.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,445
  Completion Tokens: 5,048
  Total Tokens: 25,493
  Total Cost: $0.002779
  Execution Time: 53.08 seconds

Final Status: SAFE


No issues found.
