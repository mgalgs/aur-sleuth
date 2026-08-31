---
package: shelly-flatpak-backend
pkgbase: shelly
pkgver: 3.1.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 24260
completion_tokens: 2883
total_tokens: 27143
cost: 0.00242970392
execution_time: 69.8
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 469
upstream_named_files: 5
unpinned_sources: 0
injection_attempts: 0
date: 2026-08-31T19:06:02Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums and no malicious behavior detected.
  - file: com.shellyorg.shelly.desktop
    status: safe
    summary: Standard desktop entry file, no security concerns.
  - file: shellybuild.conf
    status: safe
    summary: Inert configuration template, no security concerns.
  - file: shelly-flatpak-integrate
    status: safe
    summary: Standard desktop integration script, no security issues.
  - file: com.shellyorg.shelly-notifications.desktop
    status: safe
    summary: Standard .desktop file with no malicious content.
---

shelly-flatpak-backend is built from shelly
Cloning https://aur.archlinux.org/shelly.git...
Cloned shelly-flatpak-backend
Analyzing shelly-flatpak-backend AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no malicious code in its top-level scope or `pkgver()` function that would execute during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. All source entries are static URLs with pinned checksums, and no command substitutions or dangerous operations are present in the global variable assignments. The `build()`, `check()`, and `package_*()` functions are defined but are not executed during these commands. Fetching the sources (a tarball and four auxiliary files) from the project's own GitHub repository is standard and safe.
</details>
<evidence></evidence>
<summary>No malicious code in top-level scope or sources</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in top-level scope or sources
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 5 file(s) in the downloaded sources (src/Shelly-ALPM-3.1.2/assets/shelly-shell-symbolic.svg, src/Shelly-ALPM-3.1.2/assets/shelly-updates-symbolic.svg, src/Shelly-ALPM-3.1.2/assets/shellylogo-tray.png and 2 more); they are upstream content and were not reviewed.
Reviewing the 6 file(s) in the AUR repository. The 469 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, PKGBUILD...
[0/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly-notifications.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR .SRCINFO metadata file. It declares package metadata, source URLs, checksums, dependencies, and split packages. All sources point to the official GitHub repository of the project (Seafoam-Labs/Shelly-ALPM). The checksums are provided as hex strings (not SKIP). No executable code, obfuscated content, or suspicious network requests are present. The content is purely declarative and follows normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard AUR .SRCINFO metadata, no security issues.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly-notifications.desktop, com.shellyorg.shelly.desktop...
[1/6] Reviewing PKGBUILD, com.shellyorg.shelly-notifications.desktop, com.shellyorg.shelly.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a multi-package build. The source tarball is downloaded from the project's own GitHub releases page (`Seafoam-Labs/Shelly-ALPM`), and every source file, including the auxiliary config/desktop/script files, has a pinned SHA256 checksum. The build phase only runs the upstream `zig build` targets with local cache directories, generates shell completions and man pages from the built binary, and compiles translations — all normal build-time operations with no suspicious network activity or code execution from unexpected sources.

The package installs binaries, desktop entries, icons, completions, man pages, translations, and a Flatpak integration script into the package directory. Installing a polkit policy that permits `pkexec` execution of the shelly CLI is consistent with the application's purpose as an Arch package manager requiring elevated privileges for administrative operations. No obfuscated code, encoded payloads, data exfiltration, backdoors, or tampering with system files outside the package's own scope were found.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD with pinned checksums and no malicious behavior detected.
</summary>
</security_assessment>

[2/6] Reviewing com.shellyorg.shelly-notifications.desktop, com.shellyorg.shelly.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums and no malicious behavior detected.
[2/6] Reviewing com.shellyorg.shelly-notifications.desktop, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
LLM auditresponse for com.shellyorg.shelly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Freedesktop.org `.desktop` entry file for an application called "Shelly" (described as a modern Arch package manager). It defines the main launcher (`/usr/bin/shelly-ui %u`), icon, categories, keywords, MIME type associations, and three desktop actions for Flatpak operations. All `Exec` lines reference the same binary with different `--page` arguments, which is normal for providing quick actions in a desktop environment. There are no network requests, obfuscated code, unexpected file operations, or dangerous commands. The file contains no executable scripting or dynamic content; it is a static configuration file. No evidence of supply-chain attack or malicious behavior is present.</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security concerns.</summary>
</security_assessment>

[3/6] Reviewing com.shellyorg.shelly-notifications.desktop, shelly-flatpak-integrate...
+ Reviewed com.shellyorg.shelly.desktop. Status: SAFE -- Standard desktop entry file, no security concerns.
[3/6] Reviewing com.shellyorg.shelly-notifications.desktop, shelly-flatpak-integrate, shellybuild.conf...
LLM auditresponse for shellybuild.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration template for Shelly's AUR builder. It contains only commented-out settings with default values. There is no executable code, no network requests, no file operations, no obfuscation, and no dangerous commands. The file is inert and serves only as documentation for available configuration options. No security issues are present.
</details>
<evidence>
</evidence>
<summary>Inert configuration template, no security concerns.</summary>
</security_assessment>

[4/6] Reviewing com.shellyorg.shelly-notifications.desktop, shelly-flatpak-integrate...
+ Reviewed shellybuild.conf. Status: SAFE -- Inert configuration template, no security concerns.
LLM auditresponse for shelly-flatpak-integrate:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard desktop integration helper for the `shelly` package. It adds a "Manage in Shelly" right-click action to Flatpak application `.desktop` files by copying them to the user's local applications directory and appending a `[Desktop Action ShellyManage]` section. The script uses only common shell utilities (`cp`, `sed`, `grep`, `cat`, `update-desktop-database`) and writes files only under `$HOME/.local/share/applications/`. It does not perform any network requests, execute obfuscated code, or modify system files outside the intended scope. No evidence of supply-chain injection or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard desktop integration script, no security issues.</summary>
</security_assessment>

[5/6] Reviewing com.shellyorg.shelly-notifications.desktop...
+ Reviewed shelly-flatpak-integrate. Status: SAFE -- Standard desktop integration script, no security issues.
LLM auditresponse for com.shellyorg.shelly-notifications.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.desktop` entry for a notification service. It contains only metadata (Name, Comment, Icon, Categories, Keywords) and an Exec line pointing to `/usr/bin/shelly-notifications`. There are no embedded commands, network requests, obfuscated content, or file operations. The `NoDisplay=true` is normal for background services. No evidence of malicious or dangerous behavior.
</details>
<evidence>

</evidence>
<summary>Standard .desktop file with no malicious content.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed com.shellyorg.shelly-notifications.desktop. Status: SAFE -- Standard .desktop file with no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,260
  Completion Tokens: 2,883
  Total Tokens: 27,143
  Total Cost: $0.002430
  Execution Time: 69.80 seconds

Final Status: SAFE


No issues found.
