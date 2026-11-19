---
package: ghostty-nightly-bin
pkgver: 20261111.r18803.ga622196
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 11198
completion_tokens: 2396
total_tokens: 13594
cost: 0.00143910
execution_time: 44.0
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-11T12:15:20Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: License file, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Prebuilt ghostty packages with pinned checksums; no malicious behavior detected.
---

Materializing ghostty-nightly-bin from local mirror...
Materialized ghostty-nightly-bin
Analyzing ghostty-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only static variable definitions (pkgbase, pkgname, pkgver, etc.), array assignments (depends, source, sha256sums), and simple parameter expansions (e.g., `_source_rev`). There are no command substitutions, function calls, or invocations of dangerous utilities (curl, wget, eval, base64, etc.) that would execute during `makepkg --printsrcinfo`. No code runs that could download, exfiltrate, or modify the system. The source URLs and checksums are inert strings at this stage. Therefore, sourcing this PKGBUILD for metadata extraction is safe.
</details>
<evidence></evidence>
<summary>No top-level code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risk.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, LICENSE...
[0/3] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC license text. It contains no executable code, no network operations, no obfuscation, and no system modifications. It is a purely informational file distributed with the package and poses no security risk.
</details>
<evidence></evidence>
<summary>License file, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- License file, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file describing the package `ghostty-nightly-bin`. It declares upstream sources from a GitHub releases page (`github.com/jpenilla/ghostty-nightly-bin`), provides SHA-256 checksums for all three tarballs, and lists dependencies and package splits. No malicious content, obfuscated commands, or suspicious operations are present. The file simply defines package metadata as expected in normal AUR packaging practice.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward binary packaging script. It downloads three prebuilt .tar.zst artifacts from GitHub releases (jpenilla/ghostty-nightly-bin) with pinned sha256 checksums and extracts them into $pkgdir using bsdtar. No network calls occur during build or package functions, no eval/base64/curl|bash patterns appear, no file operations outside $pkgdir are performed, and there is no obfuscated code. The package structure, dependencies, conflicts, and provides entries are all normal for a ghostty -bin package.

One trust consideration is that the binary artifacts are fetched from a third-party GitHub repository rather than directly from ghostty-org/ghostty. This places trust in that repository's release process, but the artifacts are checksum-pinned and the PKGBUILD itself contains no injected or malicious code. This is a hygiene/trust consideration, not evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Prebuilt ghostty packages with pinned checksums; no malicious behavior detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Prebuilt ghostty packages with pinned checksums; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,198
  Completion Tokens: 2,396
  Total Tokens: 13,594
  Total Cost: $0.001439
  Execution Time: 44.00 seconds

Final Status: SAFE


No issues found.
