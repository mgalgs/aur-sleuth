---
package: claude-desktop-extra
pkgver: 3.1623.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 19044
completion_tokens: 6246
total_tokens: 25290
cost: 0.002869776
execution_time: 42.83
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-22T15:09:39Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums and upstream sources; no malicious behavior found.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard install hook; SUID sandbox and AppArmor profile match upstream packaging.
  - file: PKGBUILD
    status: safe
    summary: Pinned, checksummed release tarballs copied verbatim; standard Electron packaging; no malicious behavior found.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only standard variable definitions (pkgname, pkgver, depends, source definitions, sha256sums, etc.) and a single function definition (package() { ... }). No command substitutions ($(...) or backticks), no eval statements, no sourcing of external scripts, and no executable invocations (curl, wget, etc.) are present in the global scope. Since `makepkg --printsrcinfo` only executes global scope code and does not run `package()`, `prepare()`, `build()`, or `pkgver()`, sourcing this file for metadata extraction is completely safe.
</details>
<evidence></evidence>
<summary>Sourcing PKGBUILD for metadata is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing PKGBUILD for metadata is safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file for `claude-desktop-extra`. It declares two architecture-specific source tarballs, both downloaded from the package maintainer's own GitHub releases page (`https://github.com/patrickjaja/claude-desktop-extra/releases/...`), and both have pinned SHA-256 checksums. This is normal, expected packaging practice and not evidence of a supply-chain attack.

The dependency list and optdepends entries are consistent with a desktop Electron application (GPU, audio, portal, credential storage, and VM-related optional dependencies). Mentions of auto-downloading a checksum-verified Claude Code CLI, bundled "bridges" for input/screenshot, and Cowork workspace VMs describe upstream runtime functionality, not code present in this metadata file. No obfuscation, encoded commands, suspicious network destinations, or unexpected file operations appear here.

One note worth flagging as a trust consideration rather than evidence of malice: the binaries are distributed by a third-party maintainer (patrickjaja) rather than Anthropic's official channels, so the integrity of the release artifacts depends on that maintainer's GitHub account and release process. The pinned checksums do mitigate silent tampering after the fact, but they do not independently verify that the maintainer's build is genuine or unmodified upstream software. This is a hygiene/trust issue, not a detected attack.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums and upstream sources; no malicious behavior found.
</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums and upstream sources; no malicious behavior found.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman install script. It performs three operations: (1) sets ownership/mode of `/usr/lib/claude-desktop/chrome-sandbox` to `root:root` and `4755`, matching Chromium's setuid sandbox requirement; (2) writes an AppArmor profile to `/etc/apparmor.d/claude-desktop` and reloads it via `apparmor_parser` only when AppArmor 4.0 is present; (3) refreshes desktop and icon caches. It also prints informational notes about optional Cowork dependencies and a legacy repo rename.

No network requests, no downloads or execution of remote code, no obfuscation, no exfiltration, and no writes outside the package's own files and its AppArmor configuration. The SUID bit and AppArmor `flags=(unconfined)` profile are expected for a Chromium-based desktop application and mirror the vendor's official postinst behavior. This is consistent with ordinary packaging practices.
</details>
<evidence></evidence>
<summary>Standard install hook; SUID sandbox and AppArmor profile match upstream packaging.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard install hook; SUID sandbox and AppArmor profile match upstream packaging.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows a normal AUR binary-package pattern. It pulls prebuilt release tarballs from the package project's own GitHub releases with pinned SHA-256 checksums for both `x86_64` and `aarch64`, and it does not perform any network requests, `eval`, obfuscated decoding, or download-and-execute steps during `package()`. The build steps are limited to copying the bundled tree into `/usr/lib/claude-desktop`, setting the standard SUID bit on Electron's `chrome-sandbox`, installing a launcher, desktop entry, icons, GNOME Shell search provider files, MIME definitions, and a license file. These are all ordinary packaging operations for an Electron application.

The only notable supply-chain consideration is that the tarball contains a maintainer-patched `app.asar` and extra bridge components, which means the package trusts the maintainer's release artifacts rather than being built from pristine upstream source. That is a legitimate trust/hygiene concern for a fork-style binary package, but it is not evidence of injected malicious behavior in this PKGBUILD. The pinned checksums and the package's stated purpose are consistent with the declared upstream project.
</details>
<evidence>
</evidence>
<summary>
Pinned, checksummed release tarballs copied verbatim; standard Electron packaging; no malicious behavior found.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Pinned, checksummed release tarballs copied verbatim; standard Electron packaging; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,044
  Completion Tokens: 6,246
  Total Tokens: 25,290
  Total Cost: $0.002870
  Execution Time: 42.83 seconds

Final Status: SAFE


No issues found.
