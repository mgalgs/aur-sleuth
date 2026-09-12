---
package: ttf-ms-win10-auto-thai
pkgbase: ttf-ms-win10-auto
pkgver: 10.0.19042.789
pkgrel: 7
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 58355
completion_tokens: 4269
total_tokens: 62624
cost: 0.005927121158
execution_time: 130.32
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-09T07:14:24Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: License text only; no executable or security-relevant content.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only .SRCINFO for font package; no malicious code found.
  - file: PKGBUILD
    status: safe
    summary: Legitimate font extraction PKGBUILD, no malicious behavior.
---

ttf-ms-win10-auto-thai is built from ttf-ms-win10-auto
Materializing ttf-ms-win10-auto-thai from local mirror...
Materialized ttf-ms-win10-auto-thai
Analyzing ttf-ms-win10-auto-thai AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD was reviewed for anything that executes while `makepkg --printsrcinfo` sources it. The top-level scope only assigns variables (`pkgname`, `pkgver`, `arch`, `source`, etc.), performs an arithmetic expansion for `_total_sources`, appends `SKIP` strings to `b2sums` in a `for` loop, and defines functions (`verify`, `prepare`, `_extract_from_remote_wim`, `_download_and_extract_full_iso`, `package_*`). There are no top-level command substitutions that invoke external programs, no network requests, no `eval`, no encoded/obfuscated payloads, and no execution of downloaded content at source time.

One notable item that is out of scope for this narrow gate: the `DLAGENTS` override replaces the https/file download agents with `bash -c :&gt;"$0"`, and the real ISO/font retrieval happens in `prepare()` via `udf-http-range-proxy`/`wget`. These only execute during later makepkg phases, not during `--printsrcinfo`, so they should be examined in the full PKGBUILD audit. Neither affects the safety of this command.
</details>
<evidence>
</evidence>
<summary>
No top-level execution; printsrcinfo is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution; printsrcinfo is safe.
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
This file is a standard BSD Zero Clause License text. It contains no executable code, no network requests, no file operations, and no packaging logic. The content is purely a legal license grant and disclaimer, with no security-relevant behavior whatsoever.
</details>
<evidence>
</evidence>
<summary>
License text only; no executable or security-relevant content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- License text only; no executable or security-relevant content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a `.SRCINFO` metadata file describing a font packaging PKGBUILD. It declares sources from Microsoft's official software download domain (`software-static.download.prss.microsoft.com`) and local `file://` font files, all with `SKIP` checksums, plus normal build dependencies such as `7zip`, `fuse3`, `rclone`, `udf-http-range-proxy`, and `wget`. There is no executable code, no obfuscation, no suspicious network exfiltration, and no unexpected command execution.

The all-`SKIP` checksums and reliance on a remote ISO are reproducibility/hygiene concerns, but they are not evidence of malice under the stated assessment policy. The use of `rclone`/`udf-http-range-proxy`/`wget` is consistent with fetching and extracting the Windows 10 evaluation ISO to obtain font files. No injected malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>
Metadata-only .SRCINFO for font package; no malicious code found.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only .SRCINFO for font package; no malicious code found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a legitimate script to extract Windows 10 fonts from an evaluation ISO. It uses custom download agents (DLAGENTS) to create dummy empty source files for each font entry, which is a known technique to satisfy makepkg's source requirements without downloading fonts individually—the fonts are later extracted from the WIM image inside the ISO. All network sources (the ISO URL) point to Microsoft's official download servers. The extraction process uses standard tools (7zip, rclone, udf-http-range-proxy) in an expected manner, and file integrity is verified with BLAKE2 checksums provided in the PKGBUILD. There is no obfuscated code, no suspicious network requests to unknown hosts, no data exfiltration, and no backdoors. The package is consistent with standard AUR packaging practices for this font package.
</details>
<evidence></evidence>
<summary>Legitimate font extraction PKGBUILD, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate font extraction PKGBUILD, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 58,355
  Completion Tokens: 4,269
  Total Tokens: 62,624
  Total Cost: $0.005927
  Execution Time: 130.32 seconds

Final Status: SAFE


No issues found.
