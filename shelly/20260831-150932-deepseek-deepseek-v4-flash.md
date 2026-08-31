---
package: shelly
pkgver: 3.1.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 24225
completion_tokens: 3055
total_tokens: 27280
cost: 0.00259485590
execution_time: 116.15
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 469
upstream_named_files: 5
unpinned_sources: 0
date: 2026-08-31T15:09:32Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no security concerns.
  - file: com.shellyorg.shelly-notifications.desktop
    status: safe
    summary: Standard desktop entry file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned upstream source, checksums, and normal build/install steps; no malicious behavior.
  - file: shellybuild.conf
    status: safe
    summary: Inert configuration file with no security concerns.
  - file: shelly-flatpak-integrate
    status: safe
    summary: Safe integration script for Flatpak desktop entries.
  - file: com.shellyorg.shelly.desktop
    status: safe
    summary: Standard desktop entry file with no security issues.
---

Cloning https://aur.archlinux.org/shelly.git...
Cloned shelly
Analyzing shelly AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and function definitions at the top level. No commands execute during sourcing except simple string expansions (e.g., `_source_dir` assignment). There is no `pkgver()` function, no `eval`, no command substitution, no dangerous network calls (the `source` array fetches a tarball from GitHub and local auxiliary files, all with pinned checksums). The `build()`, `check()`, and `package_*()` functions are defined but not invoked by `makepkg --nobuild --nodeps --noprepare` or `--printsrcinfo`. Therefore, running these commands is safe.
</details>
<evidence></evidence>
<summary>No malicious code at top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code at top-level scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 5 file(s) in the downloaded sources (src/Shelly-ALPM-3.1.2/assets/shelly-shell-symbolic.svg, src/Shelly-ALPM-3.1.2/assets/shelly-updates-symbolic.svg, src/Shelly-ALPM-3.1.2/assets/shellylogo-tray.png and 2 more); they are upstream content and were not reviewed.
Reviewing the 6 file(s) in the AUR repository. The 469 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing PKGBUILD...
[0/6] Reviewing PKGBUILD, com.shellyorg.shelly-notifications.desktop...
[0/6] Reviewing PKGBUILD, com.shellyorg.shelly-notifications.desktop, .SRCINFO...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata descriptor for the AUR package. It declares the package name, version, upstream URL, dependencies, and source tarballs with pinned SHA-256 checksums. All source URLs point to the project&#39;s official GitHub repository (https://github.com/Seafoam-Labs/Shelly-ALPM). The file contains no executable code, no network requests beyond static URL declarations, and no obfuscated or encoded content. There is no evidence of malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no security concerns.</summary>
</security_assessment>

[0/6] Reviewing PKGBUILD, com.shellyorg.shelly-notifications.desktop, .SRCINFO, com.shellyorg.shelly.desktop...
[1/6] Reviewing PKGBUILD, com.shellyorg.shelly-notifications.desktop, com.shellyorg.shelly.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no security concerns.
LLM auditresponse for com.shellyorg.shelly-notifications.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Shelly Notifications service, intended to register a background notification daemon for a package manager. It contains no executable code, no network references, no obfuscation, and no operations beyond defining the application entry. The field values (name, comment, keywords, icon, executable path) are all typical for an AUR package's desktop file. There is no evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no malicious content.</summary>
</security_assessment>

[1/6] Reviewing PKGBUILD, com.shellyorg.shelly-notifications.desktop, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
[2/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
+ Reviewed com.shellyorg.shelly-notifications.desktop. Status: SAFE -- Standard desktop entry file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. The source is a pinned-release tarball (v3.1.2) fetched from the project's own upstream GitHub repository (Seafoam-Labs/Shelly-ALPM), with sha256 checksums provided for all five sources. The build() function runs the upstream zig build system for the various Shelly components, then invokes the freshly built binary only to generate shell completions and man-page content — a routine packaging step. The check() function runs upstream zig tests.

The package() functions install binaries, desktop entries, icons, completions, translations, and a man page into `$pkgdir`, plus a Flatpak backend shared library. A Polkit policy is installed to allow running `/usr/bin/shelly` via pkexec with authentication (`auth_admin` / `auth_admin_keep`); this is expected functionality for a package manager CLI that must perform privileged pacman operations, not an attack. There is no obfuscation, no unexpected network access, no curl|bash-style execution, no exfiltration, and no modification of files outside `$srcdir`/`$pkgdir`. The only mild consideration is that a compromised shelly binary would inherit the pkexec root capability — an inherent property of any privileged package manager, not evidence of injected malice.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD with pinned upstream source, checksums, and normal build/install steps; no malicious behavior.</summary>
</security_assessment>

[3/6] Reviewing com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned upstream source, checksums, and normal build/install steps; no malicious behavior.
[3/6] Reviewing com.shellyorg.shelly.desktop, shelly-flatpak-integrate, shellybuild.conf...
LLM auditresponse for shellybuild.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for the Shelly AUR builder. It contains commented-out default values for build, package, and destination settings. There is no executable code, no network operations, no file manipulation, and no obfuscation. The content is entirely inert and poses no security risk.
</details>
<evidence></evidence>
<summary>Inert configuration file with no security concerns.</summary>
</security_assessment>

[4/6] Reviewing com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
+ Reviewed shellybuild.conf. Status: SAFE -- Inert configuration file with no security concerns.
LLM auditresponse for shelly-flatpak-integrate:
<security_assessment>
<decision>SAFE</decision>
<details>
The script adds a "Manage in Shelly" right-click action to Flatpak .desktop files by copying them to the user's local applications directory and appending a Desktop Action entry. It performs no network requests, no obfuscated code, and no dangerous command execution. The use of `update-desktop-database` is a standard post-installation step for desktop file changes. No evidence of any malicious or supply-chain attack behavior is present; the script is consistent with its stated purpose of integrating Flatpak applications with the Shelly package manager.
</details>
<evidence></evidence>
<summary>Safe integration script for Flatpak desktop entries.</summary>
</security_assessment>

[5/6] Reviewing com.shellyorg.shelly.desktop...
+ Reviewed shelly-flatpak-integrate. Status: SAFE -- Safe integration script for Flatpak desktop entries.
LLM auditresponse for com.shellyorg.shelly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file for the Shelly package manager. It contains only configuration entries such as application name, icon, executable path, categories, and desktop actions for Flatpak operations. No network requests, obfuscated code, system modifications, or dangerous commands are present. The file follows normal packaging practices and does not exhibit any supply-chain attack indicators.
</details>
<evidence>

</evidence>
<summary>Standard desktop entry file with no security issues.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed com.shellyorg.shelly.desktop. Status: SAFE -- Standard desktop entry file with no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,225
  Completion Tokens: 3,055
  Total Tokens: 27,280
  Total Cost: $0.002595
  Execution Time: 116.15 seconds

Final Status: SAFE


No issues found.
