---
package: stably-orca-bin
pkgver: 1.4.210
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13469
completion_tokens: 2142
total_tokens: 15611
cost: 0.00151859162
execution_time: 38.64
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-24T15:04:50Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Simple desktop entry, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned upstream sources.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned checksums; no malice.
  - file: stably-orca.sh
    status: safe
    summary: Standard wrapper script for AppImage-based application.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions in its global scope: metadata, dependencies, source URLs, checksums, and file lists. There are no command substitutions, backticks, `eval`, `curl`, `wget`, or any other code execution constructs at the top level. The `prepare()`, `build()`, and `package()` functions are not invoked during `makepkg --printsrcinfo`. No malicious or suspicious behavior can occur when sourcing this PKGBUILD to print its SRCINFO.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sourcing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for a Linux application (IDE). It defines metadata like name, icon, and categories, and the `Exec` line runs the application binary `stably-orca` with the `%U` argument (a common pattern for file associations). No network requests, obfuscated code, dangerous commands, or other suspicious behavior is present. The file is purely declarative and conforms to normal packaging practices.
</details>
<evidence>
</evidence>
<summary>Simple desktop entry, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Simple desktop entry, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard AUR metadata for a prebuilt binary package. It declares three sources all pointing to the official upstream GitHub repository (stablyai/orca) with pinned SHA-256 checksums. There is no executable code, no obfuscation, no suspicious network destinations, and no deviation from normal packaging practices. The file only defines package metadata, dependencies, and source locations, all of which are consistent with a legitimate AUR package.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with pinned upstream sources.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned upstream sources.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard practices for packaging a prebuilt Electron-based AppImage. It downloads the AppImage from the project's official GitHub releases URL, verifies with a pinned SHA-256 checksum, extracts it locally using `--appimage-extract`, and installs the contents into the package directory. There are no network operations beyond the declared source download, no obfuscated code, and no execution of untrusted external payloads. The file only performs routine file operations (chmod, cp, install, chmod) that are normal for this package type. The icon-handling loop is thorough but not malicious. No signs of supply-chain tampering or injected malicious code are present.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD with pinned checksums; no malice.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned checksums; no malice.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a straightforward wrapper for the Stably AI Orca AppImage-based application. It sets the `APPDIR` environment variable to `/opt/stably-orca` and launches the `AppRun` binary with `--disable-features=Vulkan` and any user-provided arguments. The comments explain the rationale for the `APPDIR` override (workaround for upstream argument detection) and the Vulkan disablement (Wayland/NVIDIA compatibility). There are no network requests, obfuscated code, system modifications beyond starting the intended application, or any other indicators of supply-chain compromise. The script follows expected packaging conventions for distributing AppImage-based software in Arch Linux.
</details>
<evidence></evidence>
<summary>Standard wrapper script for AppImage-based application.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.sh. Status: SAFE -- Standard wrapper script for AppImage-based application.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,469
  Completion Tokens: 2,142
  Total Tokens: 15,611
  Total Cost: $0.001519
  Execution Time: 38.64 seconds

Final Status: SAFE


No issues found.
