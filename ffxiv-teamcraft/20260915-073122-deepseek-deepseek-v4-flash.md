---
package: ffxiv-teamcraft
pkgver: 11.4.31
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 16014
completion_tokens: 2574
total_tokens: 18588
cost: 0.001875080172
execution_time: 120.89
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-15T07:31:22Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Routine file with no malicious content.
  - file: FFXIV-Teamcraft.desktop
    status: safe
    summary: Standard .desktop file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious code detected.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: ffxiv-teamcraft
    status: safe
    summary: "Simple AppImage launcher; only chmods and executes the package's own file. Safe."
  - file: ffxiv-teamcraft.install
    status: safe
    summary: Standard post-install user/group setup, no malice.
---

Materializing ffxiv-teamcraft from local mirror...
Materialized ffxiv-teamcraft
Analyzing ffxiv-teamcraft AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and a function definition (`package()`). No top-level command substitutions, backticks, `eval`, `curl`, `wget`, or any other executable code that runs during sourcing. The `source` array uses standard variables and HTTPS URLs. There are no obfuscated payloads or unusual constructs. Since `makepkg --printsrcinfo` only sources the top-level scope, no malicious execution can occur.</details>
<evidence></evidence>
<summary>Sourcing PKGBUILD is safe; no top-level code executes.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing PKGBUILD is safe; no top-level code executes.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, FFXIV-Teamcraft.desktop...
[0/6] Reviewing .SRCINFO, FFXIV-Teamcraft.desktop, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple `.gitignore` file that excludes the FFXIV-Teamcraft.AppImage binary from version control. No commands, obfuscations, or suspicious operations are present. The content is consistent with standard packaging practices and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Routine file with no malicious content.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, FFXIV-Teamcraft.desktop, .gitignore, PKGBUILD...
[1/6] Reviewing .SRCINFO, FFXIV-Teamcraft.desktop, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Routine file with no malicious content.
LLM auditresponse for FFXIV-Teamcraft.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
Standard .desktop file; no suspicious commands or operations.  
The Exec line points to a binary in /usr/bin, consistent with normal packaging.  
No network requests, encoded commands, or unexpected file operations.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security issues.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, FFXIV-Teamcraft.desktop, PKGBUILD, ffxiv-teamcraft...
[2/6] Reviewing .SRCINFO, PKGBUILD, ffxiv-teamcraft...
+ Reviewed FFXIV-Teamcraft.desktop. Status: SAFE -- Standard .desktop file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard packaging practices for an AUR package. It downloads the official AppImage from the project&#39;s own GitHub releases, uses pinned SHA1 checksums (not SKIP), and installs the files into standard locations. There is no obfuscated code, no unexpected network requests, no dangerous commands like eval, curl|bash, or similar. The source URLs point to the package&#39;s legitimate upstream repository. No signs of supply-chain attack or malicious injection.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious code detected.</summary>
</security_assessment>

[3/6] Reviewing .SRCINFO, ffxiv-teamcraft...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious code detected.
[3/6] Reviewing .SRCINFO, ffxiv-teamcraft, ffxiv-teamcraft.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains standard metadata for an AUR package. All source URLs point to the official GitHub releases of ffxiv-teamcraft. SHA1 checksums are provided for all source files (none are SKIP). The file defines dependencies, architecture, and license as expected. There is no code, no network requests beyond declaring the upstream source URL, and no obfuscation or suspicious content. The only potential note is that the source includes an install script (`ffxiv-teamcraft.install`), but that is a separate file not present here; the .SRCINFO itself is benign.</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[4/6] Reviewing ffxiv-teamcraft, ffxiv-teamcraft.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for ffxiv-teamcraft:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple launcher wrapper for an AppImage installed at `/opt/ffxiv-teamcraft/FFXIV-Teamcraft.AppImage`. It checks whether the target AppImage exists and is not executable, then runs `chmod +x` on that specific path to ensure it can be launched, and finally executes it with the user's arguments using `exec`.

There is no malicious behavior: no network requests, no downloading or executing remote code, no obfuscation, no suspicious file operations beyond fixing the executable bit on the application's own file, and no exfiltration of data. The `chmod +x` operation is confined to the package's own installed AppImage and is a standard convenience step for AUR packages that ship AppImage-based applications. The file is consistent with ordinary packaging practices and is considered SAFE.
</details>
<evidence>
</evidence>
<summary>
Simple AppImage launcher; only chmods and executes the package's own file. Safe.
</summary>
</security_assessment>

[5/6] Reviewing ffxiv-teamcraft.install...
+ Reviewed ffxiv-teamcraft. Status: SAFE -- Simple AppImage launcher; only chmods and executes the package's own file. Safe.
LLM auditresponse for ffxiv-teamcraft.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script performs standard post-install operations for a package that requires a dedicated service user and group. It creates the system group and user, sets ownership of the application directory, and configures ACLs to allow group write access for self-update functionality. The use of `groupadd`, `useradd`, `chown`, and `setfacl` is typical for such packages. The informational echo message about group membership is normal. There are no network requests, no obfuscated code, no execution of untrusted external content, and no deviation from expected packaging practices. All operations are confined to the package's own installation directory and system user/group management.
</details>
<evidence></evidence>
<summary>Standard post-install user/group setup, no malice.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed ffxiv-teamcraft.install. Status: SAFE -- Standard post-install user/group setup, no malice.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,014
  Completion Tokens: 2,574
  Total Tokens: 18,588
  Total Cost: $0.001875
  Execution Time: 120.89 seconds

Final Status: SAFE


No issues found.
