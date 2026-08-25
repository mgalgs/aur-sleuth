---
package: brave-origin-nightly-bin
pkgver: 1.96.10
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 76c02596d4f1a58500b30a8fd37c0598e2c7d68c
prompt_tokens: 44446
completion_tokens: 6929
total_tokens: 51375
cost: 0.005166084224
execution_time: 259.59
files_reviewed: 12
files_skipped: 0
files_unauditable: 91
unpinned_sources: 0
date: 2026-08-25T02:36:10Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for Brave nightly binary, no malicious code.
  - file: brave-origin-nightly-bin.sh
    status: safe
    summary: Standard wrapper script, no malicious behavior.
  - file: src/opt/brave.com/brave-origin-nightly/MEIPreload/manifest.json
    status: safe
    summary: Standard component manifest, no security concerns.
  - file: src/usr/share/applications/com.brave.Origin.nightly.desktop
    status: safe
    summary: Standard desktop entry file, no security concerns.
  - file: src/usr/share/applications/brave-origin-nightly.desktop
    status: safe
    summary: Standard .desktop file, no security issues.
  - file: src/opt/brave.com/brave-origin-nightly/resources/brave_extension/_locales/af/messages.json
    status: safe
    summary: A standard Afrikaans locale file for Brave extension; no security concerns.
  - file: src/opt/brave.com/brave-origin-nightly/vk_swiftshader_icd.json
    status: safe
    summary: Standard Vulkan ICD manifest; no malicious or suspicious behavior found.
  - file: src/usr/share/gnome-control-center/default-apps/brave-origin-nightly.xml
    status: safe
    summary: Static XML configuration file, no security concerns.
  - file: src/usr/share/appdata/brave-origin-nightly.appdata.xml
    status: safe
    summary: Standard metadata XML, no security issues.
  - file: MPL2
    status: safe
    summary: Standard open-source license text, no malicious content.
  - file: src/opt/brave.com/brave-origin-nightly/apparmor.d/brave-origin-nightly
    status: safe
    summary: Benign AppArmor profile enabling user namespaces for Brave; no malicious behavior.
  - file: src/control
    status: safe
    summary: Standard package control file, no malicious content.
---

Cloning https://aur.archlinux.org/brave-origin-nightly-bin.git...
Cloned brave-origin-nightly-bin
Analyzing brave-origin-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines sources from the official Brave GitHub releases with valid checksums. The only top-level operations are variable assignments, and there is no `pkgver()` function. The `prepare()` and `package()` functions, which contain file manipulation commands, are not executed during `makepkg --nobuild --nodeps --noprepare` or `--printsrcinfo`. The local wrapper script (`$pkgname.sh`) is a typical AUR practice and does not introduce risk at this stage. No evidence of malicious code execution during source fetching or PKGBUILD sourcing.
</details>
<evidence></evidence>
<summary>Safe: no malicious code executed during source fetch and parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no malicious code executed during source fetch and parse.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, brave-origin-nightly-bin.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a binary release of Brave Origin Nightly. Sources are fetched from the official GitHub repository of brave/brave-browser, and all checksums are provided (SHA512) for verification. The build and install commands (tar, cp, install, chmod) are standard and expected. The setuid bit on chrome-sandbox is a normal requirement for Chromium sandboxing. No obfuscated code, unexpected network requests, or suspicious operations are present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for Brave nightly binary, no malicious code.</summary>
</security_assessment>

[1/2] Reviewing brave-origin-nightly-bin.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for Brave nightly binary, no malicious code.
LLM auditresponse for brave-origin-nightly-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script for the Brave Browser nightly build. It reads user-defined command-line flags from a configuration file in `~/.config`, sets a default Chrome user data directory, and launches the browser binary. There are no network requests, no downloads, no obfuscated code, and no file operations beyond reading a user-controlled flags file. The script is consistent with normal AUR packaging practices for launching a prebuilt binary. No evidence of supply-chain attack or malicious behavior.

</details>
<evidence>
</evidence>
<summary>Standard wrapper script, no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed brave-origin-nightly-bin.sh. Status: SAFE -- Standard wrapper script, no malicious behavior.
Reviewed all required files.
Deciding which files to review next...
Note: 91 compiled/archived file(s) cannot be audited as text and were not reviewed (brave-origin-nightly_1.96.10_amd64.deb, src/control.tar.xz, src/data.tar.xz and 88 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
File selection failed (LLMResponseError: LLM response message content is empty or missing); using highest-priority files instead

Note: file selection did not complete (LLMResponseError: LLM response message content is empty or missing). Falling back to the 10 highest-priority file(s) by ranking.
Decided to review 10 additional files: src/usr/share/applications/brave-origin-nightly.desktop, src/usr/share/applications/com.brave.Origin.nightly.desktop, src/opt/brave.com/brave-origin-nightly/MEIPreload/manifest.json, src/opt/brave.com/brave-origin-nightly/resources/brave_extension/_locales/af/messages.json, src/opt/brave.com/brave-origin-nightly/vk_swiftshader_icd.json, src/usr/share/appdata/brave-origin-nightly.appdata.xml, src/usr/share/gnome-control-center/default-apps/brave-origin-nightly.xml, MPL2, src/control, src/opt/brave.com/brave-origin-nightly/apparmor.d/brave-origin-nightly
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/usr/share/applications/com.brave.Origin.nightly.desktop...
[0/10] Reviewing src/usr/share/applications/com.brave.Origin.nightly.desktop, src/usr/share/applications/brave-origin-nightly.desktop...
[0/10] Reviewing src/usr/share/applications/com.brave.Origin.nightly.desktop, src/usr/share/applications/brave-origin-nightly.desktop, src/opt/brave.com/brave-origin-nightly/MEIPreload/manifest.json...
LLM auditresponse for manifest.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Chrome component manifest for the MEI (Media Engagement) Preload component. It contains only metadata fields (name, version, update URL, description) and no executable code. The update URL points to Google's official Chrome update server (`clients2.google.com`), which is expected for Chromium-based browsers like Brave. There is no evidence of malicious behavior, obfuscation, or deviation from normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard component manifest, no security concerns.</summary>
</security_assessment>

[0/10] Reviewing src/usr/share/applications/com.brave.Origin.nightly.desktop, src/usr/share/applications/brave-origin-nightly.desktop, src/opt/brave.com/brave-origin-nightly/MEIPreload/manifest.json, src/opt/brave.com/brave-origin-nightly/resources/brave_extension/_locales/af/messages.json...
[1/10] Reviewing src/usr/share/applications/com.brave.Origin.nightly.desktop, src/usr/share/applications/brave-origin-nightly.desktop, src/opt/brave.com/brave-origin-nightly/resources/brave_extension/_locales/af/messages.json...
+ Reviewed src/opt/brave.com/brave-origin-nightly/MEIPreload/manifest.json. Status: SAFE -- Standard component manifest, no security concerns.
LLM auditresponse for com.brave.Origin.nightly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` file for the Brave Origin nightly browser. It contains only metadata (name, generic name, comment, icon, categories, mime types), two desktop actions (new window and new private window), and localized translations. The `Exec` lines point to `/usr/bin/brave-origin-nightly` with `%U` and `--incognito` flags, which is normal for a web browser desktop entry. There is no malicious code, no network requests, no obfuscation, no file manipulation, and no deviation from standard packaging practices. The file is purely declarative and safe.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security concerns.</summary>
</security_assessment>

[1/10] Reviewing src/usr/share/applications/com.brave.Origin.nightly.desktop, src/usr/share/applications/brave-origin-nightly.desktop, src/opt/brave.com/brave-origin-nightly/resources/brave_extension/_locales/af/messages.json, src/opt/brave.com/brave-origin-nightly/vk_swiftshader_icd.json...
[2/10] Reviewing src/usr/share/applications/brave-origin-nightly.desktop, src/opt/brave.com/brave-origin-nightly/resources/brave_extension/_locales/af/messages.json, src/opt/brave.com/brave-origin-nightly/vk_swiftshader_icd.json...
+ Reviewed src/usr/share/applications/com.brave.Origin.nightly.desktop. Status: SAFE -- Standard desktop entry file, no security concerns.
LLM auditresponse for brave-origin-nightly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop.org .desktop entry for the Brave Origin nightly web browser. It contains typical fields such as Name, GenericName, Comment (with many translations), Exec paths, MimeType associations, and desktop actions for new window/incognito window. There are no obfuscated commands, network requests, file operations, or any code execution beyond launching the browser binary. The file does not contain any script or executable content; it is purely metadata for the desktop environment. No evidence of malicious or supply-chain attack behavior is present.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/usr/share/applications/brave-origin-nightly.desktop, src/opt/brave.com/brave-origin-nightly/resources/brave_extension/_locales/af/messages.json, src/opt/brave.com/brave-origin-nightly/vk_swiftshader_icd.json, src/usr/share/appdata/brave-origin-nightly.appdata.xml...
[3/10] Reviewing src/opt/brave.com/brave-origin-nightly/resources/brave_extension/_locales/af/messages.json, src/opt/brave.com/brave-origin-nightly/vk_swiftshader_icd.json, src/usr/share/appdata/brave-origin-nightly.appdata.xml...
+ Reviewed src/usr/share/applications/brave-origin-nightly.desktop. Status: SAFE -- Standard .desktop file, no security issues.
LLM auditresponse for messages.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain JSON localization resource (Afrikaans translations) for the Brave extension. It contains only key-value message strings and descriptions for UI elements such as shields, blocking options, and extension management labels. There is no executable logic, no network requests, no file operations, no obfuscated code, and no system-modifying commands. The content is purely static text data used for internationalization, consistent with standard browser extension packaging.

No supply-chain or injected malicious behavior is present. There is nothing to flag beyond the file being part of the upstream Brave extension's locale bundle.
</details>
<evidence>
</evidence>
<summary>
A standard Afrikaans locale file for Brave extension; no security concerns.</summary>
</security_assessment>

[3/10] Reviewing src/opt/brave.com/brave-origin-nightly/resources/brave_extension/_locales/af/messages.json, src/opt/brave.com/brave-origin-nightly/vk_swiftshader_icd.json, src/usr/share/appdata/brave-origin-nightly.appdata.xml, src/usr/share/gnome-control-center/default-apps/brave-origin-nightly.xml...
[4/10] Reviewing src/opt/brave.com/brave-origin-nightly/vk_swiftshader_icd.json, src/usr/share/appdata/brave-origin-nightly.appdata.xml, src/usr/share/gnome-control-center/default-apps/brave-origin-nightly.xml...
+ Reviewed src/opt/brave.com/brave-origin-nightly/resources/brave_extension/_locales/af/messages.json. Status: SAFE -- A standard Afrikaans locale file for Brave extension; no security concerns.
LLM auditresponse for vk_swiftshader_icd.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Vulkan Installable Client Driver (ICD) JSON manifest for SwiftShader. It declares the ICD file format version, the relative path to `libvk_swiftshader.so`, and an API version. The content contains no commands, network references, obfuscated data, or file-modifying logic. It is consistent with the expected packaging of a SwiftShader-enabled browser bundle and presents no supply-chain risk.
</details>
<evidence>
</evidence>
<summary>
Standard Vulkan ICD manifest; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[4/10] Reviewing src/opt/brave.com/brave-origin-nightly/vk_swiftshader_icd.json, src/usr/share/appdata/brave-origin-nightly.appdata.xml, src/usr/share/gnome-control-center/default-apps/brave-origin-nightly.xml, MPL2...
[5/10] Reviewing src/usr/share/appdata/brave-origin-nightly.appdata.xml, src/usr/share/gnome-control-center/default-apps/brave-origin-nightly.xml, MPL2...
+ Reviewed src/opt/brave.com/brave-origin-nightly/vk_swiftshader_icd.json. Status: SAFE -- Standard Vulkan ICD manifest; no malicious or suspicious behavior found.
LLM auditresponse for brave-origin-nightly.xml:
<security_assessment>
<decision>SAFE</decision>
<details>
This XML file is a GNOME Control Center default applications configuration file. It registers Brave Origin Nightly as a web browser option for the system settings. The file contains only static text: browser name, executable path, command templates, icon name, and boolean flags. There are no executable scripts, network requests, obfuscation, or any dynamic operations. The file is a normal, harmless configuration artifact for a browser package.
</details>
<evidence></evidence>
<summary>Static XML configuration file, no security concerns.</summary>
</security_assessment>

[5/10] Reviewing src/usr/share/appdata/brave-origin-nightly.appdata.xml, src/usr/share/gnome-control-center/default-apps/brave-origin-nightly.xml, MPL2, src/control...
[6/10] Reviewing src/usr/share/appdata/brave-origin-nightly.appdata.xml, MPL2, src/control...
+ Reviewed src/usr/share/gnome-control-center/default-apps/brave-origin-nightly.xml. Status: SAFE -- Static XML configuration file, no security concerns.
LLM auditresponse for brave-origin-nightly.appdata.xml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AppStream metadata XML file for the Brave Origin browser. It contains only non-executable metadata such as the application ID, name, summary, description, license information, screenshots URL, and links to official Brave websites. There is no executable code, network requests, obfuscated content, or any suspicious behavior. It is a benign packaging file with no security concerns.
</details>
<evidence></evidence>
<summary>Standard metadata XML, no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/usr/share/appdata/brave-origin-nightly.appdata.xml, MPL2, src/control, src/opt/brave.com/brave-origin-nightly/apparmor.d/brave-origin-nightly...
[7/10] Reviewing MPL2, src/control, src/opt/brave.com/brave-origin-nightly/apparmor.d/brave-origin-nightly...
+ Reviewed src/usr/share/appdata/brave-origin-nightly.appdata.xml. Status: SAFE -- Standard metadata XML, no security issues.
LLM auditresponse for MPL2:
<security_assessment>
<decision>SAFE</decision>
<details>
The file "MPL2" contains only the verbatim text of the Mozilla Public License Version 2.0, a standard open-source software license. There is no executable code, no network requests, no obfuscated content, and no system-modifying instructions. This is a routine license file commonly included in software packages and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard open-source license text, no malicious content.</summary>
</security_assessment>

[8/10] Reviewing src/control, src/opt/brave.com/brave-origin-nightly/apparmor.d/brave-origin-nightly...
+ Reviewed MPL2. Status: SAFE -- Standard open-source license text, no malicious content.
LLM auditresponse for brave-origin-nightly:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AppArmor profile for the Brave browser. It enables user namespaces, which Brave/Chromium require for its sandbox on newer Ubuntu releases, and includes a local override file. The profile uses `flags=(unconfined)`, but this is an upstream packaging choice for the browser and does not perform any downloads, execute arbitrary code, modify unrelated system files, or exfiltrate data. There is no obfuscation, no unexpected network calls, and no behavior that serves as a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Benign AppArmor profile enabling user namespaces for Brave; no malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/control...
+ Reviewed src/opt/brave.com/brave-origin-nightly/apparmor.d/brave-origin-nightly. Status: SAFE -- Benign AppArmor profile enabling user namespaces for Brave; no malicious behavior.
LLM auditresponse for control:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Debian control file containing package metadata for `brave-origin-nightly`. It declares the package name, version, architecture, maintainer, dependencies, and description. There is no executable code, no network requests, no obfuscation, and no file operations. The dependencies listed (e.g., `wget`, `brave-keyring`, system libraries) are typical for a browser package. The content is purely declarative and follows normal packaging conventions. No evidence of malicious or unexpected behavior.
</details>
<evidence></evidence>
<summary>Standard package control file, no malicious content.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/control. Status: SAFE -- Standard package control file, no malicious content.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 44,446
  Completion Tokens: 6,929
  Total Tokens: 51,375
  Total Cost: $0.005166
  Execution Time: 259.59 seconds

Final Status: SAFE


No issues found.
