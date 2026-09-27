---
package: ue4ss-experimental-zdev
pkgver: 3.0.1_1149_gb0d470ba
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15777
completion_tokens: 2979
total_tokens: 18756
cost: 0.0010193715
execution_time: 30.76
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-27T15:17:55Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package, no malicious behavior detected.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore, no malicious content.
  - file: ue4ss-install
    status: safe
    summary: Safe deployment helper for UE4SS package.
---

Materializing ue4ss-experimental-zdev from local mirror...
Materialized ue4ss-experimental-zdev
Analyzing ue4ss-experimental-zdev AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions, array assignments, and function declarations in its global scope. No command substitutions, arithmetic expansions, or direct function calls are present at the top level. The `source` and `sha256sums` arrays reference variables but never execute commands. The functions `latestver()` and `package()` are defined but not invoked during `makepkg --printsrcinfo`, which only sources the file. Therefore, sourcing this PKGBUILD poses no immediate risk of malicious code execution.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code present.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code present.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .gitignore...
[0/4] Reviewing .gitignore, .SRCINFO...
[0/4] Reviewing .gitignore, .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR .SRCINFO metadata file for the ue4ss-experimental-zdev package. It declares the package name, version, dependencies, and two source entries: a zip archive downloaded from the official UE4SS-RE GitHub releases page (the project's own upstream) and a local `ue4ss-install` script. Both sources have SHA-256 checksums provided. There is no executable code, no suspicious network requests (the only download URL points to the legitimate project repository), no obfuscation, and no system modifications. The content is entirely declarative and follows typical AUR packaging conventions. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .gitignore, .SRCINFO, PKGBUILD, ue4ss-install...
[1/4] Reviewing .gitignore, PKGBUILD, ue4ss-install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a binary redistribution package. The source URL points to the official GitHub repository of UE4SS, and both source files have pinned SHA-256 checksums. The `package()` function uses only conventional file operations (`install`, `cp`, `rm`, `chmod`) to deploy the Windows DLL payload and a helper script. The `latestver()` function, defined but never invoked during the build, is a convenience function for version tracking and does not execute any dangerous commands. No obfuscation, unexpected network requests, or system modifications outside the package&#39;s own directories are present. The package does not download or execute any additional code at build time; it simply extracts the pre-built archive and copies it into place.
</details>
<evidence></evidence>
<summary>Standard AUR binary package, no malicious behavior detected.</summary>
</security_assessment>

[2/4] Reviewing .gitignore, ue4ss-install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package, no malicious behavior detected.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This .gitignore file follows the standard AUR pattern of ignoring all files by default and then selectively unignoring the essential packaging files: `.gitignore`, `.SRCINFO`, `PKGBUILD`, a helper script `ue4ss-install`, and common auxiliary file types (`*.install`, `*.patch`, `*.diff`). There is no executable code, no network operations, no obfuscation, and no attempt to fetch or execute external content. The file is purely declarative and serves only to manage version-control tracking. No security concerns.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore, no malicious content.</summary>
</security_assessment>

[3/4] Reviewing ue4ss-install...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore, no malicious content.
LLM auditresponse for ue4ss-install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard deployment helper for the UE4SS package. It copies or symlinks files from a system-managed payload directory (`/usr/share/ue4ss`) into a user-specified game directory. All operations are local file manipulations with no network requests, no execution of untrusted code, no obfuscation, and no exfiltration of data. The uninstall function removes only files that match the top-level entries from the payload, with a warning and listing before deletion. Error handling is robust, and the script follows expected packaging helper patterns. No malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Safe deployment helper for UE4SS package.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed ue4ss-install. Status: SAFE -- Safe deployment helper for UE4SS package.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,777
  Completion Tokens: 2,979
  Total Tokens: 18,756
  Total Cost: $0.001019
  Execution Time: 30.76 seconds

Final Status: SAFE


No issues found.
