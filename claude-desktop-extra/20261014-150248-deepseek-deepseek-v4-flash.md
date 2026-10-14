---
package: claude-desktop-extra
pkgver: 2.37337.1
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 18967
completion_tokens: 3883
total_tokens: 22850
cost: 0.002432703
execution_time: 36.77
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T15:02:48Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard prebuilt Electron package with pinned checksums; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only AUR file with pinned sources and checksums; no malicious behavior found.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard pacman install hook; package-scoped sandbox/AppArmor/cache actions only, no malice.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only variable definitions (pkgname, pkgver, pkgrel, arch, depends, optdepends, source arrays, sha256sums, etc.) and a `package()` function definition. There are no command substitutions, backtick expressions, or any code that would execute external commands during sourcing. No dangerous globals like `eval`, `curl`, `wget`, `base64`, or network requests are present at the top level. The only functional code is confined to the `package()` function, which is not executed by `makepkg --printsrcinfo`. Therefore, parsing this PKGBUILD with `makepkg --printsrcinfo` presents no risk of executing malicious code.
</details>
<evidence></evidence>
<summary>Only variable definitions and function definition in global scope; no top-level code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Only variable definitions and function definition in global scope; no top-level code execution risk.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, claude-desktop-extra.install...
[0/3] Reviewing .SRCINFO, claude-desktop-extra.install, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR packaging script for a prebuilt Electron application. It downloads architecture-specific tarballs from the maintainer's own GitHub Releases with pinned versions and strong SHA256 checksums, installs the application tree under /usr/lib/claude-desktop, and installs icons, a desktop entry, MIME data, and GNOME Shell search-provider files. All operations use conventional packaging commands such as install, cp, chmod, and cat.

No obfuscated code, no eval/curl/wget/base64 tricks, no network access during build or install beyond the declared source tarballs, and no modifications outside standard package paths are present. Setting mode 4755 on chrome-sandbox is the normal Chromium/Electron sandbox requirement, not a backdoor. The runtime auto-download behavior mentioned in optdepends is upstream application functionality, not part of this PKGBUILD. There is no evidence of injected malicious code in this file.
</details>
<evidence>
</evidence>
<summary>
Standard prebuilt Electron package with pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, claude-desktop-extra.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard prebuilt Electron package with pinned checksums; no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` is metadata only: it declares a `pkgname`, dependencies, source URLs, and pinned sha256 checksums. No build, `prepare`, `install`, or post-install logic is present in this file, so there is no embedded code to execute or obfuscate.

The sources point to the maintainer's own GitHub releases for `patrickjaja/claude-desktop-extra`, which matches the package's declared `url`. Both architecture-specific downloads are pinned to a specific release with non-SKIP sha256 checksums, which is a normal and reasonably reproducible packaging pattern for a fork that ships prebuilt binaries.

The only noteworthy points are trust-related rather than evidence of malice: this package repackages a third-party prebuilt binary of an official application, and some `optdepends` text describes optional runtime behaviors (such as the app auto-downloading a checksum-verified CLI). These are product/packaging choices, not supply-chain attack indicators observable in this file. No suspicious network destinations, encoded payloads, or dangerous file operations are present.
</details>
<evidence>
</evidence>
<summary>
Metadata-only AUR file with pinned sources and checksums; no malicious behavior found.
</summary>
</security_assessment>

[2/3] Reviewing claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only AUR file with pinned sources and checksums; no malicious behavior found.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman installation script for a repackaged Claude Desktop binary. It performs three package-scoped actions: (1) sets the ownership and mode of the bundled chrome-sandbox to root:root 4755, mirroring the upstream .deb postinst for Chromium's SUID sandbox; (2) writes an AppArmor profile at /etc/apparmor.d/claude-desktop with flags=(unconfined) and a userns rule, then loads it via apparmor_parser only if AppArmor is active, and removes it on uninstall; and (3) refreshes desktop and icon caches. These are normal, expected operations for a Chromium-based desktop application.

There is no evidence of injected malicious code: no network connections, no downloads or execution of remote content, no exfiltration of local data, and no obfuscated or encoded commands. The script touches only paths belonging to the package (/usr/lib/claude-desktop, /etc/apparmor.d/claude-desktop) plus conventional system caches. The SUID sandbox and unconfined AppArmor profile are upstream application requirements for Chromium sandboxing on modern Linux, not backdoors. The pacman.conf check is read-only and only prints migration advice. Overall this is consistent with ordinary packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard pacman install hook; package-scoped sandbox/AppArmor/cache actions only, no malice.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard pacman install hook; package-scoped sandbox/AppArmor/cache actions only, no malice.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,967
  Completion Tokens: 3,883
  Total Tokens: 22,850
  Total Cost: $0.002433
  Execution Time: 36.77 seconds

Final Status: SAFE


No issues found.
