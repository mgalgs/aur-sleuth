---
package: claude-desktop-extra
pkgver: 1.49585.0
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 16591
completion_tokens: 2670
total_tokens: 19261
cost: 0.00153517
execution_time: 43.57
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-09T19:01:24Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums; no malicious behavior detected.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard post-install script; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious code.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines standard packaging variables (pkgname, pkgver, depends, source arrays, etc.) and the `package()` function. No command substitutions or backticks are present in the global scope. The `install` variable points to a local file (`$pkgname.install`), which is not sourced during `makepkg --printsrcinfo`. There is no top-level code that would download, execute, or exfiltrate data. The `package()` function is not executed by `makepkg --printsrcinfo`, so its contents are out of scope for this gate.
</details>
<evidence></evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, claude-desktop-extra.install...
[0/3] Reviewing .SRCINFO, claude-desktop-extra.install, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file contains standard Arch User Repository package metadata. It defines a package named `claude-desktop-extra` with sources fetched from the project's own GitHub releases page, and both x86_64 and aarch64 sources include pinned SHA-256 checksums. Dependencies are ordinary runtime libraries for a desktop Electron-based application (GTK, NSS, libsecret, ALSA, etc.). There are no suspicious commands, network operations, file modifications, obfuscated code, or any behavior outside normal packaging metadata.

The maintainer's own GitHub repository is the declared upstream and release host, which is consistent with the package's purpose. The checksums are pinned, so the download is verifiable rather than unchecked. No evidence of a supply-chain attack or injected malicious code was found.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums; no malicious behavior detected.</summary>
</security_assessment>

[1/3] Reviewing claude-desktop-extra.install, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums; no malicious behavior detected.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard pacman install hook for the `claude-desktop-extra` package. It performs the following expected post-install operations:

- Sets SUID on the Chromium sandbox binary (standard sandbox requirement)
- Writes an AppArmor `flags=(unconfined)` profile to allow user namespaces (same pattern as Chrome/VS Code/1Password on AppArmor 4.0+ systems)
- Refreshes desktop database and icon caches so the launcher entry appears
- Prints informational messages about optional Cowork VM dependencies and a legacy repository rename notice

All file operations are confined to the package's own paths (`/usr/lib/claude-desktop/`, `/etc/apparmor.d/claude-desktop`, and system desktop caches). There are no network requests, no obfuscated code, no downloads, no execution of external scripts, no exfiltration of data, and no modifications outside the package scope. The AppArmor profile is written via a heredoc with a non-interpolating delimiter, avoiding any injection risk. The `_legacy_repo_note` function only reads `/etc/pacman.conf` with `grep` (using a regex that is properly anchored) and prints a message; it does not modify any configuration files.

The code is transparent, well-commented, and mirrors the official upstream .deb postinst behavior exactly as stated. No evidence of supply-chain attack, backdoors, or malicious intent.
</details>
<evidence></evidence>
<summary>Standard post-install script; no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard post-install script; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch Linux package build file for distributing a forked version of Claude Desktop. It downloads a pre-built tarball from the package maintainer's own GitHub releases URL with pinned SHA256 checksums, ensuring source integrity. The `package()` function performs only routine installation operations: copying the application tree, setting the SUID bit on the Chrome sandbox (required for Electron's sandbox), installing a launcher script, desktop entry, icons, and license. No dangerous commands (`eval`, `curl|bash`, `wget`, base64 decoding, obfuscated code, or unexpected network requests) are present. The `.install` hook is referenced but not shown; however, its described purpose (re-asserting sandbox permissions) is normal.

The pre-built binary nature and the use of a maintainer's GitHub release are standard AUR practices for this type of package. There is no evidence of supply-chain attack, data exfiltration, backdoors, or code injection.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,591
  Completion Tokens: 2,670
  Total Tokens: 19,261
  Total Cost: $0.001535
  Execution Time: 43.57 seconds

Final Status: SAFE


No issues found.
