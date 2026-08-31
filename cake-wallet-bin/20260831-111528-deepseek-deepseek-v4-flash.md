---
package: cake-wallet-bin
pkgver: 6.3.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 13406
completion_tokens: 2459
total_tokens: 15865
cost: 0.001623616344
execution_time: 53.46
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 4457
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-31T11:15:22Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR gitignore file, no malicious content.
  - file: cake-wallet-bin.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for Cake Wallet, no security issues.
---

Cloning https://aur.archlinux.org/cake-wallet-bin.git...
Cloned cake-wallet-bin
Analyzing cake-wallet-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions and arrays in its global scope, with no pkgver() function. The source entries fetch from the project's own GitHub releases and archive, which is standard and expected. Checksums are provided and not skipped. No commands are executed during sourcing or fetching that would run untrusted code. The only notable packaging inconsistency is a version mismatch in the first source URL (v6.3.2 in the path vs pkgver 6.3.0), but this is a maintainer error, not a security threat. The commands `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will not execute any malicious code.
</details>
<evidence></evidence>
<summary>No malicious code in global scope or pkgver()</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope or pkgver()
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
The file is a standard `.gitignore` used in Arch User Repository (AUR) packages. It ignores all files by default, then selectively un-ignores specific file types (`.desktop`, `.install`, `.sh`, `.sysusers`, `.tmpfiles`) and individual files (`.gitignore`, `.SRCINFO`, `PKGBUILD`) that are essential for AUR packaging. No network requests, command execution, data exfiltration, or obfuscation is present. This is a routine packaging file with no security concerns.
</details>
<evidence></evidence>
<summary>Standard AUR gitignore file, no malicious content.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR gitignore file, no malicious content.
[1/4] Reviewing .SRCINFO, PKGBUILD, cake-wallet-bin.desktop...
LLM auditresponse for cake-wallet-bin.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .desktop file used by Linux desktop environments to launch an application. It contains only metadata such as the application name, icon, executable path, and categories. There are no executable commands, network requests, encoded data, or any other suspicious content. The file conforms to the expected format for a desktop entry and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed cake-wallet-bin.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is for the `cake-wallet-bin` AUR package, which provides a prebuilt binary of the Cake Wallet application. All sources are fetched from the official GitHub repository of the upstream project (`github.com/cake-tech/cake_wallet`). Checksums (sha512) are provided for all three sources, and none are set to `SKIP`. There is no obfuscation, no dangerous commands, no unexpected network requests, and no code execution instructions. The only potential concern is a minor version mismatch in the binary source URL (the tag says v6.3.2 but the release filename says v6.3.0), which is a packaging inconsistency but not a security threat. The file conforms to standard AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO with no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard binary package for Cake Wallet. It downloads the official prebuilt binary and source archive from the project's GitHub releases, verifies them with SHA-512 checksums, and installs files to standard locations under `/opt`, `/usr/bin`, and `/usr/share`. There are no network requests outside of the declared sources, no obfuscated code, no dangerous commands (eval, base64, curl, wget), and no unexpected system modifications. The only minor observation is a version mismatch: the tarball filename references v6.3.2 while `pkgver` is set to 6.3.0. This is a packaging inconsistency (likely a maintainer oversight) but does not indicate malicious intent — the checksums are still pinned and the source is from the official upstream. No evidence of supply-chain attack or harmful behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD for Cake Wallet, no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for Cake Wallet, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,406
  Completion Tokens: 2,459
  Total Tokens: 15,865
  Total Cost: $0.001624
  Execution Time: 53.46 seconds

Final Status: SAFE


No issues found.
