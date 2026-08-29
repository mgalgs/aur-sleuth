---
package: ue4ss-experimental-zdev
pkgver: 3.0.1_1096_g013440ea
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 15866
completion_tokens: 2242
total_tokens: 18108
cost: 0.00169230600
execution_time: 158.9
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 361
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-29T15:34:06Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security concerns.
  - file: ue4ss-install
    status: safe
    summary: Legitimate deployment helper script with no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious code found.
---

Cloning https://aur.archlinux.org/ue4ss-experimental-zdev.git...
Cloned ue4ss-experimental-zdev
Analyzing ue4ss-experimental-zdev AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD sources are standard: a GitHub release ZIP and a local script file, both with SHA-256 checksums. The `latestver()` function is defined but not invoked during `makepkg --nobuild --nodeps --noprepare` or `--printsrcinfo`; it only runs if called explicitly. No top-level code executes downloads, obfuscated commands, or exfiltrates data. The `package()` function is not executed during this gate. Therefore, running the two commands is safe.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious code in scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD, no malicious code in scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/ue4ss/LICENSE); they are upstream content and were not reviewed.
Reviewing the 4 file(s) in the AUR repository. The 361 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used to control which files are tracked in the AUR Git repository. It ignores all files by default, then whitelists only the necessary packaging files (`.gitignore`, `.SRCINFO`, `PKGBUILD`, `ue4ss-install`, `*.install`, `*.patch`, `*.diff`). There is no executable code, no network operations, no obfuscation, and no system modifications. The file serves purely as a version-control rule and contains no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, ue4ss-install...
[1/4] Reviewing .SRCINFO, PKGBUILD, ue4ss-install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security concerns.
LLM auditresponse for ue4ss-install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a clean deployment helper for UE4SS (a modding framework for Unreal Engine games). It copies or symlinks files from the system-managed `/usr/share/ue4ss` directory into a target game folder. There are no network requests, no obfuscated code, no exfiltration of system data, and no execution of untrusted external code. The `rm -rf` in the uninstall path only removes payload-provided top-level entries that exist in the target -- it is scoped to those specific files and is standard for cleanup. The script follows conventional packaging practices and performs only the operations it documents.
</details>
<evidence></evidence>
<summary>Legitimate deployment helper script with no malicious behavior.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed ue4ss-install. Status: SAFE -- Legitimate deployment helper script with no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file. It declares the package name, version, description, dependencies, and two source files with their SHA-256 checksums. The source URL points to the official GitHub releases page of the UE4SS project, and the other source (`ue4ss-install`) is presumably a local file in the AUR repository. No network requests, dangerous commands, or obfuscated code are present. The checksums are provided and non-SKIP, which is good practice. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard metadata file; no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch package definition for the `ue4ss-experimental-zdev` package, distributing Windows DLLs and developer tool mods for the UE4SS project. All source URLs point to the official GitHub releases of UE4SS-RE, with pinned version strings and SHA-256 checksums provided for both the binary archive and the installation helper script. The `latestver()` function is a maintainer convenience function that queries the GitHub API to determine new versions; it is not invoked during the build or packaging process. The `package()` function performs routine file extraction and installation into `/usr/share/ue4ss` and `/usr/bin/ue4ss-install`, with no suspicious commands (no `eval`, no unverified external downloads, no obfuscated code). There is no evidence of supply-chain attack, data exfiltration, or backdoor insertion.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious code found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,866
  Completion Tokens: 2,242
  Total Tokens: 18,108
  Total Cost: $0.001692
  Execution Time: 158.90 seconds

Final Status: SAFE


No issues found.
