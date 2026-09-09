---
package: ttf-ms-win10-auto
pkgver: 10.0.19042.789
pkgrel: 7
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 58189
completion_tokens: 4172
total_tokens: 62361
cost: 0.005895222998
execution_time: 78.75
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-09T07:08:02Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: License file with no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard font extraction package; no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata; no malicious content.
---

Materializing ttf-ms-win10-auto from local mirror...
Materialized ttf-ms-win10-auto
Analyzing ttf-ms-win10-auto AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the global/top-level scope of this PKGBUILD. The top-level code consists of variable and array assignments, arithmetic expansion to compute a source count, a loop that fills `b2sums` with `SKIP` entries, another array assignment for dummy source names, and function definitions. None of these execute network requests, download payloads, run `eval`, or exfiltrate data while the PKGBUILD is being sourced.

The unusual `DLAGENTS` array contains `bash -c` download-agent strings, and the `prepare()` / extraction functions contain downloads and file operations, but these are only data or function bodies at this stage. They do not execute during `makepkg --printsrcinfo`, so they are out of scope for this narrow gate and should be examined in the full PKGBUILD audit.
</details>
<evidence>
</evidence>
<summary>
Sourcing only defines variables and functions; no malicious top-level execution occurs.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing only defines variables and functions; no malicious top-level execution occurs.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://software-static.download.prss.microsoft.com/pr/download/19042.631.201119-0144.20h2_release_svc_refresh_CLIENTENTERPRISEEVAL_OEMRET_x86FRE_en-us.iso
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard BSD Zero Clause License. It contains only legal text, no executable code, no obfuscation, and no references to network operations or system modifications. There is nothing malicious or suspicious in this file.
</details>
<evidence></evidence>
<summary>License file with no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- License file with no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a well-structured, legitimate package for extracting Windows 10 TrueType fonts from Microsoft's official evaluation ISO. The ISO URL points to Microsoft's own download server (`software-static.download.prss.microsoft.com`). The `DLAGENTS` override that creates empty files for the font sources is a known technique to work around `makepkg`'s source handling when the actual files are extracted from a larger archive later—not malicious. All network operations target Microsoft's official domain, and the extracted fonts are verified against a hardcoded list of BLAKE2 checksums. There is no obfuscated code, no exfiltration, no backdoors, and no unexpected system modification. The package follows standard AUR packaging practices and includes thorough documentation.
</details>
<evidence></evidence>
<summary>Standard font extraction package; no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard font extraction package; no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata descriptor for an Arch Linux AUR package. It declares sources (ISO from Microsoft's official download server and local font files), dependencies, and subpackage splits. All checksums are set to `SKIP`, which is not unusual for binary or VCS sources in AUR packages — it is a trust/hygiene choice, not evidence of malice. The ISO source URL points to a legitimate Microsoft domain (`software-static.download.prss.microsoft.com`), and the local `file://` sources reference font files presumably bundled with the maintainer's repository. There are no executable commands, obfuscated code, network requests beyond the package's own declared upstream, or any operations that would exfiltrate data, install backdoors, or execute attacker-controlled content. No evidence of a supply-chain attack or malicious injection is present.
</details>
<evidence></evidence>
<summary>Standard metadata; no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 58,189
  Completion Tokens: 4,172
  Total Tokens: 62,361
  Total Cost: $0.005895
  Execution Time: 78.75 seconds

Final Status: SAFE


No issues found.
