---
package: shelly
pkgver: 3.1.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 24225
completion_tokens: 2468
total_tokens: 26693
cost: 0.00235970812
execution_time: 47.14
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 469
upstream_named_files: 5
unpinned_sources: 0
injection_attempts: 0
date: 2026-08-31T19:05:40Z
file_verdicts:
  - file: com.shellyorg.shelly-notifications.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Safe, standard PKGBUILD with pinned checksums.
  - file: com.shellyorg.shelly.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: AUR metadata file, no executable code, standard packaging.
  - file: shellybuild.conf
    status: safe
    summary: Inert configuration template; no malicious content.
  - file: shelly-flatpak-integrate
    status: safe
    summary: Benign desktop-file integration script; no malicious behavior or injected code found.
---

Cloning https://aur.archlinux.org/shelly.git...
Cloned shelly
Analyzing shelly AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable definitions and function definitions. No code is executed at the top level or in a `pkgver()` function. The `source` array references a standard GitHub release tarball with provided SHA256 checksums, and local files. Fetching these sources via `makepkg --nobuild --nodeps --noprepare` is a standard and safe operation. No dangerous commands, obfuscated code, or unexpected network requests are present in the top-level scope. Therefore, running the requested commands poses no security risk.
</details>
<evidence></evidence>
<summary>Safe; no top-level or pkgver() code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe; no top-level or pkgver() code execution.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 5 file(s) in the downloaded sources (src/Shelly-ALPM-3.1.2/assets/shelly-shell-symbolic.svg, src/Shelly-ALPM-3.1.2/assets/shelly-updates-symbolic.svg, src/Shelly-ALPM-3.1.2/assets/shellylogo-tray.png and 2 more); they are upstream content and were not reviewed.
Reviewing the 6 file(s) in the AUR repository. The 469 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, PKGBUILD...
[0/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly-notifications.desktop...
LLM auditresponse for com.shellyorg.shelly-notifications.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Freedesktop.org .desktop entry file. It defines metadata for a notification service called "Shelly Notifications" that executes `/usr/bin/shelly-notifications`. There are no embedded commands, network requests, obfuscation, or any other indicators of malicious behavior. This is a normal application launcher configuration file.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly-notifications.desktop, com.shellyorg.shelly.desktop...
[1/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly.desktop...
+ Reviewed com.shellyorg.shelly-notifications.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices. All sources are downloaded from the project&#39;s own GitHub releases and are verified by SHA-256 checksums (none are skipped). The build process uses the project&#39;s Zig build system, and the install operations copy files into the package directory. No obfuscated code, unexpected network requests, or data exfiltration is present. The polkit policy and Flatpak integration script are standard for the application&#39;s functionality. There are no signs of supply-chain injection or malicious behavior.
</details>
<evidence></evidence>
<summary>Safe, standard PKGBUILD with pinned checksums.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, com.shellyorg.shelly.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Safe, standard PKGBUILD with pinned checksums.
[2/6] Reviewing .SRCINFO, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
LLM auditresponse for com.shellyorg.shelly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Shelly package manager. It defines the application name, icon, category, keywords, MIME type handlers, and desktop actions for Flatpak install/update/remove operations. There is no executable code, no network requests, no obfuscation, and no system modification beyond what a normal desktop entry specifies. The file contains only metadata and localized strings.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, com.shellyorg.shelly.desktop, shelly-flatpak-integrate, shellybuild.conf...
[3/6] Reviewing .SRCINFO, shelly-flatpak-integrate, shellybuild.conf...
+ Reviewed com.shellyorg.shelly.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file. It contains only package declarations, dependencies, source URLs, and checksums. All sources point to the project's official GitHub repository or appear to be auxiliary configuration/desktop files within the same package tree. Checksums are provided for all sources. There is no executable code, no obfuscation, no suspicious network requests, and no unexpected file operations. The content is consistent with normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>AUR metadata file, no executable code, standard packaging.</summary>
</security_assessment>

[4/6] Reviewing shelly-flatpak-integrate, shellybuild.conf...
+ Reviewed .SRCINFO. Status: SAFE -- AUR metadata file, no executable code, standard packaging.
LLM auditresponse for shellybuild.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `shellybuild.conf` is a configuration file for the `shelly` package's AUR builder. It contains only commented-out default settings for build options, packaging, and destination paths. There are no executable commands, network requests, obfuscation, or any code that could perform malicious actions. The file is inert and standard for a configuration template.
</details>
<evidence>

</evidence>
<summary>Inert configuration template; no malicious content.</summary>
</security_assessment>

[5/6] Reviewing shelly-flatpak-integrate...
+ Reviewed shellybuild.conf. Status: SAFE -- Inert configuration template; no malicious content.
LLM auditresponse for shelly-flatpak-integrate:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a Flatpak desktop integration helper: it copies Flatpak-provided `.desktop` files into the user's local applications directory and appends a standard `[Desktop Action ShellyManage]` entry that launches `/usr/bin/shelly-ui`. All file operations are confined to Flatpak export directories and `~/.local/share/applications`, which matches the stated purpose of adding a right-click action. There are no network requests, no encoded or obfuscated commands, no `eval` or `curl|bash`, and no access to sensitive files such as credentials or system configuration outside the application integration scope. The use of `sed` and `cat` here is ordinary desktop-entry manipulation rather than a supply-chain indicator.
</details>
<evidence>
</evidence>
<summary>
Benign desktop-file integration script; no malicious behavior or injected code found.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed shelly-flatpak-integrate. Status: SAFE -- Benign desktop-file integration script; no malicious behavior or injected code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,225
  Completion Tokens: 2,468
  Total Tokens: 26,693
  Total Cost: $0.002360
  Execution Time: 47.14 seconds

Final Status: SAFE


No issues found.
