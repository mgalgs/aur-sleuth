---
package: ghostty-terminfo-nightly-bin
pkgbase: ghostty-nightly-bin
pkgver: 20261114.r18838.g6d95777
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 11280
completion_tokens: 2422
total_tokens: 13702
cost: 0.00145116
execution_time: 32.26
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-14T12:10:12Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard permissive license text, no executable or suspicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums, no malicious behavior detected.
---

ghostty-terminfo-nightly-bin is built from ghostty-nightly-bin
Materializing ghostty-terminfo-nightly-bin from local mirror...
Materialized ghostty-terminfo-nightly-bin
Analyzing ghostty-terminfo-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD but only executes global/top-level code. This PKGBUILD contains only standard variable assignments (`pkgbase`, `pkgname`, `pkgver`, `source`, `sha256sums`, etc.) and three function definitions that are not invoked at parse time. There are no command substitutions, backticks, `eval`, `curl`, `wget`, or other dangerous operations in the global scope. The source URLs point to GitHub releases over HTTPS, which is typical for binary packages. No code capable of downloading, executing, or exfiltrating data is triggered during sourcing. Therefore, `makepkg --printsrcinfo` is safe for this file.
</details>
<evidence></evidence>
<summary>No dangerous code executes at global scope; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code executes at global scope; safe to parse.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, LICENSE...
[0/3] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard permissive software license (MIT-style). It contains only plain text granting usage rights and disclaiming warranties. There are no code snippets, shell commands, network operations, or any executable content. No security issues are present.</details>
<evidence></evidence>
<summary>Standard permissive license text, no executable or suspicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard permissive license text, no executable or suspicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is purely metadata: package name, version, dependencies, source URLs, and SHA-256 checksums. It contains no executable code, no obfuscated strings, no network requests beyond specifying source download locations (which point to GitHub Releases, a legitimate hosting service). There is no evidence of data exfiltration, backdoors, or supply-chain tampering within this file. The checksums are provided and pinned, allowing verification of the downloaded tarballs. The sources come from a third-party repository (jpenilla/ghostty-nightly-bin) rather than the upstream, but that is typical for AUR binary redistribution packages and does not itself indicate malice. Overall, this file is standard for an AUR package and contains no malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR packaging script for Ghostty nightly binaries. It downloads three prebuilt archives from a GitHub releases page (using pinned checksums) and extracts them into the package directory. There is no obfuscated code, no runtime execution of downloaded scripts, no network exfiltration, and no system modification beyond installing the package files. The use of a third-party repository (jpenilla/ghostty-nightly-bin) rather than the official upstream is a trust consideration but does not, by itself, constitute malicious behavior; the checksums verify the integrity of the downloaded content. All operations are consistent with expected packaging practices for binary packages.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksums, no malicious behavior detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums, no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,280
  Completion Tokens: 2,422
  Total Tokens: 13,702
  Total Cost: $0.001451
  Execution Time: 32.26 seconds

Final Status: SAFE


No issues found.
