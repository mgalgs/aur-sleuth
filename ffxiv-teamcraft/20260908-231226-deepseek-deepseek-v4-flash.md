---
package: ffxiv-teamcraft
pkgver: 11.4.31
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 15314
completion_tokens: 2589
total_tokens: 17903
cost: 0.00168977032
execution_time: 43.98
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-08T23:12:26Z
file_verdicts:
  - file: FFXIV-Teamcraft.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no signs of malicious injection.
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO file with no malicious content.
  - file: ffxiv-teamcraft_tmpfiles.conf
    status: safe
    summary: Standard tmpfiles config for app directory/permissions.
  - file: ffxiv-teamcraft_sysusers.conf
    status: safe
    summary: Standard sysusers config for application user.
---

Materializing ffxiv-teamcraft from local mirror...
Materialized ffxiv-teamcraft
Analyzing ffxiv-teamcraft AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments, `source` array definitions with a simple URL using variable expansion, checksums, and options. There are no top-level command substitutions, backticks, or executions of external commands (e.g., `curl`, `wget`, `eval`, `base64`). The `package()` function is defined but is not invoked during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD poses no risk of executing malicious code.
</details>
<evidence></evidence>
<summary>No top-level code execution; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution; safe to source.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, FFXIV-Teamcraft.desktop...
[0/6] Reviewing .SRCINFO, FFXIV-Teamcraft.desktop, .gitignore...
LLM auditresponse for FFXIV-Teamcraft.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file for launching an AppImage application. It contains no executable code, no network requests, no obfuscation, and no system modifications. The `Exec` line points to a legitimate AppImage path under `/opt/ffxiv-teamcraft/`. There are no signs of malicious behavior or supply chain attack.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .gitignore...
+ Reviewed FFXIV-Teamcraft.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
[1/6] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It downloads an AppImage from the project's official GitHub releases, includes local configuration files (desktop file, sysusers/tmpfiles templates), and installs them into proper directories. There are no suspicious network requests, obfuscated code, or unexpected system modifications. The use of SHA1 checksums is a minor cryptographic hygiene concern but not malicious. The sysusers and tmpfiles configurations are routine for managing system users and temporary files and are consistent with the package's stated purpose (a collaborative crafting tool).
</details>
<evidence></evidence>
<summary>Standard PKGBUILD; no signs of malicious injection.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .gitignore, PKGBUILD, ffxiv-teamcraft_sysusers.conf...
[2/6] Reviewing .SRCINFO, .gitignore, ffxiv-teamcraft_sysusers.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no signs of malicious injection.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.gitignore` contains a single entry to ignore the file `FFXIV-Teamcraft.AppImage`. This is a standard and benign gitignore file used to prevent the AppImage binary from being tracked in version control. There is no executable code, no network activity, no obfuscation, and no deviation from normal packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard gitignore file, no security issues.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, .gitignore, ffxiv-teamcraft_sysusers.conf, ffxiv-teamcraft_tmpfiles.conf...
[3/6] Reviewing .SRCINFO, ffxiv-teamcraft_sysusers.conf, ffxiv-teamcraft_tmpfiles.conf...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .SRCINFO metadata file for the ffxiv-teamcraft AUR package. It defines the package name, version, architecture, license, and sources. All source entries are legitimate: the AppImage binary is fetched from the official GitHub releases page of the project, and the remaining three files are local configuration files (desktop entry, sysusers, tmpfiles). Every source has a corresponding SHA-1 checksum, meaning no checksums are skipped. There are no scripts, obfuscated strings, or any executable content in this file. It contains only declarative package metadata and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO file with no malicious content.</summary>
</security_assessment>

[4/6] Reviewing ffxiv-teamcraft_sysusers.conf, ffxiv-teamcraft_tmpfiles.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO file with no malicious content.
LLM auditresponse for ffxiv-teamcraft_tmpfiles.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd-tmpfiles configuration snippet. It creates a directory `/opt/ffxiv-teamcraft` with permissions 0755 owned by user/group `teamcraft:teamcraft`, and sets the same ownership and permissions on the `FFXIV-Teamcraft.AppImage` file. This is standard packaging practice for AUR packages that need to provision runtime directories or set file permissions for the application. No malicious intent is present; there are no network requests, obfuscated code, or dangerous operations.
</details>
<evidence></evidence>
<summary>Standard tmpfiles config for app directory/permissions.</summary>
</security_assessment>

[5/6] Reviewing ffxiv-teamcraft_sysusers.conf...
+ Reviewed ffxiv-teamcraft_tmpfiles.conf. Status: SAFE -- Standard tmpfiles config for app directory/permissions.
LLM auditresponse for ffxiv-teamcraft_sysusers.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd sysusers configuration file intended to create a system user for the FFXIV Teamcraft application. The syntax conforms to the expected format (`u!` for creating a user if not existing). No obtrusive commands, network requests, or encoded operations are present. The `&quot;` in the GECOS field appears to be an HTML entity that will be interpreted literally by sysusers; it is likely a formatting error rather than malicious injection, and does not introduce a security risk. The file performs its stated purpose without any signs of supply-chain attack or unintended behavior.
</details>
<evidence></evidence>
<summary>Standard sysusers config for application user.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed ffxiv-teamcraft_sysusers.conf. Status: SAFE -- Standard sysusers config for application user.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,314
  Completion Tokens: 2,589
  Total Tokens: 17,903
  Total Cost: $0.001690
  Execution Time: 43.98 seconds

Final Status: SAFE


No issues found.
