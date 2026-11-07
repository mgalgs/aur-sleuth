---
package: ghostty-shell-integration-nightly-bin
pkgbase: ghostty-nightly-bin
pkgver: 20261105.r18637.ge95bed6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11214
completion_tokens: 3592
total_tokens: 14806
cost: 0.001674218
execution_time: 41.61
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-07T16:12:20Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: License file with no security concerns.
  - file: .SRCINFO
    status: safe
    summary: A declarative metadata file with no executable content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious code.
---

ghostty-shell-integration-nightly-bin is built from ghostty-nightly-bin
Materializing ghostty-shell-integration-nightly-bin from local mirror...
Materialized ghostty-shell-integration-nightly-bin
Analyzing ghostty-shell-integration-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD&apos;s global/top-level scope is entirely composed of standard variable assignments (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.) and function definitions (`package_*`). No commands are executed at the global scope. There is no use of `eval`, `curl`, `wget`, command substitution, or any other construct that would execute untrusted code during `makepkg --printsrcinfo`. The `source` array references prebuilt binaries from a personal GitHub fork, but this is a simple string assignment and no download occurs at this stage. The `package_*` functions are defined but not called by `--printsrcinfo`, so their content is out of scope for this gate.
</details>
<evidence></evidence>
<summary>Global scope contains only safe variable assignments and function definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope contains only safe variable assignments and function definitions.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC license text. It contains no executable code, no network requests, no file operations, and no obfuscated content. It is purely a legal notice and poses no security risk.
</details>
<evidence></evidence>
<summary>License file with no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- License file with no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an Arch Linux AUR package. It describes three subpackages (`ghostty-nightly-bin`, `ghostty-shell-integration-nightly-bin`, `ghostty-terminfo-nightly-bin`) and declares sources, checksums, dependencies, and conflicts. All source URLs point to a GitHub releases page under a user account (`jpenilla`), which is a typical setup for AUR binary packages maintained by a third party. The checksums are present and unpinned only in the sense of being provided (they are not `SKIP`). There is no executable code, no obfuscation, no network request instructions, no dangerous commands, and no signs of malicious activity. The file is purely declarative.
</details>
<evidence></evidence>
<summary>A declarative metadata file with no executable content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- A declarative metadata file with no executable content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard script for distributing nightly binary builds of Ghostty. It downloads precompiled archives from a third-party GitHub user (jpenilla) for the `nightly-bin` variant, with all sources pinned via `sha256sums`. No obfuscated code, suspicious network requests, eval/base64, or unusual file operations are present. The package functions simply extract the archives into the package directory. While the use of an unofficial repository raises a trust consideration (the maintainer jpenilla is not the upstream project), the PKGBUILD itself contains no malicious or dangerous behavior. The pinned checksums ensure integrity, and all operations follow standard packaging patterns for binary AUR packages.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,214
  Completion Tokens: 3,592
  Total Tokens: 14,806
  Total Cost: $0.001674
  Execution Time: 41.61 seconds

Final Status: SAFE


No issues found.
