---
package: microsoft-edge-stable-bin
pkgver: 151.0.4129.107
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: a0710c34d2de3f3412d0c0b09b199eab9988648e
prompt_tokens: 45710
completion_tokens: 8277
total_tokens: 53987
cost: 0.0051430064
execution_time: 154.85
files_reviewed: 11
files_skipped: 1
files_unauditable: 363
unpinned_sources: 0
date: 2026-08-25T19:17:24Z
file_verdicts:
  - file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
    status: skipped
    summary: "Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious content detected.
  - file: microsoft-edge-stable.install
    status: safe
    summary: Informational install script with no malicious content.
  - file: src/usr/share/applications/com.microsoft.Edge.desktop
    status: safe
    summary: Standard desktop entry file, no malicious content.
  - file: src/usr/share/applications/microsoft-edge.desktop
    status: safe
    summary: Standard .desktop file, no security issues.
  - file: src/postinst
    status: safe
    summary: Standard Microsoft Edge postinst; no malicious behavior found.
  - file: src/postrm
    status: safe
    summary: Standard cleanup script, no malicious code.
  - file: microsoft-edge-stable.sh
    status: safe
    summary: Standard launcher script, no malicious activity found.
  - file: src/opt/microsoft/msedge/apparmor.d/microsoft-edge-stable
    status: safe
    summary: Standard AppArmor profile for Edge; no security issues.
  - file: src/opt/microsoft/msedge/default-app-block
    status: safe
    summary: Static XML browser registration file, no security issues.
  - file: src/prerm
    status: safe
    summary: Standard prerm script, no malicious behavior.
  - file: src/opt/microsoft/msedge/cron/microsoft-edge
    status: safe
    summary: Standard APT repo management script, no malicious behavior.
---

Cloning https://aur.archlinux.org/microsoft-edge-stable-bin.git...
Cloned microsoft-edge-stable-bin
Analyzing microsoft-edge-stable-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard package variable definitions, a source array pointing to official Microsoft repositories (packages.microsoft.com), and sha256sums that are not skipped. There is no global-scope command substitution, no `pkgver()` function, and no code that would execute during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo` beyond fetching the declared sources. The package() function (containing extraction, icon manipulation, installation) is not invoked by these commands. No malicious or suspicious behavior is present at the top level.
</details>
<evidence>
</evidence>
<summary>Safe: no top-level execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no top-level execution risk.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
[1/2] Reviewing PKGBUILD...
! Reviewed Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf. Status: SKIPPED -- Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package definition for Microsoft Edge Stable. All sources are fetched from the official Microsoft repository (`packages.microsoft.com`) with pinned SHA-256 checksums. The build steps extract the `.deb` archive, set the SUID bit on the sandbox binary (standard for Chromium-based browsers), resize icons using ImageMagick, install a launcher script and license file, and clean up temporary files. No obfuscated code, unexpected network requests, dangerous commands (eval, curl|bash), or exfiltration attempts are present. The file follows normal packaging practices and does not exhibit any indicators of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious content detected.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious content detected.
Reviewed all required files.
Deciding which files to review next...
Note: 363 compiled/archived file(s) cannot be audited as text and were not reviewed (microsoft-edge-stable_151.0.4129.107-1_amd64.deb, src/control.tar.xz, src/data.tar.xz and 360 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
LLM response for file selection:
microsoft-edge-stable.install
microsoft-edge-stable.sh
src/usr/share/applications/com.microsoft.Edge.desktop
src/usr/share/applications/microsoft-edge.desktop
src/postinst
src/postrm
src/prerm
src/opt/microsoft/msedge/cron/microsoft-edge
src/opt/microsoft/msedge/apparmor.d/microsoft-edge-stable
src/opt/microsoft/msedge/default-app-block
Decided to review 10 additional files: microsoft-edge-stable.install, microsoft-edge-stable.sh, src/usr/share/applications/com.microsoft.Edge.desktop, src/usr/share/applications/microsoft-edge.desktop, src/postinst, src/postrm, src/prerm, src/opt/microsoft/msedge/cron/microsoft-edge, src/opt/microsoft/msedge/apparmor.d/microsoft-edge-stable, src/opt/microsoft/msedge/default-app-block
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing microsoft-edge-stable.install...
[0/10] Reviewing microsoft-edge-stable.install, microsoft-edge-stable.sh...
[0/10] Reviewing microsoft-edge-stable.install, microsoft-edge-stable.sh, src/usr/share/applications/com.microsoft.Edge.desktop...
LLM auditresponse for microsoft-edge-stable.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.install` file containing helper functions for colored output and a `post_install` hook that prints two informational notes to the user.  
- No network operations, file writes, or system modifications occur.  
- No obfuscation, encoded commands, or suspicious invocations are present.  
- The use of `tput` for terminal styling is normal and not a security concern.  

The file performs only its stated role: displaying setup instructions after package installation. There is no evidence of injected malware or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Informational install script with no malicious content.</summary>
</security_assessment>

[0/10] Reviewing microsoft-edge-stable.install, microsoft-edge-stable.sh, src/usr/share/applications/com.microsoft.Edge.desktop, src/usr/share/applications/microsoft-edge.desktop...
[1/10] Reviewing microsoft-edge-stable.sh, src/usr/share/applications/com.microsoft.Edge.desktop, src/usr/share/applications/microsoft-edge.desktop...
+ Reviewed microsoft-edge-stable.install. Status: SAFE -- Informational install script with no malicious content.
LLM auditresponse for com.microsoft.Edge.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org .desktop file for Microsoft Edge. It defines the application entry, localized names and comments, the executable path (`/usr/bin/microsoft-edge-stable`), supported MIME types, and desktop actions (new window, new private window). There are no network requests, obfuscated commands, or any executable logic beyond invoking the intended browser binary. The file is entirely declarative and follows normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no malicious content.</summary>
</security_assessment>

[1/10] Reviewing microsoft-edge-stable.sh, src/usr/share/applications/com.microsoft.Edge.desktop, src/usr/share/applications/microsoft-edge.desktop, src/postinst...
[2/10] Reviewing microsoft-edge-stable.sh, src/usr/share/applications/microsoft-edge.desktop, src/postinst...
+ Reviewed src/usr/share/applications/com.microsoft.Edge.desktop. Status: SAFE -- Standard desktop entry file, no malicious content.
LLM auditresponse for microsoft-edge.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` entry file for the Microsoft Edge browser. It contains only the expected metadata (name, description, translations), launcher commands (`/usr/bin/microsoft-edge-stable`), MIME type associations, and desktop actions for new windows and InPrivate windows. There is no embedded executable code, no network requests, no obfuscation, and no attempt to modify system files or exfiltrate data. The file conforms to the FreeDesktop.org Desktop Entry Specification and is typical of any application distributed through the AUR or other packaging systems. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security issues.</summary>
</security_assessment>

[2/10] Reviewing microsoft-edge-stable.sh, src/usr/share/applications/microsoft-edge.desktop, src/postinst, src/postrm...
[3/10] Reviewing microsoft-edge-stable.sh, src/postinst, src/postrm...
+ Reviewed src/usr/share/applications/microsoft-edge.desktop. Status: SAFE -- Standard .desktop file, no security issues.
LLM auditresponse for postinst:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Debian package post-installation script for Microsoft Edge. It performs routine packaging tasks: installing desktop icons, refreshing desktop/MIME caches, registering browser alternatives, installing an AppArmor profile, managing the Microsoft apt repository signing key, and creating apt source entries for Microsoft's official packages.microsoft.com repository. It also sets up a dedicated `msedgemgmt` group and adjusts permissions on Microsoft Edge management files, all within the application's own installation scope.

No evidence of injected malicious code was found. There are no network downloads, no execution of remote code, no exfiltration of user data, and no tampering with unrelated system files. The embedded `base64 -d` usage simply decodes Microsoft's public signing key into the apt keyring, which is a normal Debian packaging practice. The `eval` call only evaluates output from the local `apt-config` command, not attacker-controlled input. While the script modifies system configuration (apt sources, alternatives, group membership), this is expected behavior for an upstream browser package and does not indicate a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard Microsoft Edge postinst; no malicious behavior found.</summary>
</security_assessment>

[3/10] Reviewing microsoft-edge-stable.sh, src/postinst, src/postrm, src/prerm...
[4/10] Reviewing microsoft-edge-stable.sh, src/postrm, src/prerm...
+ Reviewed src/postinst. Status: SAFE -- Standard Microsoft Edge postinst; no malicious behavior found.
LLM auditresponse for postrm:
<security_assessment>
<decision>SAFE</decision>
<details>
The `postrm` script is a standard Debian package removal script for Microsoft Edge. It performs expected cleanup tasks on purge: removing apt repository sources, GPG keys, and application-specific symlinks under `/opt/microsoft/msedge/`. All network destinations (e.g., `packages.microsoft.com`) point to the official Microsoft repository. The embedded PGP key data is Microsoft's official signing key and is correctly imported. No obfuscated code, external data exfiltration, or unexpected system modifications are present. While the script is Debian-specific and runs on Arch Linux, this is a packaging choice and not malicious. The commands are consistent with routine package maintenance.
</details>
<evidence></evidence>
<summary>Standard cleanup script, no malicious code.</summary>
</security_assessment>

[5/10] Reviewing microsoft-edge-stable.sh, src/prerm...
+ Reviewed src/postrm. Status: SAFE -- Standard cleanup script, no malicious code.
[5/10] Reviewing microsoft-edge-stable.sh, src/prerm, src/opt/microsoft/msedge/cron/microsoft-edge...
LLM auditresponse for microsoft-edge-stable.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard launcher wrapper for Microsoft Edge Stable. It reads an optional user‑controlled configuration file (`$XDG_CONFIG_HOME/microsoft-edge-stable-flags.conf`) and passes its contents as command‑line flags to the browser.  

There is no obfuscated code, no network requests, no downloads, no exfiltration of data, and no tampering with system files. The only potential shell‑scripting concern is that `$EDGE_USER_FLAGS` is unquoted in the `exec` line, which could cause word splitting/glob expansion if the config file contains unusual characters. However, this is a common pattern for such launcher scripts (present in many official package wrappers) and the config file is entirely under the local user&#39;s control. It does not represent an injected or supply‑chain threat.  

The script’s behavior is fully consistent with the stated purpose of launching the browser with user‑specified flags.
</details>
<evidence></evidence>
<summary>Standard launcher script, no malicious activity found.</summary>
</security_assessment>

[6/10] Reviewing src/prerm, src/opt/microsoft/msedge/cron/microsoft-edge...
+ Reviewed microsoft-edge-stable.sh. Status: SAFE -- Standard launcher script, no malicious activity found.
[6/10] Reviewing src/prerm, src/opt/microsoft/msedge/cron/microsoft-edge, src/opt/microsoft/msedge/apparmor.d/microsoft-edge-stable...
LLM auditresponse for microsoft-edge-stable:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AppArmor profile for the Microsoft Edge browser (Chromium-based). It grants permission to create user namespaces (`userns`) and sets the profile to `unconfined` to allow the browser sandbox to function correctly. The profile includes an optional local override file. There is no evidence of malicious activity, suspicious commands, or unexpected behavior. The file is a routine AppArmor configuration commonly used for such browsers.
</details>
<evidence>
</evidence>
<summary>Standard AppArmor profile for Edge; no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/prerm, src/opt/microsoft/msedge/cron/microsoft-edge, src/opt/microsoft/msedge/apparmor.d/microsoft-edge-stable, src/opt/microsoft/msedge/default-app-block...
[7/10] Reviewing src/prerm, src/opt/microsoft/msedge/cron/microsoft-edge, src/opt/microsoft/msedge/default-app-block...
+ Reviewed src/opt/microsoft/msedge/apparmor.d/microsoft-edge-stable. Status: SAFE -- Standard AppArmor profile for Edge; no security issues.
LLM auditresponse for default-app-block:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a static XML configuration that registers Microsoft Edge as a default web browser. It specifies paths, commands, icon, and terminal settings. It contains no executable code, no network requests, no obfuscation, and no system modifications beyond the expected browser registration. This is standard packaging practice for pre-built binary packages.
</details>
<evidence></evidence>
<summary>Static XML browser registration file, no security issues.</summary>
</security_assessment>

[8/10] Reviewing src/prerm, src/opt/microsoft/msedge/cron/microsoft-edge...
+ Reviewed src/opt/microsoft/msedge/default-app-block. Status: SAFE -- Static XML browser registration file, no security issues.
LLM auditresponse for prerm:
<security_assessment>
<decision>SAFE</decision>
<details>
The `prerm` script is a standard pre-removal script for the `microsoft-edge-stable-bin` package. It handles upgrade vs. removal correctly, removes system icons via `xdg-icon-resource`, updates the desktop database, unloads the AppArmor profile if present, and cleans up alternatives entries. All operations are conventional for a browser package and directly relate to the package's own resources. There are no network requests, obfuscated code, dangerous command execution, or any behavior that deviates from normal packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard prerm script, no malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/opt/microsoft/msedge/cron/microsoft-edge...
+ Reviewed src/prerm. Status: SAFE -- Standard prerm script, no malicious behavior.
LLM auditresponse for microsoft-edge:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard APT repository configuration helper for Microsoft Edge on Debian-based systems. It installs a GPG key (hardcoded as base64 data), creates or removes apt sources list files, and manages a defaults configuration file. All operations target system directories under `/etc/apt/` and `/usr/share/keyrings` using atomic writes. There are no network requests, no obfuscated commands, no execution of downloaded code, and no exfiltration of data. The sourcing of `/etc/default/microsoft-edge` is a conventional pattern for package defaults. While this script is included in an Arch Linux AUR package, its content is consistent with upstream Microsoft packaging and does not exhibit any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard APT repo management script, no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/opt/microsoft/msedge/cron/microsoft-edge. Status: SAFE -- Standard APT repo management script, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 45,710
  Completion Tokens: 8,277
  Total Tokens: 53,987
  Total Cost: $0.005143
  Execution Time: 154.85 seconds

Final Status: SAFE


No issues found.


Audit Skips:

Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf: [SKIPPED] Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
