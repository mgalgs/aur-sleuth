---
package: microsoft-edge-stable-bin
pkgver: 149.0.4022.80
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 40843
completion_tokens: 8518
total_tokens: 49361
cost: 0.00520911
execution_time: 89.75
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T08:10:21Z
file_verdicts:
  - file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
    status: skipped
    summary: "Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no security concerns.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no security concerns.
  - file: src/opt/microsoft/msedge/default-app-block
    status: safe
    summary: Static browser configuration file, no security concerns.
  - file: src/prerm
    status: safe
    summary: Standard prerm script with no malicious content.
  - file: src/opt/microsoft/msedge/apparmor.d/microsoft-edge-stable
    status: safe
    summary: Standard AppArmor profile for Edge sandbox.
  - file: microsoft-edge-stable.install
    status: safe
    summary: Benign install script with informational notes only.
  - file: src/postrm
    status: safe
    summary: Standard Debian postrm, no malicious behavior.
  - file: src/opt/microsoft/msedge/cron/microsoft-edge
    status: safe
    summary: Standard repository configuration, no malicious activity.
  - file: src/usr/share/applications/com.microsoft.Edge.desktop
    status: safe
    summary: Standard desktop entry, no security concerns.
  - file: microsoft-edge-stable.sh
    status: safe
    summary: Benign launcher script; no security threats.
  - file: src/postinst
    status: safe
    summary: Safe – standard browser post-install script, no malicious content.
---

Cloning https://aur.archlinux.org/microsoft-edge-stable-bin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-kf87duqj...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-kf87duqj
Analyzing microsoft-edge-stable-bin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-kf87duqj) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and a `package()` function. No code executes at global scope or in `pkgver()` (which is not defined). The `source` array references an official Microsoft URL and two local files with pinned SHA-256 checksums. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only fetch and verify these sources; no malicious commands are triggered during sourcing or source retrieval.
</details>
<summary>No executable code in global scope or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No executable code in global scope or pkgver().[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
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
This PKGBUILD follows standard AUR packaging practices for a binary browser package. It downloads the official Microsoft Edge .deb from `packages.microsoft.com`, verifies it with a hardcoded SHA256 checksum, and installs it. The only operations performed are extracting the archive, setting the `suid` bit on the sandbox binary (a normal requirement for Chromium-based browsers), resizing icons with `magick`, installing icons and a launcher script, and removing interim files. There is no obfuscated code, no network requests to unexpected hosts, no execution of downloaded scripts, and no attempt to exfiltrate data. The launcher script (`microsoft-edge-stable.sh`) is provided in the same source array and is a standard wrapper. No supply-chain attack indicators are present.
</details>
<summary>Standard AUR PKGBUILD, no security concerns.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no security concerns.
Reviewed all required files.
Deciding which files to review next...
LLM response for file selection:
microsoft-edge-stable.install
microsoft-edge-stable.sh
src/usr/share/applications/com.microsoft.Edge.desktop
src/postinst
src/postrm
src/prerm
src/opt/microsoft/msedge/cron/microsoft-edge
src/opt/microsoft/msedge/default-app-block
.nvchecker.toml
src/opt/microsoft/msedge/apparmor.d/microsoft-edge-stable
Decided to review 10 additional files: microsoft-edge-stable.install, microsoft-edge-stable.sh, src/usr/share/applications/com.microsoft.Edge.desktop, src/postinst, src/postrm, src/prerm, src/opt/microsoft/msedge/cron/microsoft-edge, src/opt/microsoft/msedge/default-app-block, .nvchecker.toml, src/opt/microsoft/msedge/apparmor.d/microsoft-edge-stable
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing microsoft-edge-stable.sh...
[0/10] Reviewing microsoft-edge-stable.sh, microsoft-edge-stable.install...
[0/10] Reviewing microsoft-edge-stable.sh, microsoft-edge-stable.install, src/usr/share/applications/com.microsoft.Edge.desktop...
[0/10] Reviewing microsoft-edge-stable.sh, microsoft-edge-stable.install, src/usr/share/applications/com.microsoft.Edge.desktop, src/postinst...
[0/10] Reviewing microsoft-edge-stable.sh, microsoft-edge-stable.install, src/usr/share/applications/com.microsoft.Edge.desktop, src/postinst, src/prerm...
[0/10] Reviewing microsoft-edge-stable.sh, microsoft-edge-stable.install, src/usr/share/applications/com.microsoft.Edge.desktop, src/postinst, src/prerm, src/postrm...
[0/10] Reviewing microsoft-edge-stable.sh, microsoft-edge-stable.install, src/usr/share/applications/com.microsoft.Edge.desktop, src/postinst, src/prerm, src/postrm, src/opt/microsoft/msedge/cron/microsoft-edge...
[0/10] Reviewing microsoft-edge-stable.sh, microsoft-edge-stable.install, src/usr/share/applications/com.microsoft.Edge.desktop, src/postinst, src/prerm, src/postrm, src/opt/microsoft/msedge/cron/microsoft-edge, .nvchecker.toml...
[0/10] Reviewing microsoft-edge-stable.sh, microsoft-edge-stable.install, src/usr/share/applications/com.microsoft.Edge.desktop, src/postinst, src/prerm, src/postrm, src/opt/microsoft/msedge/cron/microsoft-edge, .nvchecker.toml, src/opt/microsoft/msedge/default-app-block...
[0/10] Reviewing microsoft-edge-stable.sh, microsoft-edge-stable.install, src/usr/share/applications/com.microsoft.Edge.desktop, src/postinst, src/prerm, src/postrm, src/opt/microsoft/msedge/cron/microsoft-edge, .nvchecker.toml, src/opt/microsoft/msedge/default-app-block, src/opt/microsoft/msedge/apparmor.d/microsoft-edge-stable...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a TOML configuration for `nvchecker`, a tool that checks for new upstream versions. It defines a regex source that scrapes the official Microsoft Edge package repository (`https://packages.microsoft.com/repos/edge/dists/stable/main/binary-amd64/Packages`) to extract the version number. This is standard and expected behavior—no obfuscation, unexpected commands, or exfiltration. The URL points to the legitimate upstream host.
</details>
<summary>Standard nvchecker config; no security concerns.</summary>
</security_assessment>

[1/10] Reviewing microsoft-edge-stable.sh, microsoft-edge-stable.install, src/usr/share/applications/com.microsoft.Edge.desktop, src/postinst, src/prerm, src/postrm, src/opt/microsoft/msedge/cron/microsoft-edge, src/opt/microsoft/msedge/default-app-block, src/opt/microsoft/msedge/apparmor.d/microsoft-edge-stable...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no security concerns.
LLM auditresponse for default-app-block:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a static XML configuration snippet that defines Microsoft Edge as a web browser for a desktop environment or similar system. It contains only metadata such as the browser name, executable path, command templates, icon, and terminal settings. There is no executable code, no network requests, no obfuscation, and no system modifications beyond standard browser registration. The content is consistent with normal packaging practices for defining a default browser entry.
</details>
<summary>Static browser configuration file, no security concerns.</summary>
</security_assessment>

[2/10] Reviewing microsoft-edge-stable.sh, microsoft-edge-stable.install, src/usr/share/applications/com.microsoft.Edge.desktop, src/postinst, src/prerm, src/postrm, src/opt/microsoft/msedge/cron/microsoft-edge, src/opt/microsoft/msedge/apparmor.d/microsoft-edge-stable...
+ Reviewed src/opt/microsoft/msedge/default-app-block. Status: SAFE -- Static browser configuration file, no security concerns.
LLM auditresponse for prerm:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard package removal (prerm) script for microsoft-edge-stable. It performs expected cleanup operations: uninstalling application icons via `xdg-icon-resource`, updating the desktop-file MIME-type cache, unloading a package-specific AppArmor profile under `/etc/apparmor.d/microsoft-edge-stable`, and removing the browser from the Debian/Arch alternatives system (`update-alternatives`). There are no network requests, obfuscated code, or operations outside the package's own scope. The script follows standard packaging conventions and does not exhibit any malicious behavior.
</details>
<summary>Standard prerm script with no malicious content.</summary>
</security_assessment>

[3/10] Reviewing microsoft-edge-stable.sh, microsoft-edge-stable.install, src/usr/share/applications/com.microsoft.Edge.desktop, src/postinst, src/postrm, src/opt/microsoft/msedge/cron/microsoft-edge, src/opt/microsoft/msedge/apparmor.d/microsoft-edge-stable...
+ Reviewed src/prerm. Status: SAFE -- Standard prerm script with no malicious content.
LLM auditresponse for microsoft-edge-stable:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an AppArmor profile for the Microsoft Edge browser. It sets the profile to `unconfined` (which allows the application to run without AppArmor restrictions) and grants the `userns` permission (user namespaces) which is necessary for the Chromium sandbox on newer Ubuntu releases. This is a standard and expected security configuration for a browser package on systems that restrict unprivileged user namespaces. There is no evidence of malicious behavior, obfuscation, or supply-chain attack. The file is safe.
</details>
<summary>Standard AppArmor profile for Edge sandbox.</summary>
</security_assessment>

[4/10] Reviewing microsoft-edge-stable.sh, microsoft-edge-stable.install, src/usr/share/applications/com.microsoft.Edge.desktop, src/postinst, src/postrm, src/opt/microsoft/msedge/cron/microsoft-edge...
+ Reviewed src/opt/microsoft/msedge/apparmor.d/microsoft-edge-stable. Status: SAFE -- Standard AppArmor profile for Edge sandbox.
LLM auditresponse for microsoft-edge-stable.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.install` script for an AUR package. It defines helper functions for colored output and then implements `post_install` and `post_upgrade` hooks that simply print informational notes to the user about custom flags and the launcher name. There are no dangerous commands (e.g., `curl`, `wget`, `eval`, `base64`), no file system modifications, no network requests, and no obfuscated code. This is entirely benign packaging behavior.
</details>
<summary>Benign install script with informational notes only.</summary>
</security_assessment>

[5/10] Reviewing microsoft-edge-stable.sh, src/usr/share/applications/com.microsoft.Edge.desktop, src/postinst, src/postrm, src/opt/microsoft/msedge/cron/microsoft-edge...
+ Reviewed microsoft-edge-stable.install. Status: SAFE -- Benign install script with informational notes only.
LLM auditresponse for postrm:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Debian/Ubuntu postrm script for the Microsoft Edge package. It performs typical cleanup actions on purge: removing the repository configuration (`/etc/apt/sources.list.d/microsoft-edge.sources`), uninstalling the Microsoft GPG key from `/usr/share/keyrings/`, deleting the defaults file `/etc/default/microsoft-edge`, and cleaning up NSS/udev symlinks under `/opt/microsoft/msedge/`.  

All operations are scoped to the package’s own files and directories. The embedded base64-encoded PGP key is the legitimate Microsoft signing key for the official repository at `packages.microsoft.com`. No network requests, code execution from external sources, obfuscated commands, or attempts to exfiltrate data are present.  

While this script is designed for APT-based systems and its inclusion in an Arch package is atypical, that is a packaging consistency issue, not evidence of malice. The script does not perform any genuinely dangerous actions beyond standard package lifecycle management.
</details>
<summary>Standard Debian postrm, no malicious behavior.</summary>
</security_assessment>

[6/10] Reviewing microsoft-edge-stable.sh, src/usr/share/applications/com.microsoft.Edge.desktop, src/postinst, src/opt/microsoft/msedge/cron/microsoft-edge...
+ Reviewed src/postrm. Status: SAFE -- Standard Debian postrm, no malicious behavior.
LLM auditresponse for microsoft-edge:
<security_assessment>
<decision>SAFE</decision>
<details>
The script performs routine Debian/Ubuntu repository configuration for Microsoft Edge: it installs a static, embedded GPG key and creates an APT sources file pointing to the official `https://packages.microsoft.com/repos/edge-stable` repository. No network requests, code downloads, or remote executions occur during the script execution. All operations are local file manipulations (adding/removing keys and sources lists), and the embedded base64 key data is fixed and non-executable. The sourcing of `/etc/default/microsoft-edge` is a standard configuration mechanism. There is no obfuscation, backdoors, or unexpected behavior.
</details>
<summary>Standard repository configuration, no malicious activity.</summary>
</security_assessment>

[7/10] Reviewing microsoft-edge-stable.sh, src/usr/share/applications/com.microsoft.Edge.desktop, src/postinst...
+ Reviewed src/opt/microsoft/msedge/cron/microsoft-edge. Status: SAFE -- Standard repository configuration, no malicious activity.
LLM auditresponse for com.microsoft.Edge.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard desktop entry (<code>.desktop</code>) file for Microsoft Edge. It contains no executable code apart from the expected <code>Exec</code> lines that invoke the Edge browser binary (<code>/usr/bin/microsoft-edge-stable</code>) with normal arguments (<code>%U</code>, <code>--inprivate</code>). The remainder of the file consists solely of metadata (name, comment, icon, categories, MIME types) and translations. There are no network requests, file modifications, obfuscated content, or any operations outside of what is typical for a desktop launcher. No signs of malicious or supply-chain attack behavior are present.
</details>
<summary>
Standard desktop entry, no security concerns.</summary>
</security_assessment>

[8/10] Reviewing microsoft-edge-stable.sh, src/postinst...
+ Reviewed src/usr/share/applications/com.microsoft.Edge.desktop. Status: SAFE -- Standard desktop entry, no security concerns.
LLM auditresponse for microsoft-edge-stable.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher script for Microsoft Edge Stable. It performs only the following operations: sets a fallback for `XDG_CONFIG_HOME`, reads optional user‑provided flags from a config file under that directory, and passes them along with command‑line arguments to the Edge binary via `exec`. There are no network requests, obfuscated code, dangerous commands (`eval`, `curl`, `wget`, `base64`), or system modifications outside the application’s own scope. The config file is under the user’s own `~/.config` and is entirely controlled by the user; reading it is normal and expected behavior. No evidence of a supply‑chain attack or malicious intent.
</details>
<summary>Benign launcher script; no security threats.</summary>
</security_assessment>

[9/10] Reviewing src/postinst...
+ Reviewed microsoft-edge-stable.sh. Status: SAFE -- Benign launcher script; no security threats.
LLM auditresponse for postinst:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard post-installation script from an official Microsoft Edge Debian package. It performs routine installation tasks: installing icons, updating the desktop database, setting the browser as the default for MIME types, configuring AppArmor, registering update-alternatives, and adding the official Microsoft repository signing key and APT sources. All network destinations (`packages.microsoft.com`) and file modifications are within the expected scope of a browser package. The script does not exfiltrate data, download or execute code from unexpected hosts, use obfuscated commands, or contain backdoors. The APT-specific logic (repository setup, GPG key installation) is harmless on Arch Linux – it will either be skipped gracefully or create unnecessary files, but this is not malicious, just leftover Debian packaging that ships with the upstream `.deb`.
</details>
<summary>Safe – standard browser post-install script, no malicious content.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/postinst. Status: SAFE -- Safe – standard browser post-install script, no malicious content.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 40,843
  Completion Tokens: 8,518
  Total Tokens: 49,361
  Total Cost: $0.005209
  Execution Time: 89.75 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-microsoft-edge-stable-bin.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-kf87duqj/Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf: [SKIPPED] Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
