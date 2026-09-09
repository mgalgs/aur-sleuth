---
package: ttf-ms-win10-auto-sea
pkgbase: ttf-ms-win10-auto
pkgver: 10.0.19042.789
pkgrel: 7
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 58114
completion_tokens: 3231
total_tokens: 61345
cost: 0.005721821056
execution_time: 87.1
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-09T07:13:42Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata file, no executable code, safe.
  - file: LICENSE
    status: safe
    summary: License file with no executable content.
  - file: PKGBUILD
    status: safe
    summary: Standard font extraction PKGBUILD; no malicious behavior.
---

ttf-ms-win10-auto-sea is built from ttf-ms-win10-auto
Materializing ttf-ms-win10-auto-sea from local mirror...
Materialized ttf-ms-win10-auto-sea
Analyzing ttf-ms-win10-auto-sea AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only variable assignments, array definitions, and function definitions. No commands are executed during sourcing. The `DLAGENTS` array contains a suspicious bash truncation command, but it is a string assignment and is not executed during `makepkg --printsrcinfo`. All potentially dangerous operations (file downloads, extraction, integrity checks) are inside functions (`prepare()`, `_extract_from_remote_wim()`, `_download_and_extract_full_iso()`) that are not called during the metadata-printing phase. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>Top-level scope is safe for --printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is safe for --printsrcinfo.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://software-static.download.prss.microsoft.com/pr/download/19042.631.201119-0144.20h2_release_svc_refresh_CLIENTENTERPRISEEVAL_OEMRET_x86FRE_en-us.iso
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, LICENSE...
[0/3] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a metadata file (`.SRCINFO`) for the AUR package `ttf-ms-win10-auto-sea`. It contains only package declarations: version, description, dependencies, source URLs, and checksums. All `b2sums` are set to `SKIP`, which is a standard AUR practice (especially for VCS sources or when checksums are not enforced by the maintainer) and is explicitly not considered malicious per the guidelines. The source URL points to an official Microsoft download domain (`software-static.download.prss.microsoft.com`), which is the expected upstream for Windows 10 font ISOs. There are no executable commands, obfuscated code, network requests beyond the declared source, or any other indicators of malicious behavior. This file is purely declaratory and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Metadata file, no executable code, safe.</summary>
</security_assessment>

[1/3] Reviewing LICENSE, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file, no executable code, safe.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text license (BSD Zero Clause License). It contains no executable code, no network operations, no file manipulation, and no instructions of any kind. It is a standard legal boilerplate with zero security implications.</details>
<evidence></evidence>
<summary>License file with no executable content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- License file with no executable content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD downloads a Windows 10 evaluation ISO from a legitimate Microsoft domain and extracts font files for packaging. The custom `DLAGENTS` entries that truncate source files to zero bytes are a well-known AUR pattern for packages that generate their own source files during the build process; they do not execute arbitrary code or exfiltrate data. The `_b2sums` array provides BLAKE2 hashes that are verified in `prepare()` against the extracted font files and license, ensuring integrity after extraction. No obfuscated code, unexpected network destinations, or backdoors are present. The package only installs font files and a license file, with no system modifications outside the standard font path.
</details>
<evidence>
</evidence>
<summary>Standard font extraction PKGBUILD; no malicious behavior.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard font extraction PKGBUILD; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 58,114
  Completion Tokens: 3,231
  Total Tokens: 61,345
  Total Cost: $0.005722
  Execution Time: 87.10 seconds

Final Status: SAFE


No issues found.
