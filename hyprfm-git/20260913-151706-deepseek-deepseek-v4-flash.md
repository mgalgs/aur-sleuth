---
package: hyprfm-git
pkgver: r472.g6fd0abf
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 9786
completion_tokens: 1178
total_tokens: 10964
cost: 0.00058815848
execution_time: 26.32
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-13T15:17:06Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR -git PKGBUILD, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
---

Materializing hyprfm-git from local mirror...
Materialized hyprfm-git
Analyzing hyprfm-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function declarations at the global scope. No dangerous commands (curl, wget, eval, command substitution) appear at the top level. The `pkgver()`, `prepare()`, `build()`, and `package()` functions are defined but will not be executed by `makepkg --printsrcinfo`. The use of SKIP checksums is normal for VCS sources and does not pose a risk during this parsing step. There is no evidence of malicious code that would execute when sourcing the file.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to parse.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a VCS (`-git`) package. It fetches the upstream source and two upstream submodule dependencies via `git+` URLs with `SKIP` checksums — normal for VCS sources. The `prepare()` function uses `git submodule init` and `git config` to redirect submodule URLs to local copies in `$srcdir`, then updates them with `protocol.file.allow=always`. This is a common technique to avoid refetching submodules and is not malicious. The `build()` and `package()` functions perform standard CMake-based compilation and file installation into `$pkgdir`. There are no suspicious network requests, obfuscated code, or commands like `eval`, `curl`, `wget`, or base64 decoding. No data exfiltration, backdoors, or system modifications outside the expected scope. The package appears to be a clean upstream build.
</details>
<evidence></evidence>
<summary>Standard AUR -git PKGBUILD, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR -git PKGBUILD, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR metadata file. It defines the package `hyprfm-git` with its dependencies, sources, and checksums. All sources point to legitimate GitHub repositories under the same user (`soyeb-jim285`). The `sha256sums` are set to `SKIP`, which is normal for VCS (git) sources and not a security concern. There are no network requests, obfuscated code, dangerous commands, or any other indicators of malicious activity. The file contains only declarative metadata and follows standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,786
  Completion Tokens: 1,178
  Total Tokens: 10,964
  Total Cost: $0.000588
  Execution Time: 26.32 seconds

Final Status: SAFE


No issues found.
