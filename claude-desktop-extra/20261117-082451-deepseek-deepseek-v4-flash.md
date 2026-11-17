---
package: claude-desktop-extra
pkgver: 5.11492.5
pkgrel: 9
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 20562
completion_tokens: 2493
total_tokens: 23055
cost: 0.00229932
execution_time: 31.19
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-17T08:24:50Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security issues found.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard install hook, no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package, no malicious behavior found.
---

Materializing claude-desktop-extra from local mirror...
Cloning https://aur.archlinux.org/claude-desktop-extra.git...
Cloned claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope consists only of variable and array assignments using static strings and arithmetic expansion (`${pkgver}`, `${pkgrel}`, etc.). There are no command substitutions (`$()` or backticks), no `eval`, `curl`, `wget`, `base64`, or any other code execution in the top-level scope. The `package()` function is defined but not executed during `makepkg --printsrcinfo`. All `source` URLs point to the maintainer's GitHub releases via HTTPS. No obfuscation, suspicious encoding, or hidden payloads are present at the global scope.
</details>
<evidence></evidence>
<summary>Sourcing this PKGBUILD has no dangerous top-level execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing this PKGBUILD has no dangerous top-level execution.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata descriptor for an Arch Linux AUR package. It declares dependencies, source URLs, and checksums. The source tarballs are fetched from the project's own GitHub releases (`github.com/patrickjaja/claude-desktop-extra`) and include valid SHA-256 checksums. There are no obfuscated commands, no network requests to non-standard hosts, and no execution of untrusted code. The `install` field references a system configuration file (`claude-desktop-extra.install`) which is not present here, but in isolation this metadata file contains no malicious content. All activities described are standard packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no security issues found.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security issues found.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install script performs standard packaging operations: setting the SUID bit on the chrome-sandbox binary (as done by the official upstream .deb), writing an AppArmor profile (a common practice for Electron apps on modern distributions), refreshing desktop and icon caches, and printing informational notes about optional dependencies and a legacy repository migration. No network requests, no obfuscated code, no data exfiltration, no downloading or execution of remote content, and no modifications outside the package&apos;s own files and standard system integration paths. All operations are consistent with legitimate AUR packaging.
</details>
<evidence>
</evidence>
<summary>Standard install hook, no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard install hook, no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard binary package for Arch Linux that downloads a pre-patched tarball from the maintainer's own GitHub releases. The source is pinned with SHA256 checksums. The `package()` function performs routine installation operations: copying the application tree into `/usr/lib/claude-desktop`, setting the SUID bit on `chrome-sandbox` (required by Chromium/Electron), installing a launcher script, desktop entry, icons, GNOME search provider files, MIME types, polkit policies, and udev rules — all of which serve the stated purpose of the application (Claude Desktop with extra features like Computer Use and Cowork VM support).

There is no obfuscated code, no unexpected network requests during build/package, no execution of fetched code, no exfiltration of data, and no file operations outside the package&#x27;s own directories (`$srcdir`, `$pkgdir`). The validation checks (e.g., `grep -qx` to verify the search provider&#x27;s Exec line) are defensive measures to detect upstream layout changes, not malicious behavior. The optdepends note that the application may auto-download a checksum-verified CLI at runtime — this is an upstream application feature, not an action of the PKGBUILD itself.
</details>
<evidence></evidence>
<summary>Standard AUR binary package, no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,562
  Completion Tokens: 2,493
  Total Tokens: 23,055
  Total Cost: $0.002299
  Execution Time: 31.19 seconds

Final Status: SAFE


No issues found.
