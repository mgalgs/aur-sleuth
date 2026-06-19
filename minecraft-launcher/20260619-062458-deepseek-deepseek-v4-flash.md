---
package: minecraft-launcher
pkgver: 2.1.3
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 5790943c1b39200ecdf449522971aa7db90ade4a
prompt_tokens: 9122
completion_tokens: 1365
total_tokens: 10487
cost: 0.00106668
execution_time: 23.45
files_reviewed: 3
files_skipped: 0
date: 2026-06-19T06:24:58Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with valid checksums from official source.
  - file: minecraft-launcher.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: minecraft-launcher.sh
    status: safe
    summary: Legitimate wrapper script; no malicious behavior detected.
---

Cloning https://aur.archlinux.org/minecraft-launcher.git to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-czjmp1w6...
Cloned repository to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-czjmp1w6
Analyzing minecraft-launcher AUR package (working in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-czjmp1w6) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines standard packaging metadata and a `source` array pointing to official Mojang URLs (`launcher.mojang.com`) and local files. All sources have valid SHA-256 checksums. There is no `pkgver()` function, and the global scope contains no command substitutions, `eval`, `curl`, `wget`, or any other code that could execute during sourcing. The `package()` function is not run during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. No malicious or suspicious behavior is present.
</details>
<summary>Standard PKGBUILD with safe sources and no executable code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD with safe sources and no executable code in global scope.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, minecraft-launcher.desktop...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. All sources are fetched from the official Mojang domain (`launcher.mojang.com`), which is the expected upstream for this package. Each source has a valid SHA256 checksum, ensuring integrity. The `package()` function only performs standard file installations into the correct directories. There are no unusual commands, obfuscated code, unexpected network requests, or operations that deviate from normal packaging. No signs of malicious injection or supply chain compromise.
</details>
<summary>Standard PKGBUILD with valid checksums from official source.</summary>
</security_assessment>

[1/2] Reviewing minecraft-launcher.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with valid checksums from official source.
LLM auditresponse for minecraft-launcher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Minecraft Launcher. It contains only metadata fields (Type, Name, GenericName, Comment, Exec, Icon, Terminal, Categories, StartupNotify) and no executable code, network requests, or obfuscated content. The `Exec` line points to a script (`minecraft-launcher.sh`) which is expected to be provided by the package. There is no evidence of malicious behavior.
</details>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed minecraft-launcher.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
Reviewed all required files.
Deciding which files to review next...
Decided to review 1 additional files: minecraft-launcher.sh
Reviewing additional files...
Reviewing additional files...
[0/1] Reviewing minecraft-launcher.sh...
LLM auditresponse for minecraft-launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a simple wrapper that removes a known problematic cache file (`CEF_VERSION`) from the user's Minecraft data directory before launching the real `minecraft-launcher` binary. This is a documented workaround for a bug in the Minecraft launcher (referenced in the comments). There are no network requests, obfuscated code, dangerous commands, or any operations outside the application's own data scope. The script performs only a single file deletion (within `~/.minecraft/webcache2/`) and then executes the legitimate launcher binary. This is standard AUR packaging practice to address upstream issues.
</details>
<summary>
Legitimate wrapper script; no malicious behavior detected.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed minecraft-launcher.sh. Status: SAFE -- Legitimate wrapper script; no malicious behavior detected.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,122
  Completion Tokens: 1,365
  Total Tokens: 10,487
  Total Cost: $0.001067
  Execution Time: 23.45 seconds
Full audit report can be found in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-minecraft-launcher.txt
Final Status: SAFE


No issues found.
