---
package: qwenwork-bin
pkgver: 1.0.5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12237
completion_tokens: 1956
total_tokens: 14193
cost: 0.001430898294
execution_time: 36.41
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 2
injection_attempts: 0
date: 2026-09-22T03:07:44Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR builds, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO for binary package; no security concerns.
  - file: qwen-work-cn.desktop
    status: safe
    summary: Standard desktop entry; no malicious or suspicious behavior present.
  - file: PKGBUILD
    status: safe
    summary: Standard repack of a proprietary Electron app, no malicious indicators.
---

Materializing qwenwork-bin from local mirror...
Materialized qwenwork-bin
Analyzing qwenwork-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only static variable definitions, arrays, and string assignments. There are no command substitutions, function calls, or external commands that could execute during `makepkg --printsrcinfo`. The `source()` and `sha256sums()` arrays are standard and do not trigger any downloads or verified checks. The `package()` function is defined but will not be run during this metadata-printing step. Therefore, sourcing the PKGBUILD for `makepkg --printsrcinfo` poses no security risk.
</details>
<evidence></evidence>
<summary>No global code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No global code execution risk.
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: qwenworkcn-linux-amd64.deb::https://assets.qwenwork.cn/release/latest/qwenworkcn-linux-amd64.deb, qwenworkcn-linux-arm64.deb::https://assets.qwenwork.cn/release/latest/qwenworkcn-linux-arm64.deb
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package. It ignores common package build artifacts (`*.pkg.tar.zst`, `*.pkg.tar.xz`, `*.pkg.tar.gz`) and build directories (`src/`, `pkg/`). There is no executable code, no network requests, no obfuscation, and no sign of malicious intent. The file is innocuous and follows normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR builds, no security issues.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR builds, no security issues.
[1/4] Reviewing .SRCINFO, PKGBUILD, qwen-work-cn.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is metadata for the qwenwork-bin AUR package. It declares dependencies, sources from the official upstream domain (assets.qwenwork.cn), and provides standard packaging options. The checksums for the binary .deb files are set to SKIP, which is a common practice for binary packages where the upstream release may change checksums frequently; this is not a sign of malice. No unusual commands, network destinations, obfuscated code, or suspicious operations are present. The file is consistent with normal AUR packaging for a pre-built binary application.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO for binary package; no security concerns.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, qwen-work-cn.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO for binary package; no security concerns.
LLM auditresponse for qwen-work-cn.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org .desktop entry file. It describes an application launcher for a product named "QwenWork" / "千问办公", with localized names, an icon, categories, and a MimeType handler registration. The Exec line invokes the application binary at `/opt/apps/QwenWorkCN/qwen-work-cn` with `%U` (a standard file/URI argument placeholder). No malicious commands, network activity, obfuscation, file manipulation, or suspicious behavior is present. The file only contains desktop metadata and does not perform any executable actions beyond launching the declared application.
</details>
<evidence></evidence>
<summary>Standard desktop entry; no malicious or suspicious behavior present.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed qwen-work-cn.desktop. Status: SAFE -- Standard desktop entry; no malicious or suspicious behavior present.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard repackage of a proprietary binary Electron application (QwenWork) from Alibaba.  
- Sources are fetched from the official upstream domain (`assets.qwenwork.cn`) as `.deb` files.  
- Checksums for the binary archives are set to `SKIP` because upstream only provides a rolling &quot;latest&quot; URL – the same pattern used by packages like `google-chrome`. This is a known reproducibility limitation, **not** evidence of malice.  
- The `package()` function performs routine operations: extracts the `.deb` with `bsdtar`, installs a bundled `desktop` file, creates a symlink, and sets the typical `4755` permission on the Chrome sandbox (required for Electron’s sandboxing).  
- No obfuscated code, no unexpected network activity, no exfiltration, and no execution of untrusted content beyond the declared upstream sources.  
All behaviors are consistent with legitimate AUR packaging for proprietary Electron applications.
</details>
<evidence></evidence>
<summary>Standard repack of a proprietary Electron app, no malicious indicators.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard repack of a proprietary Electron app, no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,237
  Completion Tokens: 1,956
  Total Tokens: 14,193
  Total Cost: $0.001431
  Execution Time: 36.41 seconds

Final Status: SAFE


No issues found.
