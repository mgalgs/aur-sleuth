---
package: neru-bin
pkgver: 1.52.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 14611
completion_tokens: 2254
total_tokens: 16865
cost: 0.00160331934
execution_time: 27.68
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-05T19:10:20Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious behavior detected.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary PKGBUILD with no malicious behavior found.
  - file: REUSE.toml
    status: safe
    summary: REUSE.toml is benign SPDX metadata configuration; no security concerns, decision is SAFE.
---

Materializing neru-bin from local mirror...
Materialized neru-bin
Analyzing neru-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments and function definitions at the top level. No command substitutions, backticks, or function invocations are present in the global scope that would execute during `makepkg --printsrcinfo`. All potentially active code (echo, install, binary execution) is inside the `package()` function, which is not sourced or run by the metadata printing step. Therefore, sourcing this file poses no security risk.</details>
<evidence></evidence>
<summary>No dangerous top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sourcing is safe.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: neru_license::https://raw.githubusercontent.com/y3owk1n/neru/main/LICENSE
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, LICENSE...
[0/5] Reviewing .SRCINFO, LICENSE, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC-style license file commonly used by the Arch Linux project and its contributors. It contains no executable code, no network requests, no obfuscated content, no file operations, and no system modifications. It is purely a legal text file that grants permission to use, copy, modify, and distribute the software. There are no security concerns or supply-chain attack vectors present.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, LICENSE, LICENSE, PKGBUILD...
[1/5] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains a standard ISC license, commonly used in Arch Linux packaging. No code, commands, or instructions are present; it is purely a legal notice. There are no security concerns.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, LICENSE, PKGBUILD, REUSE.toml...
[2/5] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.SRCINFO` metadata file for the `neru-bin` AUR package. It declares sources from the project&#8217;s own GitHub releases (`github.com/y3owk1n/neru/releases/download/`) and a license file from `raw.githubusercontent.com`. The only checksum set to `SKIP` is for the license file, which is a common (and inconsequential) practice in AUR packages and does not indicate malice. The package&#8217;s dependencies and description are consistent with its stated purpose as a mouse-free screen navigation tool. There is no obfuscated code, no unexpected network destinations, no dangerous commands, and no deviation from normal packaging patterns.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious behavior detected.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, REUSE.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious behavior detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. The binary archive has a pinned SHA256 checksum, ensuring integrity of the downloaded file. The license file source uses `raw.githubusercontent.com` with a skipped checksum, which is common for license files and not indicative of malice. The `package()` function only installs the binary, man pages, license, and generates shell completions by executing the installed binary — a routine and expected operation. There are no suspicious network requests, obfuscated commands, or dangerous file operations. No evidence of exfiltration, backdoors, or tampering with system files beyond the application&#x27;s own scope.
</details>
<evidence></evidence>
<summary>Standard AUR binary PKGBUILD with no malicious behavior found.</summary>
</security_assessment>

[4/5] Reviewing REUSE.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary PKGBUILD with no malicious behavior found.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE.toml configuration, used by the REUSE tool to associate SPDX copyright and license metadata with files in the repository. It declares which paths (PKGBUILD, README.md, keys/**, .SRCINFO, .gitignore, various install/service/socket/timer templates, etc.) are covered by the copyright notice "Arch Linux contributors" and the "0BSD" license. The wildcard patterns (e.g., `*.install`, `*.service`) are glob patterns interpreted by the REUSE tool for metadata matching only; they do not execute commands or trigger shell expansion.

There is no code execution, no network access, no obfuscation, no file modification, and no reference to any external host. The `&quot;` sequences are simply XML-escaped quotation marks introduced by the surrounding XML representation of the file. This is entirely standard, benign packaging metadata and contains no evidence of a supply-chain attack or malicious behavior.
</details>
<evidence>
</evidence>
<summary>
REUSE.toml is benign SPDX metadata configuration; no security concerns, decision is SAFE.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed REUSE.toml. Status: SAFE -- REUSE.toml is benign SPDX metadata configuration; no security concerns, decision is SAFE.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,611
  Completion Tokens: 2,254
  Total Tokens: 16,865
  Total Cost: $0.001603
  Execution Time: 27.68 seconds

Final Status: SAFE


No issues found.
