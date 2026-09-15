---
package: ffxiv-teamcraft
pkgver: 11.4.31
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 15773
completion_tokens: 2568
total_tokens: 18341
cost: 0.001852662854
execution_time: 57.9
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-15T03:14:35Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no security concerns.
  - file: FFXIV-Teamcraft.desktop
    status: safe
    summary: Standard .desktop file, no security concerns.
  - file: ffxiv-teamcraft
    status: safe
    summary: Standard AppImage launcher script, no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned upstream AppImage; no malicious indicators found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious code.
  - file: ffxiv-teamcraft.install
    status: safe
    summary: Standard package install script; no malicious behavior or suspicious operations found.
---

Materializing ffxiv-teamcraft from local mirror...
Materialized ffxiv-teamcraft
Analyzing ffxiv-teamcraft AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard variable definitions and a function declaration for `package()`. No top-level code executes any dangerous operations such as network requests, command substitution with payloads, or data exfiltration. `makepkg --printsrcinfo` will safely parse these declarations without executing any untrusted instructions. The install script referenced is only used later during package installation, not during metadata generation.
</details>
<evidence></evidence>
<summary>No dangerous top-level code in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code in PKGBUILD.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, FFXIV-Teamcraft.desktop...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file that lists a single pattern to ignore an AppImage file. No executable code, no network requests, no obfuscation, and no deviation from expected packaging practices. This is benign.
</details>
<evidence></evidence>
<summary>Standard gitignore file, no security concerns.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, FFXIV-Teamcraft.desktop, PKGBUILD...
[1/6] Reviewing .SRCINFO, FFXIV-Teamcraft.desktop, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no security concerns.
LLM auditresponse for FFXIV-Teamcraft.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.desktop` entry file used to integrate the application into the desktop environment. It defines metadata (name, icon, category) and a single `Exec` line that runs the binary `/usr/bin/ffxiv-teamcraft`. There are no embedded commands, no network requests, no file operations beyond normal launcher behavior, and no obfuscated code. The content matches typical packaging practice for providing a desktop shortcut. No evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security concerns.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, FFXIV-Teamcraft.desktop, PKGBUILD, ffxiv-teamcraft...
[2/6] Reviewing .SRCINFO, PKGBUILD, ffxiv-teamcraft...
+ Reviewed FFXIV-Teamcraft.desktop. Status: SAFE -- Standard .desktop file, no security concerns.
LLM auditresponse for ffxiv-teamcraft:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard launcher for an AppImage. It checks whether the target AppImage file exists and is not executable, and if so, makes it executable. Then it executes the AppImage with any provided arguments. There are no suspicious network requests, obfuscated code, or dangerous commands. All operations are confined to the package&#39;s own file and are routine for launching an application.
</details>
<evidence>
</evidence>
<summary>Standard AppImage launcher script, no malicious behavior.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD, ffxiv-teamcraft, ffxiv-teamcraft.install...
[3/6] Reviewing .SRCINFO, PKGBUILD, ffxiv-teamcraft.install...
+ Reviewed ffxiv-teamcraft. Status: SAFE -- Standard AppImage launcher script, no malicious behavior.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR package metadata file. It declares an AppImage source downloaded from the project's own official GitHub releases, a desktop entry file, and an install script, each with a pinned SHA1 checksum. There are no suspicious commands, network redirects, obfuscated content, or unexpected file operations. The presence of an `install` script is normal, and no executable or downloaded code is invoked from this metadata file itself. The checksums are present and not set to SKIP, though AppImage binary reproducibility and trust ultimately depend on upstream release integrity; this is a normal packaging practice, not malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned upstream AppImage; no malicious indicators found.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, ffxiv-teamcraft.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned upstream AppImage; no malicious indicators found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for distributing an AppImage application. All sources are fetched from the official GitHub releases page using HTTPS. The package function installs files to appropriate system directories without executing any untrusted code or performing network requests at build time. Checksums are provided (SHA1, which is acceptable though not the strongest). There is no evidence of obfuscated commands, backdoors, data exfiltration, or deviations from expected packaging behavior.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious code.</summary>
</security_assessment>

[5/6] Reviewing ffxiv-teamcraft.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious code.
LLM auditresponse for ffxiv-teamcraft.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script. It creates a dedicated system group and user for the application, sets ownership on the application directory under `/opt/ffxiv-teamcraft`, and applies group ACLs so members of the `teamcraft` group can write to that directory. The printed message simply informs the user how to add themselves to the group for the application's self-update functionality.

All operations are scoped to the package's own application directory or to the dedicated service account/group. There are no network requests, downloads, obfuscated commands, backdoors, credential theft, or modifications to unrelated system files. The `setfacl` command is intentional to enable group write access for self-updates and is not malicious. `post_upgrade` simply reuses the same standard setup routine.
</details>
<evidence>
</evidence>
<summary>
Standard package install script; no malicious behavior or suspicious operations found.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed ffxiv-teamcraft.install. Status: SAFE -- Standard package install script; no malicious behavior or suspicious operations found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,773
  Completion Tokens: 2,568
  Total Tokens: 18,341
  Total Cost: $0.001853
  Execution Time: 57.90 seconds

Final Status: SAFE


No issues found.
