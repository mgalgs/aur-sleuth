---
package: ffxiv-teamcraft
pkgver: 11.4.32
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16185
completion_tokens: 7222
total_tokens: 23407
cost: 0.002787239
execution_time: 57.77
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-02T08:05:56Z
file_verdicts:
  - file: FFXIV-Teamcraft.desktop
    status: safe
    summary: Standard .desktop file with no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, safe.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no suspicious behavior.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore excluding AppImage binaries.
  - file: ffxiv-teamcraft
    status: safe
    summary: Routine AppImage launcher, no suspicious behavior.
  - file: ffxiv-teamcraft.install
    status: safe
    summary: Legitimate post-installation script for application setup.
---

Materializing ffxiv-teamcraft from local mirror...
Materialized ffxiv-teamcraft
Analyzing ffxiv-teamcraft AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD contains only standard variable definitions (pkgname, pkgver, arch, license, url, source), checksum arrays, and a `package()` function declaration in its global scope. No command substitutions, `eval` statements, network calls (e.g., `curl`, `wget`), file operations, or obfuscated code are present at the top level that would execute during `makepkg --printsrcinfo`. The `package()` function is defined but not invoked by this command, so it is out of scope for this safety gate. Therefore, running the command is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code found.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, FFXIV-Teamcraft.desktop...
LLM auditresponse for FFXIV-Teamcraft.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Linux desktop entry file (`.desktop`) used to define an application launcher in a desktop environment. It contains only metadata fields such as `Name`, `Exec`, `Type`, and `Icon`. The `Exec` line points to `/usr/bin/ffxiv-teamcraft`, which is a normal path for a packaged binary. There are no executable commands, no network access, no obfuscated content, and no operations that modify the system or exfiltrate data. The file adheres to the expected format for a desktop entry and presents no security concerns.
</details>
<evidence>
</evidence>
<summary>Standard .desktop file with no security issues.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, FFXIV-Teamcraft.desktop, PKGBUILD...
[1/6] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed FFXIV-Teamcraft.desktop. Status: SAFE -- Standard .desktop file with no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .SRCINFO metadata file for the ffxiv-teamcraft AUR package. It contains only declarative key-value pairs: package name, description, version, upstream URL, source filenames with checksums, and reference to an install script. There is no embedded executable code, no network requests to unexpected hosts, no obfuscation, and no system modification directives. The sources listed (a GitHub release AppImage, a local `ffxiv-teamcraft` source directory, and a `.desktop` file) are all consistent with normal packaging practices. The provided SHA1 checksums indicate integrity checking, not bypass. No indicators of supply-chain malice are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, safe.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .gitignore, PKGBUILD, ffxiv-teamcraft...
[2/6] Reviewing .gitignore, PKGBUILD, ffxiv-teamcraft...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, safe.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. All source files are fetched from the official upstream GitHub repository for ffxiv-teamcraft, and SHA1 checksums are provided to verify integrity. The `package()` function only performs routine installation steps: placing the wrapper script, AppImage binary, and desktop file into their expected directories. No use of dangerous commands (eval, curl, wget, base64 decoding, etc.) or attempts to fetch code from untrusted hosts. No obfuscation, encoded strings, or unexpected file operations are present. The file exhibits no supply-chain red flags.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no suspicious behavior.</summary>
</security_assessment>

[3/6] Reviewing .gitignore, ffxiv-teamcraft...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no suspicious behavior.
[3/6] Reviewing .gitignore, ffxiv-teamcraft, ffxiv-teamcraft.install...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file. It contains a single glob pattern instructing Git to ignore any file matching `FFXIV-Teamcraft*.AppImage` (i.e., AppImage binaries of the application). No executable code, network requests, obfuscation, or system modifications are present. This is completely normal behavior for an AUR package builder who does not want to accidentally commit large application binaries into the version control repository.
</details>
<evidence></evidence>
<summary>Standard .gitignore excluding AppImage binaries.</summary>
</security_assessment>

[4/6] Reviewing ffxiv-teamcraft, ffxiv-teamcraft.install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore excluding AppImage binaries.
LLM auditresponse for ffxiv-teamcraft:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard wrapper for launching an AppImage. It checks whether the AppImage binary at the expected path has its executable flag set, and sets it if needed (relying on group-based ACLs for permission). It then executes the application with `exec`, passing through any user-supplied arguments. There is no network access, no obfuscation, no data exfiltration, and no modification of files outside the package's own installation path. The behavior is transparent and routine for distributing pre-built AppImages in the AUR.
</details>
<evidence></evidence>
<summary>Routine AppImage launcher, no suspicious behavior.</summary>
</security_assessment>

[5/6] Reviewing ffxiv-teamcraft.install...
+ Reviewed ffxiv-teamcraft. Status: SAFE -- Routine AppImage launcher, no suspicious behavior.
LLM auditresponse for ffxiv-teamcraft.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard post-installation script for the ffxiv-teamcraft package. It creates a dedicated system user and group, sets ownership, and configures ACLs to allow group write permissions for the application's self-update functionality. There are no network requests, no execution of external code, no obfuscation, and no deviations from expected package maintainer practices. While the ACL configuration grants broad permissions, it is intentional to support the application's own update mechanism and is not evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Legitimate post-installation script for application setup.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed ffxiv-teamcraft.install. Status: SAFE -- Legitimate post-installation script for application setup.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,185
  Completion Tokens: 7,222
  Total Tokens: 23,407
  Total Cost: $0.002787
  Execution Time: 57.77 seconds

Final Status: SAFE


No issues found.
