---
package: xenia-edge-bin
pkgver: 20260918182140.1af8dc6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10413
completion_tokens: 4329
total_tokens: 14742
cost: 0.00092379924
execution_time: 124.14
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-18T23:32:35Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious code found.
---

Materializing xenia-edge-bin from local mirror...
Materialized xenia-edge-bin
Analyzing xenia-edge-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its top-level scope. In this file, the top-level consists solely of metadata variable assignments (`pkgname`, `pkgver`, `_srcver`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `options`, `provides`, `source`, `sha256sums`) and function definitions. No command substitution, backticks, `eval`, or network-downloading commands appear at top level, so sourcing it performs no network access and no code execution beyond ordinary variable expansion.

The `prepare()` function (which extracts the AppImage and is worth a closer look in the full audit as a build-time trust consideration) and the `build()`/`package()` functions are not run by `--printsrcinfo`, so they are out of scope for this gate. The `SKIP` checksum and unpinned source are hygiene issues only, not grounds to block this command. Note also that the `&amp;quot;` / `&amp;apos;` entities appear to be escaping artifacts from pasting; even if literal, they would not execute code during this step.
</details>
<evidence>
</evidence>
<summary>Top-level contains only variable assignments; no code executes during --printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level contains only variable assignments; no code executes during --printsrcinfo.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: xenia-edge-license::https://raw.githubusercontent.com/has207/xenia-edge/1af8dc6/LICENSE
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, LICENSE...
[0/3] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains only the text of a permissive open-source license (ISC-style). There is no executable code, no network requests, no obfuscation, and no instructions that could compromise system security. It is a standard packaging artifact with no security implications.
</details>
<evidence>
</evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file describes a standard AUR binary package (`-bin`) that provides a pre-built AppImage of the Xenia Edge emulator. All source URLs point to the package's own upstream GitHub repository, pinned to a specific commit (`1af8dc6`). The AppImage has a non‑SKIP SHA‑256 checksum verifying integrity; the license file uses `SKIP`, which is a common practice for raw text files and does not indicate malice. There are no suspicious network requests, obfuscated commands, or unexpected file operations. The file is purely metadata with no executable content, and it follows normal AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a binary AppImage-based package. It downloads the upstream AppImage and license from the official GitHub repository of the project fork (has207/xenia-edge). The AppImage checksum is pinned (SHA256), providing integrity verification. The license source is set to `SKIP`, which is acceptable for a non-executable text file. The `prepare()` function extracts the AppImage using `--appimage-extract` – this is normal when repackaging an AppImage into a system package. The `build()` and `package()` functions only perform file relocation, permission normalization, and desktop file patching (to disable desktop integration and point to the installed binary). There are no suspicious network requests, obfuscated code, backdoors, or data exfiltration attempts. All operations serve the stated purpose of installing the xenia-edge emulator.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD, no malicious code found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,413
  Completion Tokens: 4,329
  Total Tokens: 14,742
  Total Cost: $0.000924
  Execution Time: 124.14 seconds

Final Status: SAFE


No issues found.
