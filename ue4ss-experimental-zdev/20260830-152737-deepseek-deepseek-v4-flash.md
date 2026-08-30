---
package: ue4ss-experimental-zdev
pkgver: 3.0.1_1101_g0b57a878
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 15891
completion_tokens: 2650
total_tokens: 18541
cost: 0.00167324136
execution_time: 42.58
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 361
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-30T15:27:37Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
  - file: .gitignore
    status: safe
    summary: Benign gitignore file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious behavior detected.
  - file: ue4ss-install
    status: safe
    summary: Standard deploy helper, no malicious behavior.
---

Cloning https://aur.archlinux.org/ue4ss-experimental-zdev.git...
Cloned ue4ss-experimental-zdev
Analyzing ue4ss-experimental-zdev AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines standard variables, source URLs, checksums, and a `package()` function that is not executed during the requested commands. The `latestver()` function is defined but never invoked in global scope or `pkgver()`; it is merely a helper for the maintainer and does not run during source fetching or sourcing. No top-level code downloads or executes untrusted payloads. The source URLs point to the official GitHub release assets, and checksums are provided (not SKIP). There is no obfuscated code, no dangerous commands (eval, curl|bash, etc.) in scope. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No malicious code in scope; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in scope; safe to fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/ue4ss/LICENSE); they are upstream content and were not reviewed.
Reviewing the 4 file(s) in the AUR repository. The 361 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR metadata file. It declares package information, sources, checksums, and dependencies. The source URL points to the official GitHub releases page of the UE4SS-RE project, which is the legitimate upstream. Both sources have SHA256 checksums provided, so there is no evidence of unpinned or untrusted content. There are no embedded instructions, obfuscated data, or dangerous commands. The file contains only static package metadata.
</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[1/4] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
[1/4] Reviewing .gitignore, PKGBUILD, ue4ss-install...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository. It ignores everything by default and then selectively un-ignores essential packaging files (`.gitignore`, `.SRCINFO`, `PKGBUILD`), a deploy helper script (`ue4ss-install`), and auxiliary files (`*.install`, `*.patch`, `*.diff`). There are no commands, network operations, obfuscated code, or any other malicious content. The file serves only to define which files are tracked by Git and poses no security risk.
</details>
<evidence></evidence>
<summary>Benign gitignore file with no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, ue4ss-install...
+ Reviewed .gitignore. Status: SAFE -- Benign gitignore file with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch Linux package definition for the `ue4ss-experimental-zdev` variant. It downloads the official upstream release zip from GitHub, pins the exact version in the URL, and provides SHA-256 checksums. The `package()` function performs routine file operations (install, cp, chmod, rm) to deploy the software into the package directory. The `latestver()` helper function uses the `gh` CLI to query the GitHub API for version string generation, but it is not executed during the build process and poses no risk. There is no obfuscated code, no unexpected network requests, no execution of fetched scripts, and no exfiltration of data. The file follows standard AUR packaging practices and contains no malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[3/4] Reviewing ue4ss-install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious behavior detected.
LLM auditresponse for ue4ss-install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `ue4ss-install` is a deploy helper for the UE4SS package. It copies or symlinks files from the local system directory `/usr/share/ue4ss` into a target game folder. It performs no network requests, no downloads from external hosts, no obfuscated code, and no execution of fetched content. All operations are standard file management (cp, ln, rm, find) within the target directory. The uninstall function removes only top-level entries that match the payload&#39;s own files, with a warning. There is no evidence of malicious behavior such as data exfiltration, backdoors, or unauthorized system modifications. The script follows normal AUR packaging practices for a deployment helper.
</details>
<evidence></evidence>
<summary>Standard deploy helper, no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed ue4ss-install. Status: SAFE -- Standard deploy helper, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,891
  Completion Tokens: 2,650
  Total Tokens: 18,541
  Total Cost: $0.001673
  Execution Time: 42.58 seconds

Final Status: SAFE


No issues found.
