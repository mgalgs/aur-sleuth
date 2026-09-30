---
package: ue4ss-experimental-zdev
pkgver: 3.0.1_1140_gf58e8f84
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15783
completion_tokens: 2542
total_tokens: 18325
cost: 0.00115686648
execution_time: 63.9
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-21T15:15:35Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior detected.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security issues found.
  - file: ue4ss-install
    status: safe
    summary: Standard deployment script, no malicious behavior.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore with whitelist patterns; no malicious behavior present.
---

Materializing ue4ss-experimental-zdev from local mirror...
Materialized ue4ss-experimental-zdev
Analyzing ue4ss-experimental-zdev AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD, executing only global/top-level code. In this PKGBUILD, all top-level content consists of variable assignments (pkgname, pkgver, etc.), array definitions (source, sha256sums), and a function definition (`latestver()`). There are no command substitutions, backtick executions, `eval`, or any other mechanisms that would cause code to run during sourcing. The function bodies (`package()`, `latestver()`) are defined but not invoked, so they are out of scope for this gate. No network requests, file downloads, or system modifications happen at the top level.</details>
<evidence></evidence>
<summary>No malicious top-level execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level execution.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard packaging practices for an AUR package. It downloads a pinned release asset from the official upstream GitHub repository (UE4SS-RE/RE-UE4SS) using a fixed SHA256 checksum for integrity verification. The only external command used is `gh` in the `latestver()` function, which is a convenience helper for maintainers and does not execute during `makepkg`. The install script (`ue4ss-install`) is also pinned with a checksum. No obfuscation, suspicious network requests, or dangerous shell constructs are present. The package does exactly what it describes: install UE4SS Windows DLLs and developer tooling into `/usr/share/ue4ss` and a helper script into `/usr/bin`.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior detected.
[1/4] Reviewing .SRCINFO, .gitignore, ue4ss-install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file contains only standard package metadata for the Arch User Repository (AUR). It declares a package name, version, description, dependencies, sources, and checksums. The sources point to the official GitHub releases page of the UE4SS project and a local `<file>` entry for a helper script (`ue4ss-install`). Both source entries have valid SHA256 checksums (not SKIP). There are no indications of malicious code injection, obfuscated commands, unexpected network destinations, or any operations that could exfiltrate data or install backdoors. The file simply defines the packaging metadata; it does not contain any executable instructions.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no security issues found.</summary>
</security_assessment>

[2/4] Reviewing .gitignore, ue4ss-install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security issues found.
LLM auditresponse for ue4ss-install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard deployment helper for UE4SS, a modding tool for Unreal Engine games. It copies or symlinks files from a local payload directory (`/usr/share/ue4ss`) into a target game folder, with options to preserve config files, use symlinks, or uninstall. There is no network access, obfuscation, or suspicious command execution. The uninstall function uses `rm -rf` but only on paths derived from the payload's top-level entries, with prior warning — this is expected cleanup behavior. No supply-chain attack indicators are present; the script merely automates what a user would do manually.
</details>
<evidence></evidence>
<summary>Standard deployment script, no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing .gitignore...
+ Reviewed ue4ss-install. Status: SAFE -- Standard deployment script, no malicious behavior.
LLM auditresponse for .gitignore:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in an AUR git repository. It contains only comment lines and gitignore glob patterns that control which files are tracked by git in the AUR package repository. The patterns whitelist the essential AUR packaging files (PKGBUILD, .SRCINFO, .gitignore), a helper script named `ue4ss-install` that is shipped via the source array, and common auxiliary file types (.install, .patch, .diff). There is no executable code, no network activity, no obfuscation, no data exfiltration, and no system modifications. The file is entirely consistent with normal AUR packaging practices and contains no malicious or suspicious behavior whatsoever.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore with whitelist patterns; no malicious behavior present.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore with whitelist patterns; no malicious behavior present.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,783
  Completion Tokens: 2,542
  Total Tokens: 18,325
  Total Cost: $0.001157
  Execution Time: 63.90 seconds

Final Status: SAFE


No issues found.
