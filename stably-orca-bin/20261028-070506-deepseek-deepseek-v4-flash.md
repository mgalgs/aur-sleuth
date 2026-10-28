---
package: stably-orca-bin
pkgver: 1.4.243
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13467
completion_tokens: 1586
total_tokens: 15053
cost: 0.00232946
execution_time: 29.8
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-28T07:05:06Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: stably-orca.sh
    status: safe
    summary: Standard application wrapper script, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AppImage packaging; no security issues.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no executable code in its global/top-level scope. All variable assignments are plain strings or arrays with no command substitutions, no calls to external tools, and no obfuscated content. The only potentially actionable code resides inside `prepare()`, `build()` (missing, so not defined), and `package()` functions, which are **not** executed by `makepkg --printsrcinfo`. Therefore sourcing this PKGBUILD for metadata parsing is safe.</details>
<evidence></evidence>
<summary>Global scope is static; no dangerous code runs during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope is static; no dangerous code runs during sourcing.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the `stably-orca-bin` AUR package. It contains no executable code, no network requests, no obfuscation, and no suspicious operations. The `Exec` line runs `stably-orca %U`, which is the expected application binary. There are no signs of malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
[1/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR .SRCINFO metadata file for the `stably-orca-bin` package. It defines package metadata, dependencies, and sources. All three sources have explicit SHA256 checksums that are not skipped. The sources are fetched from the project's own GitHub releases and local shell/desktop files. There is no malicious code, no obfuscation, no suspicious network destinations, and no commands that could execute untrusted content. This file is a routine packaging declaration and poses no security threat.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script for the Stably AI Orca application. It sets the `APPDIR` environment variable to the installation path and launches the application's `AppRun` binary with a `--disable-features=Vulkan` flag. There are no network requests, no obfuscated code, no unusual file operations, and no commands that deviate from normal packaging practices. The script only exports an environment variable and executes the application's own binary. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard application wrapper script, no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed stably-orca.sh. Status: SAFE -- Standard application wrapper script, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for `stably-orca-bin` follows standard packaging practices for an AppImage-based AUR package. It downloads the official upstream AppImage from GitHub Releases over HTTPS, verifies checksums for all sources, extracts the AppImage, and installs its contents to `/opt/stably-orca`. The wrapper script and desktop file are also installed with verified checksums. There is no obfuscated code, no unexpected network requests, no execution of unverified remote content, and no file operations outside the package's own install paths. All operations are consistent with the stated purpose of packaging a prebuilt Electron IDE application. No evidence of malicious or supply-chain attack behavior was found.
</details>
<evidence></evidence>
<summary>Standard AppImage packaging; no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AppImage packaging; no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,467
  Completion Tokens: 1,586
  Total Tokens: 15,053
  Total Cost: $0.002329
  Execution Time: 29.80 seconds

Final Status: SAFE


No issues found.
