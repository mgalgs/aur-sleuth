---
package: claude-desktop-extra
pkgver: 1.40609.0
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 16682
completion_tokens: 2515
total_tokens: 19197
cost: 0.001923813472
execution_time: 161.3
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 3054
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-31T11:10:33Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no executable content, pinned checksums.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard packaging hooks, no malicious behavior detected.
---

Cloning https://aur.archlinux.org/claude-desktop-extra.git...
Cloned claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable declarations (pkgname, pkgver, pkgdesc, depends, source, etc.) and a `package()` function. There is no `pkgver()` function defined, no top-level command substitutions, no obfuscated code, and no dangerous operations (eval, curl|bash, base64 decoding) in the global scope. The source URL points to the package&#x27;s own GitHub releases page, which is a standard and expected location for fetching the pre-built tarball. Checksums are provided (not SKIP), though this gate would not block on SKIP checksums regardless. Since `prepare()` / `build()` / `package()` are not executed during `makepkg --nobuild --noprepare`, no code in those functions can run. Sourcing this PKGBUILD and downloading its declared sources is safe.
</details>
<evidence></evidence>
<summary>Safe: no malicious code in global scope or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no malicious code in global scope or pkgver().
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/launcher/claude-desktop); they are upstream content and were not reviewed.
Reviewing the 3 file(s) in the AUR repository. The 3054 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It declares package metadata, dependencies, and two source tarballs (x86_64 and aarch64) from the package's own GitHub releases, each with a pinned SHA-256 checksum. There is no executable code, no network requests outside the package's own repository, no obfuscation, and no commands of any kind. The file contains only declarative metadata and is safe.
</details>
<evidence>
</evidence>
<summary>Standard metadata file, no executable content, pinned checksums.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no executable content, pinned checksums.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a binary Electron application. The source is downloaded from the maintainer&#39;s own GitHub releases page with pinned SHA256 checksums, ensuring integrity. The `package()` function performs only standard operations: copying the prebuilt tree to `/usr/lib/claude-desktop`, setting the SUID bit on chrome-sandbox (required for Chromium sandboxing), installing a launcher script, desktop entry, icons, and the license file. There are no suspicious network requests, obfuscated code, backdoors, or data exfiltration. The prebuilt tarball nature is a trust decision left to the user (the package clearly describes itself as a patched build), but nothing in the PKGBUILD itself is malicious or deviates from expected packaging behavior.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/3] Reviewing claude-desktop-extra.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install script performs standard post-install tasks mirroring the official Claude Desktop package behavior across Linux distributions: setting SUID on the chrome-sandbox binary for Chromium's setuid sandbox, writing an AppArmor userns allowlist profile (same pattern as Chrome/VS Code/1Password), and refreshing desktop/icon caches. It also prints informational notes about optional Cowork VM dependencies and a legacy repository rename. No suspicious network requests, obfuscated code, data exfiltration, or execution of untrusted content are present. All operations are confined to the package's own files and standard system caches.
</details>
<evidence></evidence>
<summary>Standard packaging hooks, no malicious behavior detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard packaging hooks, no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,682
  Completion Tokens: 2,515
  Total Tokens: 19,197
  Total Cost: $0.001924
  Execution Time: 161.30 seconds

Final Status: SAFE


No issues found.
