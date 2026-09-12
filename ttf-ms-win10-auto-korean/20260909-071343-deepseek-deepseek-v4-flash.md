---
package: ttf-ms-win10-auto-korean
pkgbase: ttf-ms-win10-auto
pkgver: 10.0.19042.789
pkgrel: 7
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 58118
completion_tokens: 2838
total_tokens: 60956
cost: 0.005652531164
execution_time: 87.54
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-09T07:13:43Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Legitimate extraction PKGBUILD with no malicious behavior.
---

ttf-ms-win10-auto-korean is built from ttf-ms-win10-auto
Materializing ttf-ms-win10-auto-korean from local mirror...
Materialized ttf-ms-win10-auto-korean
Analyzing ttf-ms-win10-auto-korean AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only standard variable definitions, array assignments, and function definitions. The `DLAGENTS` array defines custom download agents, but this is merely a data assignment that is not executed during `makepkg --printsrcinfo`. The `b2sums` initialization loop performs harmless arithmetic and array operations. All potentially dangerous operations (ISO download, WIM extraction, font verification, cleanup) are confined within function bodies (`_extract_from_remote_wim`, `_download_and_extract_full_iso`, `prepare`, `_package`, etc.) that are not called during the `--printsrcinfo` step. No top-level command substitution, `eval`, or direct execution of untrusted content is present.
</details>
<evidence></evidence>
<summary>No executable code at top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code at top-level scope.
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
The file is a standard BSD Zero Clause License text. It contains no code, commands, or executable content. There is no evidence of malicious behavior, obfuscation, or deviation from normal packaging practices. It is simply a legal document used for software licensing.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR metadata file that declares package sources, checksums, dependencies, and split package information. The only remote source is an official Microsoft Windows 10 evaluation ISO download URL. All other sources are local font files (via `file://`). The checksums are all set to `SKIP`, which is an acceptable practice for this package type. The dependencies (7zip, fuse3, rclone, wget, udf-http-range-proxy) are legitimate tools required to extract fonts from the ISO. No obfuscation, suspicious network requests, or dangerous commands are present. The file contains no executable code or unexpected behavior — it is purely declarative metadata.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD extracts Microsoft Windows 10 fonts from an official evaluation ISO using range‑request proxy and rclone, with a full‑ISO fallback. The custom `DLAGENTS` entries (`/usr/bin/bash -c :&gt;&quot;$0&quot;`) are **not** malicious—they create empty placeholder files to prevent makepkg&#x27;s default downloader from fetching the ISO and font files, because the actual extraction is handled separately in `prepare()`. This is a known AUR technique to avoid redundant network transfers. The only external network destination is Microsoft&#x27;s official download server (`software-static.download.prss.microsoft.com`). No obfuscated code, backdoors, or data exfiltration is present. All operations (range‑proxy setup, rclone mount, 7z extraction, file verification) are standard packaging practices for this type of font package. The file is safe.
</details>
<evidence></evidence>
<summary>Legitimate extraction PKGBUILD with no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate extraction PKGBUILD with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 58,118
  Completion Tokens: 2,838
  Total Tokens: 60,956
  Total Cost: $0.005653
  Execution Time: 87.54 seconds

Final Status: SAFE


No issues found.
