---
package: wxmaxima
pkgver: 26.08.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 9657
completion_tokens: 2054
total_tokens: 11711
cost: 0.0010502695
execution_time: 55.72
files_reviewed: 3
files_skipped: 1
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-16T23:14:38Z
file_verdicts:
  - file: .gitignore
    status: skipped
    summary: "Skipping binary file: .gitignore"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no malicious content detected.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no suspicious elements or malicious behavior found.
---

Materializing wxmaxima from local mirror...
Materialized wxmaxima
Analyzing wxmaxima AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD consists solely of variable assignments (pkgname, pkgver, pkgrel, etc.) and function definitions (build(), check(), package()). There are no command substitutions, backticks, eval calls, or any other executable code at the global level. The source array and checksum array are simple string assignments using already-defined variables. Since `makepkg --printsrcinfo` only sources the PKGBUILD and does not execute any function, no malicious payload can be triggered during this step.
</details>
<evidence></evidence>
<summary>Safe: no executable code on sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no executable code on sourcing.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
[1/4] Reviewing .SRCINFO, .nvchecker.toml...
! Reviewed .gitignore. Status: SKIPPED -- Skipping binary file: .gitignore
[1/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices. It downloads the source tarball from the official wxmaxima GitHub repository with a pinned version tag and includes a SHA512 checksum. The build uses cmake with expected flags, and installation uses `DESTDIR` with `cmake --install`. No obfuscated code, suspicious network requests, or dangerous commands (eval, curl, wget, base64, etc.) are present. The commented-out check section is inert. There are no supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD; no malicious content detected.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no malicious content detected.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for `nvchecker`, a tool commonly used by AUR maintainers to monitor upstream releases. It points to the official GitHub repository of wxmaxima (`wxmaxima-developers/wxmaxima`), uses the latest release, and specifies a version prefix. There is no obfuscation, suspicious commands, or any indication of malicious activity. It is a standard packaging helper file.
</details>
<evidence></evidence>
<summary>Standard nvchecker config; no security issues.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no security issues.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR metadata file for the wxmaxima package. It contains only expected packaging declarations: package name, description, version, upstream project URL, dependencies, a source tarball URL from the project's official upstream GitHub repository (github.com/wxmaxima-developers/wxmaxima), and a concrete SHA-512 checksum. There are no VCS source types, no SKIP checksums, and no unpinned branch/tag inference concerns — the source is a release tarball.

The file contains no executable code, no network requests beyond declaring the upstream source URL, no obfuscation or encoded content, no file operations, and no system modifications. The SHA-512 checksum provided is a proper non-trivial hash, which is the correct practice for a non-VCS tarball source. Dependencies and optional dependencies listed (maxima, wxwidgets-gtk3, webkit2gtk-4.1, bash-completion, man-db) are all appropriate for a GUI front-end to the Maxima computer algebra system and are not security concerns.

There is no evidence of injected malicious code, data exfiltration, hidden downloads, or any behavior outside of ordinary packaging practice. This file is exactly what it appears to be: a routine metadata descriptor for a legitimate AUR package.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata; no suspicious elements or malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no suspicious elements or malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: .gitignore)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,657
  Completion Tokens: 2,054
  Total Tokens: 11,711
  Total Cost: $0.001050
  Execution Time: 55.72 seconds

Final Status: SAFE


No issues found.


Audit Skips:

.gitignore: [SKIPPED] Skipping binary file: .gitignore
