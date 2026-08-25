---
package: opencode-desktop-bin
pkgver: 1.18.22
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 34eecedf33cdb5da67bea8964402044d560850d8
prompt_tokens: 23599
completion_tokens: 5656
total_tokens: 29255
cost: 0.003093324066
execution_time: 741.63
files_reviewed: 7
files_skipped: 0
files_unauditable: 81
unpinned_sources: 0
date: 2026-08-25T07:26:48Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard MIT license text; no security concerns found.
  - file: PKGBUILD
    status: safe
    summary: Standard binary AUR package; no malicious code found.
  - file: src/usr/share/applications/ai.opencode.desktop.desktop
    status: safe
    summary: Standard desktop entry file with no security concerns.
  - file: src/usr/share/applications/opencode-desktop.desktop
    status: safe
    summary: Standard desktop entry file; no malicious content or suspicious behavior detected.
  - file: src/opt/OpenCode/resources/app-update.yml
    status: safe
    summary: Standard auto-update configuration file, no security issues.
  - file: src/postrm
    status: safe
    summary: Clean post-removal script; no malicious behavior.
  - file: src/postinst
    status: safe
    summary: Standard post-install script; no malicious indicators.
---

Cloning https://aur.archlinux.org/opencode-desktop-bin.git...
Cloned opencode-desktop-bin
Analyzing opencode-desktop-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines static global variables (`pkgver`, `source`, `sha256sums`, etc.) and a helper function `latestver()` that is never called during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The `latestver()` function is only a convenience for manual maintainer use and does not run automatically.

All sources are fetched over HTTPS from the official `anomalyco/opencode` GitHub repository, which is the expected upstream for this package. There are no obfuscated commands, dangerous top-level command substitutions, or untrusted network destinations. The `sha256sums` are hardcoded and verified (not SKIP). No code that executes during source fetching or PKGBUILD sourcing performs any network exfiltration, unexpected downloads, or system modifications. The `package()` function is not executed at this stage.

Therefore, running the two commands is safe.
</details>
<evidence></evidence>
<summary>No malicious code in global scope or pkgver.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope or pkgver.
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
This file is the standard MIT License text, commonly included in software packages. It contains no executable code, no network operations, no file manipulation, and no suspicious content. The &quot; entities are simply HTML-escaped quotation marks and do not represent obfuscation or encoded data. There is nothing here that deviates from standard packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard MIT license text; no security concerns found.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard MIT license text; no security concerns found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard practices for a binary AUR package. All sources are fetched from the official GitHub repository of the upstream project (anomalyco/opencode). Checksums are pinned for all tarballs. The `package()` function extracts the `.deb`, rearranges files, and creates a launcher script; it performs no unexpected network requests, obfuscated code, or system modifications outside the package&#x27;s own scope. The `latestver()` helper function is defined for manual maintainer use and is not executed during build. No evidence of supply-chain injection or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard binary AUR package; no malicious code found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary AUR package; no malicious code found.
Reviewed all required files.
Deciding which files to review next...
Note: 81 compiled/archived file(s) cannot be audited as text and were not reviewed (opencode-desktop-1.18.22-linux-amd64.deb, src/control.tar.xz, src/data.tar.xz and 78 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
LLM response for file selection:
src/postinst
src/postrm
src/usr/share/applications/ai.opencode.desktop.desktop
src/usr/share/applications/opencode-desktop.desktop
src/opt/OpenCode/resources/app-update.yml
Decided to review 5 additional files: src/postinst, src/postrm, src/usr/share/applications/ai.opencode.desktop.desktop, src/usr/share/applications/opencode-desktop.desktop, src/opt/OpenCode/resources/app-update.yml
Reviewing additional files...
Reviewing additional files...
[0/5] Reviewing src/postinst...
[0/5] Reviewing src/postinst, src/postrm...
[0/5] Reviewing src/postinst, src/postrm, src/usr/share/applications/ai.opencode.desktop.desktop...
LLM auditresponse for ai.opencode.desktop.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file (`.desktop`) for the OpenCode application. It contains only metadata such as the application name, executable path, icon, MIME type, and categories. There are no embedded commands, network requests, encoded payloads, or any other suspicious content. The file conforms to the freedesktop.org Desktop Entry Specification and is typical for packaging GUI applications on Linux.
</details>
<evidence></evidence>
<summary>Standard desktop entry file with no security concerns.</summary>
</security_assessment>

[0/5] Reviewing src/postinst, src/postrm, src/usr/share/applications/ai.opencode.desktop.desktop, src/usr/share/applications/opencode-desktop.desktop...
[1/5] Reviewing src/postinst, src/postrm, src/usr/share/applications/opencode-desktop.desktop...
+ Reviewed src/usr/share/applications/ai.opencode.desktop.desktop. Status: SAFE -- Standard desktop entry file with no security concerns.
LLM auditresponse for opencode-desktop.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` entry file for the OpenCode desktop application. It defines metadata such as the application name, icon, comment, and category. The `Exec` line launches the packaged binary at `/opt/OpenCode/ai.opencode.desktop` with the `%U` argument placeholder for URL/file handling, which is normal desktop entry behavior. There are no network operations, no encoded or obfuscated content, no file manipulation outside the application scope, and no commands that could be interpreted as malicious. The `NoDisplay=true` flag simply hides the application from application menus, which is not a security concern. This file is consistent with ordinary packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry file; no malicious content or suspicious behavior detected.</summary>
</security_assessment>

[1/5] Reviewing src/postinst, src/postrm, src/usr/share/applications/opencode-desktop.desktop, src/opt/OpenCode/resources/app-update.yml...
[2/5] Reviewing src/postinst, src/postrm, src/opt/OpenCode/resources/app-update.yml...
+ Reviewed src/usr/share/applications/opencode-desktop.desktop. Status: SAFE -- Standard desktop entry file; no malicious content or suspicious behavior detected.
LLM auditresponse for app-update.yml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a YAML configuration for the application's auto-update mechanism, pointing to the official GitHub repository (owner: anomalyco, repo: opencode). It contains no executable code, no obfuscation, and no network requests beyond declaring the update source. This is standard and expected for applications using electron-updater or similar tools.
</details>
<evidence></evidence>
<summary>Standard auto-update configuration file, no security issues.</summary>
</security_assessment>

[3/5] Reviewing src/postinst, src/postrm...
+ Reviewed src/opt/OpenCode/resources/app-update.yml. Status: SAFE -- Standard auto-update configuration file, no security issues.
LLM auditresponse for postrm:
<security_assessment>
<decision>SAFE</decision>
<details>
The postrm script performs two standard cleanup tasks: it removes a symlink (via `update-alternatives` or directly) and it removes an AppArmor profile. There are no network requests, no encoded or obfuscated commands, no file exfiltration, and no execution of untrusted code. All operations are confined to the package's own installed paths (`/opt/OpenCode/`, `/usr/bin/`, `/etc/apparmor.d/`). The script checks for the presence of `update-alternatives`, `apparmor_status`, and `ischroot` before acting, which is cautious and typical. This file shows no signs of maliciousness.
</details>
<evidence></evidence>
<summary>Clean post-removal script; no malicious behavior.</summary>
</security_assessment>

[4/5] Reviewing src/postinst...
+ Reviewed src/postrm. Status: SAFE -- Clean post-removal script; no malicious behavior.
LLM auditresponse for postinst:
<security_assessment>
<decision>SAFE</decision>
<details>
This script performs standard post-installation tasks for an Electron-based application (OpenCode). It sets up an alternative symlink for the binary, adjusts sandbox permissions based on kernel support for user namespaces, refreshes MIME and desktop databases, and optionally installs an AppArmor profile. All operations target expected system paths and use standard utilities. No suspicious network requests, obfuscation, data exfiltration, or unexpected file modifications are present. The script is consistent with legitimate packaging practices.
</details>
<evidence></evidence>
<summary>Standard post-install script; no malicious indicators.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed src/postinst. Status: SAFE -- Standard post-install script; no malicious indicators.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,599
  Completion Tokens: 5,656
  Total Tokens: 29,255
  Total Cost: $0.003093
  Execution Time: 741.63 seconds

Final Status: SAFE


No issues found.
