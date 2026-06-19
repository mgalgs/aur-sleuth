---
package: github-desktop-plus-bin
pkgver: 3.5.13.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 9838
completion_tokens: 1900
total_tokens: 11738
cost: 0.00122742
execution_time: 89.58
files_reviewed: 3
files_skipped: 0
date: 2026-06-19T08:38:40Z
file_verdicts:
  - file: launch-app.sh
    status: safe
    summary: Standard launcher script, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package with no evidence of malicious behavior.
  - file: github-desktop-plus.desktop
    status: safe
    summary: Standard desktop entry file with no security issues.
---

Cloning https://aur.archlinux.org/github-desktop-plus-bin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-zq949ntm...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-zq949ntm
Analyzing github-desktop-plus-bin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-zq949ntm) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and function definitions in its top-level scope. No `pkgver()` function exists. The `source` array includes two local files (`.desktop` and `launch-app.sh`) plus architecture-specific `.deb` URLs pointing to the project's own GitHub releases. No command substitutions, `eval`, or other executable code is present at parse-time. Fetching the sources (git/http downloads) and sourcing the file will not execute any malicious payload. There are no hidden commands or obfuscated payloads.
</details>
<summary>No dangerous code in top-level scope; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No dangerous code in top-level scope; safe to fetch sources.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, launch-app.sh...
LLM auditresponse for launch-app.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher that reads optional user configuration flags from `~/.config/github-desktop-plus-flags.conf` (or a fallback `electron-flags.conf`) and passes them to the main binary at `/opt/github-desktop-plus/github-desktop-plus`. It performs no network operations, no downloads, no obfuscated code execution, and no unexpected file modifications. The only file access is reading user-owned config files, which is normal and expected for a launcher script. There is no evidence of supply-chain attack or malicious behavior.
</details>
<summary>Standard launcher script, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed launch-app.sh. Status: SAFE -- Standard launcher script, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR binary package that downloads a pre-built `.deb` file from the project's official GitHub releases (using a pinned version tag `v${pkgver}`) and extracts it for installation. All source files have valid SHA-256 checksums. The `package()` function performs only expected operations: extracting the archive, moving files to `/opt/` and `/usr/bin/`, installing a custom desktop file, and creating a symlink for the CLI tool. There are no obfuscated commands, no unexpected network requests, no exfiltration of data, and no execution of untrusted code outside the upstream release. The `launch-app.sh` is a plain script shipped as part of the package source, intended to launch the application. This file is consistent with normal packaging practices and poses no supply-chain risk.
</details>
<summary>Standard AUR package with no evidence of malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package with no evidence of malicious behavior.
Reviewed all required files.
Deciding which files to review next...
Decided to review 1 additional files: github-desktop-plus.desktop
Reviewing additional files...
Reviewing additional files...
[0/1] Reviewing github-desktop-plus.desktop...
LLM auditresponse for github-desktop-plus.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.desktop` entry file. It contains only metadata fields (Name, Comment, Exec, Icon, Categories, MimeType, Keywords) and a localization comment for Spanish and Basque. There are no executable commands, network requests, obfuscated code, or file operations. The `Exec` line points to `/usr/bin/github-desktop-plus` with the URI handler `%U`, which is normal for an application that handles links. No malicious behavior is present.
</details>
<summary>Standard desktop entry file with no security issues.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed github-desktop-plus.desktop. Status: SAFE -- Standard desktop entry file with no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,838
  Completion Tokens: 1,900
  Total Tokens: 11,738
  Total Cost: $0.001227
  Execution Time: 89.58 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-github-desktop-plus-bin.txt
Final Status: SAFE


No issues found.
