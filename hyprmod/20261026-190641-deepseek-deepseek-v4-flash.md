---
package: hyprmod
pkgver: 0.4.0
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7808
completion_tokens: 1142
total_tokens: 8950
cost: 0.000918372
execution_time: 19.07
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-26T19:06:41Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with pinned source and checksum; no threats.
  - file: PKGBUILD
    status: safe
    summary: Clean, standard PKGBUILD with no malicious indicators.
---

Materializing hyprmod from local mirror...
Materialized hyprmod
Analyzing hyprmod AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and function definitions (build, package) in the global scope. No command substitutions, eval, curl, wget, or any other code execution is triggered when sourcing the file. The source URL points to the package's own GitHub repository with a pinned tag and a valid checksum. There is no malicious or suspicious top-level activity.
</details>
<evidence></evidence>
<summary>No dangerous global-scope code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous global-scope code; safe to source.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.SRCINFO` is a standard Arch Linux package metadata file. It declares a package named `hyprmod` that provides a GTK4/libadwaita settings app for Hyprland. The source is pulled from the official GitHub release tarball (`https://github.com/BlueManCZ/hyprmod/archive/refs/tags/v0.4.0.tar.gz`) with a pinned version and a SHA256 checksum (`fd3672ad5257bb65038fd7442553fd1a8cfb5c41a0320186797368a7f2abbc9f`). Dependencies are legitimate Python and GTK libraries. There is no executable code, no obfuscation, no network requests beyond the declared upstream source, and no evidence of malicious behavior. The file follows standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO with pinned source and checksum; no threats.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with pinned source and checksum; no threats.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. The source is fetched from the project's official GitHub repository with a pinned version tag and a valid SHA-256 checksum, ensuring integrity. The build process uses Python's standard build/install toolchain (python-build, python-installer, hatchling) without any suspicious commands. File installation is limited to the expected license, desktop entry, icon, and metadata files — all within the package's own scope. There is no obfuscated code, no unexpected network requests, no data exfiltration, and no execution of untrusted content.
</details>
<evidence></evidence>
<summary>Clean, standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean, standard PKGBUILD with no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,808
  Completion Tokens: 1,142
  Total Tokens: 8,950
  Total Cost: $0.000918
  Execution Time: 19.07 seconds

Final Status: SAFE


No issues found.
