---
package: brave-nightly-bin
pkgver: 1.93.80
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 54503
completion_tokens: 9023
total_tokens: 63526
cost: 0.00652941
execution_time: 73.47
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T08:17:51Z
file_verdicts:
  - file: brave-nightly-bin.sh
    status: safe
    summary: Standard browser launcher script, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package for Brave Nightly, no issues.
  - file: src/usr/share/applications/brave-browser-nightly.desktop
    status: safe
    summary: Standard desktop file; no security issues.
  - file: src/usr/share/gnome-control-center/default-apps/brave-browser-nightly.xml
    status: safe
    summary: Standard GNOME default-apps configuration; no malicious code.
  - file: src/opt/brave.com/brave-nightly/apparmor.d/brave-browser-nightly
    status: safe
    summary: Standard AppArmor profile, no malicious content.
  - file: src/usr/share/applications/com.brave.Browser.nightly.desktop
    status: safe
    summary: Standard desktop entry; no malicious content.
  - file: src/control
    status: safe
    summary: Standard Debian package metadata, no executable code.
  - file: src/usr/share/appdata/brave-browser-nightly.appdata.xml
    status: safe
    summary: Standard AppStream metadata file, no security issues.
  - file: src/opt/brave.com/brave-nightly/default-app-block
    status: safe
    summary: Standard browser registration config, no security issues.
  - file: src/postinst
    status: safe
    summary: Standard Chromium postinst script; repo setup disabled, no malicious code.
  - file: src/prerm
    status: safe
    summary: Standard cleanup script; no malicious behavior detected.
  - file: src/postrm
    status: safe
    summary: Standard cleanup script, no malicious code.
---

Cloning https://aur.archlinux.org/brave-nightly-bin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-jx7t3qbp...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-jx7t3qbp
Analyzing brave-nightly-bin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-jx7t3qbp) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments, function definitions (prepare, package, no pkgver function), and standard source URLs pointing to the official Brave GitHub releases. The top-level scope does not include any command substitutions, eval, curl, wget, or other operations that would execute during sourcing. The `pkgver` is a static string, not a function, so no code runs there. The `source` array entries are fetched via `makepkg` using standard https downloads with provided SHA512 checksums. No obfuscation, suspicious network destinations, or immediate execution of downloaded content occurs during the `makepkg --nobuild --nodeps --noprepare` or `--printsrcinfo` steps. The only potentially risky code (arch-specific source handling and checksum checks) follows normal AUR packaging practices. No evidence of malicious supply-chain injection is present.
</details>
<summary>SAFE: No malicious code executes during PKGBUILD sourcing or source download.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- SAFE: No malicious code executes during PKGBUILD sourcing or source download.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, brave-nightly-bin.sh...
LLM auditresponse for brave-nightly-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher for the Brave Nightly browser. It reads optional user flags from a configuration file, sets a default user data directory, and executes the browser binary from the expected installation path. There are no network requests, obfuscated code, dangerous commands, or any operations outside the scope of launching the application. All operations are consistent with normal packaging practices.
</details>
<summary>Standard browser launcher script, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed brave-nightly-bin.sh. Status: SAFE -- Standard browser launcher script, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch User Repository (AUR) package for the Brave Nightly browser. It downloads the official binary release from the Brave project's GitHub (`https://github.com/brave/brave-browser/releases`) using pinned version numbers and provides checksums for integrity verification. The `prepare()` function extracts the `.deb` archive, removes an unneeded cron job, and patches the desktop file to point to the package's own launcher script (`/usr/bin/brave-nightly`). The `package()` function installs the script, icons, and license, and sets the SUID bit on the Chrome sandbox (`chrome-sandbox`) – a standard and expected security measure for Chromium-based browsers to enable sandboxing. There are no unexpected network requests, no obfuscated or encoded commands, and no operations that deviate from normal packaging workflows. The changes are consistent with the package's stated purpose of providing a nightly binary release of the Brave browser.
</details>
<summary>Standard AUR package for Brave Nightly, no issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package for Brave Nightly, no issues.
Reviewed all required files.
Deciding which files to review next...
LLM response for file selection:
src/postinst
src/postrm
src/prerm
src/usr/share/applications/brave-browser-nightly.desktop
src/usr/share/applications/com.brave.Browser.nightly.desktop
src/opt/brave.com/brave-nightly/apparmor.d/brave-browser-nightly
src/opt/brave.com/brave-nightly/default-app-block
src/usr/share/gnome-control-center/default-apps/brave-browser-nightly.xml
src/usr/share/appdata/brave-browser-nightly.appdata.xml
src/control
Decided to review 10 additional files: src/postinst, src/postrm, src/prerm, src/usr/share/applications/brave-browser-nightly.desktop, src/usr/share/applications/com.brave.Browser.nightly.desktop, src/opt/brave.com/brave-nightly/apparmor.d/brave-browser-nightly, src/opt/brave.com/brave-nightly/default-app-block, src/usr/share/gnome-control-center/default-apps/brave-browser-nightly.xml, src/usr/share/appdata/brave-browser-nightly.appdata.xml, src/control
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/postrm...
[0/10] Reviewing src/postrm, src/postinst...
[0/10] Reviewing src/postrm, src/postinst, src/prerm...
[0/10] Reviewing src/postrm, src/postinst, src/prerm, src/usr/share/applications/com.brave.Browser.nightly.desktop...
[0/10] Reviewing src/postrm, src/postinst, src/prerm, src/usr/share/applications/com.brave.Browser.nightly.desktop, src/opt/brave.com/brave-nightly/default-app-block...
[0/10] Reviewing src/postrm, src/postinst, src/prerm, src/usr/share/applications/com.brave.Browser.nightly.desktop, src/opt/brave.com/brave-nightly/default-app-block, src/opt/brave.com/brave-nightly/apparmor.d/brave-browser-nightly...
[0/10] Reviewing src/postrm, src/postinst, src/prerm, src/usr/share/applications/com.brave.Browser.nightly.desktop, src/opt/brave.com/brave-nightly/default-app-block, src/opt/brave.com/brave-nightly/apparmor.d/brave-browser-nightly, src/usr/share/applications/brave-browser-nightly.desktop...
[0/10] Reviewing src/postrm, src/postinst, src/prerm, src/usr/share/applications/com.brave.Browser.nightly.desktop, src/opt/brave.com/brave-nightly/default-app-block, src/opt/brave.com/brave-nightly/apparmor.d/brave-browser-nightly, src/usr/share/applications/brave-browser-nightly.desktop, src/usr/share/gnome-control-center/default-apps/brave-browser-nightly.xml...
[0/10] Reviewing src/postrm, src/postinst, src/prerm, src/usr/share/applications/com.brave.Browser.nightly.desktop, src/opt/brave.com/brave-nightly/default-app-block, src/opt/brave.com/brave-nightly/apparmor.d/brave-browser-nightly, src/usr/share/applications/brave-browser-nightly.desktop, src/usr/share/gnome-control-center/default-apps/brave-browser-nightly.xml, src/usr/share/appdata/brave-browser-nightly.appdata.xml...
[0/10] Reviewing src/postrm, src/postinst, src/prerm, src/usr/share/applications/com.brave.Browser.nightly.desktop, src/opt/brave.com/brave-nightly/default-app-block, src/opt/brave.com/brave-nightly/apparmor.d/brave-browser-nightly, src/usr/share/applications/brave-browser-nightly.desktop, src/usr/share/gnome-control-center/default-apps/brave-browser-nightly.xml, src/usr/share/appdata/brave-browser-nightly.appdata.xml, src/control...
LLM auditresponse for brave-browser-nightly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` file for the Brave Web Browser (nightly). It defines the application entry in the system menu, including translations, MIME types, and desktop actions (New Window, New Incognito Window). The `Exec` lines invoke `/usr/bin/brave-browser-nightly` with appropriate flags. There are no embedded scripts, network requests, base64-encoded payloads, or any commands that deviate from normal desktop entry behavior. The file contains no malicious or suspicious content.
</details>
<summary>Standard desktop file; no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/postrm, src/postinst, src/prerm, src/usr/share/applications/com.brave.Browser.nightly.desktop, src/opt/brave.com/brave-nightly/default-app-block, src/opt/brave.com/brave-nightly/apparmor.d/brave-browser-nightly, src/usr/share/gnome-control-center/default-apps/brave-browser-nightly.xml, src/usr/share/appdata/brave-browser-nightly.appdata.xml, src/control...
+ Reviewed src/usr/share/applications/brave-browser-nightly.desktop. Status: SAFE -- Standard desktop file; no security issues.
LLM auditresponse for brave-browser-nightly.xml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is an XML configuration file for registering Brave Web Browser (nightly) as a default web browser in the GNOME desktop environment. It contains only standard declarative tags (name, executable, command, icon-name, etc.) and no executable code, network requests, or obfuscated content. The file fits the expected pattern of a GNOME default-apps registration file. No supply-chain attack indicators are present.
</details>
<summary>
Standard GNOME default-apps configuration; no malicious code.</summary>
</security_assessment>

[2/10] Reviewing src/postrm, src/postinst, src/prerm, src/usr/share/applications/com.brave.Browser.nightly.desktop, src/opt/brave.com/brave-nightly/default-app-block, src/opt/brave.com/brave-nightly/apparmor.d/brave-browser-nightly, src/usr/share/appdata/brave-browser-nightly.appdata.xml, src/control...
+ Reviewed src/usr/share/gnome-control-center/default-apps/brave-browser-nightly.xml. Status: SAFE -- Standard GNOME default-apps configuration; no malicious code.
LLM auditresponse for brave-browser-nightly:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an AppArmor profile for the Brave Nightly browser. It is a standard security configuration file that allows the browser to create user namespaces (required for the sandbox on newer Ubuntu releases) and runs the browser in an unconfined profile. There is no executable code, no network requests, no obfuscation, and no data exfiltration. The content is entirely benign and follows expected packaging practices for a browser package.
</details>
<summary>Standard AppArmor profile, no malicious content.</summary>
</security_assessment>

[3/10] Reviewing src/postrm, src/postinst, src/prerm, src/usr/share/applications/com.brave.Browser.nightly.desktop, src/opt/brave.com/brave-nightly/default-app-block, src/usr/share/appdata/brave-browser-nightly.appdata.xml, src/control...
+ Reviewed src/opt/brave.com/brave-nightly/apparmor.d/brave-browser-nightly. Status: SAFE -- Standard AppArmor profile, no malicious content.
LLM auditresponse for com.brave.Browser.nightly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file for the Brave Nightly browser. It contains translated names, comments, and menu actions. The `Exec` lines invoke `/usr/bin/brave-browser-nightly` with appropriate arguments (`%U`, `--incognito`). There is no embedded code, no network requests, no obfuscation, and no manipulation of system files. The file conforms to normal packaging conventions for a web browser.
</details>
<summary>Standard desktop entry; no malicious content.</summary>
</security_assessment>

[4/10] Reviewing src/postrm, src/postinst, src/prerm, src/opt/brave.com/brave-nightly/default-app-block, src/usr/share/appdata/brave-browser-nightly.appdata.xml, src/control...
+ Reviewed src/usr/share/applications/com.brave.Browser.nightly.desktop. Status: SAFE -- Standard desktop entry; no malicious content.
LLM auditresponse for control:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Debian control file (metadata) for the brave-browser-nightly package. It contains only package name, version, architecture, maintainer, dependencies, and description. There is no executable code, no scripts, no network requests, and no instructions to perform any actions. The dependencies listed (e.g., wget, xdg-utils) are normal for a web browser. The maintainer is the legitimate upstream vendor. No obfuscation, encoding, or suspicious content is present. The file is entirely declarative and safe.
</details>
<summary>Standard Debian package metadata, no executable code.</summary>
</security_assessment>

[5/10] Reviewing src/postrm, src/postinst, src/prerm, src/opt/brave.com/brave-nightly/default-app-block, src/usr/share/appdata/brave-browser-nightly.appdata.xml...
+ Reviewed src/control. Status: SAFE -- Standard Debian package metadata, no executable code.
LLM auditresponse for brave-browser-nightly.appdata.xml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AppStream metadata XML file for the Brave Browser nightly package. It contains only descriptive information (application ID, name, summary, description, licenses, URLs, screenshots). There is no executable code, no scripts, no network requests or downloads, no obfuscated content, and no system modifications. All URLs listed point to the project's own legitimate domains (brave.com, github.com/brave, support.brave.app). The file conforms to standard packaging practices and poses no security risk.
</details>
<summary>Standard AppStream metadata file, no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/postrm, src/postinst, src/prerm, src/opt/brave.com/brave-nightly/default-app-block...
+ Reviewed src/usr/share/appdata/brave-browser-nightly.appdata.xml. Status: SAFE -- Standard AppStream metadata file, no security issues.
LLM auditresponse for default-app-block:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard XML configuration snippet for registering Brave Nightly as a default web browser in a desktop environment. It defines the executable path, icon name, and command templates for opening URLs. There is no dynamic code, network requests, obfuscation, or any suspicious activity. It is a benign configuration file used for desktop integration, consistent with the package's stated purpose.
</details>
<summary>Standard browser registration config, no security issues.</summary>
</security_assessment>

[7/10] Reviewing src/postrm, src/postinst, src/prerm...
+ Reviewed src/opt/brave.com/brave-nightly/default-app-block. Status: SAFE -- Standard browser registration config, no security issues.
LLM auditresponse for postinst:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard post-installation routine for a Chromium-based browser (Brave Nightly). It performs expected desktop integration tasks such as installing icons, updating MIME type databases, registering the browser via `update-alternatives`, setting up AppArmor profiles, and configuring device trust management (group creation, permission setting). The most notable section is the inclusion of Google Chrome's APT repository and signing key, which is copied from Chromium's packaging. However, this functionality is **explicitly disabled** by a `exit 0` statement immediately before the key installation and repo creation calls, along with a comment referencing a Brave issue (#54299). No code is executed that would add Google's repository, fetch remote content, or exfiltrate data. The script contains no obfuscation, no unexpected network requests, and no commands that deviate from standard packaging practices for a browser. There is no evidence of a supply-chain attack.
</details>
<summary>Standard Chromium postinst script; repo setup disabled, no malicious code.</summary>
</security_assessment>

[8/10] Reviewing src/postrm, src/prerm...
+ Reviewed src/postinst. Status: SAFE -- Standard Chromium postinst script; repo setup disabled, no malicious code.
LLM auditresponse for prerm:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard package removal (prerm) script for the Brave Nightly browser. It performs routine cleanup tasks such as uninstalling XDG icons, updating the desktop MIME type cache, unloading an AppArmor profile, and removing entries from the alternatives system. All operations are confined to the application&#39;s own resources and standard system integration points. There is no network access, no obfuscation, no execution of untrusted code, and no manipulation of sensitive user data. The script behaves as expected for a package pre-removal hook.
</details>
<summary>
Standard cleanup script; no malicious behavior detected.</summary>
</security_assessment>

[9/10] Reviewing src/postrm...
+ Reviewed src/prerm. Status: SAFE -- Standard cleanup script; no malicious behavior detected.
LLM auditresponse for postrm:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Debian package post-removal (postrm) script for the `brave-browser-nightly` package. It performs cleanup operations only when the package is purged (`action == "purge"`). The script removes:

- The system-wide defaults file (`/etc/default/brave-browser-nightly`)
- The apt repository configuration (`.sources` and legacy `.list` files) and the associated GPG keyring
- NSS library symlinks under `/opt/brave.com/brave-nightly/`
- A udev symlink

All operations use standard shell commands (`rm`, `mv`, `sed`, `grep`, `ln`, `base64 -d`, etc.) and follow atomic update patterns (write to temp file, then rename). There is no obfuscated code, no network requests, no execution of downloaded content, and no exfiltration of data.

One notable observation: the repository URL and GPG key belong to Google Chrome (`dl.google.com/linux/chrome/deb/` and Google's signing key), not Brave's own repository. This is unusual for a Brave package and could indicate a packaging error or a copy-paste from Chrome's packaging. However, this script only *removes* those artifacts; the potential supply-chain risk would lie in the installation (postinst) script, which is not part of this file. The postrm itself performs only legitimate cleanup and does not exhibit any malicious behavior.

Therefore, the file is safe.
</details>
<summary>Standard cleanup script, no malicious code.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/postrm. Status: SAFE -- Standard cleanup script, no malicious code.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 54,503
  Completion Tokens: 9,023
  Total Tokens: 63,526
  Total Cost: $0.006529
  Execution Time: 73.47 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-brave-nightly-bin.txt
Final Status: SAFE


No issues found.
