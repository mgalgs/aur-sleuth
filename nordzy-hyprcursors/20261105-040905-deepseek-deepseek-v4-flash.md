---
package: nordzy-hyprcursors
pkgver: 2.5.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10654
completion_tokens: 2312
total_tokens: 12966
cost: 0.001390298
execution_time: 36.07
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-05T04:09:04Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore; ignores all except PKGBUILD and .SRCINFO. No security issues.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata with pinned checksums; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned sources, no malice.
---

Materializing nordzy-hyprcursors from local mirror...
Materialized nordzy-hyprcursors
Analyzing nordzy-hyprcursors AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and a `package()` function. There are no top-level command substitutions, eval calls, or other executable code that would run when sourcing the file for `makepkg --printsrcinfo`. The `source` array and other variables are static strings. The `package()` function is not executed during this step. No malicious behavior is present at the global scope.
</details>
<evidence></evidence>
<summary>No malicious top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; sourcing is safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an AUR package repository. It ignores all files and directories (`*/*`, `**/*`) while un-ignoring only the essential AUR metadata files (`PKGBUILD` and `.SRCINFO`). This is common practice for keeping generated or extraneous files out of the repository. There are no commands, network operations, obfuscated content, or file modifications; it is purely version-control configuration and contains no executable logic.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore; ignores all except PKGBUILD and .SRCINFO. No security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore; ignores all except PKGBUILD and .SRCINFO. No security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR metadata file that defines package version, upstream URLs, source tarballs with pinned SHA256 checksums, and extraction exclusions. All source downloads point to the official GitLab releases of the upstream project (guillaumeboehm/Nordzy-cursors). There are no embedded commands, no obfuscated strings, no references to external hosts other than the project's own release artifacts, and no operations that deviate from normal packaging metadata. The file contains no scripts or executable content—only declarative key-value pairs used by the AUR build system. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Declarative metadata with pinned checksums; no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata with pinned checksums; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Standard PKGBUILD for a cursor theme package. Sources are pinned with hardcoded SHA256 checksums from the project's own GitLab releases. No obfuscated code, unexpected network requests, or dangerous commands (e.g., eval, curl, wget). The package() function creates directories and extracts the tarballs into the package directory, following normal packaging practices. There is no evidence of exfiltration, backdoors, or tampering with unrelated system files.
</details>
<evidence>

</evidence>
<summary>Standard PKGBUILD with pinned sources, no malice.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned sources, no malice.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,654
  Completion Tokens: 2,312
  Total Tokens: 12,966
  Total Cost: $0.001390
  Execution Time: 36.07 seconds

Final Status: SAFE


No issues found.
