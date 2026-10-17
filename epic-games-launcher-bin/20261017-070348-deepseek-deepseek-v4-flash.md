---
package: epic-games-launcher-bin
pkgver: 0.97.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9174
completion_tokens: 1295
total_tokens: 10469
cost: 0.001070524
execution_time: 22.29
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-17T07:03:48Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned source and checksum.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for official Epic Games Launcher binary.
---

Materializing epic-games-launcher-bin from local mirror...
Materialized epic-games-launcher-bin
Analyzing epic-games-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and function definitions at the global scope. There are no command substitutions, backticks, or `eval`/`exec` calls that would execute code during sourcing. The `_appimage` variable is constructed from string interpolation of other package variables, which is normal and inert. The functions `prepare()`, `build()`, and `package()` are defined but not invoked by `makepkg --printsrcinfo`, so their content is out of scope for this gate. No dangerous operations are triggered by sourcing this file.
</details>
<evidence></evidence>
<summary>No global-scope code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No global-scope code execution risk.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, .SRCINFO...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is standard AUR metadata describing the package. It sources a prebuilt binary AppImage from the official Epic Games distribution domain (`content-download-egs.distro.on.epicgames.com`) with a pinned SHA-256 checksum. There are no suspicious URLs, obfuscated code, dangerous commands, or any deviation from normal packaging practices. All dependencies and options are typical for a game launcher wrapper package. No evidence of malicious or supply-chain attack behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata with pinned source and checksum.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned source and checksum.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard packaging practices for a prebuilt binary (AppImage) from the official Epic Games distribution server. The source URL points to a legitimate `content-download-egs.distro.on.epicgames.com` domain, and a SHA256 checksum is pinned (not `SKIP`). Extraction with `7z x` and file installation commands are routine. The wrapper script only sets `EGL_DISABLE_SELF_UPDATE=1` and executes the binary—no network activity, obfuscation, or system modifications beyond the package&#x27;s own directories. There is no evidence of malicious behavior such as data exfiltration, backdoors, or downloading untrusted code.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for official Epic Games Launcher binary.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for official Epic Games Launcher binary.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,174
  Completion Tokens: 1,295
  Total Tokens: 10,469
  Total Cost: $0.001071
  Execution Time: 22.29 seconds

Final Status: SAFE


No issues found.
