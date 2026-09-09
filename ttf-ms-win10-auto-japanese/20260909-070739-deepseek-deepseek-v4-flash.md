---
package: ttf-ms-win10-auto-japanese
pkgbase: ttf-ms-win10-auto
pkgver: 10.0.19042.789
pkgrel: 7
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 58197
completion_tokens: 3449
total_tokens: 61646
cost: 0.005767807570
execution_time: 56.48
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-09T07:07:38Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard font extraction from Microsoft ISO; no malice.
  - file: .SRCINFO
    status: safe
    summary: "Safe: metadata only, no executable code or malicious behavior."
---

ttf-ms-win10-auto-japanese is built from ttf-ms-win10-auto
Materializing ttf-ms-win10-auto-japanese from local mirror...
Materialized ttf-ms-win10-auto-japanese
Analyzing ttf-ms-win10-auto-japanese AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD consists only of variable and array assignments, a for loop filling `b2sums` with SKIP entries, an arithmetic expansion for `_total_sources`, an `unset`, and function definitions (`verify`, `prepare`, `_extract_from_remote_wim`, `_download_and_extract_full_iso`, `_package`, and the `package_*` functions). None of these execute commands while the PKGBUILD is being sourced.

The `DLAGENTS` entries contain `bash -c :&gt;"$0" %o %u` strings, but they are inert string data at source time; makepkg would only interpret them later when downloading sources. The network URLs in the `source` array (the Microsoft ISO URL and the `file://` dummy font paths) are just metadata and are not fetched by `makepkg --printsrcinfo`.

No `eval`, command substitution, backticks, or top-level invocation of `curl`, `wget`, or `bash` exists. All potentially interesting behavior (downloading/extracting the ISO, mounting via rclone, verifying checksums, installing fonts) lives inside `prepare()` and other build-time functions, which are not executed by `makepkg --printsrcinfo` and are out of scope for this narrow gate.
</details>
<evidence>
</evidence>
<summary>Top-level PKGBUILD code only defines variables and functions; nothing executes during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD code only defines variables and functions; nothing executes during sourcing.
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
The file is a standard BSD Zero Clause License text. It contains no executable code, no instructions, no network requests, and no obfuscated content. It is purely a license file with no functionality that could pose a security risk.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD retrieves Microsoft Windows 10 TrueType fonts from a legitimate Microsoft evaluation ISO hosted on the official Microsoft CDN (`software-static.download.prss.microsoft.com`). The extraction process uses `udf-http-range-proxy` and `rclone` to mount the ISO remotely, with a fallback to downloading the full ISO via `wget`. All network destinations are Microsoft-owned and serve the stated purpose of the package.

The `DLAGENTS` array creates empty placeholder files for font names listed as `file://` sources; this is a known AUR pattern to satisfy makepkg's source expectations when the actual files are generated later during extraction. All checksums in the `source` array are `SKIP`, but the package provides its own `_b2sums` array for integrity verification in `prepare()`. The code is well-commented, transparent, and performs only the operations needed to extract font files and a license from the Windows ISO. No obfuscation, unexpected network calls, exfiltration, or backdoors are present.
</details>
<evidence>
</evidence>
<summary>Standard font extraction from Microsoft ISO; no malice.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard font extraction from Microsoft ISO; no malice.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The analyzed file is a `.SRCINFO` metadata file that describes the package structure, sources, dependencies, and conflicts for the `ttf-ms-win10-auto-japanese` AUR package. It contains no executable code, no scripts, no network requests or downloads, and no obfuscated or encoded content. All checksums are set to `SKIP`, which is expressly permitted by the instructions and is not by itself evidence of malice. The only remote source is an official Microsoft Windows 10 evaluation ISO URL, which is the expected upstream source for extracting fonts. There is no evidence of data exfiltration, backdoors, credential theft, or any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Safe: metadata only, no executable code or malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Safe: metadata only, no executable code or malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 58,197
  Completion Tokens: 3,449
  Total Tokens: 61,646
  Total Cost: $0.005768
  Execution Time: 56.48 seconds

Final Status: SAFE


No issues found.
