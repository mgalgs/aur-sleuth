---
package: microsoft-edge-stable-bin
pkgver: 151.0.4129.107
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 34eecedf33cdb5da67bea8964402044d560850d8
prompt_tokens: 43271
completion_tokens: 6685
total_tokens: 49956
cost: 0.0046785466
execution_time: 290.15
files_reviewed: 11
files_skipped: 1
files_unauditable: 363
unpinned_sources: 0
date: 2026-08-25T15:21:32Z
file_verdicts:
  - file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
    status: skipped
    summary: "Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for official Edge binary package, no malicious elements.
  - file: microsoft-edge-stable.install
    status: safe
    summary: Standard install script with informational messages only.
  - file: src/usr/share/applications/com.microsoft.Edge.desktop
    status: safe
    summary: Standard desktop entry file; no security issues.
  - file: src/usr/share/applications/microsoft-edge.desktop
    status: safe
    summary: Standard desktop entry file, no security concerns.
  - file: microsoft-edge-stable.sh
    status: safe
    summary: Benign launcher for Microsoft Edge.
  - file: .nvchecker.toml
    status: safe
    summary: Standard version-check configuration, no malicious content.
  - file: src/postinst
    status: safe
    summary: Upstream Debian postinst script, no malicious activity.
  - file: src/control
    status: safe
    summary: Standard package metadata file, no security issues.
  - file: src/prerm
    status: safe
    summary: Standard package removal script, no malicious behavior detected.
  - file: src/opt/microsoft/msedge/default-app-block
    status: safe
    summary: Static configuration file, no security issues.
  - file: src/postrm
    status: safe
    summary: Standard cleanup script, no malicious behavior.
---

Cloning https://aur.archlinux.org/microsoft-edge-stable-bin.git...
Cloned microsoft-edge-stable-bin
Analyzing microsoft-edge-stable-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables, sources, and a `package()` function. The commands `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will source the global scope (assignments only) and fetch the listed sources from `packages.microsoft.com` and local files. No `pkgver()` function exists, and no top-level command substitutions or dangerous operations are present. The `package()` function contains file extraction and icon manipulation, but it is not executed during these commands. All sources are pinned with sha256sums (none SKIP), and the URL refers to the official Microsoft Edge repository. There is no obfuscated code, no unexpected network requests, and no code execution in the scopes triggered by this narrow operation.
</details>
<evidence></evidence>
<summary>No malicious code in sourcing scope; all safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in sourcing scope; all safe.
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
The PKGBUILD is a standard packaging file for the official Microsoft Edge browser from the Microsoft repository. All sources point to `packages.microsoft.com`, the official Microsoft package repository, with valid SHA256 checksums. The build process extracts a `.deb` archive, sets the suid bit on the sandbox binary (expected for Chromium-based browsers), resizes icons using imagemagick, installs icons, and places a launcher script and license. No suspicious network requests, obfuscated code, dangerous commands, or unexpected file operations are present. The package follows normal AUR packaging practices for a prebuilt binary package.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD for official Edge binary package, no malicious elements.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for official Edge binary package, no malicious elements.
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
src/control
src/opt/microsoft/msedge/default-app-block
Decided to review 10 additional files: microsoft-edge-stable.install, microsoft-edge-stable.sh, src/usr/share/applications/com.microsoft.Edge.desktop, src/usr/share/applications/microsoft-edge.desktop, .nvchecker.toml, src/postinst, src/postrm, src/prerm, src/control, src/opt/microsoft/msedge/default-app-block
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing microsoft-edge-stable.install...
[0/10] Reviewing microsoft-edge-stable.install, microsoft-edge-stable.sh...
[0/10] Reviewing microsoft-edge-stable.install, microsoft-edge-stable.sh, src/usr/share/applications/com.microsoft.Edge.desktop...
LLM auditresponse for microsoft-edge-stable.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script for the microsoft-edge-stable-bin AUR package. It defines helper functions for colored output and provides two hooks: `post_install()` and `post_upgrade()`. Both simply print informational messages to the user advising them where to place custom flags and what the launcher is called. There is no code that downloads or executes external content, exfiltrates data, modifies system files outside its own scope, or performs any other operation that would indicate a supply-chain attack. The content is entirely consistent with normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard install script with informational messages only.</summary>
</security_assessment>

[1/10] Reviewing microsoft-edge-stable.sh, src/usr/share/applications/com.microsoft.Edge.desktop...
+ Reviewed microsoft-edge-stable.install. Status: SAFE -- Standard install script with informational messages only.
[1/10] Reviewing microsoft-edge-stable.sh, src/usr/share/applications/com.microsoft.Edge.desktop, src/usr/share/applications/microsoft-edge.desktop...
LLM auditresponse for com.microsoft.Edge.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Freedesktop.org `.desktop` file for Microsoft Edge. It defines the application entry, localized names and comments, MIME types, and two desktop actions ("New Window" and "New InPrivate Window"). The `Exec` lines reference the system binary `/usr/bin/microsoft-edge-stable` with expected arguments (`%U`, `--inprivate`). There is no obfuscation, encoded payloads, network requests, or unexpected commands. The content is consistent with a legitimate application launcher for the Microsoft Edge browser package.
</details>
<evidence></evidence>
<summary>Standard desktop entry file; no security issues.</summary>
</security_assessment>

[1/10] Reviewing microsoft-edge-stable.sh, src/usr/share/applications/com.microsoft.Edge.desktop, src/usr/share/applications/microsoft-edge.desktop, .nvchecker.toml...
[2/10] Reviewing microsoft-edge-stable.sh, src/usr/share/applications/microsoft-edge.desktop, .nvchecker.toml...
+ Reviewed src/usr/share/applications/com.microsoft.Edge.desktop. Status: SAFE -- Standard desktop entry file; no security issues.
LLM auditresponse for microsoft-edge.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Linux desktop entry file for Microsoft Edge. It contains localized application metadata (name, generic name, comment), execution paths pointing to `/usr/bin/microsoft-edge-stable`, MIME type associations, and desktop actions for opening new windows (including InPrivate mode). No obfuscated code, network requests, dangerous commands, or system modifications are present. The content is consistent with legitimate packaging practices and does not exhibit any malicious behavior.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security concerns.</summary>
</security_assessment>

[2/10] Reviewing microsoft-edge-stable.sh, src/usr/share/applications/microsoft-edge.desktop, .nvchecker.toml, src/postinst...
[3/10] Reviewing microsoft-edge-stable.sh, .nvchecker.toml, src/postinst...
+ Reviewed src/usr/share/applications/microsoft-edge.desktop. Status: SAFE -- Standard desktop entry file, no security concerns.
LLM auditresponse for microsoft-edge-stable.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher script for Microsoft Edge. It reads optional flags from a user configuration file and passes them to the Edge binary at `/opt/microsoft/msedge/microsoft-edge`. There are no network requests, obfuscated code, unusual encoding, downloads, or file modifications beyond the intended purpose. The unquoted variable `$EDGE_USER_FLAGS` is a common shell scripting pattern (though it can lead to word splitting), but it does not constitute a supply chain attack or malicious behavior. The script conforms to typical AUR packaging practices for launching a proprietary browser with user-configurable flags.
</details>
<evidence></evidence>
<summary>Benign launcher for Microsoft Edge.</summary>
</security_assessment>

[3/10] Reviewing microsoft-edge-stable.sh, .nvchecker.toml, src/postinst, src/postrm...
[4/10] Reviewing .nvchecker.toml, src/postinst, src/postrm...
+ Reviewed microsoft-edge-stable.sh. Status: SAFE -- Benign launcher for Microsoft Edge.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a configuration for the `nvchecker` tool, which is used to monitor upstream versions of software. It defines a source that fetches the Debian Packages file from Microsoft’s official repository (`packages.microsoft.com`) and extracts the version string using a regex. There is no code execution, network requests outside of the tool’s own operation, or any obfuscation. This is a standard packaging helper configuration with no malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard version-check configuration, no malicious content.</summary>
</security_assessment>

[4/10] Reviewing .nvchecker.toml, src/postinst, src/postrm, src/prerm...
[5/10] Reviewing src/postinst, src/postrm, src/prerm...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard version-check configuration, no malicious content.
LLM auditresponse for postinst:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the upstream post-installation script from Microsoft's official Edge .deb package. It performs standard package management tasks: installing icons, updating desktop databases, configuring MIME type associations, setting up browser alternatives, adding an apt repository and GPG key (pointing to `packages.microsoft.com`), and enabling enterprise management features. The base64-encoded GPG key is the known Microsoft release signing key, not obfuscated code. All network destinations are Microsoft's official infrastructure. There is no evidence of data exfiltration, backdoors, or execution of attacker-controlled code. The script is consistent with legitimate Debian packaging practices and contains no supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Upstream Debian postinst script, no malicious activity.</summary>
</security_assessment>

[5/10] Reviewing src/postinst, src/postrm, src/prerm, src/control...
[6/10] Reviewing src/postrm, src/prerm, src/control...
+ Reviewed src/postinst. Status: SAFE -- Upstream Debian postinst script, no malicious activity.
LLM auditresponse for control:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Debian package control file for Microsoft Edge. It contains only metadata (package name, version, architecture, dependencies, description) and no executable code, scripts, or obfuscated content. The listed dependencies are typical for a modern web browser and include common system libraries and utilities (wget, xdg-utils). There is no evidence of supply-chain injection, network requests to unexpected hosts, or dangerous commands. The file is a straightforward upstream packaging artifact.
</details>
<evidence></evidence>
<summary>Standard package metadata file, no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/postrm, src/prerm, src/control, src/opt/microsoft/msedge/default-app-block...
[7/10] Reviewing src/postrm, src/prerm, src/opt/microsoft/msedge/default-app-block...
+ Reviewed src/control. Status: SAFE -- Standard package metadata file, no security issues.
LLM auditresponse for prerm:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pre-removal (prerm) script for the Microsoft Edge browser package. It performs expected cleanup operations: removing installed icons via `xdg-icon-resource`, updating the desktop database cache, unloading AppArmor profiles, and removing the package from the alternatives system. There are no network requests, no obfuscated or encoded commands, no unexpected file operations outside the package&apos;s own installed files, and no evidence of malicious injection. The script is consistent with standard packaging practices and matches the upstream Chromium/Microsoft Edge prerm script used in Debian/Ubuntu distributions.
</details>
<evidence></evidence>
<summary>Standard package removal script, no malicious behavior detected.</summary>
</security_assessment>

[8/10] Reviewing src/postrm, src/opt/microsoft/msedge/default-app-block...
+ Reviewed src/prerm. Status: SAFE -- Standard package removal script, no malicious behavior detected.
LLM auditresponse for default-app-block:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard XML configuration snippet used to register Microsoft Edge as a default web browser option on Linux (likely for xdg-utils or similar). It contains no executable code, no network requests, no obfuscation, and no operations that modify the system outside of its intended purpose (registering a browser). The paths and commands reference the package's own installed binary at `/opt/microsoft/msedge/microsoft-edge`, which is expected. There is no evidence of malicious injection or supply-chain attack.
</details>
<evidence></evidence>
<summary>Static configuration file, no security issues.</summary>
</security_assessment>

[9/10] Reviewing src/postrm...
+ Reviewed src/opt/microsoft/msedge/default-app-block. Status: SAFE -- Static configuration file, no security issues.
LLM auditresponse for postrm:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard post-removal script for the Microsoft Edge browser package. It performs expected cleanup operations on purge: removing the defaults file, apt repository sources, GPG key, and NSS library symlinks. The embedded GPG key data is decoded with `base64 -d` and written to a keyring file, which is a normal package management operation. There are no network requests, obfuscated code, or unusual system modifications. All operations are confined to the package's own configuration and installation paths. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard cleanup script, no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/postrm. Status: SAFE -- Standard cleanup script, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 43,271
  Completion Tokens: 6,685
  Total Tokens: 49,956
  Total Cost: $0.004679
  Execution Time: 290.15 seconds

Final Status: SAFE


No issues found.


Audit Skips:

Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf: [SKIPPED] Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
