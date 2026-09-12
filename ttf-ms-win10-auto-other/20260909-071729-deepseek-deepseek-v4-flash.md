---
package: ttf-ms-win10-auto-other
pkgbase: ttf-ms-win10-auto
pkgver: 10.0.19042.789
pkgrel: 7
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 58197
completion_tokens: 18539
total_tokens: 76736
cost: 0.008441936650
execution_time: 163.16
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-09T07:17:28Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: "Benign PKGBUILD: official Microsoft download, local extraction, verified font checksums."
---

ttf-ms-win10-auto-other is built from ttf-ms-win10-auto
Materializing ttf-ms-win10-auto-other from local mirror...
Materialized ttf-ms-win10-auto-other
Analyzing ttf-ms-win10-auto-other AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope only defines variables, arrays, and function bodies. No command substitutions, backtick executions, or arithmetic expansions that invoke external commands occur during sourcing. The `DLAGENTS` array defines custom download handlers but these are only used by `makepkg` during source extraction, not during `--printsrcinfo`. Functions like `prepare()`, `build()`, and `package()` are defined but not called at global scope. There is no obfuscated code, network exfiltration, or dangerous command execution that would execute during parsing. All dynamic array construction (e.g., the `b2sums` loop) is confined to string operations. Therefore, running `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
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
The file is a standard `.SRCINFO` metadata file for an AUR package. It defines package metadata, dependencies, sources, and checksums. The sources include an ISO from Microsoft's official download server and many local font files. All checksums are set to `SKIP`, which is a common practice for VCS or unhashed sources and is not inherently malicious. No obfuscated code, suspicious network requests, or unexpected file operations are present. The file contains only declarative metadata and does not execute any commands.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing LICENSE, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard BSD Zero Clause License text. It contains no code, no instructions, no network requests, no file operations, and no obfuscation. It is purely a legal notice for the package. There is no evidence of any supply-chain attack or malicious behavior.</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is consistent with a legitimate font-extraction package and shows no evidence of injected malicious code. The only remote host contacted is Microsoft&#39;s official evaluation ISO server (`software-static.download.prss.microsoft.com`), either through `udf-http-range-proxy`/`rclone` or through the `wget` fallback. No unexpected hosts, no `curl|bash`, no encoded payloads, and no exfiltration of local data are present.

The custom `DLAGENTS` entries using `/usr/bin/bash -c :&gt;"$0" %o %u` are the most unusual part, but they only create/truncate local placeholder files so `makepkg` does not attempt to download the dummy `file://` sources or the ISO before `prepare()` runs. The URL is passed as data, not executed, and the placeholder cleanup is confined to `$SRCDEST` and `$srcdir`. All extracted font files and `license.rtf` are then verified against hardcoded BLAKE2 hashes inside `prepare()`. The `SKIP` entries in the source-array checksums are a hygiene note only; the real payloads are integrity-checked before packaging.
</details>
<evidence></evidence>
<summary>
Benign PKGBUILD: official Microsoft download, local extraction, verified font checksums.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Benign PKGBUILD: official Microsoft download, local extraction, verified font checksums.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 58,197
  Completion Tokens: 18,539
  Total Tokens: 76,736
  Total Cost: $0.008442
  Execution Time: 163.16 seconds

Final Status: SAFE


No issues found.
