---
package: hyprland-plugin-hyprfocus
pkgbase: hyprland-plugins
pkgver: 0.56.2
pkgrel: 2.1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 8209
completion_tokens: 1063
total_tokens: 9272
cost: 0.000915743010
execution_time: 115.68
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-07T11:19:22Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no signs of malicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with pinned upstream source; no malicious content.
---

hyprland-plugin-hyprfocus is built from hyprland-plugins
Materializing hyprland-plugin-hyprfocus from local mirror...
Materialized hyprland-plugin-hyprfocus
Analyzing hyprland-plugin-hyprfocus AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains top-level variable definitions and function definitions. No command substitutions, backticks, or any executable code outside of function bodies are present. The source array uses a pinned git commit and string interpolation with `$pkgbase`, which is normal. No network requests or system modifications occur when sourcing this file. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.</details>
<evidence></evidence>
<summary>No top-level executable code present; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code present; sourcing is safe.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package for building Hyprland plugins. The source is pinned to a specific commit from the official upstream repository, and the build process uses `make` and `install` commands as expected. There are no suspicious network requests, obfuscated code, or dangerous operations outside typical packaging practices. The SKIP checksum for a git source is normal and does not indicate malicious activity.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no signs of malicious code.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no signs of malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It defines the package `hyprland-plugin-hyprfocus` (and other subpackages) with a pinned Git commit from the official upstream repository (`github.com/hyprwm/hyprland-plugins`). The checksum is set to `SKIP`, which is normal for VCS sources and not indicative of malice. No shell commands, encoded data, network requests, or file operations are present—only declarations of package metadata, dependencies, and source location. The source URL and commit hash are consistent with legitimate packaging practices. There is no evidence of malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO with pinned upstream source; no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with pinned upstream source; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,209
  Completion Tokens: 1,063
  Total Tokens: 9,272
  Total Cost: $0.000916
  Execution Time: 115.68 seconds

Final Status: SAFE


No issues found.
