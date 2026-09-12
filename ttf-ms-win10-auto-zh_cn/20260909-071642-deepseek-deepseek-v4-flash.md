---
package: ttf-ms-win10-auto-zh_cn
pkgbase: ttf-ms-win10-auto
pkgver: 10.0.19042.789
pkgrel: 7
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 58205
completion_tokens: 4751
total_tokens: 62956
cost: 0.005999246442
execution_time: 114.01
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-09T07:16:41Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: License file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard font extraction PKGBUILD with benign dummy-source trick.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata; no executable code or malicious content.
---

ttf-ms-win10-auto-zh_cn is built from ttf-ms-win10-auto
Materializing ttf-ms-win10-auto-zh_cn from local mirror...
Materialized ttf-ms-win10-auto-zh_cn
Analyzing ttf-ms-win10-auto-zh_cn AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the PKGBUILD's top-level code. The top-level scope contains variable and array definitions (`pkgname`, `source`, `b2sums`, font lists), a harmless arithmetic assignment for `_total_sources`, and a loop that appends `SKIP` entries to `b2sums`. Function definitions such as `verify`, `prepare`, `_extract_from_remote_wim`, `_download_and_extract_full_iso`, `_package`, and the `package_*` functions are declared but not invoked during sourcing, so their network, FUSE, and 7z behavior cannot execute at this step.

The `DLAGENTS` entries containing `bash -c` are only assignments and are not executed while the PKGBUILD is sourced. `makepkg --printsrcinfo` performs no source downloads, so no untrusted payload is fetched or run during this command. No obfuscated commands, malicious command substitutions, or data exfiltration are present in the top-level scope.
</details>
<evidence></evidence>
<summary>No malicious top-level code executes during makepkg --printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code executes during makepkg --printsrcinfo.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://software-static.download.prss.microsoft.com/pr/download/19042.631.201119-0144.20h2_release_svc_refresh_CLIENTENTERPRISEEVAL_OEMRET_x86FRE_en-us.iso
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, LICENSE...
[0/3] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard license file (BSD Zero Clause License). It contains only legal text with no executable code, network requests, obfuscation, or any other potentially malicious content. It poses no security risk.
</details>
<evidence></evidence>
<summary>License file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- License file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD file is well-structured and implements a legitimate font extraction workflow from a Microsoft evaluation ISO. The `DLAGENTS` override creates empty placeholder files (`:> "$0"`) for font names listed as `file://` sources -- this is a known AUR trick to allow makepkg to proceed while the real files are extracted during `prepare()` from the ISO. The command is hardcoded and does not execute any fetched or user-controlled content. The only external downloads are from the official Microsoft software-download CDN for the evaluation ISO, and the `udf-http-range-proxy` tool (from AUR) which streams ISO metadata to avoid a full download. All file integrity is checked against hardcoded BLAKE2 hashes after extraction. There is no obfuscated code, no remote command execution (no `curl|bash` or equivalent), and no exfiltration of local data. The package operates entirely within standard packaging practices, albeit with an unusual but benign DLAGENTS trick.
</details>
<evidence></evidence>
<summary>Standard font extraction PKGBUILD with benign dummy-source trick.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard font extraction PKGBUILD with benign dummy-source trick.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a `.SRCINFO` metadata file for the AUR package `ttf-ms-win10-auto-zh_cn`. It contains only declarative information (package name, version, description, dependencies, source URLs, and checksum entries). There is no executable code, no scripts, and no obfuscated content. The only external source is a Windows 10 evaluation ISO from Microsoft's official software download domain (`software-static.download.prss.microsoft.com`), which is the expected upstream for this font package. All checksums are set to `SKIP`, which is a legitimate AUR practice (especially for local files and VCS sources) and not an indicator of malice. There are no suspicious network requests, no backdoors, no exfiltration, and no deviation from standard packaging practices. The file poses no security threat.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO metadata; no executable code or malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata; no executable code or malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 58,205
  Completion Tokens: 4,751
  Total Tokens: 62,956
  Total Cost: $0.005999
  Execution Time: 114.01 seconds

Final Status: SAFE


No issues found.
