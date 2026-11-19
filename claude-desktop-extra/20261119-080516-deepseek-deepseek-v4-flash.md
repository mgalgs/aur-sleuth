---
package: claude-desktop-extra
pkgver: 5.11492.5
pkgrel: 12
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 20660
completion_tokens: 4009
total_tokens: 24669
cost: 0.00258102
execution_time: 32.61
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-19T08:05:15Z
file_verdicts:
  - file: claude-desktop-extra.install
    status: safe
    summary: Legitimate install hook; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content found.
  - file: PKGBUILD
    status: safe
    summary: Well-structured PKGBUILD; no malicious code found.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable declarations (pkgname, pkgver, depends, source arrays, etc.) and a `package()` function definition in its global/top-level scope. No command substitutions, backtick expressions, eval, or other executable code exists outside of functions. Running `makepkg --printsrcinfo` would only source these definitions; it would not execute any dangerous operations. All source URLs point to the package's own GitHub releases, which is expected.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, .SRCINFO...
[0/3] Reviewing PKGBUILD, .SRCINFO, claude-desktop-extra.install...
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an `.install` hook (pacman post-install/upgrade/remove script) for the `claude-desktop-extra` AUR package. It performs standard maintenance tasks that mirror what the upstream Claude Desktop `.deb` package does on Linux:

- Sets `chrome-sandbox` to **SUID root** (4755), which is the normal, expected setup for Chromium-based sandboxes (Chrome, VS Code, etc.).
- Installs an **AppArmor profile** with `flags=(unconfined)` that allowlists the application for unprivileged user namespaces — the same officially documented pattern used by Chrome and VS Code. It gates this on the presence of AppArmor 4.0+ (`/etc/apparmor.d/abi/4.0`) and handles failures gracefully.
- Refreshes the desktop database and icon cache so the `.desktop` launcher entry appears.
- Prints informational messages about optional dependencies (Cowork VM) and a legacy repository rename — the latter reads `/etc/pacman.conf` with `grep` **only** to offer a migration hint; this is not exfiltration.

There are **no** suspicious network requests, no obfuscated or encoded commands, no unexpected file operations, no eval‑style dynamic execution, and no exfiltration of sensitive data. All actions are confined to the package’s own files (`/usr/lib/claude-desktop/`), the app‑armor profile directory, and standard system caches. The script is consistent with ordinary packaging and upstream application expectations.
</details>
<evidence></evidence>
<summary>Legitimate install hook; no malicious behavior found.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, .SRCINFO...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Legitimate install hook; no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is purely a metadata file used by AUR helpers to describe the package. It declares the package name, version, description, dependencies, source URLs, and checksums. All source URLs point to the maintainer&#39;s own GitHub releases (`https://github.com/patrickjaja/claude-desktop-extra`), which is the expected upstream for this package. The checksums (`sha256sums`) are provided with non-SKIP values for both architectures, allowing integrity verification of the downloaded tarballs. No obfuscated code, dangerous commands, network exfiltration, or unexpected operations are present. The file contains only declarative metadata and is standard for AUR packaging.
</details>
<evidence>

</evidence>
<summary>Standard metadata file, no malicious content found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is well-structured and shows no signs of malicious code injection. It downloads a pre-built tarball from the maintainer's own GitHub releases, with pinned SHA256 checksums for integrity verification. The package() function performs standard installation operations: copying the application tree to /usr/lib/claude-desktop, setting SUID on chrome-sandbox (required for Chromium sandboxing), installing a launcher script, desktop entry, icons, GNOME search provider files, MIME types, and polkit/udev support files for the application's stated Cowork/Computer Use features. There are no suspicious network requests, no obfuscated code, no eval or base64 usage, and no fetching of mutable content at build time. Every installed file is verified to exist in the tarball before copying, with clear error messages on missing files.

The package distributes a pre-patched version of the official Claude Desktop application (with the maintainer's app.asar modifications and extra bridges). While the pre-built binary tarball itself is outside the scope of this PKGBUILD audit and could theoretically be tampered with, the PKGBUILD does not introduce any malicious behavior — it faithfully installs the tarball's contents with appropriate checks. The documentation is thorough and transparent about the package's nature. This is a standard, well-maintained AUR package for distributing a pre-built application with additional features.
</details>
<evidence>
</evidence>
<summary>Well-structured PKGBUILD; no malicious code found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Well-structured PKGBUILD; no malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,660
  Completion Tokens: 4,009
  Total Tokens: 24,669
  Total Cost: $0.002581
  Execution Time: 32.61 seconds

Final Status: SAFE


No issues found.
