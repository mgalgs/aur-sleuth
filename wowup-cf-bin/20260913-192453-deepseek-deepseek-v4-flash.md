---
package: wowup-cf-bin
pkgver: 2.23.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 14491
completion_tokens: 2017
total_tokens: 16508
cost: 0.00087660300
execution_time: 32.7
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-13T19:24:52Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package repository.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators.
  - file: WowUpCf.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: wowup-cf
    status: safe
    summary: Standard launcher script for a binary; no malicious activity.
---

Materializing wowup-cf-bin from local mirror...
Materialized wowup-cf-bin
Analyzing wowup-cf-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and array definitions in its global scope. No command substitutions, backticks, eval, exec, or any code that would execute during sourcing are present. The `prepare()`, `package()`, and other functions are defined but not invoked during `makepkg --printsrcinfo`. All content is standard packaging metadata. There is no malicious code in the global scope that could execute during this step.
</details>
<evidence></evidence>
<summary>No malicious code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It excludes all files except those explicitly needed in version control: the PKGBUILD, `.SRCINFO`, a desktop entry, a directory, and the `.gitignore` itself. There is no executable code, no network requests, no obfuscation, and no deviation from legitimate packaging practices. The file serves only to define which files are tracked by Git.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package repository.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD, WowUpCf.desktop...
[1/5] Reviewing .SRCINFO, PKGBUILD, WowUpCf.desktop...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package repository.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a binary application. It downloads a signed AppImage from the official GitHub releases page, provides hardcoded SHA-256 checksums for all sources (including the local files), and extracts the AppImage in `prepare()`. No obfuscated code, suspicious network requests, or system modifications beyond the expected installation into `/opt` and `/usr/bin` are present. The source references for the desktop file and the wrapper script (`wowup-cf`) are local files, which is normal for AUR packages. There is no evidence of supply-chain injection, exfiltration, or code execution from untrusted hosts.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, WowUpCf.desktop, wowup-cf...
[2/5] Reviewing .SRCINFO, WowUpCf.desktop, wowup-cf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators.
LLM auditresponse for WowUpCf.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .desktop file for the WowUp Cf application, a World of Warcraft addon updater. It contains only metadata fields (Name, Comment, Categories, MimeType, etc.) and the Exec line pointing to `/usr/bin/wowup-cf %U`. There is no executable script, no network requests, no obfuscated code, and no deviation from normal packaging practices. The file defines the application launcher and MIME type handlers for custom URI schemes (`wowup://` and `curseforge://`), which is expected for an application that integrates with external links. No evidence of malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[3/5] Reviewing .SRCINFO, wowup-cf...
+ Reviewed WowUpCf.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file for the `wowup-cf-bin` package. It contains no executable code, no network requests, no obfuscation, and no suspicious operations. All sources point to the project&#39;s official GitHub repository (releases and a raw license file), and each source has a valid SHA-256 checksum listed. The file follows normal AUR packaging conventions for a prebuilt binary package. There is no indication of any supply-chain attack or malicious content.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[4/5] Reviewing wowup-cf...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for wowup-cf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a minimal wrapper script that launches an application binary located at `/opt/wowup-cf/wowup-cf` with the provided arguments. It does not perform any network operations, download or execute code from untrusted sources, obfuscate commands, or manipulate files outside the application's installation directory. The script follows standard packaging practices for distributing pre-built binaries in `/opt`. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard launcher script for a binary; no malicious activity.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed wowup-cf. Status: SAFE -- Standard launcher script for a binary; no malicious activity.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,491
  Completion Tokens: 2,017
  Total Tokens: 16,508
  Total Cost: $0.000877
  Execution Time: 32.70 seconds

Final Status: SAFE


No issues found.
