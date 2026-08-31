---
package: claude-desktop-extra
pkgver: 1.40609.0
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 16682
completion_tokens: 2319
total_tokens: 19001
cost: 0.00182371280
execution_time: 40.71
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 3054
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-31T15:13:19Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious behavior.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard install hook, no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard declarative metadata, no executable content, safe.
---

Cloning https://aur.archlinux.org/claude-desktop-extra.git...
Cloned claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no dangerous top-level code, no `pkgver()` function, and no command substitutions that execute during sourcing. The `source` arrays use standard HTTPS URLs pointing to the project's own GitHub releases, with valid SHA256 checksums. No `eval`, `curl|bash`, base64 encoding, or other obfuscation is present. The `package()`, `prepare()`, and `build()` functions are defined but are not executed by `makepkg --nobuild --nodeps --noprepare`. The `.install` file is only executed during package installation, not during source fetching. Fetching and extracting the tarballs is safe and standard for AUR packaging.
</details>
<evidence></evidence>
<summary>No malicious code executes during source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during source fetch.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/launcher/claude-desktop); they are upstream content and were not reviewed.
Reviewing the 3 file(s) in the AUR repository. The 3054 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux packaging practices for a pre-built Electron application distributed via the AUR. The source is a tarball from the maintainer's own GitHub releases page (`github.com/patrickjaja/claude-desktop-extra`), with pinned SHA256 checksums for both `x86_64` and `aarch64` architectures. The `package()` function installs files verbatim from the tarball into `/usr/lib/claude-desktop`, sets the SUID bit on `chrome-sandbox` (standard for Chromium-based sandboxing), installs a launcher script, desktop entry, icons, and a license file. All operations are confined to the package's own installation directory and standard system locations (applications, icons, licenses). There are no network requests, no encoded or obfuscated commands, no dynamic code execution, and no exfiltration of system data. The file is consistent with legitimate AUR packaging for an Electron application with extra features.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, claude-desktop-extra.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious behavior.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux pacman install hook (`.install` file) for the `claude-desktop-extra` AUR package. It performs routine post-install/upgrade/removal tasks:

- Sets the SUID bit on the `chrome-sandbox` binary (required by Chromium's sandbox, standard practice for Electron/Chromium apps).
- Writes an AppArmor profile that unconfines the Claude Desktop binary for user namespace access (necessary on AppArmor 4.0+ systems, same pattern used by Chrome, VS Code, 1Password).
- Refreshes desktop-database and icon caches to ensure the launcher entry appears.
- Prints informational messages about optional Cowork VM dependencies and a legacy repository rename.

All operations are confined to the package's own files (`/usr/lib/claude-desktop/chrome-sandbox`, `/etc/apparmor.d/claude-desktop`) and standard system cache directories. There are no network requests, no download/execution of external code, no obfuscation, no exfiltration, and no modification of files outside the package's scope. The SUID bit and AppArmor profile are expected upstream behaviors for this application, not injected malicious code. The file is safe.
</details>
<evidence></evidence>
<summary>Standard install hook, no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard install hook, no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file used by the Arch User Repository (AUR). It contains only declarative fields: package name, version, dependencies, architecture, source URLs, and SHA-256 checksums.

- All sources are downloaded from the package's own upstream GitHub releases (`https://github.com/patrickjaja/claude-desktop-extra/releases/download/...`), which is expected and legitimate.
- Checksums are provided (not `SKIP`), so the sources are pinned.
- There are no executable commands, obfuscated data, network calls beyond the pinned source URLs, or any code that could perform malicious operations. The file is purely descriptive metadata.

No supply-chain attack indicators are present. The content is consistent with standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard declarative metadata, no executable content, safe.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard declarative metadata, no executable content, safe.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,682
  Completion Tokens: 2,319
  Total Tokens: 19,001
  Total Cost: $0.001824
  Execution Time: 40.71 seconds

Final Status: SAFE


No issues found.
