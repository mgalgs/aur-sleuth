---
package: ffxiv-teamcraft
pkgver: 11.4.31
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 16091
completion_tokens: 3847
total_tokens: 19938
cost: 0.00177816660
execution_time: 83.42
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-14T23:14:38Z
file_verdicts:
  - file: FFXIV-Teamcraft.desktop
    status: safe
    summary: Standard desktop entry file; no malicious content or suspicious behavior found.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no malicious content.
  - file: ffxiv-teamcraft
    status: safe
    summary: Benign AppImage launcher; no suspicious or malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no executable code or threats.
  - file: ffxiv-teamcraft.install
    status: safe
    summary: "Standard AUR install script: creates group/user, chowns app dir; no malicious behavior."
  - file: PKGBUILD
    status: safe
    summary: Standard AppImage packaging from official upstream with checksums; no malicious behavior found.
---

Materializing ffxiv-teamcraft from local mirror...
Materialized ffxiv-teamcraft
Analyzing ffxiv-teamcraft AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and a `package()` function. No top-level command substitutions, `eval`, or dangerous operations exist. The `source` array uses a variable reference (`${pkgver}`) but that is a normal packaging pattern and does not execute any external commands during sourcing. The `package()` function is defined but not executed during `makepkg --printsrcinfo`. No suspicious or malicious code is present at global scope.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code present.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code present.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, FFXIV-Teamcraft.desktop...
LLM auditresponse for FFXIV-Teamcraft.desktop:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org desktop entry file for launching FFXIV Teamcraft. It contains only metadata fields such as Name, Exec, Type, Terminal, Icon, and StartupWMClass. The Exec line points to the packaged binary path `/usr/bin/ffxiv-teamcraft`, which is the normal installed location for the application. There is no suspicious command, network access, obfuscation, file manipulation, or any deviation from routine packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry file; no malicious content or suspicious behavior found.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .gitignore...
+ Reviewed FFXIV-Teamcraft.desktop. Status: SAFE -- Standard desktop entry file; no malicious content or suspicious behavior found.
[1/6] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` containing a single entry to ignore the packaged AppImage binary. There is no executable code, no network requests, no obfuscation, and no instructions to perform any action. This is a routine packaging file and poses no security threat.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no malicious content.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .gitignore, PKGBUILD, ffxiv-teamcraft...
[2/6] Reviewing .SRCINFO, PKGBUILD, ffxiv-teamcraft...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no malicious content.
LLM auditresponse for ffxiv-teamcraft:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple launcher script for the FFXIV-Teamcraft AppImage. It checks whether the target AppImage exists and lacks the executable bit, conditionally runs `chmod +x` on that exact package path, then executes the AppImage with the user&apos;s arguments. There are no network operations, no encoded or obfuscated commands, no file operations outside the package&apos;s own AppImage, and no execution of remote or unexpected content. The behavior is consistent with a standard AUR wrapper script for launching an AppImage.
</details>
<evidence>
</evidence>
<summary>
Benign AppImage launcher; no suspicious or malicious behavior found.
</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD, ffxiv-teamcraft, ffxiv-teamcraft.install...
[3/6] Reviewing .SRCINFO, PKGBUILD, ffxiv-teamcraft.install...
+ Reviewed ffxiv-teamcraft. Status: SAFE -- Benign AppImage launcher; no suspicious or malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file used by the Arch build system. It declares the package name, version, dependencies, sources, and checksums. All sources originate from the official upstream GitHub releases, and the checksums are provided as explicit SHA1 hashes (not SKIP). There is no executable code present in this file—it only describes the package structure. No suspicious URLs, obfuscated content, or malicious patterns are evident. The file adheres to standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no executable code or threats.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, ffxiv-teamcraft.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no executable code or threats.
LLM auditresponse for ffxiv-teamcraft.install:
 <security_assessment>
<decision>SAFE</decision>
<details>
This install script performs standard packaging operations for an application installed to `/opt/ffxiv-teamcraft`: it creates a dedicated system group and user, sets ownership on the application directory, and uses `setfacl` to grant that group read/write/execute permissions on the directory. This is normal and consistent with the package&apos;s stated purpose of enabling the application to self-update inside its own installation directory.

There is no evidence of malicious behavior. The script makes no network requests, downloads no external code, contains no obfuscated or encoded commands, and does not access sensitive system files or user data outside the application&apos;s own directory. The `setfacl` rules are scoped to `/opt/ffxiv-teamcraft` and require membership in the `teamcraft` group, which the script clearly communicates to the user. The printed `gpasswd` instruction is benign and serves only to explain how to join the group.

The use of `chown -R` and recursive ACLs is a hygiene consideration rather than a threat: they make the application directory writable by the dedicated service group. This is intentional functionality for self-update support, not an injection of malicious code. The script deviates from no standard packaging practice in a security-relevant way.
</details>
<evidence>
</evidence>
<summary>
Standard AUR install script: creates group/user, chowns app dir; no malicious behavior.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed ffxiv-teamcraft.install. Status: SAFE -- Standard AUR install script: creates group/user, chowns app dir; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practice for an AppImage-based application. It downloads the FFXIV-Teamcraft AppImage from the project's official GitHub Releases URL with a pinned version, installs the binary and launcher into standard package paths, and includes checksums for all sources. There is no evidence of obfuscated code, no `curl|bash`, no unexpected network operations during build/install, and no writes outside `$pkgdir`.

The only minor note is the use of mode `775` for the installed files instead of the more common `755`. This is a permissions hygiene concern, not evidence of a supply-chain attack. The source URLs and checksum pinning match the upstream project, and nothing in the packaging steps deviates from normal behavior.
</details>
<evidence></evidence>
<summary>Standard AppImage packaging from official upstream with checksums; no malicious behavior found.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AppImage packaging from official upstream with checksums; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,091
  Completion Tokens: 3,847
  Total Tokens: 19,938
  Total Cost: $0.001778
  Execution Time: 83.42 seconds

Final Status: SAFE


No issues found.
