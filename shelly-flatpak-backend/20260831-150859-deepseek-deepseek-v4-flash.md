---
package: shelly-flatpak-backend
pkgbase: shelly
pkgver: 3.1.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 24181
completion_tokens: 3038
total_tokens: 27219
cost: 0.00258818378
execution_time: 83.14
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 469
upstream_named_files: 5
unpinned_sources: 0
date: 2026-08-31T15:08:59Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums, no malicious indicators.
  - file: com.shellyorg.shelly.desktop
    status: safe
    summary: Standard desktop entry file; no security issues.
  - file: shellybuild.conf
    status: safe
    summary: Inert commented configuration file, no malicious content.
  - file: shelly-flatpak-integrate
    status: safe
    summary: Standard desktop integration script, no malicious behavior.
  - file: com.shellyorg.shelly-notifications.desktop
    status: safe
    summary: Standard desktop file, no threats found.
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
This PKGBUILD defines a standard Arch package for Shelly, a package manager. The global scope contains only variable definitions (pkgbase, pkgname, pkgver, etc.), source definitions with checksums, and function definitions. No code executes at the top level beyond these definitions. There is no `pkgver()` function, so no automatic code execution during `makepkg --printsrcinfo`. The `source` array references a tarball from the project's own GitHub repository over HTTPS, plus local files; all have valid SHA-256 checksums. No suspicious network requests, obfuscated code, or dangerous commands are present in the sourced scope. The `build()`, `check()`, and `package()` functions are not executed during the narrow gate (`--nobuild --noprepare`). Therefore, fetching the sources and printing `.SRCINFO` is safe.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with no top-level risks.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD with no top-level risks.
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
The file is a standard `.SRCINFO` metadata file for an AUR package. It contains declarative fields such as pkgbase, pkgname, version, dependencies, source URLs, and checksums. All source URLs point to the official GitHub repository of the project (Seafoam-Labs/Shelly-ALPM). Checksums are provided (not SKIP), confirming source integrity. There is no executable code, obfuscation, or unexpected network requests. The dependencies listed are typical for a package manager and its optional flatpak backend. No evidence of malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[1/6] Reviewing PKGBUILD, com.shellyorg.shelly-notifications.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
[1/6] Reviewing PKGBUILD, com.shellyorg.shelly-notifications.desktop, com.shellyorg.shelly.desktop...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard, well-structured Arch Linux package build file. All source tarballs and auxiliary files have pinned SHA256 checksums. The build process uses the upstream source from the project's own GitHub repository (`Seafoam-Labs/Shelly-ALPM`) and compiles with `zig build` in a predictable manner. There is no obfuscated code, no unexpected network requests (aside from fetching the declared upstream source), no attempts to exfiltrate data, and no instructions to download or execute code from untrusted origins. The package function installs binaries, desktop entries, a polkit policy, icons, completions, man pages, and translations—all standard operations for a package manager with a GTK UI and CLI. The polkit policy generated inline is a normal method for defining privileged actions. There is no evidence of supply-chain attack or malicious intent.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with pinned checksums, no malicious indicators.</summary>
</security_assessment>

[2/6] Reviewing com.shellyorg.shelly-notifications.desktop, com.shellyorg.shelly.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums, no malicious indicators.
[2/6] Reviewing com.shellyorg.shelly-notifications.desktop, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
LLM auditresponse for com.shellyorg.shelly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Linux desktop entry (`.desktop` file) for the `shelly` application. It defines the application name, icon, categories, and three desktop actions for Flatpak install, update, and remove operations. All executed commands reference `/usr/bin/shelly-ui`, which is the package's own binary. There are no suspicious network requests, obfuscated code, dangerous system modifications, or any other indicators of malicious behavior. The file follows normal packaging conventions for providing desktop integration and quick actions.
</details>
<evidence></evidence>
<summary>Standard desktop entry file; no security issues.</summary>
</security_assessment>

[2/6] Reviewing com.shellyorg.shelly-notifications.desktop, com.shellyorg.shelly.desktop, shelly-flatpak-integrate, shellybuild.conf...
[3/6] Reviewing com.shellyorg.shelly-notifications.desktop, shelly-flatpak-integrate, shellybuild.conf...
+ Reviewed com.shellyorg.shelly.desktop. Status: SAFE -- Standard desktop entry file; no security issues.
LLM auditresponse for shellybuild.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `shellybuild.conf` is a configuration file for the `shellybuild` AUR builder. Every line is commented out (starting with `#`). It contains no active code, no commands, no network requests, no obfuscation, and no file operations. It is simply a template of optional overrides with default values shown as comments. There is no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Inert commented configuration file, no malicious content.</summary>
</security_assessment>

[4/6] Reviewing com.shellyorg.shelly-notifications.desktop, shelly-flatpak-integrate...
+ Reviewed shellybuild.conf. Status: SAFE -- Inert commented configuration file, no malicious content.
LLM auditresponse for shelly-flatpak-integrate:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `shelly-flatpak-integrate` is a helper that integrates the "Manage in Shelly" action into Flatpak `.desktop` files. It copies system Flatpak desktop entries to the user's local applications directory (`~/.local/share/applications/`) and appends a new `[Desktop Action ShellyManage]` section.  

The operations are strictly limited to reading standard Flatpak export directories, writing user-local desktop files, and calling `update-desktop-database`. No network requests, obfuscated code, dangerous commands, or unexpected system modifications are present. The `Exec=` line points to the installed `/usr/bin/shelly-ui`, which is the package's own binary.  

Based on the provided criteria – including the distinction between application functionality and supply-chain attacks – this file shows no evidence of malicious injection. It performs exactly the desktop-integration task the package name and path suggest.</details>
<evidence>
</evidence>
<summary>Standard desktop integration script, no malicious behavior.</summary>
</security_assessment>

[5/6] Reviewing com.shellyorg.shelly-notifications.desktop...
+ Reviewed shelly-flatpak-integrate. Status: SAFE -- Standard desktop integration script, no malicious behavior.
LLM auditresponse for com.shellyorg.shelly-notifications.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org desktop entry file for the Shelly Notifications service. It contains only metadata fields (Name, Comment, Exec, Icon, Categories, Keywords, Terminal, NoDisplay) and localized translations. There is no executable or obfuscated code, no network requests, no file manipulations, and no deviation from normal packaging practices. The Exec line points to a system binary (`/usr/bin/shelly-notifications`), which is expected for a service of this type.
</details>
<evidence></evidence>
<summary>Standard desktop file, no threats found.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed com.shellyorg.shelly-notifications.desktop. Status: SAFE -- Standard desktop file, no threats found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,181
  Completion Tokens: 3,038
  Total Tokens: 27,219
  Total Cost: $0.002588
  Execution Time: 83.14 seconds

Final Status: SAFE


No issues found.
