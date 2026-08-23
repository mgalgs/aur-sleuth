---
package: stably-orca-bin
pkgver: 1.4.80
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 65e0c3f98e3e15c2f2b5d512e37cace17814cac6
prompt_tokens: 10243
completion_tokens: 2161
total_tokens: 12404
cost: 0.00131085
execution_time: 53.46
files_reviewed: 3
files_skipped: 0
date: 2026-06-19T07:37:00Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard .desktop file with no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard -bin PKGBUILD with pinned checksums, no suspicious behavior.
  - file: stably-orca.sh
    status: safe
    summary: Safe wrapper script, no malicious behavior detected.
---

Cloning https://aur.archlinux.org/stably-orca-bin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-u6s5hcsw...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-u6s5hcsw
Analyzing stably-orca-bin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-u6s5hcsw) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top‑level variable assignments (including the `source` array with an HTTPS URL from the project’s own GitHub releases and two local files) and function definitions (`prepare()`, `package()`). There are no command substitutions, backtick commands, or any executable code in the global scope that would run when the PKGBUILD is sourced. Neither `pkgver()` nor any other function is present that could execute during the sourcing step. The `prepare()` and `package()` functions are not executed by `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo` because of the `--nobuild` and `--noprepare` flags. The download of the AppImage from a standard upstream URL and the inclusion of SHA256 checksums are normal practices. No encoded or obfuscated data, no unexpected network destinations, and no commands that could exfiltrate data or execute untrusted code are present in the scope that will be evaluated.
</details>
<summary>Safe to fetch sources and source PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe to fetch sources and source PKGBUILD.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .desktop file that defines the launcher metadata for the Stably Orca application. It specifies the application name, generic name, comment, icon, categories, and MIME types. The `Exec` line runs `stably-orca %U`, which is a standard pattern for launching an application with optional URL arguments. There is no obfuscated code, no network requests, no file operations beyond normal desktop entry usage, and no evidence of malicious behavior. The file is perfectly safe.
</details>
<summary>Standard .desktop file with no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard .desktop file with no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package for a prebuilt Electron-based IDE. It downloads a specific AppImage release from the project's own GitHub Releases (pinned by version and checksum), extracts it, and copies the files into the package directory. All source URLs point to the upstream repository, and the checksums are fixed (not SKIP). No obfuscated code, suspicious network requests, or dangerous commands (eval, base64, curl into a pipe) are present. The `prepare()` and `package()` functions only handle AppImage extraction, permission fixes, and installation of desktop integration files—expected behavior for a binary package. There is no evidence of supply-chain attack, data exfiltration, or backdoor insertion.
</details>
<summary>Standard -bin PKGBUILD with pinned checksums, no suspicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard -bin PKGBUILD with pinned checksums, no suspicious behavior.
Reviewed all required files.
Deciding which files to review next...
Decided to review 1 additional files: stably-orca.sh
Reviewing additional files...
Reviewing additional files...
[0/1] Reviewing stably-orca.sh...
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a straightforward wrapper script for an Electron-based application (Stably AI Orca). It sets the `APPDIR` environment variable to `/opt/stably-orca` and then executes the contained `AppRun` binary with a `--disable-features=Vulkan` flag. The comments explain the rationale for both actions: avoiding AppRun's auto-detection issue with flag arguments and disabling Vulkan due to incompatibilities with the Wayland backend and NVIDIA rendering.

No malicious behavior is present: there are no network requests, downloads, code execution from untrusted sources, obfuscation, file exfiltration, or system tampering. The script performs only the minimal operations needed to launch the application with appropriate flags. This is a standard packaging practice for distributing pre‑compiled AppImage trees.
</details>
<summary>Safe wrapper script, no malicious behavior detected.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed stably-orca.sh. Status: SAFE -- Safe wrapper script, no malicious behavior detected.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,243
  Completion Tokens: 2,161
  Total Tokens: 12,404
  Total Cost: $0.001311
  Execution Time: 53.46 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-stably-orca-bin.txt
Final Status: SAFE


No issues found.
