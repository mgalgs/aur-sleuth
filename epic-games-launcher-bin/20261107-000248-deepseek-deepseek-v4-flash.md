---
package: epic-games-launcher-bin
pkgver: 0.113.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9263
completion_tokens: 1627
total_tokens: 10890
cost: 0.001139047
execution_time: 24.91
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-07T00:02:47Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Safe AUR metadata file with pinned source.
  - file: PKGBUILD
    status: safe
    summary: Standard prebuilt binary package from official source.
---

Materializing epic-games-launcher-bin from local mirror...
Materialized epic-games-launcher-bin
Analyzing epic-games-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD&#39;s global scope consists only of static variable assignments and array definitions. No command substitutions, function calls, or other executable code exist at the top level that would run during `makepkg --printsrcinfo`. The `source` array points to an official Epic Games distribution server with a pinned checksum, and there is no obfuscation or dangerous constructs. Functions like `prepare()`, `package()` are defined but not executed during this parsing step, so they are out of scope for this gate.</details>
<evidence></evidence>
<summary>Global scope has no executable code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope has no executable code; safe to parse.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata-only file generated from a PKGBUILD. It defines the package name, version, description, dependencies, and source URL. The source points to an official Epic Games content server over HTTPS with a specific SHA-256 checksum pinned. There are no executable commands, no obfuscated code, no suspicious network requests, and no deviation from standard AUR packaging metadata. The file contains only variable assignments and arrays, and poses no security risk by itself.
</details>
<evidence>
</evidence>
<summary>Safe AUR metadata file with pinned source.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Safe AUR metadata file with pinned source.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads a prebuilt `.deb` from the official Epic Games distribution server (`content-download-egs.distro.on.epicgames.com`) with a pinned SHA-256 checksum. The prepare phase extracts the Debian archive using `bsdtar`, and the package phase deploys the binary, shared library, desktop entry, icons, and license to expected locations. A thin wrapper script is installed that sets `EGL_DISABLE_SELF_UPDATE=1` (a legitimate environment variable to prevent launcher self-updates that could conflict with the package manager) and then execs the real binary. No obfuscation, no suspicious network requests, no data exfiltration, no unexpected system modifications. The package follows standard AUR packaging practices for a prebuilt binary.
</details>
<evidence>
</evidence>
<summary>Standard prebuilt binary package from official source.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard prebuilt binary package from official source.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,263
  Completion Tokens: 1,627
  Total Tokens: 10,890
  Total Cost: $0.001139
  Execution Time: 24.91 seconds

Final Status: SAFE


No issues found.
