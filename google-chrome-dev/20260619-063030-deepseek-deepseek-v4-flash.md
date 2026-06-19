---
package: google-chrome-dev
pkgver: 151.0.7886.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 5790943c1b39200ecdf449522971aa7db90ade4a
prompt_tokens: 56255
completion_tokens: 8196
total_tokens: 64451
cost: 0.00653823
execution_time: 118.19
files_reviewed: 13
files_skipped: 0
date: 2026-06-19T06:30:30Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior found.
  - file: google-chrome-dev.install
    status: safe
    summary: No malicious actions; only informational messages.
  - file: google-chrome-unstable.sh
    status: safe
    summary: Standard Chrome wrapper script, no malicious code found.
  - file: src/usr/share/appdata/google-chrome-unstable.appdata.xml
    status: safe
    summary: Standard AppStream metadata file, no security issues found.
  - file: src/control
    status: safe
    summary: Standard packaging metadata file, no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Benign nvchecker config for official Google Chrome repo.
  - file: src/usr/share/applications/com.google.Chrome.unstable.desktop
    status: safe
    summary: Standard desktop entry; no malicious content.
  - file: src/opt/google/chrome-unstable/default-app-block
    status: safe
    summary: Static XML browser registration, no malicious content.
  - file: src/opt/google/chrome-unstable/apparmor.d/google-chrome-unstable
    status: safe
    summary: Standard AppArmor profile for Chrome; no security issues.
  - file: src/postinst
    status: safe
    summary: Standard upstream postinst; no signs of malice.
  - file: src/postrm
    status: safe
    summary: Standard cleanup script, no malicious behavior detected.
  - file: src/prerm
    status: safe
    summary: Standard package removal cleanup script, no malicious content.
  - file: src/usr/share/applications/google-chrome-unstable.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
---

Cloning https://aur.archlinux.org/google-chrome-dev.git to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-rxflep3z...
Cloned repository to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-rxflep3z
Analyzing google-chrome-dev AUR package (working in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-rxflep3z) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions, a `source` array pointing to Google&#39;s official Chrome download URL and local files (which are shipped with the AUR package), and a `package()` function that is **not** executed during the `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo` commands. The global scope and `pkgver()` (which is not defined here) contain no dangerous operations such as command substitution, network requests, or code execution. The source URLs are from `https://dl.google.com`, a legitimate domain, and checksums are provided. There is no evidence of obfuscation or malicious payloads that would execute during the source fetch or PKGBUILD parsing.
</details>
<summary>Standard PKGBUILD; no malicious code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD; no malicious code in global scope.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, google-chrome-dev.install...
[0/3] Reviewing PKGBUILD, google-chrome-dev.install, google-chrome-unstable.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. The source is downloaded from the official Google Chrome repository (`dl.google.com`), and all files are extracted and installed in a typical manner. The only operations performed are:

- Extracting the `.deb` archive with `bsdtar`
- Installing a wrapper script, icons, and license files
- Modifying the `.desktop` file with `sed` to add a `StartupWMClass` and remove an unused MIME type
- Removing leftover Debian-specific cron jobs and duplicate logos

There are no requests to unexpected hosts, no execution of downloaded scripts (`curl|bash`), no obfuscated or encoded commands, and no exfiltration of data. Checksums are provided for all sources. The package is safe.
</details>
<summary>Standard AUR PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[1/3] Reviewing google-chrome-dev.install, google-chrome-unstable.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior found.
LLM auditresponse for google-chrome-dev.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a simple `.install` script that only prints informational messages using `tput` for colored output. It defines a `post_install()` function that reminds users about custom flags and the launcher name. There are no network requests, file operations, system modifications, obfuscated code, or any other indicators of malicious behavior. This is a standard, benign AUR install script.
</details>
<summary>No malicious actions; only informational messages.</summary>
</security_assessment>

[2/3] Reviewing google-chrome-unstable.sh...
+ Reviewed google-chrome-dev.install. Status: SAFE -- No malicious actions; only informational messages.
LLM auditresponse for google-chrome-unstable.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launch wrapper script for Google Chrome Dev/Unstable. It reads optional command-line flags from a user-level configuration file (`chrome-dev-flags.conf`) and then executes the Chrome binary with those flags and any user-supplied arguments. The script performs no network requests, no downloads, no obfuscation, and no system modifications. The only external interaction is reading a local config file from the user’s `~/.config` directory, which is a common and benign pattern. The path `/opt/google/chrome-unstable/google-chrome-unstable` is the expected installation location for this package. No evidence of malicious behavior or supply-chain attack is present.
</details>
<summary>Standard Chrome wrapper script, no malicious code found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed google-chrome-unstable.sh. Status: SAFE -- Standard Chrome wrapper script, no malicious code found.
Reviewed all required files.
Deciding which files to review next...
LLM response for file selection:
src/postinst
src/postrm
src/prerm
src/usr/share/applications/com.google.Chrome.unstable.desktop
src/usr/share/applications/google-chrome-unstable.desktop
.nvchecker.toml
src/opt/google/chrome-unstable/apparmor.d/google-chrome-unstable
src/control
src/usr/share/appdata/google-chrome-unstable.appdata.xml
src/opt/google/chrome-unstable/default-app-block
Decided to review 10 additional files: src/postinst, src/postrm, src/prerm, src/usr/share/applications/com.google.Chrome.unstable.desktop, src/usr/share/applications/google-chrome-unstable.desktop, .nvchecker.toml, src/opt/google/chrome-unstable/apparmor.d/google-chrome-unstable, src/control, src/usr/share/appdata/google-chrome-unstable.appdata.xml, src/opt/google/chrome-unstable/default-app-block
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/prerm...
[0/10] Reviewing src/prerm, src/postinst...
[0/10] Reviewing src/prerm, src/postinst, src/usr/share/applications/com.google.Chrome.unstable.desktop...
[0/10] Reviewing src/prerm, src/postinst, src/usr/share/applications/com.google.Chrome.unstable.desktop, src/postrm...
[0/10] Reviewing src/prerm, src/postinst, src/usr/share/applications/com.google.Chrome.unstable.desktop, src/postrm, .nvchecker.toml...
[0/10] Reviewing src/prerm, src/postinst, src/usr/share/applications/com.google.Chrome.unstable.desktop, src/postrm, .nvchecker.toml, src/opt/google/chrome-unstable/apparmor.d/google-chrome-unstable...
[0/10] Reviewing src/prerm, src/postinst, src/usr/share/applications/com.google.Chrome.unstable.desktop, src/postrm, .nvchecker.toml, src/opt/google/chrome-unstable/apparmor.d/google-chrome-unstable, src/usr/share/applications/google-chrome-unstable.desktop...
[0/10] Reviewing src/prerm, src/postinst, src/usr/share/applications/com.google.Chrome.unstable.desktop, src/postrm, .nvchecker.toml, src/opt/google/chrome-unstable/apparmor.d/google-chrome-unstable, src/usr/share/applications/google-chrome-unstable.desktop, src/usr/share/appdata/google-chrome-unstable.appdata.xml...
[0/10] Reviewing src/prerm, src/postinst, src/usr/share/applications/com.google.Chrome.unstable.desktop, src/postrm, .nvchecker.toml, src/opt/google/chrome-unstable/apparmor.d/google-chrome-unstable, src/usr/share/applications/google-chrome-unstable.desktop, src/usr/share/appdata/google-chrome-unstable.appdata.xml, src/opt/google/chrome-unstable/default-app-block...
[0/10] Reviewing src/prerm, src/postinst, src/usr/share/applications/com.google.Chrome.unstable.desktop, src/postrm, .nvchecker.toml, src/opt/google/chrome-unstable/apparmor.d/google-chrome-unstable, src/usr/share/applications/google-chrome-unstable.desktop, src/usr/share/appdata/google-chrome-unstable.appdata.xml, src/opt/google/chrome-unstable/default-app-block, src/control...
LLM auditresponse for google-chrome-unstable.appdata.xml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AppStream metadata file for Google Chrome (unstable channel). It contains only descriptive XML elements such as the application ID, name, summary, description, screenshots, and URLs. All URLs reference legitimate Google domains (chrome.google.com, gstatic.com, support.google.com). There are no scripts, commands, or executable content. No obfuscation, no network requests beyond standard metadata, and no deviation from expected packaging practices. This file poses no security risk.
</details>
<summary>Standard AppStream metadata file, no security issues found.</summary>
</security_assessment>

[1/10] Reviewing src/prerm, src/postinst, src/usr/share/applications/com.google.Chrome.unstable.desktop, src/postrm, .nvchecker.toml, src/opt/google/chrome-unstable/apparmor.d/google-chrome-unstable, src/usr/share/applications/google-chrome-unstable.desktop, src/opt/google/chrome-unstable/default-app-block, src/control...
+ Reviewed src/usr/share/appdata/google-chrome-unstable.appdata.xml. Status: SAFE -- Standard AppStream metadata file, no security issues found.
LLM auditresponse for control:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Debian control file for the google-chrome-unstable package. It contains only metadata such as package name, version, architecture, maintainer, dependencies, and description. There is no executable code, no network requests, no obfuscation, and no suspicious operations. The dependency on `wget` is a standard tool and is expected for a browser package (e.g., for downloading updates or other legitimate purposes). No evidence of malicious behavior or supply-chain attack was found.
</details>
<summary>Standard packaging metadata file, no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/prerm, src/postinst, src/usr/share/applications/com.google.Chrome.unstable.desktop, src/postrm, .nvchecker.toml, src/opt/google/chrome-unstable/apparmor.d/google-chrome-unstable, src/usr/share/applications/google-chrome-unstable.desktop, src/opt/google/chrome-unstable/default-app-block...
+ Reviewed src/control. Status: SAFE -- Standard packaging metadata file, no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a configuration file for `nvchecker`, a version-check tool. It specifies that the package `google-chrome-dev` should be tracked via the APT repository at `https://dl.google.com/linux/chrome/deb/`, which is the official Google Chrome repository. The configuration is purely declarative (key-value pairs) with no executable code, no obfuscation, and no reference to unexpected or malicious network destinations. There is no evidence of any supply-chain attack or malicious intent.
</details>
<summary>Benign nvchecker config for official Google Chrome repo.</summary>
</security_assessment>

[3/10] Reviewing src/prerm, src/postinst, src/usr/share/applications/com.google.Chrome.unstable.desktop, src/postrm, src/opt/google/chrome-unstable/apparmor.d/google-chrome-unstable, src/usr/share/applications/google-chrome-unstable.desktop, src/opt/google/chrome-unstable/default-app-block...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign nvchecker config for official Google Chrome repo.
LLM auditresponse for com.google.Chrome.unstable.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Freedesktop.org `.desktop` entry for launching Google Chrome (unstable). It contains localized names and comments, defines MIME types, and specifies actions for new windows and incognito windows. There is no executable code, no network requests, no obfuscation, and no system modifications beyond what is normal for a desktop launcher. The `Exec` lines reference the legitimate `/usr/bin/google-chrome-unstable` binary, and the `Actions` launch the same binary with appropriate flags. No supply-chain attack vectors are present.
</details>
<summary>Standard desktop entry; no malicious content.</summary>
</security_assessment>

[4/10] Reviewing src/prerm, src/postinst, src/postrm, src/opt/google/chrome-unstable/apparmor.d/google-chrome-unstable, src/usr/share/applications/google-chrome-unstable.desktop, src/opt/google/chrome-unstable/default-app-block...
+ Reviewed src/usr/share/applications/com.google.Chrome.unstable.desktop. Status: SAFE -- Standard desktop entry; no malicious content.
LLM auditresponse for default-app-block:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple XML configuration fragment for registering Google Chrome (unstable) as a web browser. It contains no executable code, no network requests, no obfuscation, and no system modifications beyond defining standard browser command paths and icons. The content is static and follows typical patterns for desktop application registration files (e.g., for xdg-open or other browser selection utilities). There is no evidence of malicious behavior.
</details>
<summary>Static XML browser registration, no malicious content.</summary>
</security_assessment>

[5/10] Reviewing src/prerm, src/postinst, src/postrm, src/opt/google/chrome-unstable/apparmor.d/google-chrome-unstable, src/usr/share/applications/google-chrome-unstable.desktop...
+ Reviewed src/opt/google/chrome-unstable/default-app-block. Status: SAFE -- Static XML browser registration, no malicious content.
LLM auditresponse for google-chrome-unstable:
<security_assessment>
<decision>SAFE</decision>
<details>
This is an AppArmor profile for the Google Chrome unstable binary. It configures the Linux security module (AppArmor) to allow the Chrome process to run with the `unconfined` flag and create user namespaces (`userns`), which is necessary for Chrome's sandbox on distributions like Ubuntu. The profile includes a standard mechanism for local site-specific overrides (`include if exists`). There is no network activity, no code execution, no data manipulation, and no obfuscation. The content is entirely benign and follows standard packaging practice for Chromium-based browsers.
</details>
<summary>Standard AppArmor profile for Chrome; no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/prerm, src/postinst, src/postrm, src/usr/share/applications/google-chrome-unstable.desktop...
+ Reviewed src/opt/google/chrome-unstable/apparmor.d/google-chrome-unstable. Status: SAFE -- Standard AppArmor profile for Chrome; no security issues.
LLM auditresponse for postinst:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the upstream Debian/Ubuntu post-installation script for Google Chrome (unstable). It performs standard operations such as installing desktop icons, updating MIME type databases, adding the Google repository signing key (embedded as a base64-encoded ASCII-armored PGP key), creating apt sources lists, setting up update-alternatives, and configuring AppArmor and NSS library symlinks. All operations are expected for the official Chrome package. There are no suspicious network requests (no `curl`, `wget`, or `git` commands), no obfuscated code, and no exfiltration of local data. The script is benign and consistent with normal packaging practices.
</details>
<summary>Standard upstream postinst; no signs of malice.</summary>
</security_assessment>

[7/10] Reviewing src/prerm, src/postrm, src/usr/share/applications/google-chrome-unstable.desktop...
+ Reviewed src/postinst. Status: SAFE -- Standard upstream postinst; no signs of malice.
LLM auditresponse for postrm:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Debian package post-removal script (`postrm`) for Google Chrome Unstable, likely included as part of the upstream source bundle rather than being specific to Arch Linux. The script performs standard cleanup actions when the package is purged: removing the defaults file, cleaning apt sources lists, removing the GPG key, and deleting package-specific symlinks.  

All operations are confined to files and directories that belong to the package (e.g., `/etc/default/google-chrome-unstable`, apt sources under `/etc/apt/sources.list.d/`, the keyring file under `/usr/share/keyrings/`, and symlinks in `/opt/google/chrome-unstable/`). There are no network requests, no execution of downloaded code, no obfuscation, and no manipulation of data outside the package's own scope. The script's functions for installing keys or sources are defined but not invoked in this context.  

The presence of Debian-specific logic in an AUR package is unusual but not malicious—it is typical for AUR packages that bundle upstream Debian assets. No supply-chain attack indicators are present.
</details>
<summary>Standard cleanup script, no malicious behavior detected.</summary>
</security_assessment>

[8/10] Reviewing src/prerm, src/usr/share/applications/google-chrome-unstable.desktop...
+ Reviewed src/postrm. Status: SAFE -- Standard cleanup script, no malicious behavior detected.
LLM auditresponse for prerm:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pre-removal script for a Google Chrome unstable package. It performs expected cleanup: uninstalling icons, updating desktop MIME type cache, unloading an AppArmor profile, and removing symbolic links from the alternatives system. All commands are legitimate and typical for package management. No obfuscation, network requests, file exfiltration, or unexpected system modifications are present. The script is safe.
</details>
<summary>Standard package removal cleanup script, no malicious content.</summary>
</security_assessment>

[9/10] Reviewing src/usr/share/applications/google-chrome-unstable.desktop...
+ Reviewed src/prerm. Status: SAFE -- Standard package removal cleanup script, no malicious content.
LLM auditresponse for google-chrome-unstable.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` file for Google Chrome (unstable). It contains only desktop entry metadata: name, generic name, comment, icon, MIME types, and actions for new window and incognito window. All `Exec` lines invoke `/usr/bin/google-chrome-unstable` with expected arguments (`%U`, `--incognito`). There are no obfuscated commands, network requests, or system modifications. The file does not deviate from expected packaging practices for a browser desktop entry.
</details>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/usr/share/applications/google-chrome-unstable.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 56,255
  Completion Tokens: 8,196
  Total Tokens: 64,451
  Total Cost: $0.006538
  Execution Time: 118.19 seconds
Full audit report can be found in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-google-chrome-dev.txt
Final Status: SAFE


No issues found.
