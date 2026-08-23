---
package: microsoft-edge-stable-bin
pkgver: 151.0.4129.101
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 09f2e477a21d918155ca5fbfdf5bc833f8a3f124
prompt_tokens: 42681
completion_tokens: 6539
total_tokens: 49220
cost: 0.00420757414
execution_time: 412.08
files_reviewed: 10
files_skipped: 1
files_unauditable: 363
unpinned_sources: 0
date: 2026-08-22T03:21:11Z
file_verdicts:
  - file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
    status: skipped
    summary: "Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for Microsoft Edge Stable.
  - file: microsoft-edge-stable.install
    status: safe
    summary: Standard post-install script with informational messages only.
  - file: microsoft-edge-stable.sh
    status: safe
    summary: Standard wrapper script, no malicious behavior detected.
  - file: src/usr/share/applications/com.microsoft.Edge.desktop
    status: safe
    summary: Standard desktop entry file for Microsoft Edge; no security issues.
  - file: src/postinst
    status: safe
    summary: Standard package setup script, no supply-chain attack.
  - file: src/postrm
    status: safe
    summary: Standard cleanup script, no suspicious behavior.
  - file: src/prerm
    status: safe
    summary: Standard package removal script, no malicious behavior.
  - file: src/opt/microsoft/msedge/default-app-block
    status: safe
    summary: Static browser configuration file, no malicious content.
  - file: src/usr/share/applications/microsoft-edge.desktop
    status: safe
    summary: Standard desktop entry file for Microsoft Edge, no security issues.
  - file: src/opt/microsoft/msedge/cron/microsoft-edge
    status: safe
    summary: Standard repository setup script; no malicious activity.
---

Cloning https://aur.archlinux.org/microsoft-edge-stable-bin.git...
Cloned microsoft-edge-stable-bin
Analyzing microsoft-edge-stable-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD top-level scope contains only static variable assignments and arrays. No command substitutions, `eval`, `curl`, `wget`, or other code execution occurs during sourcing. The `pkgver()` function is not defined. The `source` array fetches the Microsoft Edge `.deb` from the official Microsoft repository (`packages.microsoft.com`), which is the expected upstream for this package. The other sources are local files within the AUR repository and do not introduce network access. All checksums are pinned. The `package()` function (which contains `chmod 4755` and `magick` commands) is not executed during the `--nobuild --nodeps --noprepare` step. Therefore, running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<summary>No dangerous code in top-level scope or source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in top-level scope or source fetch.
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
The PKGBUILD is a standard packaging script for Microsoft Edge Stable. It downloads the official .deb package from Microsoft's own repository (`packages.microsoft.com`) with a pinned SHA256 checksum, ensuring integrity. The `package()` function extracts the archive, sets the SUID bit on the sandbox binary (expected for Chromium-based browsers), resizes and installs icons, and installs a launcher script and license file. There are no suspicious network requests, obfuscated code, or unexpected system modifications. The file follows standard AUR packaging practices and does not contain any supply-chain attack indicators.
</details>
<summary>Standard PKGBUILD for Microsoft Edge Stable.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for Microsoft Edge Stable.
Reviewed all required files.
Deciding which files to review next...
Note: 363 compiled/archived file(s) cannot be audited as text and were not reviewed (microsoft-edge-stable_151.0.4129.101-1_amd64.deb, src/control.tar.xz, src/data.tar.xz and 360 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
LLM response for file selection:
microsoft-edge-stable.install
microsoft-edge-stable.sh
src/usr/share/applications/com.microsoft.Edge.desktop
src/usr/share/applications/microsoft-edge.desktop
src/postinst
src/postrm
src/prerm
src/opt/microsoft/msedge/cron/microsoft-edge
src/opt/microsoft/msedge/default-app-block
Decided to review 9 additional files: microsoft-edge-stable.install, microsoft-edge-stable.sh, src/usr/share/applications/com.microsoft.Edge.desktop, src/usr/share/applications/microsoft-edge.desktop, src/postinst, src/postrm, src/prerm, src/opt/microsoft/msedge/cron/microsoft-edge, src/opt/microsoft/msedge/default-app-block
Reviewing additional files...
Reviewing additional files...
[0/9] Reviewing microsoft-edge-stable.install...
[0/9] Reviewing microsoft-edge-stable.install, src/usr/share/applications/com.microsoft.Edge.desktop...
[0/9] Reviewing microsoft-edge-stable.install, src/usr/share/applications/com.microsoft.Edge.desktop, microsoft-edge-stable.sh...
LLM auditresponse for microsoft-edge-stable.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.install` file is a standard post-installation script for an AUR package. It defines helper functions for colored terminal output and includes `post_install()` and `post_upgrade()` hooks. These hooks only print informational messages to the user:

- They suggest placing custom flags in `~/.config/microsoft-edge-stable-flags.conf` (a standard configuration file path).
- They remind the user that the launcher command is `microsoft-edge-stable`.

There are no network requests, file downloads, obfuscated code, dangerous command execution (`eval`, `curl`, `wget`, `base64`, etc.), or any action that modifies system files or exfiltrates data. The script is purely informational and follows normal packaging conventions.
</details>
<summary>Standard post-install script with informational messages only.</summary>
</security_assessment>

[0/9] Reviewing microsoft-edge-stable.install, src/usr/share/applications/com.microsoft.Edge.desktop, microsoft-edge-stable.sh, src/usr/share/applications/microsoft-edge.desktop...
[1/9] Reviewing src/usr/share/applications/com.microsoft.Edge.desktop, microsoft-edge-stable.sh, src/usr/share/applications/microsoft-edge.desktop...
+ Reviewed microsoft-edge-stable.install. Status: SAFE -- Standard post-install script with informational messages only.
LLM auditresponse for microsoft-edge-stable.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script for launching Microsoft Edge with user-defined command-line flags. It reads a configuration file from the user's own `$XDG_CONFIG_HOME` directory, which is a common and acceptable practice. The script does not make any network requests, execute fetched code, perform obfuscated operations, or modify system files outside of its intended scope. No evidence of a supply-chain attack or malicious behavior is present. The only potential risk would be if the user themselves places malicious flags in the config file, but that is the user's own action, not an injection by the package.
</details>
<summary>Standard wrapper script, no malicious behavior detected.</summary>
</security_assessment>

[1/9] Reviewing src/usr/share/applications/com.microsoft.Edge.desktop, microsoft-edge-stable.sh, src/usr/share/applications/microsoft-edge.desktop, src/postinst...
[2/9] Reviewing src/usr/share/applications/com.microsoft.Edge.desktop, src/usr/share/applications/microsoft-edge.desktop, src/postinst...
+ Reviewed microsoft-edge-stable.sh. Status: SAFE -- Standard wrapper script, no malicious behavior detected.
LLM auditresponse for com.microsoft.Edge.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Linux desktop entry file (.desktop) for Microsoft Edge. It contains localized application names, generic names, comments, and defines menu actions (new window, new private window). All values are static strings; there are no executable commands beyond the intended browser launch path `/usr/bin/microsoft-edge-stable`. No suspicious network requests, obfuscation, file manipulation, or code execution is present. This file poses no security risk.
</details>
<summary>Standard desktop entry file for Microsoft Edge; no security issues.</summary>
</security_assessment>

[2/9] Reviewing src/usr/share/applications/com.microsoft.Edge.desktop, src/usr/share/applications/microsoft-edge.desktop, src/postinst, src/postrm...
[3/9] Reviewing src/usr/share/applications/microsoft-edge.desktop, src/postinst, src/postrm...
+ Reviewed src/usr/share/applications/com.microsoft.Edge.desktop. Status: SAFE -- Standard desktop entry file for Microsoft Edge; no security issues.
LLM auditresponse for postinst:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard post-installation script derived from the Chromium/Microsoft Edge Debian package. It performs routine system integration tasks: installing icons, updating desktop/MIME databases, setting up alternatives, adding an AppArmor profile, and configuring the Microsoft repository signing key and apt sources.  

All network references (e.g., `packages.microsoft.com`) point to Microsoft’s official infrastructure and are expected for a package that provides its own repository. The embedded base64-encoded PGP key is a standard way to include a binary key in a text script; it is not obfuscated malicious code. There are no reverse shells, data exfiltration, unexpected downloads, or execution of attacker-controlled payloads. The script only modifies files within the application’s own scope (`/opt/microsoft/msedge`, `/etc/apparmor.d`, `/usr/share/applications`, alternatives, etc.).  

While the script contains apt-specific commands (e.g., `apt-config`) that are not relevant on Arch Linux, this is a packaging oversight rather than a security issue. No genuinely malicious behavior is present.
</details>
<summary>Standard package setup script, no supply-chain attack.</summary>
</security_assessment>

[3/9] Reviewing src/usr/share/applications/microsoft-edge.desktop, src/postinst, src/postrm, src/prerm...
[4/9] Reviewing src/usr/share/applications/microsoft-edge.desktop, src/postrm, src/prerm...
+ Reviewed src/postinst. Status: SAFE -- Standard package setup script, no supply-chain attack.
LLM auditresponse for postrm:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Debian package post-removal script (`postrm`) for Microsoft Edge. It only performs cleanup actions when the package is purged: removing its defaults file, apt sources list, GPG keyring, and NSS/udev symlinks. No network requests are made, no unexpected data is exfiltrated, and no obfuscated or dangerous commands (eval, curl, wget, etc.) are present. The embedded GPG key data and configuration functions are intended for the install scripts and are not executed during removal. The script follows normal packaging conventions for a system-level application.
</details>
<summary>
Standard cleanup script, no suspicious behavior.</summary>
</security_assessment>

[4/9] Reviewing src/usr/share/applications/microsoft-edge.desktop, src/postrm, src/prerm, src/opt/microsoft/msedge/cron/microsoft-edge...
[5/9] Reviewing src/usr/share/applications/microsoft-edge.desktop, src/prerm, src/opt/microsoft/msedge/cron/microsoft-edge...
+ Reviewed src/postrm. Status: SAFE -- Standard cleanup script, no suspicious behavior.
LLM auditresponse for prerm:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard package pre-removal (`prerm`) script for Microsoft Edge (stable). It performs routine cleanup tasks:
- Uninstalls product icons via `xdg-icon-resource`
- Updates the desktop database cache
- Unloads and removes the AppArmor profile specific to the package
- Removes the package from the `update-alternatives` system for `x-www-browser`, `gnome-www-browser`, and `microsoft-edge`

All commands are conventional and operate only on the package's own installed files or system-wide caches (e.g., icon cache, desktop database, AppArmor policy). No network requests, encoded payloads, file exfiltration, or execution of untrusted code is present. The script is consistent with expected packaging practices for a browser application.
</details>
<summary>
Standard package removal script, no malicious behavior.</summary>
</security_assessment>

[6/9] Reviewing src/usr/share/applications/microsoft-edge.desktop, src/opt/microsoft/msedge/cron/microsoft-edge...
+ Reviewed src/prerm. Status: SAFE -- Standard package removal script, no malicious behavior.
[6/9] Reviewing src/usr/share/applications/microsoft-edge.desktop, src/opt/microsoft/msedge/cron/microsoft-edge, src/opt/microsoft/msedge/default-app-block...
LLM auditresponse for default-app-block:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `default-app-block` contains a static XML configuration defining Microsoft Edge as a default web browser. It specifies paths to the executable, icon, and command templates. There are no dynamic elements, network requests, obfuscated code, or any operations beyond describing browser capabilities. This is a standard configuration fragment used by desktop environment or xdg-utils to register a browser. No security concerns.
</details>
<summary>
Static browser configuration file, no malicious content.</summary>
</security_assessment>

[7/9] Reviewing src/usr/share/applications/microsoft-edge.desktop, src/opt/microsoft/msedge/cron/microsoft-edge...
+ Reviewed src/opt/microsoft/msedge/default-app-block. Status: SAFE -- Static browser configuration file, no malicious content.
LLM auditresponse for microsoft-edge.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Microsoft Edge web browser. It contains localized names, comments, and actions. The `Exec` lines call the legitimate binary `/usr/bin/microsoft-edge-stable` with normal arguments (`%U` for URLs, `--inprivate` for private browsing). There are no external network requests, obfuscated commands, or any operations beyond defining a launcher entry. The file follows the freedesktop.org Desktop Entry Specification and does not exhibit any malicious behavior.
</details>
<summary>Standard desktop entry file for Microsoft Edge, no security issues.</summary>
</security_assessment>

[8/9] Reviewing src/opt/microsoft/msedge/cron/microsoft-edge...
+ Reviewed src/usr/share/applications/microsoft-edge.desktop. Status: SAFE -- Standard desktop entry file for Microsoft Edge, no security issues.
LLM auditresponse for microsoft-edge:
<security_assessment>
<decision>SAFE</decision>
<details>
This script manages APT repository configuration for Microsoft Edge on Debian/Ubuntu systems. It performs expected operations: installing a GPG key (from a hardcoded, base64-encoded block), creating/removing sources list files, and handling dist-upgrade re-enablement. There are no network downloads (no curl/wget), no execution of fetched code, no obfuscation, and no exfiltration attempts. The script sources `/etc/default/microsoft-edge` (a package-managed config file), which is normal for configuration. All file operations are local and confined to standard system paths (keyring, apt sources). No evidence of malicious behavior.
</details>
<summary>Standard repository setup script; no malicious activity.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed src/opt/microsoft/msedge/cron/microsoft-edge. Status: SAFE -- Standard repository setup script; no malicious activity.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 42,681
  Completion Tokens: 6,539
  Total Tokens: 49,220
  Total Cost: $0.004208
  Execution Time: 412.08 seconds

Final Status: SAFE


No issues found.


Audit Skips:

/data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-aux84aok/Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf: [SKIPPED] Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
