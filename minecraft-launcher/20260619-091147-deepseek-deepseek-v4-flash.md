---
package: minecraft-launcher
pkgver: 2.1.3
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 9122
completion_tokens: 1293
total_tokens: 10415
cost: 0.00105372
execution_time: 46.46
files_reviewed: 3
files_skipped: 0
date: 2026-06-19T09:11:47Z
file_verdicts:
  - file: minecraft-launcher.desktop
    status: safe
    summary: Standard desktop entry file with no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with official sources, no suspicious content.
  - file: minecraft-launcher.sh
    status: safe
    summary: Legitimate workaround script, no malicious code detected.
---

Cloning https://aur.archlinux.org/minecraft-launcher.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-mwhxw0cn...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-mwhxw0cn
Analyzing minecraft-launcher AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-mwhxw0cn) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD has no `pkgver()` function and no top-level command substitutions or code that executes during sourcing. All `source` URLs point to official Mojang domains (`https://launcher.mojang.com/download/`), which are the legitimate upstream for the Minecraft Launcher. The `sha256sums` are pinned for all non-VCS sources. No dangerous commands, network requests to unexpected hosts, or obfuscated code are present in the global scope. The `package()` function cannot execute during the `--nobuild --nodeps --noprepare` operation. Therefore, fetching sources and printing SRCINFO is safe.
</details>
<summary>Standard PKGBUILD with official sources, no execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD with official sources, no execution risk.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing minecraft-launcher.desktop...
[0/2] Reviewing minecraft-launcher.desktop, PKGBUILD...
LLM auditresponse for minecraft-launcher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for launching the Minecraft Launcher. It contains only metadata (name, icon, executable path, categories). The `Exec=minecraft-launcher.sh` line calls a script that is part of the package – this is normal and expected. There are no network requests, encoded commands, or suspicious operations. No evidence of malicious or dangerous behavior.
</details>
<summary>Standard desktop entry file with no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed minecraft-launcher.desktop. Status: SAFE -- Standard desktop entry file with no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices. Source files are downloaded from the official Mojang domain (`launcher.mojang.com`), and each source has a valid `sha256sums` entry — no skipped checksums. The `package()` function only installs files (binary, shell script, icon, desktop entry) into appropriate system directories. There are no suspicious network requests, obfuscated code, dangerous commands (curl, wget, eval, base64), or any operations that deviate from normal packaging. No post-install hooks or system modifications beyond installing package files.

The file is clean and contains no evidence of malicious intent or supply-chain attack patterns.
</details>
<summary>Standard AUR PKGBUILD with official sources, no suspicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with official sources, no suspicious content.
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
This script performs a targeted cleanup of a known problematic file (`CEF_VERSION`) inside the application's own cache directory (`~/.minecraft/webcache2/`), then launches `minecraft-launcher`. The operation is described as a workaround for a reported bug (MCL-25003, KDE bug 501866) and is referenced from the AUR comments. There are no network requests, no obfuscated code, no dangerous commands (eval, base64, curl, wget), and no modification of system files or data outside the application's scope. This is a routine, transparent workaround script and does not contain any evidence of a supply-chain attack.
</details>
<summary>
Legitimate workaround script, no malicious code detected.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed minecraft-launcher.sh. Status: SAFE -- Legitimate workaround script, no malicious code detected.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,122
  Completion Tokens: 1,293
  Total Tokens: 10,415
  Total Cost: $0.001054
  Execution Time: 46.46 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-minecraft-launcher.txt
Final Status: SAFE


No issues found.
