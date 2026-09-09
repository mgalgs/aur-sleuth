---
package: ttf-ms-win10-auto-zh_tw
pkgbase: ttf-ms-win10-auto
pkgver: 10.0.19042.789
pkgrel: 7
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 58363
completion_tokens: 18247
total_tokens: 76610
cost: 0.008404899342
execution_time: 133.19
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-09T07:16:52Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard font package metadata; no malicious behavior; only SKIP checksum hygiene noted.
  - file: PKGBUILD
    status: safe
    summary: Unconventional dummy-source download hack; no injected malicious behavior found; SAFE.
---

ttf-ms-win10-auto-zh_tw is built from ttf-ms-win10-auto
Materializing ttf-ms-win10-auto-zh_tw from local mirror...
Materialized ttf-ms-win10-auto-zh_tw
Analyzing ttf-ms-win10-auto-zh_tw AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the top-level scope of this PKGBUILD. All top-level statements here are variable/array definitions, arithmetic expansion for the checksum count, and a loop filling `b2sums` with `SKIP`. No function calls, remote downloads, `eval`, `base64`, `curl`, or other command execution occur at parse time. The `pkgver()`, `prepare()`, `build()`, and `package()` functions are defined but not invoked by `--printsrcinfo`.

The custom `DLAGENTS` entries (`https::/usr/bin/bash -c :>"$0" %o %u` and `file::...`) are unusual: they create empty dummy files for declared sources instead of downloading them, relying on later preparation logic to extract the real files from the Microsoft evaluation ISO. This is not executed during `--printsrcinfo`, and even during a full build it only creates/truncates local files under the source directory. The ISO URL is Microsoft&#39;s official domain, and the many `SKIP` checksums are not relevant to this narrow gate because no sources are fetched or verified during metadata printing.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD sourcing is safe; no malicious execution occurs during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD sourcing is safe; no malicious execution occurs during printsrcinfo.
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
The file is a standard BSD Zero Clause License (0BSD) text file. It contains only legal text granting permission to use, copy, modify, and distribute the software. There are no executable commands, obfuscated code, network requests, or any operations that could pose a security risk. The file is a typical open-source license found in AUR packages and presents no threat.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard packaging metadata for a font package. It describes one Microsoft Windows 10 evaluation ISO downloaded over HTTPS from a Microsoft-owned domain (`software-static.download.prss.microsoft.com`), plus local font files (`file://...`) and a license file. The `makedepends` entries (`7zip`, `fuse3`, `rclone`, `udf-http-range-proxy`, `wget`) are consistent with the stated purpose of extracting fonts from the ISO. There is no obfuscated code, no suspicious network endpoint, no exfiltration, and no executable payload.

All checksums are `SKIP`, which is a supply-chain hygiene concern because sources are not verified, but per policy this is not treated as malicious by itself. The ISO URL is the project's declared upstream source, so pulling it over HTTPS is expected. Nothing in this file attempts to download or execute code from an unrelated host, modify system files, or perform any behavior outside normal font packaging.
</details>
<evidence>
</evidence>
<summary>
Standard font package metadata; no malicious behavior; only SKIP checksum hygiene noted.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard font package metadata; no malicious behavior; only SKIP checksum hygiene noted.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a split font package that intentionally uses dummy `file://` sources and custom `DLAGENTS` entries (`https::/usr/bin/bash -c :&gt;"$0" %o %u`, `file::/usr/bin/bash -c :&gt;"$0" %o %u`) to create empty placeholder files instead of downloading the full ISO or requiring local font files during source fetch. This is unconventional and bypasses normal source-level integrity checks (the array `b2sums` is `SKIP`), but the real artifacts are verified in `prepare()` against explicit BLAKE2 hashes. The shell one-liner is a hacky no-op file creator, not an obfuscated payload.

All network activity is directed at the official Microsoft evaluation-ISO host (`software-static.download.prss.microsoft.com`) using wget or a local range-request proxy (`udf-http-range-proxy`) mounted via rclone over localhost. Extracted content is limited to font files and `license.rtf`; installation only writes fonts and licenses into `$pkgdir`. Cleanup routines operate only on empty placeholder files and temporary mounts under `$srcdir`. There is no remote code execution, credential or data exfiltration, backdoor installation, or tampering with system files outside the build/package tree.
</details>
<evidence>
</evidence>
<summary>
Unconventional dummy-source download hack; no injected malicious behavior found; SAFE.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Unconventional dummy-source download hack; no injected malicious behavior found; SAFE.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 58,363
  Completion Tokens: 18,247
  Total Tokens: 76,610
  Total Cost: $0.008405
  Execution Time: 133.19 seconds

Final Status: SAFE


No issues found.
