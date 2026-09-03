---
package: shelly
pkgver: 3.1.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 24146
completion_tokens: 3496
total_tokens: 27642
cost: 0.002759013628
execution_time: 172.24
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 469
upstream_named_files: 5
unpinned_sources: 0
date: 2026-08-31T11:05:34Z
file_verdicts:
  - file: com.shellyorg.shelly-notifications.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious code detected.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content found.
  - file: com.shellyorg.shelly.desktop
    status: safe
    summary: Standard desktop file, no suspicious content.
  - file: shellybuild.conf
    status: safe
    summary: Inert configuration file with no security issues.
  - file: shelly-flatpak-integrate
    status: safe
    summary: Script adds Flatpak integration for Shelly, no malicious behavior.
---

Cloning https://aur.archlinux.org/shelly.git...
Cloned shelly
Analyzing shelly AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no top-level code execution beyond variable assignments and array definitions. There is no `pkgver()` function that could execute commands. The `source` array uses standard GitHub release tarball URLs and local file references, which are fetched normally. No obfuscated code, command substitutions, or dangerous operations are present in the global scope or in `pkgver()`. The `--nobuild` and `--noprepare` flags prevent execution of `build()`, `check()`, and `package()` functions. Therefore, running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No malicious code executed at top-level or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executed at top-level or pkgver().
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
This is a standard desktop entry file for the shelly package manager's notification service. It contains only metadata fields (Name, Comment, Exec, Icon, Categories, Keywords) and translations. The Exec line points to a binary in the system path, which is expected for a system service. No suspicious code, network requests, or obfuscated content is present. The file follows the freedesktop.org desktop entry specification and contains no executable content beyond the intended application launch path.
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
The PKGBUILD follows standard AUR packaging practices. All source files are fetched from the official GitHub repository of the project (Seafoam-Labs/Shelly-ALPM) with pinned SHA-256 checksums. The build process compiles the application using Zig and Go, generates completions and man pages, and installs binaries, configuration files, desktop entries, a Polkit policy, icons, language translations, and a helper script. No network requests beyond the declared source tarball, no obfuscated code, no encoded commands, and no execution of untrusted content. The inline Polkit policy and shell completion generation are routine packaging tasks. There is no evidence of injected malicious behavior—this is a clean, well-structured PKGBUILD.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious code detected.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
[2/6] Reviewing .SRCINFO, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious code detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.SRCINFO` metadata file for an Arch User Repository package. It contains package metadata, dependencies, source URLs, and checksums. All sources are from the project's official GitHub repository (`https://github.com/Seafoam-Labs/Shelly-ALPM/archive/v3.1.2.tar.gz`) and local package files. Checksums are provided for all sources (none are `SKIP`), ensuring integrity. There are no executable commands, obfuscated content, or suspicious network requests within this file. The dependencies and optdepends are typical for a package manager with GUI and Flatpak support. No evidence of malicious behavior or supply chain attack is present.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no malicious content found.</summary>
</security_assessment>

[3/6] Reviewing com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content found.
[3/6] Reviewing com.shellyorg.shelly.desktop, shelly-flatpak-integrate, shellybuild.conf...
LLM auditresponse for com.shellyorg.shelly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard .desktop entry for the Shelly Arch package manager. It defines the application name, description, icon, MIME types, and desktop actions for launching the UI with specific flags for Flatpak operations. All `Exec` lines reference a legitimate binary (`/usr/bin/shelly-ui`) within the package's own installation path. No obfuscated commands, network requests, file system manipulation, or any other forms of malicious code are present. The file contains only metadata for the desktop environment and conforms to normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard desktop file, no suspicious content.</summary>
</security_assessment>

[4/6] Reviewing shelly-flatpak-integrate, shellybuild.conf...
+ Reviewed com.shellyorg.shelly.desktop. Status: SAFE -- Standard desktop file, no suspicious content.
LLM auditresponse for shellybuild.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `shellybuild.conf` is a configuration file for an AUR builder called Shelly. It contains only commented-out default settings organized under `[build]`, `[package]`, and `[destinations]` sections. There are no executable statements, no network requests, no obfuscated code, and no system modifications. The file is inert and serves only as a template for optional overrides. No security issues are present.
</details>
<evidence></evidence>
<summary>Inert configuration file with no security issues.</summary>
</security_assessment>

[5/6] Reviewing shelly-flatpak-integrate...
+ Reviewed shellybuild.conf. Status: SAFE -- Inert configuration file with no security issues.
LLM auditresponse for shelly-flatpak-integrate:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `shelly-flatpak-integrate` is a helper that adds a "Manage in Shelly" desktop action to Flatpak application `.desktop` files. It only copies files to the user&#x2019;s local applications directory (`~/.local/share/applications`) and modifies them with `sed` and `cat`. No network requests, obfuscated commands, or dangerous operations are present. The executed binary `/usr/bin/shelly-ui` is part of the Shelly package itself, which is expected. All operations are confined to the user&#x2019;s own desktop entry files, and the script does not exfiltrate data, execute untrusted code, or alter system files. This is a standard packaging integration script and poses no supply-chain risk.
</details>
<evidence>
</evidence>
<summary>Script adds Flatpak integration for Shelly, no malicious behavior.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed shelly-flatpak-integrate. Status: SAFE -- Script adds Flatpak integration for Shelly, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,146
  Completion Tokens: 3,496
  Total Tokens: 27,642
  Total Cost: $0.002759
  Execution Time: 172.24 seconds

Final Status: SAFE


No issues found.
