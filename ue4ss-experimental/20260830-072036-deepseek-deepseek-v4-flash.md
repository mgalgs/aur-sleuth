---
package: ue4ss-experimental
pkgver: 3.0.1_1100_g4375e5bb
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 15584
completion_tokens: 2797
total_tokens: 18381
cost: 0.00170779392
execution_time: 28.37
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 22
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-30T07:20:36Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned checksums, no malicious code.
  - file: ue4ss-install
    status: safe
    summary: Legitimate deployment script with no malicious behavior.
---

Cloning https://aur.archlinux.org/ue4ss-experimental.git...
Cloned ue4ss-experimental
Analyzing ue4ss-experimental AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no code that executes maliciously when the file is sourced or during source fetching. All top-level operations are limited to variable definitions, array declarations, and function definitions (`latestver()` and `package()`), none of which are invoked during `makepkg --nobuild --nodeps --noprepare` or `--printsrcinfo`. The `source` array points to a legitimate GitHub release URL for the project and a local file (`ue4ss-install`), with both checksums provided. No obfuscation, hidden commands, or outbound data exfiltration is present. The commands in question are safe to run.
</details>
<evidence></evidence>
<summary>No malicious top-level code; source URLs are legitimate.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; source URLs are legitimate.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/ue4ss/LICENSE); they are upstream content and were not reviewed.
Reviewing the 4 file(s) in the AUR repository. The 22 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The .gitignore file is a standard exclusion list for an AUR package repository. It ignores all files by default and then whitelists only the essential files needed for the package: `.gitignore`, `.SRCINFO`, `PKGBUILD`, a deploy helper script (`ue4ss-install`), and auxiliary files like install scripts, patches, and diffs. This is a common pattern to keep the repository clean and avoid storing generated or unnecessary files. There is no obfuscated code, no network requests, no dangerous commands, and no evidence of malicious intent. The file is entirely benign and follows standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore, no security issues.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore, no security issues.
[1/4] Reviewing .SRCINFO, PKGBUILD, ue4ss-install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains standard metadata for the ue4ss-experimental AUR package. The primary source is a zip file downloaded from the official UE4SS GitHub releases page, and the checksums are provided (not skipped). The second source is a local file `ue4ss-install` which is typical for AUR packages that include helper scripts. There is no obfuscation, no unexpected network requests, and no dangerous commands. The file conforms to normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard AUR package metadata; no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, ue4ss-install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It downloads the UE4SS release from the official GitHub repository with a pinned sha256sum, ensuring integrity. The `latestver()` helper function queries the GitHub API to retrieve version information for maintainer use and is not executed during the build or installation process. The `package()` function copies the extracted files and a helper script into the package directory without any suspicious operations. There is no obfuscation, unexpected network requests, or dangerous commands like `curl|bash`, `eval`, or `base64` decoding. The checksums are pinned, so the source is verified. The only optional dependency is `wine` for running Windows games, which is relevant to the application's purpose. No evidence of a supply-chain attack or malicious injection is present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned checksums, no malicious code.</summary>
</security_assessment>

[3/4] Reviewing ue4ss-install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned checksums, no malicious code.
LLM auditresponse for ue4ss-install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard deployment helper script for the UE4SS payload. It copies or symlinks files from a package-managed directory (`/usr/share/ue4ss`) into a user-specified game folder. No network requests, obfuscated code, or unexpected system modifications are present. The script only manipulates files within the target directory and prints clear warnings before recursive removal during uninstall. All operations are consistent with legitimate package installation helpers.
</details>
<evidence>
</evidence>
<summary>Legitimate deployment script with no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed ue4ss-install. Status: SAFE -- Legitimate deployment script with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,584
  Completion Tokens: 2,797
  Total Tokens: 18,381
  Total Cost: $0.001708
  Execution Time: 28.37 seconds

Final Status: SAFE


No issues found.
