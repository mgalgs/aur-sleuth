---
package: opencode-desktop-bin
pkgver: 1.18.22
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 34eecedf33cdb5da67bea8964402044d560850d8
prompt_tokens: 25523
completion_tokens: 5788
total_tokens: 31311
cost: 0.0031682546
execution_time: 155.76
files_reviewed: 8
files_skipped: 0
files_unauditable: 81
unpinned_sources: 0
date: 2026-08-25T11:21:33Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no risk.
  - file: PKGBUILD
    status: safe
    summary: Standard binary AUR package, no malicious behavior found.
  - file: src/usr/share/applications/ai.opencode.desktop.desktop
    status: safe
    summary: Standard desktop entry file, no malicious content.
  - file: src/postrm
    status: safe
    summary: Standard post-removal cleanup; no suspicious operations.
  - file: src/usr/share/applications/opencode-desktop.desktop
    status: safe
    summary: Standard desktop entry; no malicious content.
  - file: src/postinst
    status: safe
    summary: Post-install script performs expected packaging tasks only.
  - file: src/control
    status: safe
    summary: Standard package metadata file, no malicious content.
  - file: src/opt/OpenCode/resources/app-update.yml
    status: safe
    summary: Static updater config pointing to own GitHub repo; no malicious behavior.
---

Cloning https://aur.archlinux.org/opencode-desktop-bin.git...
Cloned opencode-desktop-bin
Analyzing opencode-desktop-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines a `latestver()` helper function, but it is never called during the narrow gate (`makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`). The only top‑level code is variable assignments and function definitions, which are safe. No `pkgver()` function exists (the version is hardcoded). The `source` arrays point to the project’s official GitHub releases and a LICENSE file, all with pinned checksums. No hidden or obfuscated commands execute during sourcing.
</details>
<evidence>
</evidence>
<summary>No malicious code executes during source fetch or sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during source fetch or sourcing.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text file. It contains no executable code, no network requests, no obfuscation, and no system modifications. It is purely a legal notice and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard license file, no risk.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no risk.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a binary Electron based application. All sources are pinned via SHA-256 checksums and point to the official GitHub releases of the upstream project (anomalyco/opencode). The package() function extracts the .deb archive, removes unnecessary bundled components, and creates a launcher script that reads a user config file for extra flags — all typical behavior. There are no suspicious network calls, obfuscated code, file operations outside `$pkgdir`, or signs of exfiltration or backdoors. The `latestver()` helper function is unreferenced in the build process and poses no risk. The file is safe.
</details>
<evidence></evidence>
<summary>Standard binary AUR package, no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary AUR package, no malicious behavior found.
Reviewed all required files.
Deciding which files to review next...
Note: 81 compiled/archived file(s) cannot be audited as text and were not reviewed (opencode-desktop-1.18.22-linux-amd64.deb, src/control.tar.xz, src/data.tar.xz and 78 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
LLM response for file selection:
src/postinst
src/postrm
src/usr/share/applications/ai.opencode.desktop.desktop
src/usr/share/applications/opencode-desktop.desktop
src/opt/OpenCode/resources/app-update.yml
src/control
Decided to review 6 additional files: src/postinst, src/postrm, src/usr/share/applications/ai.opencode.desktop.desktop, src/usr/share/applications/opencode-desktop.desktop, src/opt/OpenCode/resources/app-update.yml, src/control
Reviewing additional files...
Reviewing additional files...
[0/6] Reviewing src/postinst...
[0/6] Reviewing src/postinst, src/postrm...
[0/6] Reviewing src/postinst, src/postrm, src/usr/share/applications/ai.opencode.desktop.desktop...
LLM auditresponse for ai.opencode.desktop.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the OpenCode application. It defines metadata such as the application name, executable path (`/opt/OpenCode/ai.opencode.desktop`), icon, MIME type, and category. There are no inline scripts, network requests, obfuscation, or other suspicious behaviors. The file content is entirely benign and follows expected packaging conventions for a desktop entry.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no malicious content.</summary>
</security_assessment>

[0/6] Reviewing src/postinst, src/postrm, src/usr/share/applications/ai.opencode.desktop.desktop, src/usr/share/applications/opencode-desktop.desktop...
[1/6] Reviewing src/postinst, src/postrm, src/usr/share/applications/opencode-desktop.desktop...
+ Reviewed src/usr/share/applications/ai.opencode.desktop.desktop. Status: SAFE -- Standard desktop entry file, no malicious content.
LLM auditresponse for postrm:
<security_assessment>
<decision>SAFE</decision>
<details>
The `postrm` script performs standard post-removal cleanup: removing a symlink via `update-alternatives` or direct deletion, and removing an AppArmor profile (including unloading it from the kernel if not in a chroot). There are no network operations, no downloads, no execution of untrusted code, no obfuscation, and no exfiltration of data. The commands are all standard, well-known utilities used for their intended purpose. The logic is identical to what one would expect for a package that installs a desktop launcher and an AppArmor profile. No evidence of malicious or unexpected behavior.
</details>
<evidence></evidence>
<summary>Standard post-removal cleanup; no suspicious operations.</summary>
</security_assessment>

[1/6] Reviewing src/postinst, src/postrm, src/usr/share/applications/opencode-desktop.desktop, src/opt/OpenCode/resources/app-update.yml...
[2/6] Reviewing src/postinst, src/usr/share/applications/opencode-desktop.desktop, src/opt/OpenCode/resources/app-update.yml...
+ Reviewed src/postrm. Status: SAFE -- Standard post-removal cleanup; no suspicious operations.
LLM auditresponse for opencode-desktop.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file for the OpenCode application. It defines metadata (name, icon, comment, categories) and the launch command (`Exec=/opt/OpenCode/ai.opencode.desktop %U`). There are no obfuscated commands, no network requests, no file manipulation, and no deviation from expected packaging practices. The file is purely declarative and does not execute any code itself. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard desktop entry; no malicious content.</summary>
</security_assessment>

[2/6] Reviewing src/postinst, src/usr/share/applications/opencode-desktop.desktop, src/opt/OpenCode/resources/app-update.yml, src/control...
[3/6] Reviewing src/postinst, src/opt/OpenCode/resources/app-update.yml, src/control...
+ Reviewed src/usr/share/applications/opencode-desktop.desktop. Status: SAFE -- Standard desktop entry; no malicious content.
LLM auditresponse for postinst:
<security_assessment>
<decision>SAFE</decision>
<details>
This post-installation script performs routine packaging operations for the OpenCode desktop application:

- Sets up a symlink for the desktop file using update-alternatives or a direct link.
- Conditions the chrome-sandbox setuid permission based on kernel user namespace support.
- Refreshes the MIME and desktop databases.
- Installs an AppArmor profile with a compatibility check and loads it if supported.

All actions are confined to the application's own files (/opt/OpenCode/) and standard system integration paths. There is no network activity, no obfuscated code, no data exfiltration, and no unexpected system modifications. The script uses proper error handling (|| true) and follows standard packager patterns.
</details>
<evidence></evidence>
<summary>Post-install script performs expected packaging tasks only.</summary>
</security_assessment>

[4/6] Reviewing src/opt/OpenCode/resources/app-update.yml, src/control...
+ Reviewed src/postinst. Status: SAFE -- Post-install script performs expected packaging tasks only.
LLM auditresponse for control:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Debian control file containing package metadata (name, version, dependencies, etc.). There are no scripts, commands, or network operations. It does nothing beyond describing the package. No evidence of obfuscation, data exfiltration, or supply-chain injection.
</details>
<evidence></evidence>
<summary>Standard package metadata file, no malicious content.</summary>
</security_assessment>

[5/6] Reviewing src/opt/OpenCode/resources/app-update.yml...
+ Reviewed src/control. Status: SAFE -- Standard package metadata file, no malicious content.
LLM auditresponse for app-update.yml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard YAML configuration for an application updater (likely electron-updater). It defines the update source as the GitHub repository `anomalyco/opencode`, which matches the package's upstream. The `provider: github` and `channel: latest` are typical for fetching prebuilt releases. The `updaterCacheDirName` is a local cache directory name; the single quotes and ampersand encoding (`&apos;`) are YAML escaping and not malicious. There are no executable commands, obfuscated strings, unexpected network targets, or file operations. The file only provides static metadata for the application's own update mechanism, which is expected behavior for a desktop application.
</details>
<evidence></evidence>
<summary>Static updater config pointing to own GitHub repo; no malicious behavior.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed src/opt/OpenCode/resources/app-update.yml. Status: SAFE -- Static updater config pointing to own GitHub repo; no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 25,523
  Completion Tokens: 5,788
  Total Tokens: 31,311
  Total Cost: $0.003168
  Execution Time: 155.76 seconds

Final Status: SAFE


No issues found.
