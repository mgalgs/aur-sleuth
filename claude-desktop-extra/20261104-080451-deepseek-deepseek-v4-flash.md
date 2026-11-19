---
package: claude-desktop-extra
pkgver: 4.16336.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 20432
completion_tokens: 6226
total_tokens: 26658
cost: 0.002992444
execution_time: 81.64
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-04T08:04:51Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata only; pinned checksums, expected sources, no malicious behavior found.
  - file: claude-desktop-extra.install
    status: safe
    summary: "Standard pacman install hook: sandbox, AppArmor, cache refresh. No malicious behavior."
  - file: PKGBUILD
    status: safe
    summary: Transparent, checksum-pinned packaging of a forked Electron app; no malicious behavior found.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only variable and array assignments (pkgname, pkgver, depends, source, sha256sums, etc.) and one function definition (`package()`) that is never invoked during sourcing. There are no backtick commands, no `$()` command substitutions, no `eval` invocations, and no encoded/obfuscated code at the top level. The only expansions are `${pkgver}` and `${pkgrel}` in the source array strings—simple variable interpolation of previously-declared integer values, not command substitution. Therefore sourcing this PKGBUILD to run `makepkg --printsrcinfo` is safe.

All potentially sensitive operations (installing files, setting SUID, manipulating system paths) are confined to the `package()` function body, which is never executed during the metadata-parse step. That function will be audited separately in the full review.
</details>
<evidence></evidence>
<summary>Top-level scope is safe; no commands execute during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is safe; no commands execute during sourcing.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, .SRCINFO...
[0/3] Reviewing PKGBUILD, .SRCINFO, claude-desktop-extra.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file contains only package metadata: names, version, dependencies, optdepends, source URLs, and pinned SHA-256 checksums. No code, scripts, or install-time commands are present, so there is nothing here that directly executes, downloads obfuscated content, or modifies the system.

The sources are fetched from the maintainer's own GitHub releases matching the package URL, and both `sha256sums` entries are pinned rather than set to `SKIP`. The listed dependencies and optdepends (QEMU/KVM, bubblewrap/socat, ydotool, gnome-keyring, etc.) are consistent with the described feature set of the package. The optdepends note about auto-downloading a checksum-verified Claude Code CLI is a network-related behavior, but it is declared as an application feature and is not executable from this metadata file; it would need to be reviewed in the actual packaging scripts.

Overall, this metadata does not exhibit exfiltration, unexpected code execution, obfuscation, or other signs of a supply-chain attack. The main trust consideration is that this is a third-party repackaging of a prebuilt application from the maintainer's own release hosting, but that is expected for this AUR package and is not itself malicious.
</details>
<evidence>
</evidence>
<summary>
Metadata only; pinned checksums, expected sources, no malicious behavior found.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata only; pinned checksums, expected sources, no malicious behavior found.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard pacman `.install` hook that mirrors the official Claude Desktop postinst behavior. It fixes the package's own `chrome-sandbox` permissions to SUID root, writes an AppArmor userns allowlist profile for the application binary, loads or removes the profile with `apparmor_parser` only when AppArmor is active, and refreshes desktop/icon caches. The paths are package-scoped (`/usr/lib/claude-desktop`, `/etc/apparmor.d/claude-desktop`) and external commands are guarded with `command -v` or `|| true` so failures do not break installation.

No network downloads, no obfuscated code, no `eval`, no data exfiltration, and no tampering with unrelated system files. The SUID sandbox and `flags=(unconfined)` AppArmor profile are security-sensitive, but they are the expected, documented mechanism for Chromium-based applications on Linux and serve the application's stated purpose. The printed notes about optional Cowork dependencies and the legacy repository rename are benign informational messages.
</details>
<evidence>
</evidence>
<summary>
Standard pacman install hook: sandbox, AppArmor, cache refresh. No malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard pacman install hook: sandbox, AppArmor, cache refresh. No malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt Electron application. All sources are HTTPS tarballs from the package's own GitHub releases with pinned sha256 checksums; there are no SKIP checksums, no git pull/fetch during build, no eval/base64/curl-piped-to-shell constructs, and no network activity outside makepkg's normal source fetching. The package() function only copies the declared tarball tree into $pkgdir and installs standard desktop integration files: launcher, desktop entry, icons, MIME types, GNOME search provider, and a polkit/udev set described as an opt-in TPM access feature. Setting SUID 4755 on chrome-sandbox is the standard, required Chromium sandbox setup used by virtually every Electron package.

The main supply-chain consideration is that the binary tarball is built and published by the package maintainer rather than by Anthropic, and it carries patched application code plus a root helper binary (cdb-tpm-access) wired to a polkit action. However, this is fully transparent, checksum-pinned, and consistent with the package's stated purpose of shipping a patched Claude Desktop with extra features. Installing a polkit action and companion helper for an application feature is ordinary packaging, not evidence of injected malware. There is no exfiltration, no obfuscation, and no execution of attacker-controlled content at install/build time beyond the declared, checksummed artifact.
</details>
<evidence>
</evidence>
<summary>
Transparent, checksum-pinned packaging of a forked Electron app; no malicious behavior found.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Transparent, checksum-pinned packaging of a forked Electron app; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,432
  Completion Tokens: 6,226
  Total Tokens: 26,658
  Total Cost: $0.002992
  Execution Time: 81.64 seconds

Final Status: SAFE


No issues found.
