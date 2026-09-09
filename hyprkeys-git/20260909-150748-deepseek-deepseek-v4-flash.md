---
package: hyprkeys-git
pkgver: r5.gd632813
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 7242
completion_tokens: 1015
total_tokens: 8257
cost: 0.00079312688
execution_time: 18.05
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-09T15:07:47Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no security issues.
---

Materializing hyprkeys-git from local mirror...
Materialized hyprkeys-git
Analyzing hyprkeys-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function declarations. No top-level code executes any dangerous commands, network requests, or obfuscated operations. The `source` array uses a git+ URL pointing to the project's own upstream repository, and the `sha256sums` are set to `SKIP` (normal for VCS packages). The `pkgver()`, `build()`, and `package()` functions are not executed during `makepkg --printsrcinfo`, and their content is not in scope for this gate. There is no evidence of malicious behavior in the global scope.
</details>
<evidence></evidence>
<summary>Safe: no dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no dangerous top-level code execution.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.SRCINFO` metadata file for an AUR package. It defines the package name, description, version, upstream URL, license, dependencies, and a VCS git source (`HyprKeys::git+https://github.com/olalbns/HyprKeys.git`) with `sha256sums = SKIP`, which is normal for `-git` packages. There are no executable commands, network requests beyond the expected source fetch, or any suspicious content. The file conforms to standard AUR packaging practices and contains no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a git-based Python package. It clones the upstream repository from the project&#39;s official GitHub URL, uses Python build tools to create a wheel, and installs it along with the license file. There are no suspicious commands (e.g., curl, wget, eval, base64), no unexpected network requests, and no file operations outside of standard build and install directories. The SKIP checksum is expected for VCS sources. No evidence of supply-chain attack or malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD, no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,242
  Completion Tokens: 1,015
  Total Tokens: 8,257
  Total Cost: $0.000793
  Execution Time: 18.05 seconds

Final Status: SAFE


No issues found.
