---
package: claude-desktop-extra
pkgver: 4.29.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 19732
completion_tokens: 2907
total_tokens: 22639
cost: 0.002324686
execution_time: 28.27
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-29T15:04:47Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums; no signs of malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard pinned prebuilt Electron repackaging; no malicious or unexpected behavior found.
  - file: claude-desktop-extra.install
    status: safe
    summary: "Standard install hook: setuid sandbox, AppArmor profile, cache refresh; no malicious behavior."
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains top-level variable assignments (pkgname, pkgver, pkgrel, depends, source arrays, etc.) with standard shell parameter expansions. There are no command substitutions, backtick executions, eval calls, or any other code that would execute at global scope when sourced by `makepkg --printsrcinfo`. The `package()` function body is not executed during this step. No dangerous top-level code exists that could exfiltrate data, download payloads, or modify the system.
</details>
<evidence></evidence>
<summary>No top-level executable code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code found.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, claude-desktop-extra.install...
[0/3] Reviewing .SRCINFO, claude-desktop-extra.install, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for `claude-desktop-extra`. It declares package metadata, dependencies, optional dependencies, and two pinned source tarballs hosted on the package maintainer's GitHub releases page. Both sources have explicit, pinned `sha256sums` values, which is good supply-chain hygiene. No network requests beyond the declared upstream sources, no script execution, no encoded payloads, and no suspicious file operations are present.

The optional dependency text mentions that the application can auto-download a checksum-verified Claude Code CLI at runtime; however, this is upstream application functionality described in metadata, not injected malicious behavior in the packaging files. The remainder of the file consists of standard dependency declarations and upstream build configuration. There are no red flags warranting an UNSAFE decision.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums; no signs of malicious behavior.
</summary>
</security_assessment>

[1/3] Reviewing claude-desktop-extra.install, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums; no signs of malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward repackaging of a prebuilt Claude Desktop tarball downloaded from the maintainer's own GitHub releases. The sources are pinned to specific versioned release URLs with hardcoded sha256 checksums for both x86_64 and aarch64, which is normal and verifiable packaging practice. The `package()` function only copies files into the package directory, sets the standard SUID bit on the Chromium `chrome-sandbox`, writes a small release-stamp JSON, and installs a launcher script, desktop entry, icons, GNOME search provider files, MIME definition, and license. All paths and operations stay within `$pkgdir` or `$srcdir`; there are no downloads at build time, no `eval`/`base64`/`curl|bash` patterns, no obfuscation, and no exfiltration or backdoor behavior.

The SUID `chrome-sandbox` is the conventional requirement for Chromium-based Electron applications and is not suspicious. The mention in `optdepends` that the application may auto-download a checksum-verified Claude Code CLI describes upstream application functionality, not a malicious action performed by this PKGBUILD. Shipping a pre-patched `app.asar` is the stated purpose of the package's own repository and is covered by the pinned checksums. No red flags indicative of a supply-chain attack were found.
</details>
<evidence>
</evidence>
<summary>
Standard pinned prebuilt Electron repackaging; no malicious or unexpected behavior found.
</summary>
</security_assessment>

[2/3] Reviewing claude-desktop-extra.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard pinned prebuilt Electron repackaging; no malicious or unexpected behavior found.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman installation hook that mirrors the official Claude Desktop `.deb` postinst behavior. It performs three main actions: sets the package-owned `chrome-sandbox` binary to SUID root (`chown root:root` + `chmod 4755`), writes an AppArmor profile at `/etc/apparmor.d/claude-desktop` that allowlists the application for user namespaces (using `flags=(unconfined)` with a `userns` rule), and refreshes desktop/icon caches. It also prints informational notes about optional QEMU dependencies and a legacy pacman repository rename. All commands are scoped to the package's own files or to standard system integration points.

There are no network requests, no downloads, no obfuscated or encoded commands, no exfiltration of local data, and no tampering with unrelated system files. The setuid `chrome-sandbox` and the unconfined AppArmor profile are intentional, documented security-relevant configurations needed for Chromium-based sandboxes; they are worth noting as a security consideration, but they are not evidence of a supply-chain attack. The `/etc/pacman.conf` check is read-only and only prints migration advice.
</details>
<evidence>
</evidence>
<summary>
Standard install hook: setuid sandbox, AppArmor profile, cache refresh; no malicious behavior.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard install hook: setuid sandbox, AppArmor profile, cache refresh; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,732
  Completion Tokens: 2,907
  Total Tokens: 22,639
  Total Cost: $0.002325
  Execution Time: 28.27 seconds

Final Status: SAFE


No issues found.
