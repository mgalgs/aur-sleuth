---
package: epic-games-launcher-bin
pkgver: 0.104.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9168
completion_tokens: 1096
total_tokens: 10264
cost: 0.00053755520
execution_time: 15.21
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-27T23:03:38Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksum, no malicious behavior.
---

Materializing epic-games-launcher-bin from local mirror...
Materialized epic-games-launcher-bin
Analyzing epic-games-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and function definitions at the top level. There are no command substitutions, no `eval`, no `curl|bash`, or any other code that would execute when the PKGBUILD is sourced by `makepkg --printsrcinfo`. The only potentially dangerous operations (extracting the AppImage and installing files) are inside the `prepare()` and `package()` functions, which are **not** executed by `--printsrcinfo`. The source URL points to the official Epic Games CDN, and a SHA256 checksum is provided. No obfuscation, exfiltration, or backdoor behavior is present at global scope.
</details>
<evidence></evidence>
<summary>Sourcing this PKGBUILD is safe; no malicious top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing this PKGBUILD is safe; no malicious top-level code.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file contains only metadata describing the package: name, version, dependencies, and a single source (an AppImage from the official Epic Games CDN). No scripts, no shell commands, no obfuscated code, and no unexpected operations are present. The checksum is pinned, not skipped. The source URL points to the legitimate Epic Games distribution domain. All dependencies are standard system libraries. There are no red flags of any kind.
</details>
<evidence></evidence>
<summary>Standard package metadata, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. The source is downloaded from an official Epic Games CDN (`content-download-egs.distro.on.epicgames.com`) with a pinned SHA256 checksum. The package extracts the AppImage using `7z x` and installs the binary, libraries, desktop file, icons, and license into the package directory. The wrapper script sets `EGL_DISABLE_SELF_UPDATE` (a standard environment variable to disable the launcher's built-in self-update mechanism) and then executes the binary. No obfuscated code, no unexpected network requests, no dangerous commands, and no exfiltration of data are present. Everything is transparent and matches the upstream application's intended functionality.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksum, no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksum, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,168
  Completion Tokens: 1,096
  Total Tokens: 10,264
  Total Cost: $0.000538
  Execution Time: 15.21 seconds

Final Status: SAFE


No issues found.
