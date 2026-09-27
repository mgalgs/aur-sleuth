---
package: ue4ss-experimental
pkgver: 3.0.1_1148_g515bd218
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15567
completion_tokens: 3396
total_tokens: 18963
cost: 0.0010486371
execution_time: 64.65
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-27T11:59:01Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned checksums and no malicious behavior.
  - file: ue4ss-install
    status: safe
    summary: Standard deploy script, no suspicious behavior.
---

Materializing ue4ss-experimental from local mirror...
Materialized ue4ss-experimental
Analyzing ue4ss-experimental AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions, a simple string substitution for `_verstr`, and function definitions (`latestver()` and `package()`). No top-level command substitutions, backticks, `eval`, or other code that would execute when sourced. The `source` array defines a URL to the project's own GitHub releases and a local file – no unexpected network destinations. No code runs during the sourcing step that could be malicious. Therefore, `makepkg --printsrcinfo` is safe to run.
</details>
<evidence></evidence>
<summary>No malicious top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; sourcing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains only standard gitignore patterns to track essential files for the AUR package (PKGBUILD, .SRCINFO, helper scripts, install files, patches, diffs). No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard gitignore file, no malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, ue4ss-install...
[1/4] Reviewing .SRCINFO, PKGBUILD, ue4ss-install...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.SRCINFO` metadata file for an AUR package. It contains no executable code, no obfuscation, no suspicious network requests, and no unexpected operations. The source URL points to the official GitHub release of the UE4SS project, and both sources have SHA-256 checksums provided for verification. There are no signs of supply-chain attack or malicious intent.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO metadata, no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, ue4ss-install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. The source is an upstream GitHub release archive with a pinned SHA-256 checksum, and the included helper script `ue4ss-install` also has a pinned checksum. No unexpected network requests, obfuscated commands, or dangerous operations are present. The `latestver()` function queries the GitHub API but is a maintainer helper, not invoked during packaging. The `package()` function only copies files from the extracted archive and the local script into the package directory, performing routine file operations. There is no evidence of malicious behavior such as data exfiltration, code injection, or backdoors.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned checksums and no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing ue4ss-install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned checksums and no malicious behavior.
LLM auditresponse for ue4ss-install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward deployment helper for the UE4SS payload.  It copies files from a local system directory (/usr/share/ue4ss) to a user‑supplied target directory, with support for symlinks and config preservation.  There are no network requests, no encoded or obfuscated commands, no attempts to access sensitive system files, and no execution of untrusted code.  The use of `rm -rf` in uninstall is scoped to the target directory and matched only against top‑level items present in the payload, which is normal for a removal function.  All operations are consistent with the stated purpose of deploying a modding framework into a game folder.
</details>
<evidence></evidence>
<summary>Standard deploy script, no suspicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed ue4ss-install. Status: SAFE -- Standard deploy script, no suspicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,567
  Completion Tokens: 3,396
  Total Tokens: 18,963
  Total Cost: $0.001049
  Execution Time: 64.65 seconds

Final Status: SAFE


No issues found.
