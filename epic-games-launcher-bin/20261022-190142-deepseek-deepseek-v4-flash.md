---
package: epic-games-launcher-bin
pkgver: 0.101.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9156
completion_tokens: 1221
total_tokens: 10377
cost: 0.001055418
execution_time: 27.5
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-22T19:01:40Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for official Epic Games binary.
---

Materializing epic-games-launcher-bin from local mirror...
Materialized epic-games-launcher-bin
Analyzing epic-games-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable and array definitions (pkgname, pkgver, source, sha256sums, etc.) with no command substitutions, backtick expansions, function calls, or any other executable code. There is no mechanism for arbitrary code execution during sourcing. The functions `prepare()`, `build()`, and `package()` are defined but not invoked by `makepkg --printsrcinfo`, so they are out of scope for this narrow gate. No malicious top-level code is present.
</details>
<evidence></evidence>
<summary>No top-level execution in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution in PKGBUILD.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR metadata file for the epic-games-launcher-bin package. It declares dependencies, source location, and a sha256 checksum for the upstream AppImage downloaded from the official Epic Games domain (`content-download-egs.distro.on.epicgames.com`). No suspicious or malicious content is present. The checksum is provided and pinned, and no unusual commands, obfuscation, or unexpected network destinations appear. The file conforms to normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD fetches a prebuilt AppImage from Epic Games' official distribution server (`content-download-egs.distro.on.epicgames.com`), with a pinned SHA256 checksum, extracts it using `7z`, and installs the binary, a wrapper script, icons, and licensing. The wrapper script sets `EGL_DISABLE_SELF_UPDATE=1` to disable the launcher's own update mechanism — a common practice for packaged binaries to prevent mixing package manager and in-app updates. All operations are confined to the expected source and package directories. There are no obfuscated commands, unexpected network requests, or data exfiltration. The file follows standard AUR packaging practices for binary redistribution.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for official Epic Games binary.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for official Epic Games binary.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,156
  Completion Tokens: 1,221
  Total Tokens: 10,377
  Total Cost: $0.001055
  Execution Time: 27.50 seconds

Final Status: SAFE


No issues found.
