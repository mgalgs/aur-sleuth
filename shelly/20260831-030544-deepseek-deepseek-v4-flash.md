---
package: shelly
pkgver: 3.1.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 24146
completion_tokens: 3406
total_tokens: 27552
cost: 0.002743064548
execution_time: 133.48
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 469
upstream_named_files: 5
unpinned_sources: 0
date: 2026-08-31T03:05:43Z
file_verdicts:
  - file: com.shellyorg.shelly-notifications.desktop
    status: safe
    summary: Standard desktop entry, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: com.shellyorg.shelly.desktop
    status: safe
    summary: Safe desktop entry file.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no signs of malicious behavior.
  - file: shellybuild.conf
    status: safe
    summary: Inert configuration file with no active code.
  - file: shelly-flatpak-integrate
    status: safe
    summary: Standard integration script, no security concerns.
---

Cloning https://aur.archlinux.org/shelly.git...
Cloned shelly
Analyzing shelly AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD has no command substitutions or code execution in its global scope, and no `pkgver()` function is defined. The only action during `makepkg --nobuild --nodeps --noprepare` is fetching the source tarball from the official GitHub release (``https://github.com/Seafoam-Labs/Shelly-ALPM/archive/v${pkgver}.tar.gz``) and extracting it. Local source files (`.conf`, `.desktop`, script) are included statically in the AUR package and do not involve network downloads. All functions (`build()`, `check()`, `package_*()`) are defined but will not execute because of the `--nobuild` and `--noprepare` flags. There is no obfuscated code, no dangerous commands (`eval`, `curl|bash`, etc.), and no exfiltration or backdoor mechanisms in the top-level scope. Therefore, running the specified commands is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; sources from official GitHub.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sources from official GitHub.
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
This is a standard desktop entry file for the Shelly Notifications service. It defines a system utility that runs in the background (`NoDisplay=true`), launching `/usr/bin/shelly-notifications`. There are no embedded commands, no obfuscated code, no network requests, and no unexpected operations. The file is purely declarative metadata. No security issues found.
</details>
<evidence>
</evidence>
<summary>Standard desktop entry, no security concerns.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed com.shellyorg.shelly-notifications.desktop. Status: SAFE -- Standard desktop entry, no security concerns.
[1/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file for the Arch User Repository (AUR) package `shelly`. It defines the package base, version, architecture, dependencies, and source files. All sources point to the project's official GitHub repository (`github.com/Seafoam-Labs/Shelly-ALPM`) and include valid SHA256 checksums. There are no obfuscated commands, network requests to unexpected hosts, or any executable content. The file follows standard AUR packaging practices and contains no indication of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
[2/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for com.shellyorg.shelly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .desktop file for the Shelly Arch package manager. It defines the application entry, translations, MIME type associations, and Flatpak-related desktop actions. All Exec paths point to `/usr/bin/shelly-ui`, the package's own binary. There is no obfuscation, no network requests, no dangerous commands, and no attempt to manipulate data outside the application's intended scope. The file follows normal desktop entry specifications and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Safe desktop entry file.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate, shellybuild.conf...
[3/6] Reviewing PKGBUILD, shelly-flatpak-integrate, shellybuild.conf...
+ Reviewed com.shellyorg.shelly.desktop. Status: SAFE -- Safe desktop entry file.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard, well-formed Arch Linux package recipe. It fetches source code from the official GitHub release tarball (with valid checksums), builds multiple Zig subprojects using the upstream build system, and installs the resulting binaries, desktop entries, icons, completions, man pages, translations, and a polkit policy for the application&#39;s own privileged CLI. There are no obfuscated commands, no suspicious network requests, no exfiltration of local data, no downloading of code from unexpected hosts, and no dangerous operations outside the scope of normal package building and installation. The inline polkit policy is a standard mechanism to allow the application to request administrative privileges via pkexec, which is expected for a package manager. The file shows no signs of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no signs of malicious behavior.</summary>
</security_assessment>

[4/6] Reviewing shelly-flatpak-integrate, shellybuild.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no signs of malicious behavior.
LLM auditresponse for shellybuild.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration template for the shelly AUR builder's package build settings. It contains only commented-out default values and explanatory comments. There are no active commands, no network requests, no obfuscated code, and no file operations. The file is inert and does not present any security risk. It follows standard packaging practices for a config file.
</details>
<evidence></evidence>
<summary>Inert configuration file with no active code.</summary>
</security_assessment>

[5/6] Reviewing shelly-flatpak-integrate...
+ Reviewed shellybuild.conf. Status: SAFE -- Inert configuration file with no active code.
LLM auditresponse for shelly-flatpak-integrate:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard integration helper that adds a "Manage in Shelly" desktop action to Flatpak applications' desktop files. It copies desktop files to the user's local applications directory (a common pattern for user overrides), appends a `[Desktop Action ShellyManage]` section, and runs `update-desktop-database` to refresh the application menu. All operations are confined to desktop entry manipulation and do not involve network access, obfuscation, privilege escalation, or any action that deviates from the stated purpose of integrating Shelly with Flatpak applications. No evidence of malicious behavior such as data exfiltration, backdoors, or execution of untrusted code was found.
</details>
<evidence></evidence>
<summary>Standard integration script, no security concerns.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed shelly-flatpak-integrate. Status: SAFE -- Standard integration script, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,146
  Completion Tokens: 3,406
  Total Tokens: 27,552
  Total Cost: $0.002743
  Execution Time: 133.48 seconds

Final Status: SAFE


No issues found.
