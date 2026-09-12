---
package: ffxiv-teamcraft
pkgver: 11.4.30
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 15388
completion_tokens: 1979
total_tokens: 17367
cost: 0.00162777244
execution_time: 30.08
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-05T19:06:15Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no malicious content.
  - file: FFXIV-Teamcraft.desktop
    status: safe
    summary: Standard desktop entry, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums and official upstream source; no security issues found.
  - file: ffxiv-teamcraft_sysusers.conf
    status: safe
    summary: Standard sysusers config; no malicious content.
  - file: ffxiv-teamcraft_tmpfiles.conf
    status: safe
    summary: Normal tmpfiles config, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious content found.
---

Materializing ffxiv-teamcraft from local mirror...
Materialized ffxiv-teamcraft
Analyzing ffxiv-teamcraft AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments and a `package()` function definition. No command substitutions, backticks, or other executable code exists in the global scope. Sourcing this file for `makepkg --printsrcinfo` will not execute any dangerous operations.
</details>
<evidence></evidence>
<summary>No top-level code executes during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code executes during sourcing.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, FFXIV-Teamcraft.desktop...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` that prevents the AppImage binary from being tracked by git. It contains no executable code, no network requests, no obfuscation, and no system modifications. This is a normal packaging practice.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore file, no malicious content.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, FFXIV-Teamcraft.desktop, PKGBUILD...
[1/6] Reviewing .SRCINFO, FFXIV-Teamcraft.desktop, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no malicious content.
LLM auditresponse for FFXIV-Teamcraft.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file that defines an application launcher for FFXIV Teamcraft. It specifies the executable path (`/opt/ffxiv-teamcraft/FFXIV-Teamcraft.AppImage`), application type, and basic metadata. There are no network requests, obfuscated commands, file operations, or any code execution beyond launching the specified AppImage. The file deviates from no packaging norms and contains no indicators of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard desktop entry, no security issues.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, FFXIV-Teamcraft.desktop, PKGBUILD, ffxiv-teamcraft_sysusers.conf...
[2/6] Reviewing .SRCINFO, PKGBUILD, ffxiv-teamcraft_sysusers.conf...
+ Reviewed FFXIV-Teamcraft.desktop. Status: SAFE -- Standard desktop entry, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file describes a standard AUR package for ffxiv-teamcraft. It declares the package metadata, an AppImage downloaded from the project's official GitHub releases URL, and three local configuration files (desktop entry, sysusers, tmpfiles). All four sources have pinned SHA1 checksums, so the downloaded artifacts are verified at build time. No suspicious network endpoints, obfuscated commands, or unexpected file operations are present.

This is a straightforward packaging metadata file. The PKGBUILD itself is not shown here, but nothing in this .SRCINFO deviates from normal AUR practice. There are no red flags indicating a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums and official upstream source; no security issues found.
</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD, ffxiv-teamcraft_sysusers.conf, ffxiv-teamcraft_tmpfiles.conf...
[3/6] Reviewing PKGBUILD, ffxiv-teamcraft_sysusers.conf, ffxiv-teamcraft_tmpfiles.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums and official upstream source; no security issues found.
LLM auditresponse for ffxiv-teamcraft_sysusers.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd sysusers.d configuration file. It defines a system user `teamcraft` for the FFXIV Teamcraft application. The content is a single entry with a comment, and there is no executable code, no network requests, no file manipulation, and no obfuscation. Creating a dedicated system user for a service is a normal and recommended packaging practice. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard sysusers config; no malicious content.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, ffxiv-teamcraft_tmpfiles.conf...
+ Reviewed ffxiv-teamcraft_sysusers.conf. Status: SAFE -- Standard sysusers config; no malicious content.
LLM auditresponse for ffxiv-teamcraft_tmpfiles.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd-tmpfiles configuration snippet used during package installation or early boot to set up the application directory and the AppImage file permissions. It creates `/opt/ffxiv-teamcraft` with appropriate ownership and sets the FFXIV-Teamcraft.AppImage executable (mode 0755) for the dedicated `teamcraft` user and group. There is no embedded executable code, no network access, no obfuscation, and no deviation from normal packaging practices. The file is entirely declarative and poses no security risk.
</details>
<evidence>

</evidence>
<summary>Normal tmpfiles config, no security issues.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed ffxiv-teamcraft_tmpfiles.conf. Status: SAFE -- Normal tmpfiles config, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads a prebuilt AppImage from the official GitHub releases of ffxiv-teamcraft, using a specific version tag. All sources are pinned to exact hashes (SHA1), there are no obfuscated commands, no eval or base64 usage, and no unexpected network requests. The `package()` function only copies configuration files and installs the AppImage and a desktop entry into standard locations. There is no code execution beyond normal installation steps. This is a conventional AUR package with no signs of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious content found.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious content found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,388
  Completion Tokens: 1,979
  Total Tokens: 17,367
  Total Cost: $0.001628
  Execution Time: 30.08 seconds

Final Status: SAFE


No issues found.
