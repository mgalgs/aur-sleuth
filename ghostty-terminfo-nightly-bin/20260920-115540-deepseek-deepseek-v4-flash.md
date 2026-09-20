---
package: ghostty-terminfo-nightly-bin
pkgbase: ghostty-nightly-bin
pkgver: 20260920.r17894.g27e8b3f
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11299
completion_tokens: 1370
total_tokens: 12669
cost: 0.0005110196
execution_time: 29.68
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-20T11:55:39Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard ISC license text, no executable or suspicious content found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums and no suspicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO metadata file with pinned sources and checksums, no malicious behavior.
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
The PKGBUILD contains only variable assignments, comments, and function definitions at the top level. No command substitutions, `eval`, `curl`, `wget`, or other executable code runs during `makepkg --printsrcinfo`. The `source` array points to expected GitHub release assets. All executable code is contained within `package_*()` functions, which are not invoked during parsing. Therefore, sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No top-level execution of malicious code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution of malicious code.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, LICENSE...
[0/3] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the standard ISC license text (the "ISC" or "MIT-like" permissive license used by Ghostty packaging). It contains no executable code, no network operations, no file manipulation, no obfuscation, and no instructions of any kind. It is purely a copyright and license notice. There is nothing in this file that deviates from standard packaging practices or that could constitute a supply-chain attack.

The only minor observation is that the copyright line refers to "ghostty-nightly-bin contributors" and the year 2026, which is a typical packaging-license convention and not a security concern. No evidence of malicious behavior exists.
</details>
<evidence>
</evidence>
<summary>
Standard ISC license text, no executable or suspicious content found.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard ISC license text, no executable or suspicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package that downloads prebuilt binaries from a GitHub releases page and extracts them into the package directory. All source URLs point to the same third-party nightly build repository (`jpenilla/ghostty-nightly-bin`). Checksums are pinned for all three archives. The `package_*()` functions only extract the tarballs using `bsdtar` — no custom commands, no network requests at build time, no obfuscation, and no execution of downloaded code. There is nothing in this file that deviates from normal packaging practices or shows signs of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksums and no suspicious behavior.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums and no suspicious behavior.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file for the `ghostty-nightly-bin` package split. It declares package metadata only: description, version, URL, architecture, dependencies, checksums, and the split subpackages. It contains no functions, no installation scripts, and no executable logic of any kind. There is nothing here that can exfiltrate data, download or execute code, or modify the system at build or install time.

The sources point to the upstream project&#39;s own GitHub releases and each tarball has a pinned sha256 checksum. While the version string references a date that is far in the future and includes a slightly abbreviated commit-like identifier, these are consistent with nightly build versioning conventions and are not inherently suspicious. Releasing binary tarballs and embedding checksums in `.SRCINFO` is an ordinary AUR packaging practice.

No obfuscation, no unexpected network destinations, no dangerous command usage, and no deviation from normal packaging metadata were found. The file is clearly safe from a supply-chain perspective.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .SRCINFO metadata file with pinned sources and checksums, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO metadata file with pinned sources and checksums, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,299
  Completion Tokens: 1,370
  Total Tokens: 12,669
  Total Cost: $0.000511
  Execution Time: 29.68 seconds

Final Status: SAFE


No issues found.
