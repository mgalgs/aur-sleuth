---
package: ffxiv-teamcraft
pkgver: 11.4.30
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 15382
completion_tokens: 2155
total_tokens: 17537
cost: 0.001744829352
execution_time: 31.07
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-04T11:08:01Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file; no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious indicators.
  - file: ffxiv-teamcraft_sysusers.conf
    status: safe
    summary: Static sysusers config, no security issues.
  - file: FFXIV Teamcraft.desktop
    status: safe
    summary: Standard .desktop file, no security issues.
  - file: ffxiv-teamcraft_tmpfiles.conf
    status: safe
    summary: Standard tmpfiles configuration, no malicious behavior.
---

Materializing ffxiv-teamcraft from local mirror...
Materialized ffxiv-teamcraft
Analyzing ffxiv-teamcraft AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope consists only of static variable assignments, arrays, and function definitions. No command substitutions, backticks, eval, or other executable code appear outside of function bodies. The `source` array uses a harmless `${pkgver}` expansion. The `package()` function is defined but not executed during `makepkg --printsrcinfo`. No malicious behavior can occur from sourcing this file.
</details>
<evidence>
</evidence>
<summary>No dangerous code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, FFXIV Teamcraft.desktop...
[0/6] Reviewing .SRCINFO, FFXIV Teamcraft.desktop, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file containing a single entry to ignore the FFXIV-Teamcraft.AppImage binary. There is no executable code, network requests, obfuscation, or any operations that could be considered malicious. This is a routine packaging file with no security concerns.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore file; no security issues.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, FFXIV Teamcraft.desktop, .gitignore, PKGBUILD...
[1/6] Reviewing .SRCINFO, FFXIV Teamcraft.desktop, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file; no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO describes a standard AUR package for ffxiv-teamcraft. The primary source is an AppImage downloaded from the project&#39;s official GitHub releases URL, which is the expected upstream location for this package. The additional sources are a desktop entry and systemd sysusers/tmpfiles configuration files, which are normal packaging support files. All four sources have explicit sha1sums, so the package is checksummed rather than using SKIP.

No suspicious network destinations, encoded commands, obfuscation, or unexpected file operations are present in this file. There is nothing here that deviates from ordinary AUR packaging practice or indicates a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard AUR package metadata; no malicious behavior found.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, FFXIV Teamcraft.desktop, PKGBUILD, ffxiv-teamcraft_sysusers.conf...
[2/6] Reviewing FFXIV Teamcraft.desktop, PKGBUILD, ffxiv-teamcraft_sysusers.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward Arch packaging script. It downloads the official AppImage from the project&#39;s GitHub releases with a pinned SHA-1 checksum, and includes two local configuration files (sysusers and tmpfiles) used for system integration. No obfuscated commands, unexpected network requests, or exfiltration attempts are present. The build and package functions perform only standard file copying and permissions setting. No supply-chain attack indicators are found.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious indicators.</summary>
</security_assessment>

[3/6] Reviewing FFXIV Teamcraft.desktop, ffxiv-teamcraft_sysusers.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious indicators.
[3/6] Reviewing FFXIV Teamcraft.desktop, ffxiv-teamcraft_sysusers.conf, ffxiv-teamcraft_tmpfiles.conf...
LLM auditresponse for ffxiv-teamcraft_sysusers.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd-sysusers configuration file that defines a system user for the FFXIV Teamcraft package. It creates a user named `teamcraft` with no home directory or shell, and a descriptive comment. This is a normal and expected practice for packages that need to run as a dedicated system user for isolation. There are no commands, network operations, or any suspicious content. The file is entirely static and declarative.
</details>
<evidence></evidence>
<summary>Static sysusers config, no security issues.</summary>
</security_assessment>

[4/6] Reviewing FFXIV Teamcraft.desktop, ffxiv-teamcraft_tmpfiles.conf...
+ Reviewed ffxiv-teamcraft_sysusers.conf. Status: SAFE -- Static sysusers config, no security issues.
LLM auditresponse for FFXIV Teamcraft.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file used to define an application launcher entry. It contains only a `[Desktop Entry]` section with typical fields: `Name`, `Exec` (pointing to the AppImage at `/opt/ffxiv-teamcraft/FFXIV-Teamcraft.AppImage`), `Type`, `Terminal`, `StartupNotify`, `Comment`, `Category`, `Icon`, and `StartupWMClass`. There are no unusual commands, network requests, encoded payloads, or file operations. The `Exec` line invokes a local binary from the package's installation directory, which is expected behavior. No evidence of malicious or dangerous activity.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security issues.</summary>
</security_assessment>

[5/6] Reviewing ffxiv-teamcraft_tmpfiles.conf...
+ Reviewed FFXIV Teamcraft.desktop. Status: SAFE -- Standard .desktop file, no security issues.
LLM auditresponse for ffxiv-teamcraft_tmpfiles.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `tmpfiles.d` configuration file used to set up the directory and executable permissions for the `ffxiv-teamcraft` application. It creates `/opt/ffxiv-teamcraft` with 0755 permissions and sets ownership to the `teamcraft` user and group, then ensures the `FFXIV-Teamcraft.AppImage` file has the same ownership and executable permissions. This is normal packaging practice—there are no downloads, no obfuscated commands, no system modification beyond the expected application directory, and no execution of code. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard tmpfiles configuration, no malicious behavior.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed ffxiv-teamcraft_tmpfiles.conf. Status: SAFE -- Standard tmpfiles configuration, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,382
  Completion Tokens: 2,155
  Total Tokens: 17,537
  Total Cost: $0.001745
  Execution Time: 31.07 seconds

Final Status: SAFE


No issues found.
