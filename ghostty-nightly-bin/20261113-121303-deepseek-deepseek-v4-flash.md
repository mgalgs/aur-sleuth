---
package: ghostty-nightly-bin
pkgver: 20261113.r18821.gcf3a8a6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 11108
completion_tokens: 1748
total_tokens: 12856
cost: 0.00131436
execution_time: 26.7
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-13T12:13:02Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata, no malicious content.
---

Materializing ghostty-nightly-bin from local mirror...
Materialized ghostty-nightly-bin
Analyzing ghostty-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable definitions (pkgbase, pkgname, pkgver, pkgrel, depends, source, sha256sums, etc.) and function definitions for package_ghostty-nightly-bin, package_ghostty-shell-integration-nightly-bin, and package_ghostty-terminfo-nightly-bin. No command substitutions, eval statements, or external commands are executed in the global scope. All executable code is confined to the package functions, which are not invoked during `makepkg --printsrcinfo`. The source URLs point to a GitHub release from a fork (jpenilla/ghostty-nightly-bin), but this is the intended upstream for this AUR package and does not trigger any execution at parse time. There is no risk of malicious code running during sourcing of this PKGBUILD.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to parse.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, LICENSE...
[0/3] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC license text. It contains no executable code, no network requests, no obfuscation, and no system operations. It is a straightforward license file with no security concerns.
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
This PKGBUILD is a standard AUR packaging file for distributing nightly prebuilt binaries of Ghostty. The sources are fetched via HTTPS from GitHub releases under the `jpenilla/ghostty-nightly-bin` repository, which is a known helper repo for nightly builds. All three source tarballs have pinned SHA-256 checksums, ensuring integrity of downloaded artifacts. The package functions simply extract the tarballs into the package directory using `bsdtar`. There are no suspicious commands, network requests outside the declared sources, obfuscated code, or unexpected file operations. The use of a different maintainer (`jmp0`) for the nightly-bin variant is normal for AUR packages that track nightly releases separately from the main package. No evidence of supply-chain attack or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard AUR binary package, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard .SRCINFO metadata file for an AUR package. It defines the package name, version, dependencies, source URLs, and checksums. The source URLs point to a third-party GitHub releases page (jpenilla/ghostty-nightly-bin) rather than the official upstream, but this is a common practice for AUR maintainers providing nightly binaries. The SHA256 checksums are provided and not skipped, allowing verification of downloaded files. There is no executable code, no network requests, no obfuscation, and no system modification instructions. The content is purely declarative metadata and contains no malicious behavior.
</details>
<evidence></evidence>
<summary>Standard metadata, no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,108
  Completion Tokens: 1,748
  Total Tokens: 12,856
  Total Cost: $0.001314
  Execution Time: 26.70 seconds

Final Status: SAFE


No issues found.
