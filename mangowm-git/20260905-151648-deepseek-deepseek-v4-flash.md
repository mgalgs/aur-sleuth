---
package: mangowm-git
pkgver: 0.16.0.r0.g7bb3f7e
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 9838
completion_tokens: 1144
total_tokens: 10982
cost: 0.00102367692
execution_time: 23.05
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-05T15:16:47Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR git package, no security issues found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata for a -git package; no malicious behavior found.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
---

Materializing mangowm-git from local mirror...
Materialized mangowm-git
Analyzing mangowm-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard global variable definitions (pkgname, pkgver, depends, source, etc.). There are no command substitutions, function calls, or dangerous operations at the top level that would execute when the file is sourced by `makepkg --printsrcinfo`. The `pkgver()`, `prepare()`, `build()`, and `package()` functions are defined but not invoked during this step. No malicious code is present in the global scope.
</details>
<evidence></evidence>
<summary>No malicious code at global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code at global scope.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing LICENSE...
[0/3] Reviewing LICENSE, .SRCINFO...
[0/3] Reviewing LICENSE, .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a VCS (git) package. The source is fetched directly from the upstream GitHub repository via git. The `md5sums` are set to `SKIP`, which is required for VCS sources and is not a security concern. There are no unexpected network requests, obfuscated commands, or dangerous operations. The build and install steps use typical meson/ninja tooling. No evidence of supply-chain attack or injected malicious code.
</details>
<evidence></evidence>
<summary>Standard AUR git package, no security issues found.</summary>
</security_assessment>

[1/3] Reviewing LICENSE, .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR git package, no security issues found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard Arch User Repository metadata file for a `-git` package. It declares the upstream source as `git+https://github.com/mangowm/mango.git`, which matches the package's stated project URL and purpose. The `md5sums = SKIP` entry is normal and required for VCS sources; it is not evidence of malicious behavior.

The file contains no network requests beyond the package's own upstream repository, no downloads or execution of external code, no obfuscated commands, and no suspicious file operations. The dependency list and build metadata are consistent with normal AUR packaging practice for a Wayland compositor built with meson/ninja. No injected or malicious content is present.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata for a -git package; no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing LICENSE...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata for a -git package; no malicious behavior found.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard license file (based on the ISC license) with additional clauses about binary files and patches. There are no network requests, obfuscated code, dangerous commands, or any other signs of malicious activity. The content is purely textual and describes licensing terms. No security concerns.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,838
  Completion Tokens: 1,144
  Total Tokens: 10,982
  Total Cost: $0.001024
  Execution Time: 23.05 seconds

Final Status: SAFE


No issues found.
