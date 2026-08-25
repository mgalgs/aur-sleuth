---
package: microsoft-edge-stable-bin
pkgver: 151.0.4129.107
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 34eecedf33cdb5da67bea8964402044d560850d8
prompt_tokens: 45632
completion_tokens: 8048
total_tokens: 53680
cost: 0.005469471168
execution_time: 264.6
files_reviewed: 11
files_skipped: 1
files_unauditable: 363
unpinned_sources: 0
date: 2026-08-25T07:18:51Z
file_verdicts:
  - file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
    status: skipped
    summary: "Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for official Microsoft Edge binary.
  - file: microsoft-edge-stable.install
    status: safe
    summary: Harmless install script printing user notes only.
  - file: src/usr/share/applications/com.microsoft.Edge.desktop
    status: safe
    summary: Standard desktop entry; no malicious content found.
  - file: microsoft-edge-stable.sh
    status: safe
    summary: Standard launcher script with no malicious behavior.
  - file: src/usr/share/applications/microsoft-edge.desktop
    status: safe
    summary: Standard .desktop file, no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no security issues.
  - file: src/prerm
    status: safe
    summary: Standard package cleanup script, no malicious behavior.
  - file: src/postrm
    status: safe
    summary: Standard post-removal cleanup script, no security issues.
  - file: src/postinst
    status: safe
    summary: Standard Edge postinst script, no malicious behavior.
  - file: src/opt/microsoft/msedge/default-app-block
    status: safe
    summary: Standard browser default configuration file, no malicious content.
  - file: src/opt/microsoft/msedge/cron/microsoft-edge
    status: safe
    summary: Standard upstream repo-config helper; no malicious behavior detected.
---

Cloning https://aur.archlinux.org/microsoft-edge-stable-bin.git...
Cloned microsoft-edge-stable-bin
Analyzing microsoft-edge-stable-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable declarations, source definitions with pinned checksums, and a `package()` function. The `makepkg --nobuild --nodeps --noprepare` command will download the declared sources (an HTTPS-linked .deb from the official Microsoft repository and two local files) and source the PKGBUILD without executing `package()`. There is no pkgver(), no top-level command substitution or eval, and no code that runs during sourcing that could be malicious. The `package()` function is not executed at this stage, so any code within it is out of scope for this gate. No obfuscation, unexpected network targets, or dangerous operations are present in the sourced portion of the file.
</details>
<evidence></evidence>
<summary>No malicious code in sourced scope; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in sourced scope; safe to fetch sources.
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
This is a standard AUR PKGBUILD for the `microsoft-edge-stable-bin` package. It downloads the official Microsoft Edge .deb from `packages.microsoft.com`, which is the legitimate upstream source. Checksums are provided and pinned (not SKIP). The package() function extracts the archive, sets the suid bit on the sandbox binary (expected for Chromium-based browsers), resizes icons using `imagemagick`, installs a launcher script (`microsoft-edge-stable.sh`) and a license PDF. There is no obfuscated code, no unexpected network requests, no execution of attacker-controlled content, and no deviation from normal packaging practices. The file is safe.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for official Microsoft Edge binary.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for official Microsoft Edge binary.
Reviewed all required files.
Deciding which files to review next...
Note: 363 compiled/archived file(s) cannot be audited as text and were not reviewed (microsoft-edge-stable_151.0.4129.107-1_amd64.deb, src/control.tar.xz, src/data.tar.xz and 360 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
LLM response for file selection:
microsoft-edge-stable.install
microsoft-edge-stable.sh
src/usr/share/applications/com.microsoft.Edge.desktop
src/usr/share/applications/microsoft-edge.desktop
.nvchecker.toml
src/postinst
src/postrm
src/prerm
src/opt/microsoft/msedge/cron/microsoft-edge
src/opt/microsoft/msedge/default-app-block
Decided to review 10 additional files: microsoft-edge-stable.install, microsoft-edge-stable.sh, src/usr/share/applications/com.microsoft.Edge.desktop, src/usr/share/applications/microsoft-edge.desktop, .nvchecker.toml, src/postinst, src/postrm, src/prerm, src/opt/microsoft/msedge/cron/microsoft-edge, src/opt/microsoft/msedge/default-app-block
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing microsoft-edge-stable.install...
[0/10] Reviewing microsoft-edge-stable.install, microsoft-edge-stable.sh...
[0/10] Reviewing microsoft-edge-stable.install, microsoft-edge-stable.sh, src/usr/share/applications/com.microsoft.Edge.desktop...
LLM auditresponse for microsoft-edge-stable.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.install` script for an AUR package. It defines helper functions for colored output and prints informational notes to the user after installation or upgrade. There are no network requests, dangerous commands, obfuscation, file manipulations outside the package's scope, or any other suspicious behavior. The script only displays messages and does not execute or fetch any untrusted content.
</details>
<evidence></evidence>
<summary>Harmless install script printing user notes only.</summary>
</security_assessment>

[0/10] Reviewing microsoft-edge-stable.install, microsoft-edge-stable.sh, src/usr/share/applications/com.microsoft.Edge.desktop, src/usr/share/applications/microsoft-edge.desktop...
[1/10] Reviewing microsoft-edge-stable.sh, src/usr/share/applications/com.microsoft.Edge.desktop, src/usr/share/applications/microsoft-edge.desktop...
+ Reviewed microsoft-edge-stable.install. Status: SAFE -- Harmless install script printing user notes only.
LLM auditresponse for com.microsoft.Edge.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Microsoft Edge web browser. It contains no executable logic, network requests, or obfuscated code. The file only defines metadata (name, translations, categories, MIME types) and launch actions pointing to `/usr/bin/microsoft-edge-stable`. There are no signs of supply-chain injection, backdoors, or data exfiltration. The content is consistent with ordinary packaging practices.
</details>
<evidence></evidence>
<summary>Standard desktop entry; no malicious content found.</summary>
</security_assessment>

[1/10] Reviewing microsoft-edge-stable.sh, src/usr/share/applications/com.microsoft.Edge.desktop, src/usr/share/applications/microsoft-edge.desktop, .nvchecker.toml...
[2/10] Reviewing microsoft-edge-stable.sh, src/usr/share/applications/microsoft-edge.desktop, .nvchecker.toml...
+ Reviewed src/usr/share/applications/com.microsoft.Edge.desktop. Status: SAFE -- Standard desktop entry; no malicious content found.
LLM auditresponse for microsoft-edge-stable.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script launches Microsoft Edge with optional user-defined flags from a configuration file in `$XDG_CONFIG_HOME/microsoft-edge-stable-flags.conf`. It uses standard shell commands (`set -e`, `cat`, `exec`) and does not perform any network requests, download or execute external code, modify system files, or contain obfuscated commands. The config file read is a common practice for passing user preferences, and there is no evidence of malicious behavior. The script is safe and follows expected packaging practices.
</details>
<evidence></evidence>
<summary>Standard launcher script with no malicious behavior.</summary>
</security_assessment>

[3/10] Reviewing src/usr/share/applications/microsoft-edge.desktop, .nvchecker.toml...
+ Reviewed microsoft-edge-stable.sh. Status: SAFE -- Standard launcher script with no malicious behavior.
[3/10] Reviewing src/usr/share/applications/microsoft-edge.desktop, .nvchecker.toml, src/postinst...
LLM auditresponse for microsoft-edge.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org desktop entry file for the Microsoft Edge browser. It contains locale translations, application metadata, and defines two desktop actions (new window and new private window). The Exec lines invoke the binary `/usr/bin/microsoft-edge-stable` with appropriate arguments. There are no network requests, no file operations, no obfuscated code, and no system modifications outside the scope of a standard .desktop file. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/usr/share/applications/microsoft-edge.desktop, .nvchecker.toml, src/postinst, src/postrm...
[4/10] Reviewing .nvchecker.toml, src/postinst, src/postrm...
+ Reviewed src/usr/share/applications/microsoft-edge.desktop. Status: SAFE -- Standard .desktop file, no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for `nvchecker`, a standard tool used by AUR maintainers to automate version checks. It defines a regex-based source that scrapes the official Microsoft packages repository for the latest stable version of microsoft-edge-stable-bin. The URL points to the legitimate upstream (packages.microsoft.com) and there are no encoded commands, network exfiltration, or other malicious behaviors. This is a mundane, expected packaging automation file.</details>
<evidence></evidence>
<summary>Standard nvchecker config, no security issues.</summary>
</security_assessment>

[4/10] Reviewing .nvchecker.toml, src/postinst, src/postrm, src/prerm...
[5/10] Reviewing src/postinst, src/postrm, src/prerm...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no security issues.
LLM auditresponse for prerm:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pre-removal script (prerm) from the upstream Microsoft Edge packaging. It performs expected cleanup actions when the package is removed: uninstalling icons, updating the desktop cache, unloading the AppArmor profile, and removing browser alternatives. There are no suspicious network requests, obfuscated code, or attempts to exfiltrate data. All operations are confined to the package's own resources and standard system maintenance (icon cache, desktop database, alternatives, AppArmor profile). The script is consistent with legitimate packaging practices and poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard package cleanup script, no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing src/postinst, src/postrm, src/prerm, src/opt/microsoft/msedge/cron/microsoft-edge...
[6/10] Reviewing src/postinst, src/postrm, src/opt/microsoft/msedge/cron/microsoft-edge...
+ Reviewed src/prerm. Status: SAFE -- Standard package cleanup script, no malicious behavior.
LLM auditresponse for postrm:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `postrm` maintainer script for the `microsoft-edge-stable-bin` package. It performs cleanup operations when the package is purged, including removal of repository sources lists, GPG keys, default configuration file, and symlinks. All file operations target the package's own installed files or standard system configuration directories (`/usr/share/keyrings/`, `/etc/apt/sources.list.d/`). The hardcoded PGP key data is used to re-add the repository signing key during installation; during removal it is simply deleted. There is no evidence of data exfiltration, execution of untrusted code, obfuscation, or any other malicious activity. The script behaves exactly as expected for a package that manages its own apt repository.
</details>
<evidence></evidence>
<summary>Standard post-removal cleanup script, no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/postinst, src/postrm, src/opt/microsoft/msedge/cron/microsoft-edge, src/opt/microsoft/msedge/default-app-block...
[7/10] Reviewing src/postinst, src/opt/microsoft/msedge/cron/microsoft-edge, src/opt/microsoft/msedge/default-app-block...
+ Reviewed src/postrm. Status: SAFE -- Standard post-removal cleanup script, no security issues.
LLM auditresponse for postinst:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard post-installation script for Microsoft Edge (Debian/Ubuntu packaging), included as part of the upstream source in the AUR package. It performs expected setup tasks such as installing application icons, updating desktop‑database and MIME type associations, adding Edge to the GNOME default applications list, configuring the Edge management service group and file permissions, reloading an AppArmor profile if present, setting up update‑alternatives entries, and installing the Microsoft repository GPG key and apt sources (pointing to `packages.microsoft.com`).  

All network destinations are Microsoft’s official domain, and the base64‑encoded GPG key is a standard method for distributing the repository signing key—not obfuscation for malicious purposes. There is no evidence of exfiltration of local data, download or execution of code from unexpected hosts, backdoors, or other supply‑chain attack patterns. The operations are confined to the package’s own files and system configuration that supports the browser’s stated functionality.
</details>
<evidence></evidence>
<summary>Standard Edge postinst script, no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/opt/microsoft/msedge/cron/microsoft-edge, src/opt/microsoft/msedge/default-app-block...
+ Reviewed src/postinst. Status: SAFE -- Standard Edge postinst script, no malicious behavior.
LLM auditresponse for default-app-block:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `default-app-block` is a configuration file that registers Microsoft Edge as the default web browser on the system. It contains standard XML-like fields such as name, executable path, command, icon name, and terminal settings. The paths point to `/opt/microsoft/msedge/microsoft-edge`, which is the expected installation location for Microsoft Edge in a typical AUR package. There are no network requests, obfuscated code, unusual file operations, or system modifications beyond what is necessary for default browser registration. This is a normal and expected packaging practice for a browser package.
</details>
<evidence></evidence>
<summary>Standard browser default configuration file, no malicious content.</summary>
</security_assessment>

[9/10] Reviewing src/opt/microsoft/msedge/cron/microsoft-edge...
+ Reviewed src/opt/microsoft/msedge/default-app-block. Status: SAFE -- Standard browser default configuration file, no malicious content.
LLM auditresponse for microsoft-edge:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard upstream Microsoft Edge Debian repository configuration helper. It installs Microsoft's public GPG signing key into /usr/share/keyrings and writes apt source entries pointing to packages.microsoft.com, which is the package's own official upstream host. The base64-embedded data is a public signing key, not an obfuscated payload or secret. There are no unexpected network requests, no downloads of executable code, and no exfiltration of local data.

The use of `eval` with `apt-config shell` and sourcing /etc/default/microsoft-edge are conventional Debian maintainer-script patterns. The script only modifies apt keyring and sources configuration within its own application scope. No evidence of injected malicious code, backdoors, or supply-chain attack behavior was found.
</details>
<evidence>
</evidence>
<summary>
Standard upstream repo-config helper; no malicious behavior detected.
</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/opt/microsoft/msedge/cron/microsoft-edge. Status: SAFE -- Standard upstream repo-config helper; no malicious behavior detected.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 45,632
  Completion Tokens: 8,048
  Total Tokens: 53,680
  Total Cost: $0.005469
  Execution Time: 264.60 seconds

Final Status: SAFE


No issues found.


Audit Skips:

Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf: [SKIPPED] Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
