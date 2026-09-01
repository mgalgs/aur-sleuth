---
package: ue4ss-experimental-zdev
pkgver: 3.0.1_1108_g68caddcf
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 15956
completion_tokens: 3344
total_tokens: 19300
cost: 0.00183235248
execution_time: 88.29
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 361
upstream_named_files: 1
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T07:27:23Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign .gitignore; no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata with no malicious content.
  - file: ue4ss-install
    status: safe
    summary: Standard deployment helper, no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Conventional PKGBUILD with pinned checksums and upstream sources; no malicious behavior found.
---

Cloning https://aur.archlinux.org/ue4ss-experimental-zdev.git...
Cloned ue4ss-experimental-zdev
Analyzing ue4ss-experimental-zdev AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no code in global scope or `pkgver()` that could execute maliciously during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The source URL points to the official upstream GitHub release archive with a pinned checksum. The `latestver()` helper function is defined but not invoked (the `pkgvar` is a hardcoded string). No network requests or dangerous commands are triggered by sourcing the PKGBUILD or fetching the sources. The `ue4ss-install` local source file is a separate file shipped alongside the PKGBUILD (not part of the remote download) and will be audited in the full review; its content cannot execute during these commands. Therefore, running the two requested commands poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Safe: no dangerous code during source fetch or PKGBUILD sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no dangerous code during source fetch or PKGBUILD sourcing.
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
This `.gitignore` file is a standard configuration for an AUR package repository. It ignores all files by default and then whitelists only the essential packaging files (`.gitignore`, `.SRCINFO`, `PKGBUILD`), the deploy helper script (`ue4ss-install`), and auxiliary files (`*.install`, `*.patch`, `*.diff`). There is no code, no obfuscation, no network requests, and no system modifications. It serves solely to define git version control behavior and poses no security threat.
</details>
<evidence></evidence>
<summary>Benign .gitignore; no security issues.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore; no security issues.
[1/4] Reviewing .SRCINFO, PKGBUILD, ue4ss-install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a `.SRCINFO` metadata file which simply declares package attributes such as version, dependencies, sources, and checksums. It contains no executable code, no network fetching logic beyond declaring the upstream tarball URL (GitHub, the project&#39;s own releases page), and no obfuscated or encoded content. The `source` array includes a reference to a local file `ue4ss-install`, which is common in AUR packages for including an installation helper script; this does not constitute a threat by itself. Both sources have explicit SHA-256 checksums, providing integrity verification. There is no evidence of malicious behavior — no eval, no base64, no unexpected system modifications, no data exfiltration, no backdoors.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata with no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, ue4ss-install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata with no malicious content.
LLM auditresponse for ue4ss-install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a well-written deployment helper for the UE4SS modding tool. It copies files from a system-managed payload directory (<code>/usr/share/ue4ss</code>) into a user-specified game folder. No network calls, obfuscated code, or dangerous operations outside the expected scope are present. The <code>rm -rf</code> in the uninstall function only removes files that correspond to the deployed payload and lists them before deletion, which is standard. The script follows safe shell scripting practices and does not exhibit any malicious behavior indicative of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard deployment helper, no malicious behavior found.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed ue4ss-install. Status: SAFE -- Standard deployment helper, no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward and conventional AUR packaging file. The source is a pinned zDEV release asset downloaded from the project's own upstream GitHub repository (UE4SS-RE/RE-UE4SS), with hardcoded `pkgver`, a pinned asset URL, and non-SKIP sha256 checksums for both the zip and the `ue4ss-install` helper script. The `package()` function only performs standard operations: creating directories, copying the unzipped payload into `$pkgdir/usr/share/ue4ss`, installing the license, removing noisy doc files (Docs/, README, Changelog) from the installed payload, and installing the helper script to `$pkgdir/usr/bin`. All of this is normal packaging behavior.

The `latestver()` function queries the GitHub API for the upstream release tag and parses the asset name to derive a new pkgver — a routine maintainer helper for version bumps, not executed during build/install. There is no obfuscation, no `eval`/base64/curl-piped-to-shell, no exfiltration of local data, no unexpected network destinations, and no tampering with system files outside the package's own install scope. The `ue4ss-install` helper referenced is an upstream-supplied script with a pinned checksum whose stated purpose (deploying the DLL payload into Windows game folders for use under Wine/Proton) is the package's declared functionality.

Notably, this package does *not* use SKIP checksums and does not use VCS sources, so the usual trust/hygiene caveats do not even apply here. No genuinely malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>
Conventional PKGBUILD with pinned checksums and upstream sources; no malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Conventional PKGBUILD with pinned checksums and upstream sources; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,956
  Completion Tokens: 3,344
  Total Tokens: 19,300
  Total Cost: $0.001832
  Execution Time: 88.29 seconds

Final Status: SAFE


No issues found.
