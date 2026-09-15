---
package: ffxiv-teamcraft
pkgver: 11.4.31
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 15854
completion_tokens: 3232
total_tokens: 19086
cost: 0.00180597256
execution_time: 41.58
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-14T19:09:47Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Innocuous .gitignore file ignoring an AppImage.
  - file: FFXIV-Teamcraft.desktop
    status: safe
    summary: Standard desktop entry, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard packaging, no security issues found.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no security concerns.
  - file: ffxiv-teamcraft
    status: safe
    summary: Standard AppImage launcher with no suspicious behavior.
  - file: ffxiv-teamcraft.install
    status: safe
    summary: "Safe packaging script: creates app user/group, sets directory ownership and ACLs."
---

Materializing ffxiv-teamcraft from local mirror...
Materialized ffxiv-teamcraft
Analyzing ffxiv-teamcraft AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions (pkgname, pkgver, source, checksums, etc.) and a package() function. No commands or command substitutions execute at the global scope. The source array uses a variable expansion for pkgver, which is normal. There is no obfuscated code, no eval, no network requests, and no file operations outside of function bodies. Running `makepkg --printsrcinfo` only sources the top-level scope and does not execute pkgver(), prepare(), build(), or package()—so no malicious code can run during this step.
</details>
<evidence></evidence>
<summary>No top-level malicious code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; safe to parse.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, FFXIV-Teamcraft.desktop...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` that lists a single AppImage filename to be ignored by version control. No commands, network operations, or any other code are present. This is a routine packaging file with no security implications.
</details>
<evidence>
</evidence>
<summary>Innocuous .gitignore file ignoring an AppImage.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, FFXIV-Teamcraft.desktop...
+ Reviewed .gitignore. Status: SAFE -- Innocuous .gitignore file ignoring an AppImage.
[1/6] Reviewing .SRCINFO, FFXIV-Teamcraft.desktop, PKGBUILD...
LLM auditresponse for FFXIV-Teamcraft.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file for launching an application. It contains no executable code, network requests, obfuscation, or suspicious operations. All fields are typical for a desktop launcher. The Icon entry includes a numeric prefix `321E_`, which is unconventional but not indicative of malice—it likely corresponds to the icon file name used by the package. The Exec path `/usr/bin/ffxiv-teamcraft` points to the expected binary location. No security concerns.
</details>
<evidence></evidence>
<summary>Standard desktop entry, no malicious content.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, FFXIV-Teamcraft.desktop, PKGBUILD, ffxiv-teamcraft...
[2/6] Reviewing .SRCINFO, PKGBUILD, ffxiv-teamcraft...
+ Reviewed FFXIV-Teamcraft.desktop. Status: SAFE -- Standard desktop entry, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. It downloads the official AppImage from the project's own GitHub releases, uses pinned SHA1 checksums, and installs the binary, a launcher script, and a desktop file into the appropriate directories. There are no obfuscated commands, unexpected network requests, or operations that deviate from the stated purpose of the package. The source URLs and checksums are verified, and the install steps are routine.</details>
<evidence></evidence>
<summary>Standard packaging, no security issues found.</summary>
</security_assessment>

[3/6] Reviewing .SRCINFO, ffxiv-teamcraft...
+ Reviewed PKGBUILD. Status: SAFE -- Standard packaging, no security issues found.
[3/6] Reviewing .SRCINFO, ffxiv-teamcraft, ffxiv-teamcraft.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata-only declaration for the ffxiv-teamcraft AUR package. It lists three source files: an AppImage hosted on the official GitHub releases page, a local file named &quot;ffxiv-teamcraft&quot;, and a desktop file. All three have SHA1 checksums provided. There is a reference to an install script (&quot;ffxiv-teamcraft.install&quot;). No executable code, network requests, obfuscation, or suspicious directives are present in this file. The sources point to the project's own upstream repository, which is expected and normal. The file conforms to standard Arch Linux packaging conventions and contains no evidence of supply-chain tampering or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard package metadata, no security concerns.</summary>
</security_assessment>

[4/6] Reviewing ffxiv-teamcraft, ffxiv-teamcraft.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no security concerns.
LLM auditresponse for ffxiv-teamcraft:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a minimal wrapper script for launching an AppImage application. It checks whether the target AppImage is present and executable, sets the executable flag if needed (relying on the group-based write ACL already in place), and then executes the AppImage with the provided arguments. There are no network connections, obfuscated code, eval, base64 decoding, or any commands beyond `chmod` and `exec`. The script does exactly what a normal application launcher should do and contains no behavior that deviates from the stated purpose of the package. There is no evidence of genuine malice — no exfiltration, no backdoor, no downloading of untrusted code, and no manipulation of files outside the application’s own install path.
</details>
<evidence>
</evidence>
<summary>Standard AppImage launcher with no suspicious behavior.</summary>
</security_assessment>

[5/6] Reviewing ffxiv-teamcraft.install...
+ Reviewed ffxiv-teamcraft. Status: SAFE -- Standard AppImage launcher with no suspicious behavior.
LLM auditresponse for ffxiv-teamcraft.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script. It creates a dedicated system group and user for the application, sets ownership of the application directory, and applies ACLs so members of the `teamcraft` group can write to `/opt/ffxiv-teamcraft` to support the application's self-update feature. It then prints instructions telling the user how to add themselves to the group.

No malicious behavior is present. There are no network requests, no downloads, no obfuscated code, no execution of untrusted content, and no access to sensitive files outside the package's own directory. The group/ACL changes are scoped to `/opt/ffxiv-teamcraft` and are consistent with the stated purpose of enabling group-based updates. This is a normal packaging practice rather than a supply-chain risk.
</details>
<evidence>
</evidence>
<summary>
Safe packaging script: creates app user/group, sets directory ownership and ACLs.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed ffxiv-teamcraft.install. Status: SAFE -- Safe packaging script: creates app user/group, sets directory ownership and ACLs.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,854
  Completion Tokens: 3,232
  Total Tokens: 19,086
  Total Cost: $0.001806
  Execution Time: 41.58 seconds

Final Status: SAFE


No issues found.
