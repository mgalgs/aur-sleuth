---
package: hyprland-plugin-csgo-vulkan-fix
pkgbase: hyprland-plugins
pkgver: 0.56.2
pkgrel: 2.1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 8218
completion_tokens: 1202
total_tokens: 9420
cost: 0.000941172932
execution_time: 131.76
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-07T11:19:38Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: AUR metadata file with pinned git source; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no malicious code detected.
---

hyprland-plugin-csgo-vulkan-fix is built from hyprland-plugins
Materializing hyprland-plugin-csgo-vulkan-fix from local mirror...
Materialized hyprland-plugin-csgo-vulkan-fix
Analyzing hyprland-plugin-csgo-vulkan-fix AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments in the global scope (pkgname, pkgver, source, etc.) and definitions of build/package functions. There are no command substitutions, backticks, or other executable expressions at the top level that would run code during `makepkg --printsrcinfo`. The source array uses a pinned git commit from the official upstream repository, which is a normal packaging practice. All potentially dangerous code is confined to function bodies (build, package_*) that are not executed during the printsrcinfo step. Therefore, sourcing this PKGBUILD is safe for the purpose of metadata generation.
</details>
<evidence></evidence>
<summary>No top-level dangerous code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level dangerous code; sourcing is safe.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file. It declares the package `hyprland-plugin-csgo-vulkan-fix` (and several other plugins) with a pinned git commit (`7644cecdb947060682891a0db2a0cdc5c0b9e704`) from the official Hyprland plugins repository. The `sha256sums` entry is `SKIP`, which is typical and expected for VCS sources. There are no commands, no network requests, no obfuscated code, and no file operations present. The file contains only declarative metadata for the package manager. No security concerns.
</details>
<evidence></evidence>
<summary>AUR metadata file with pinned git source; no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- AUR metadata file with pinned git source; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for building Hyprland plugins from source. The source is pinned to a specific commit (`7644cecdb947060682891a0db2a0cdc5c0b9e704`) from the official upstream repository at `github.com/hyprwm/hyprland-plugins`. The build process only invokes `make` and installs the resulting shared objects along with the license file. There are no network requests beyond the declared git source, no obfuscated code, no unexpected system modifications, and no execution of untrusted content. The `sha256sums` are set to `SKIP`, which is normal for VCS sources and not indicative of malice. The file is consistent with its stated purpose and contains no supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD; no malicious code detected.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no malicious code detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,218
  Completion Tokens: 1,202
  Total Tokens: 9,420
  Total Cost: $0.000941
  Execution Time: 131.76 seconds

Final Status: SAFE


No issues found.
