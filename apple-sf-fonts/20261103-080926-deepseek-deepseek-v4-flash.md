---
package: apple-sf-fonts
pkgver: 2026.01.20
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14036
completion_tokens: 2184
total_tokens: 16220
cost: 0.001674764
execution_time: 36.6
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 8
injection_attempts: 0
date: 2026-11-03T08:09:26Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR packaging, no signs of malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard font package from official Apple source, no issues.
  - file: clean-font-names.py
    status: safe
    summary: Legitimate font name cleaning tool, no security issues.
  - file: extract-dmg.sh
    status: safe
    summary: No malicious code; standard extraction script.
---

Materializing apple-sf-fonts from local mirror...
Materialized apple-sf-fonts
Analyzing apple-sf-fonts AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no top-level command substitutions, backtick executions, or calls to external commands (e.g., `curl`, `wget`, `eval`). The only top-level code is a `for` loop that appends static strings to the `source` and `sha256sums` arrays. No malicious code executes during sourcing; all potentially dangerous operations are confined to the `build()` and `package()` functions, which are not run by `makepkg --printsrcinfo`. Therefore, running this command is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sourcing is safe.
Note: 8 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: SF-Pro.dmg::https://devimages-cdn.apple.com/design/resources/download/SF-Pro.dmg, SF-Compact.dmg::https://devimages-cdn.apple.com/design/resources/download/SF-Compact.dmg, SF-Mono.dmg::https://devimages-cdn.apple.com/design/resources/download/SF-Mono.dmg, NY.dmg::https://devimages-cdn.apple.com/design/resources/download/NY.dmg, SF-Arabic.dmg::https://devimages-cdn.apple.com/design/resources/download/SF-Arabic.dmg, SF-Armenian.dmg::https://devimages-cdn.apple.com/design/resources/download/SF-Armenian.dmg, SF-Georgian.dmg::https://devimages-cdn.apple.com/design/resources/download/SF-Georgian.dmg, SF-Hebrew.dmg::https://devimages-cdn.apple.com/design/resources/download/SF-Hebrew.dmg
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing PKGBUILD...
[0/4] Reviewing PKGBUILD, .SRCINFO...
[0/4] Reviewing PKGBUILD, .SRCINFO, clean-font-names.py...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file defines metadata and sources for the `apple-sf-fonts` package. All DMG files are sourced from Apple's official CDN (`devimages-cdn.apple.com`), which is the legitimate upstream provider for these fonts. The use of `SKIP` for checksums on the DMG files is a common practice in AUR packages and does not indicate malice. The file also references two helper scripts (`extract-dmg.sh` and `clean-font-names.py`) that are part of the package's source, but there is no evidence of suspicious network activity, obfuscated code, or instructions to execute untrusted content. The package follows standard AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Standard AUR packaging, no signs of malicious code.</summary>
</security_assessment>

[1/4] Reviewing PKGBUILD, clean-font-names.py...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR packaging, no signs of malicious code.
[1/4] Reviewing PKGBUILD, clean-font-names.py, extract-dmg.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads font DMG files from Apple&#x27;s official developer CDN (`devimages-cdn.apple.com`) and uses helper scripts (`extract-dmg.sh` and `clean-font-names.py`) with pinned SHA-256 checksums. The only checksums set to `SKIP` are for the unversioned Apple DMG URLs, which is a documented and common practice for such sources — not evidence of malice. All operations (extraction, font name cleaning, installation) are standard packaging tasks for this type of font package. There are no suspicious network requests, obfuscated code, file exfiltration, or backdoors. The package behaves exactly as expected for an AUR package that downloads and installs Apple&#x27;s official SF fonts.
</details>
<evidence></evidence>
<summary>Standard font package from official Apple source, no issues.</summary>
</security_assessment>

[2/4] Reviewing clean-font-names.py, extract-dmg.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard font package from official Apple source, no issues.
LLM auditresponse for clean-font-names.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `clean-font-names.py` is a straightforward font-utilities helper that processes `.ttf/.otf/.ttc/.otc` files in a given directory. It uses the well-known `fontTools` library to strip leading dots from selected name records (family, full name, PostScript name, etc.).  

Key observations:  
- No network access (no `curl`, `wget`, `requests`, or any I/O outside the local filesystem).  
- No obfuscated or encoded code.  
- File operations are limited to opening, reading, writing, and replacing font files within the same directory. Temporary files are created securely via `tempfile.mkstemp` and cleaned up properly.  
- The script does not exfiltrate data, modify system files, execute external binaries, or inject backdoors.  
- It is purely a packaging/cleanup tool that modifies only the font files as described.  

There is no evidence of malicious or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Legitimate font name cleaning tool, no security issues.</summary>
</security_assessment>

[3/4] Reviewing extract-dmg.sh...
+ Reviewed clean-font-names.py. Status: SAFE -- Legitimate font name cleaning tool, no security issues.
LLM auditresponse for extract-dmg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `extract-dmg.sh` is a straightforward extraction helper designed to unpack font files from an Apple DMG archive. It uses standard system utilities (`7z`, `bsdtar`, `find`, `cp`) and temporary directories with proper cleanup via `trap`. There are no network operations, no obfuscated or encoded code, no dangerous commands (like `eval`, `curl`, `wget`), and no modifications to system files outside the specified output directory. All operations are confined to the input DMG and the user-provided output directory. This is a typical, benign AUR helper script that performs only the extraction logic it describes.
</details>
<evidence></evidence>
<summary>No malicious code; standard extraction script.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed extract-dmg.sh. Status: SAFE -- No malicious code; standard extraction script.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,036
  Completion Tokens: 2,184
  Total Tokens: 16,220
  Total Cost: $0.001675
  Execution Time: 36.60 seconds

Final Status: SAFE


No issues found.
