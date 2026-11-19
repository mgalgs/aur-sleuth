---
package: epic-games-launcher-bin
pkgver: 0.95.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9036
completion_tokens: 1293
total_tokens: 10329
cost: 0.001057602
execution_time: 23.51
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T19:16:42Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksum, no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content.
---

Materializing epic-games-launcher-bin from local mirror...
Materialized epic-games-launcher-bin
Analyzing epic-games-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only static variable definitions (e.g., `pkgname`, `pkgver`, `source`) and array assignments. There are no command substitutions, backticks, `eval`, or any other constructs that would execute arbitrary code when the file is sourced by `makepkg --printsrcinfo`. The `source` array points to an official Epic Games URL, but no download or execution happens during sourcing. All dangerous operations (extracting the AppImage, installing files) are confined to the `prepare()` and `package()` functions, which are **not** executed during `--printsrcinfo`. Therefore, it is safe to source this PKGBUILD for metadata extraction.
</details>
<evidence></evidence>
<summary>Sourcing PKGBUILD is safe; no top-level execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing PKGBUILD is safe; no top-level execution.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package for the Epic Games Launcher binary (AppImage). It downloads the official AppImage from Epic Games' own CDN, verifies it with a pinned SHA-256 checksum, extracts it with 7z, and installs the binary, libraries, desktop file, and icons. A wrapper script is created that sets `EGL_DISABLE_SELF_UPDATE` to 1 (to prevent the launcher from self-updating) and executes the binary. No obfuscated, encoded, or suspicious commands are present. No unexpected network requests or data exfiltration occur. The package follows typical binary packaging practices and does not contain any evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksum, no malicious behavior.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksum, no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is standard AUR metadata for an Epic Games Launcher package. It declares dependencies, provides a checksummed source URL from the official Epic Games domain (`content-download-egs.distro.on.epicgames.com`), and contains no executable code, obfuscated commands, or external network requests outside the declared source. The sha256sum is pinned, confirming the expected binary. There is no evidence of malicious behavior or supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,036
  Completion Tokens: 1,293
  Total Tokens: 10,329
  Total Cost: $0.001058
  Execution Time: 23.51 seconds

Final Status: SAFE


No issues found.
