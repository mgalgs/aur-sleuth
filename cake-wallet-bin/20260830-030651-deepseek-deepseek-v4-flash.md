---
package: cake-wallet-bin
pkgver: 6.3.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 13420
completion_tokens: 2318
total_tokens: 15738
cost: 0.00146109152
execution_time: 67.77
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 4457
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-30T03:06:50Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no malicious code found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: cake-wallet-bin.desktop
    status: safe
    summary: Standard .desktop file, no malicious content.
---

Cloning https://aur.archlinux.org/cake-wallet-bin.git...
Cloned cake-wallet-bin
Analyzing cake-wallet-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains global variable declarations and a `package()` function that is not executed during the `makepkg --nobuild --nodeps --noprepare` or `--printsrcinfo` commands. The source array points to standard GitHub release archives and a desktop file – no unusual or unexpected network destinations. There are no command substitutions, `pkgver()` function, or any other top-level code that would run during sourcing. The `package()` function is out of scope for this gate. No malicious behavior is present in the evaluated parts.</details>
<evidence></evidence>
<summary>No malicious code in global scope or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope or pkgver().
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 4 file(s) in the AUR repository. The 4457 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file is a standard Git exclusion list used in an AUR package repository. It ignores all files (`/*`) and then selectively un-ignores only the essential packaging files: desktop entries, install scripts, shell scripts, sysusers/tmpfiles configurations, `.gitignore`, `.SRCINFO`, and `PKGBUILD`. There are no commands, encoded payloads, network requests, or any executable content. It poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore for AUR package, no malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, cake-wallet-bin.desktop...
[1/4] Reviewing .SRCINFO, PKGBUILD, cake-wallet-bin.desktop...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR practices for packaging a pre-built binary release. It downloads source archives from the official Cake Wallet GitHub repository, with sha512sums provided to verify integrity. The package() function installs files to standard system directories (/opt, /usr/bin, /usr/share) using basic shell commands (mkdir, cp, ln, install). No suspicious network requests (other than the expected downloads from the project's own GitHub), no obfuscated or encoded commands, no eval or unusual execution, and no modifications outside the package's own installation paths.  

The only notable issue is a version mismatch: the binary tarball uses version 6.3.0 while pkgver is 6.3.2. This appears to be an oversight (the maintainer left a TODO comment about it) rather than malice. The checksums still verify the file's integrity, so the risk is limited to using an outdated binary, not a supply-chain attack. Overall, this file exhibits no genuinely malicious behavior.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD; no malicious code found.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, cake-wallet-bin.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no malicious code found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard metadata file for an AUR package. It declares package information, dependencies, sources, and checksums. There are no executable commands, no network requests, no obfuscation, and no suspicious operations. The source URLs point to the official GitHub repository of the cake-wallet project. The version mismatch between pkgver (6.3.2) and the release asset name (v6.3.0) is noted but likely a packaging error or upstream inconsistency, not malicious. All checksums are provided (none are SKIP). No evidence of supply-chain attack or malicious intent.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[3/4] Reviewing cake-wallet-bin.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for cake-wallet-bin.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.desktop` file used by Linux desktop environments to display the application in menus and launchers. It contains only metadata fields such as `Name`, `Icon`, `Exec`, and `Categories`. There are no executable commands, network requests, obfuscated content, or references to external downloads. The file conforms to the FreeDesktop.org specification and presents no security concerns.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed cake-wallet-bin.desktop. Status: SAFE -- Standard .desktop file, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,420
  Completion Tokens: 2,318
  Total Tokens: 15,738
  Total Cost: $0.001461
  Execution Time: 67.77 seconds

Final Status: SAFE


No issues found.
