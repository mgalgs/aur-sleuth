---
package: omni-shell
pkgver: 0.1.11
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 8366
completion_tokens: 1139
total_tokens: 9505
cost: 0.000943122264
execution_time: 135.41
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-07T11:09:58Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no suspicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned source and no malicious behavior.
---

Materializing omni-shell from local mirror...
Materialized omni-shell
Analyzing omni-shell AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable definitions (pkgname, pkgver, etc.), a `source` array pointing to the project's own upstream archive, and a sha256sums entry. No command substitutions, `eval`, `curl`, `wget`, or any code execution occurs at parse time. The `package()` function is defined but not executed during `makepkg --printsrcinfo`. Therefore sourcing this PKGBUILD is not dangerous.
</details>
<evidence></evidence>
<summary>Global scope is benign; no runtime code executed.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope is benign; no runtime code executed.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR metadata file. It declares the package name, version, description, URL, dependencies, optdepends, and a single source tarball from the project&#x27;s own upstream git hosting. The source is pinned to a specific version (v0.1.11) with a SHA256 checksum provided (not skipped). No executable code, obfuscation, suspicious network requests, or system modifications are present. All dependencies are typical for a status bar/launcher package for Hyprland (e.g., quickshell, curl, python, cliphist, brightnessctl, etc.). There is no evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no suspicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no suspicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch Linux package definition. It fetches the source tarball from the upstream project&#x27;s own Git repository with a pinned version tag and a valid SHA-256 checksum. All file operations in the `package()` function are routine: installing QML configuration files, JavaScript files, binary executables (`omni-shell` and `omni-shell-ipc`), a license, and documentation into the expected system paths. There are no network requests during the build, no obfuscated code, no execution of arbitrary downloaded content, and no access to sensitive system data. The dependencies (curl, python, etc.) are normal for a desktop shell with weather, clipboard, and launcher functionality. Nothing in this file deviates from standard packaging practices or indicates a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned source and no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned source and no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,366
  Completion Tokens: 1,139
  Total Tokens: 9,505
  Total Cost: $0.000943
  Execution Time: 135.41 seconds

Final Status: SAFE


No issues found.
