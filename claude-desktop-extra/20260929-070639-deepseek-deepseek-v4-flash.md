---
package: claude-desktop-extra
pkgver: 2.9939.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17602
completion_tokens: 8757
total_tokens: 26359
cost: 0.00491624
execution_time: 347.63
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-29T07:06:39Z
file_verdicts:
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard Chromium/Electron install hook; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for a binary fork; no malicious behavior detected.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with pinned checksums; no malicious code or behavior found.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its global/top-level scope; function bodies (pkgver(), prepare(), build(), package()) are defined but NOT invoked during this step.

In the visible content, the global scope consists solely of:
- Static variable assignments: pkgname, pkgver, pkgdesc, url
- Array assignments of static strings: optdepends, optdepends_x86_64, optdepends_aarch64, source_x86_64, source_aarch64
- Comments

I found NO top-level command substitution ($(...) or backticks), no eval, no base64/hex/octal decoding, no curl/wget, no network requests, no file modifications, no traps, and no executable statements at global scope. The source array entries use ordinary parameter expansion (${pkgver}, ${pkgrel}) to build URL strings — that is variable expansion, not code execution, and no downloads or checksum verifications occur during --printsrcinfo.

The source URLs point to the package's own upstream GitHub releases (github.com/patrickjaja/claude-desktop-extra), which is the declared upstream and is expected. All of the install/chmod/cp operations, the setuid chrome-sandbox handling, and the search-provider logic appear inside the package() function body, which is out of scope for this gate and will be reviewed in the full PKGBUILD audit. Likewise, the runtime auto-download of a Claude Code CLI mentioned in an optdepends string is upstream application behavior, not something executed when the PKGBUILD is sourced.

Based on the provided content, sourcing this PKGBUILD to generate .SRCINFO metadata does not execute any malicious code.
</details>
<evidence></evidence>
<summary>Global/top-level scope contains only variable/array assignments and comments; no commands, command substitutions, obfuscated payloads, or side effects execute at source time. The install/chmod/setuid/search-provider logic lives inside function bodies that are not run by `makepkg --printsrcinfo`. Safe for this gate.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global/top-level scope contains only variable/array assignments and comments; no commands, command substitutions, obfuscated payloads, or side effects execute at source time. The install/chmod/setuid/search-provider logic lives inside function bodies that are not run by `makepkg --printsrcinfo`. Safe for this gate.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install script performs standard post-install tasks for a Chromium-based desktop application: setting the SUID bit on `chrome-sandbox`, installing an AppArmor user-namespace allowlist profile (gated on AppArmor 4.0), refreshing desktop/icon caches, and printing informational notes. There are no network fetches, no encoded or obfuscated commands, and no file operations outside the package's own install paths (`/usr/lib/claude-desktop/`, `/etc/apparmor.d/claude-desktop`, and standard system cache directories). The `grep` of `/etc/pacman.conf` is read-only and only used to display a migration hint.

The SUID root sandbox and the `flags=(unconfined)` AppArmor profile mirror standard practice for Chromium/Electron apps and the official Claude Desktop postinst; they are not evidence of injected malicious behavior. The `apparmor_parser`, `chmod`, `chown`, and cache-refresh commands are expected packaging operations with `|| true` fallbacks so failures do not break installs. Overall this is benign packaging.
</details>
<evidence>
</evidence>
<summary>
Standard Chromium/Electron install hook; no malicious behavior found.
</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard Chromium/Electron install hook; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a pre-built binary package. It downloads a tarball from the maintainer's own GitHub releases with pinned SHA256 checksums for both architectures. No obfuscated code, suspicious network requests, `eval`, `curl|bash`, or commands that download and execute arbitrary code are present. The `package()` function performs standard installation steps: copying files, setting the required SUID bit on `chrome-sandbox`, and installing launcher, desktop entry, icons, and GNOME search provider files. The source is a third-party fork of the official Claude Desktop, which is expected for AUR packages that add features—this is not inherently malicious. The referenced `.install` hook is not provided, but the PKGBUILD itself contains no evidence of injection, exfiltration, or backdoors.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for a binary fork; no malicious behavior detected.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for a binary fork; no malicious behavior detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR package metadata declaration. It contains only declarative fields: package name, version, dependencies, and source entries with pinned SHA-256 checksums. The two source tarballs are fetched from `https://github.com/patrickjaja/claude-desktop-extra/releases/...`, which matches the package's declared `url` — i.e., the maintainer's own GitHub releases page for this project. Both `sha256sums_x86_64` and `sha256sums_aarch64` are pinned hashes (not `SKIP`), so the downloaded artifacts are at least integrity-checked against a fixed value.

There is no code execution, no `curl | bash`, no `eval`, no base64/hex obfuscation, no post-install logic, and no unrelated network destinations in this file. Nothing here exfiltrates data, installs backdoors, or tampers with system files.

The only consideration worth noting is a trust/hygiene point: the tarballs are prebuilt third-party repackaged binaries hosted on a personal GitHub account rather than Anthropic's official distribution channel, and the file itself cannot verify the build provenance of those binaries. However, this is a packaging trust choice typical of AUR repackages, not evidence of malicious behavior in this file. The `PKGBUILD` and any helper scripts would need separate review, but the `.SRCINFO` itself is clean.

</details>
<evidence>
</evidence>
<summary>
Standard .SRCINFO with pinned checksums; no malicious code or behavior found.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with pinned checksums; no malicious code or behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,602
  Completion Tokens: 8,757
  Total Tokens: 26,359
  Total Cost: $0.004916
  Execution Time: 347.63 seconds

Final Status: SAFE


No issues found.
