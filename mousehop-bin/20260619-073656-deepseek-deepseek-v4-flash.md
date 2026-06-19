---
package: mousehop-bin
pkgver: 0.14.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 65e0c3f98e3e15c2f2b5d512e37cace17814cac6
prompt_tokens: 19109
completion_tokens: 1504
total_tokens: 20613
cost: 0.00199053
execution_time: 49.64
files_reviewed: 4
files_skipped: 0
date: 2026-06-19T07:36:56Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package for prebuilt binary release.
  - file: src/mousehop-0.14.2-x86_64/NOTICE
    status: safe
    summary: Plain text notice, no security concerns.
  - file: src/mousehop-0.14.2-x86_64/LICENSE
    status: safe
    summary: Standard GPLv3 license text, no security concerns.
  - file: src/mousehop-0.14.2-x86_64/com.mousehop.Mousehop.desktop
    status: safe
    summary: Standard desktop entry file. No threats.
---

Cloning https://aur.archlinux.org/mousehop-bin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-9r_ioiwe...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-9r_ioiwe
Analyzing mousehop-bin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-9r_ioiwe) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD contains no top-level or `pkgver()` code execution beyond standard variable assignments and string definitions. The `source` arrays point to GitHub release tarballs over HTTPS, which is the expected upstream for this package. No commands are run during sourcing that would download or execute untrusted payloads, nor are there any obfuscated or potentially dangerous constructs. The `package()` function is defined but will not be executed during the `--nobuild --noprepare` scope. Running `makepkg --nobuild --nodeps --noprepare` to fetch sources and parse the PKGBUILD is safe.
</details>
<summary>
Standard PKGBUILD with no top-level execution risks.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD with no top-level execution risks.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/1] Reviewing PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package file for a prebuilt binary release of the `mousehop` project. It fetches tarballs from the project's official GitHub releases URL (`https://github.com/jondkinney/$_pkgname/releases/download/v$pkgver/...`), which is the expected upstream source. The `package()` function performs routine installation of the binary, desktop file, icon, and license files from the tarball. No obfuscated code, no unexpected network connections (beyond the declared source downloads), no dangerous commands like `eval`, `curl`, `wget` in non-standard contexts, and no attempts to modify system files outside the package's scope. The checksums are provided (not `SKIP`) and are pinned to a specific release. There is no evidence of malicious or supply-chain attack behavior.
</details>
<summary>Standard AUR package for prebuilt binary release.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package for prebuilt binary release.
Reviewed all required files.
Deciding which files to review next...
Decided to review 3 additional files: src/mousehop-0.14.2-x86_64/com.mousehop.Mousehop.desktop, src/mousehop-0.14.2-x86_64/LICENSE, src/mousehop-0.14.2-x86_64/NOTICE
Reviewing additional files...
Reviewing additional files...
[0/3] Reviewing src/mousehop-0.14.2-x86_64/com.mousehop.Mousehop.desktop...
[0/3] Reviewing src/mousehop-0.14.2-x86_64/com.mousehop.Mousehop.desktop, src/mousehop-0.14.2-x86_64/LICENSE...
[0/3] Reviewing src/mousehop-0.14.2-x86_64/com.mousehop.Mousehop.desktop, src/mousehop-0.14.2-x86_64/LICENSE, src/mousehop-0.14.2-x86_64/NOTICE...
LLM auditresponse for NOTICE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain text notice containing licensing and attribution information for the Mousehop project, which is a fork of lan-mouse. It contains no executable code, no shell commands, no network operations, no obfuscated content, and no instructions that could be interpreted as a supply-chain attack. It is a standard documentation file included in many open-source packages. No security issues are present.
</details>
<summary>
Plain text notice, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing src/mousehop-0.14.2-x86_64/com.mousehop.Mousehop.desktop, src/mousehop-0.14.2-x86_64/LICENSE...
+ Reviewed src/mousehop-0.14.2-x86_64/NOTICE. Status: SAFE -- Plain text notice, no security concerns.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard copy of the GNU General Public License version 3. It is a widely-used open source software license document, not executable code or a build/installation script. The file contains no commands, no network requests, no file operations, and no logic that could pose a security threat. It is purely a legal text file distributed with many software packages.
</details>
<summary>Standard GPLv3 license text, no security concerns.</summary>
</security_assessment>

[2/3] Reviewing src/mousehop-0.14.2-x86_64/com.mousehop.Mousehop.desktop...
+ Reviewed src/mousehop-0.14.2-x86_64/LICENSE. Status: SAFE -- Standard GPLv3 license text, no security concerns.
LLM auditresponse for com.mousehop.Mousehop.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .desktop file used by Linux desktop environments to register an application in the system menu. It contains only metadata fields (Name, Comment, Categories, Icon, Exec, etc.) that describe the application's purpose and how to launch it. The sole executable action is `Exec=mousehop`, which simply launches the application binary. There are no commands, scripts, network requests, encoded content, or any other attack vector present. This file is purely declarative and poses no security risk.
</details>
<summary>Standard desktop entry file. No threats.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed src/mousehop-0.14.2-x86_64/com.mousehop.Mousehop.desktop. Status: SAFE -- Standard desktop entry file. No threats.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,109
  Completion Tokens: 1,504
  Total Tokens: 20,613
  Total Cost: $0.001991
  Execution Time: 49.64 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-mousehop-bin.txt
Final Status: SAFE


No issues found.
