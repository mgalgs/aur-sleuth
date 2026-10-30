---
package: claude-desktop-extra
pkgver: 4.4212.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 19804
completion_tokens: 5058
total_tokens: 24862
cost: 0.002722720
execution_time: 40.0
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-30T19:05:34Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Packaging metadata only; pinned checksums, upstream sources, no suspicious commands.
  - file: claude-desktop-extra.install
    status: safe
    summary: "Standard install hook: sandbox permissions, AppArmor profile, cache refresh, informational notes. No malicious behavior found."
  - file: PKGBUILD
    status: safe
    summary: Standard prebuilt binary PKGBUILD with pinned checksums; no malicious behavior found.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global (top-level) scope of this PKGBUILD contains only static variable definitions for metadata arrays and strings (e.g., `pkgname`, `depends`, `source_x86_64`, `sha256sums_x86_64`) and a single function definition (`package() { ... }`). No command substitutions (`$(...)`), backticks, `eval`, `curl`, `wget`, or any other executable operations exist in the global scope. All variable assignments are syntactically standard and do not trigger side-effects when sourced. The `package()` function contains the complex operations (file copying, SUID setting, release stamp creation), but `makepkg --printsrcinfo` does **not** execute function bodies—it only sources the top-level definitions. Therefore, running `makepkg --printsrcinfo` on this file is safe.
</details>
<evidence>
</evidence>
<summary>
No executing code in global scope. Safe for --printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executing code in global scope. Safe for --printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, claude-desktop-extra.install...
[0/3] Reviewing .SRCINFO, claude-desktop-extra.install, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is packaging metadata for an AUR package. It declares the package name, version, dependencies, optional dependencies, and two architecture-specific source tarballs fetched from the project's own GitHub releases (`https://github.com/patrickjaja/claude-desktop-extra/releases/...`). Both tarballs have pinned `sha256sums`, so downloads are integrity-checked at build time. No `SKIP` checksums are present.

The file contains no executable code, no network commands, no obfuscation, and no unexpected file operations. The optional dependency descriptions mention upstream application behaviors such as the app auto-downloading a checksum-verified Claude Code CLI and optional VM/screenshot/input helpers; these describe the application's intended functionality and are not evidence of injected malicious code in the AUR package. The source URLs match the package's declared upstream repository, so this is ordinary AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Packaging metadata only; pinned checksums, upstream sources, no suspicious commands.</summary>
</security_assessment>

[1/3] Reviewing claude-desktop-extra.install, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Packaging metadata only; pinned checksums, upstream sources, no suspicious commands.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman install script for the `claude-desktop-extra` package. It performs routine post-install operations: setting the Chromium `chrome-sandbox` binary to SUID root (chown root:root and chmod 4755), writing an AppArmor profile that allowlists the application for user namespaces, refreshing desktop/icon caches, and printing informational notes about optional dependencies and a package rename.

No malicious behavior is present. There are no network fetches, no encoded or obfuscated commands, no use of eval/base64/curl/wget, and no access to sensitive files such as SSH keys, wallets, or credential stores. Reading `/etc/pacman.conf` with grep is read-only and used only to detect an old repository section name for an informational migration message. The AppArmor `flags=(unconfined)` profile is intentionally restricted to the application's own path and mirrors the official Claude Desktop postinst behavior; it is a security consideration but not a supply-chain attack. The script only manipulates files within the package's own installation scope (`/usr/lib/claude-desktop/claude`, `/etc/apparmor.d/claude-desktop`) and standard system caches.
</details>
<evidence>
</evidence>
<summary>
Standard install hook: sandbox permissions, AppArmor profile, cache refresh, informational notes. No malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard install hook: sandbox permissions, AppArmor profile, cache refresh, informational notes. No malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward binary repackaging of a prebuilt Claude Desktop tarball from the maintainer's own GitHub releases. All downloads use HTTPS and are pinned with sha256 checksums (no `SKIP`, no variable/`latest` URLs). The `package()` function only copies the tarball contents into the package directory, installs a launcher/desktop/icons/mime files, and sets SUID on `chrome-sandbox` — all standard Electron packaging practice. There is no `eval`, no base64/encoded payloads, no outbound network calls at build time, no `curl|bash`, and no writes outside `$pkgdir` or the declared install paths.

The only trust consideration is that the package ships a maintainer-patched `app.asar` and bundled binaries from the maintainer's release tarball rather than an official Anthropic artifact; this is inherent to the package's stated purpose (an unofficial patched build) and is mitigated by the pinned checksums. Nothing in the PKGBUILD itself indicates injected malicious or exfiltration behavior, so the file is not a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard prebuilt binary PKGBUILD with pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard prebuilt binary PKGBUILD with pinned checksums; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,804
  Completion Tokens: 5,058
  Total Tokens: 24,862
  Total Cost: $0.002723
  Execution Time: 40.00 seconds

Final Status: SAFE


No issues found.
