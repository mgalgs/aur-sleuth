---
package: localsend-bin
pkgver: 1.17.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 36810
completion_tokens: 6743
total_tokens: 43553
cost: 0.00452664
execution_time: 45.26
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T11:21:43Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious content.
  - file: src/usr/share/localsend_app/data/flutter_assets/assets/web/error-403.html
    status: safe
    summary: Static HTML error page, no security concerns.
  - file: src/usr/share/localsend_app/data/flutter_assets/version.json
    status: safe
    summary: Inert JSON version metadata; no malicious content.
  - file: src/usr/share/applications/localsend_app.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: src/usr/share/localsend_app/data/flutter_assets/FontManifest.json
    status: safe
    summary: Standard font manifest; no security issues.
  - file: src/usr/share/localsend_app/data/flutter_assets/AssetManifest.json
    status: safe
    summary: Standard application asset manifest; no malicious content.
  - file: src/postinst
    status: safe
    summary: Normal post-install script, no security issues.
  - file: src/usr/share/localsend_app/data/flutter_assets/assets/web/index.html
    status: safe
    summary: Benign HTML file for LocalSend web interface.
  - file: src/usr/share/localsend_app/data/flutter_assets/packages/wakelock_plus/assets/no_sleep.js
    status: safe
    summary: Standard NoSleep.js library, no evidence of malice.
  - file: src/control
    status: safe
    summary: Standard package metadata, no security concerns.
  - file: src/usr/share/localsend_app/data/flutter_assets/assets/web/main.js
    status: safe
    summary: Standard web client code, no malicious behavior.
  - file: src/postrm
    status: safe
    summary: Standard post-removal script, no malicious activity.
---

Cloning https://aur.archlinux.org/localsend-bin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-wegxk4_p...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-wegxk4_p
Analyzing localsend-bin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-wegxk4_p) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable declarations and function definitions. No top-level code or `pkgver()` function executes commands. The `source` entries point to official GitHub release URLs with valid checksums. The `prepare()`, `build()`, and `package()` functions are present but not executed during `makepkg --nobuild --nodeps --noprepare`. There are no suspicious commands, obfuscation, or unexpected network destinations in scope for this step.
</details>
<summary>Standard PKGBUILD, no dangerous top-level code</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD, no dangerous top-level code[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/1] Reviewing PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a binary package. It downloads a `.deb` from the official GitHub releases page (`https://github.com/localsend/localsend/releases/download/v${pkgver}/...`), verifies it with SHA256 checksums, extracts necessary files, adjusts the `.desktop` file paths, and installs the binary, icons, and desktop entry into the package directory. All operations are confined to the package's own files and standard installation directories. There is no obfuscated code, no unexpected network requests, no execution of downloaded scripts, and no interaction with system files outside the package's scope. The use of `sed` and `cp`/`mv` is limited to renaming icon files and updating the `.desktop` file — legitimate actions for packaging. No supply-chain attack vectors are present.
</details>
<summary>Standard PKGBUILD, no malicious content.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious content.
Reviewed all required files.
Deciding which files to review next...
LLM response for file selection:
src/usr/share/applications/localsend_app.desktop
src/usr/share/localsend_app/data/flutter_assets/assets/web/main.js
src/usr/share/localsend_app/data/flutter_assets/packages/wakelock_plus/assets/no_sleep.js
src/usr/share/localsend_app/data/flutter_assets/AssetManifest.json
src/usr/share/localsend_app/data/flutter_assets/FontManifest.json
src/usr/share/localsend_app/data/flutter_assets/version.json
src/control
src/postinst
src/postrm
src/usr/share/localsend_app/data/flutter_assets/assets/web/error-403.html
src/usr/share/localsend_app/data/flutter_assets/assets/web/index.html
Decided to review 11 additional files: src/usr/share/applications/localsend_app.desktop, src/usr/share/localsend_app/data/flutter_assets/assets/web/main.js, src/usr/share/localsend_app/data/flutter_assets/packages/wakelock_plus/assets/no_sleep.js, src/usr/share/localsend_app/data/flutter_assets/AssetManifest.json, src/usr/share/localsend_app/data/flutter_assets/FontManifest.json, src/usr/share/localsend_app/data/flutter_assets/version.json, src/control, src/postinst, src/postrm, src/usr/share/localsend_app/data/flutter_assets/assets/web/error-403.html, src/usr/share/localsend_app/data/flutter_assets/assets/web/index.html
Reviewing additional files...
Reviewing additional files...
[0/11] Reviewing src/usr/share/localsend_app/data/flutter_assets/assets/web/main.js...
[0/11] Reviewing src/usr/share/localsend_app/data/flutter_assets/assets/web/main.js, src/usr/share/applications/localsend_app.desktop...
[0/11] Reviewing src/usr/share/localsend_app/data/flutter_assets/assets/web/main.js, src/usr/share/applications/localsend_app.desktop, src/usr/share/localsend_app/data/flutter_assets/version.json...
[0/11] Reviewing src/usr/share/localsend_app/data/flutter_assets/assets/web/main.js, src/usr/share/applications/localsend_app.desktop, src/usr/share/localsend_app/data/flutter_assets/version.json, src/usr/share/localsend_app/data/flutter_assets/FontManifest.json...
[0/11] Reviewing src/usr/share/localsend_app/data/flutter_assets/assets/web/main.js, src/usr/share/applications/localsend_app.desktop, src/usr/share/localsend_app/data/flutter_assets/version.json, src/usr/share/localsend_app/data/flutter_assets/FontManifest.json, src/control...
[0/11] Reviewing src/usr/share/localsend_app/data/flutter_assets/assets/web/main.js, src/usr/share/applications/localsend_app.desktop, src/usr/share/localsend_app/data/flutter_assets/version.json, src/usr/share/localsend_app/data/flutter_assets/FontManifest.json, src/control, src/usr/share/localsend_app/data/flutter_assets/AssetManifest.json...
[0/11] Reviewing src/usr/share/localsend_app/data/flutter_assets/assets/web/main.js, src/usr/share/applications/localsend_app.desktop, src/usr/share/localsend_app/data/flutter_assets/version.json, src/usr/share/localsend_app/data/flutter_assets/FontManifest.json, src/control, src/usr/share/localsend_app/data/flutter_assets/AssetManifest.json, src/usr/share/localsend_app/data/flutter_assets/packages/wakelock_plus/assets/no_sleep.js...
[0/11] Reviewing src/usr/share/localsend_app/data/flutter_assets/assets/web/main.js, src/usr/share/applications/localsend_app.desktop, src/usr/share/localsend_app/data/flutter_assets/version.json, src/usr/share/localsend_app/data/flutter_assets/FontManifest.json, src/control, src/usr/share/localsend_app/data/flutter_assets/AssetManifest.json, src/usr/share/localsend_app/data/flutter_assets/packages/wakelock_plus/assets/no_sleep.js, src/postinst...
[0/11] Reviewing src/usr/share/localsend_app/data/flutter_assets/assets/web/main.js, src/usr/share/applications/localsend_app.desktop, src/usr/share/localsend_app/data/flutter_assets/version.json, src/usr/share/localsend_app/data/flutter_assets/FontManifest.json, src/control, src/usr/share/localsend_app/data/flutter_assets/AssetManifest.json, src/usr/share/localsend_app/data/flutter_assets/packages/wakelock_plus/assets/no_sleep.js, src/postinst, src/postrm...
[0/11] Reviewing src/usr/share/localsend_app/data/flutter_assets/assets/web/main.js, src/usr/share/applications/localsend_app.desktop, src/usr/share/localsend_app/data/flutter_assets/version.json, src/usr/share/localsend_app/data/flutter_assets/FontManifest.json, src/control, src/usr/share/localsend_app/data/flutter_assets/AssetManifest.json, src/usr/share/localsend_app/data/flutter_assets/packages/wakelock_plus/assets/no_sleep.js, src/postinst, src/postrm, src/usr/share/localsend_app/data/flutter_assets/assets/web/error-403.html...
LLM auditresponse for error-403.html:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a static HTML error page displaying a "403 Forbidden" message. It contains no executable code, scripts, network requests, or any other dynamic or potentially malicious content. There is no evidence of obfuscation, data exfiltration, or commands that could compromise system security. This file poses no security risk.
</details>
<summary>Static HTML error page, no security concerns.</summary>
</security_assessment>

[0/11] Reviewing src/usr/share/localsend_app/data/flutter_assets/assets/web/main.js, src/usr/share/applications/localsend_app.desktop, src/usr/share/localsend_app/data/flutter_assets/version.json, src/usr/share/localsend_app/data/flutter_assets/FontManifest.json, src/control, src/usr/share/localsend_app/data/flutter_assets/AssetManifest.json, src/usr/share/localsend_app/data/flutter_assets/packages/wakelock_plus/assets/no_sleep.js, src/postinst, src/postrm, src/usr/share/localsend_app/data/flutter_assets/assets/web/error-403.html, src/usr/share/localsend_app/data/flutter_assets/assets/web/index.html...
[1/11] Reviewing src/usr/share/localsend_app/data/flutter_assets/assets/web/main.js, src/usr/share/applications/localsend_app.desktop, src/usr/share/localsend_app/data/flutter_assets/version.json, src/usr/share/localsend_app/data/flutter_assets/FontManifest.json, src/control, src/usr/share/localsend_app/data/flutter_assets/AssetManifest.json, src/usr/share/localsend_app/data/flutter_assets/packages/wakelock_plus/assets/no_sleep.js, src/postinst, src/postrm, src/usr/share/localsend_app/data/flutter_assets/assets/web/index.html...
+ Reviewed src/usr/share/localsend_app/data/flutter_assets/assets/web/error-403.html. Status: SAFE -- Static HTML error page, no security concerns.
LLM auditresponse for version.json:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `version.json` contains only a JSON object with application metadata (name, version, build number, package name). There is no executable code, no network requests, no obfuscated strings, and no references to dangerous commands. This file is purely declarative and poses no security threat.
</details>
<summary>Inert JSON version metadata; no malicious content.</summary>
</security_assessment>

[2/11] Reviewing src/usr/share/localsend_app/data/flutter_assets/assets/web/main.js, src/usr/share/applications/localsend_app.desktop, src/usr/share/localsend_app/data/flutter_assets/FontManifest.json, src/control, src/usr/share/localsend_app/data/flutter_assets/AssetManifest.json, src/usr/share/localsend_app/data/flutter_assets/packages/wakelock_plus/assets/no_sleep.js, src/postinst, src/postrm, src/usr/share/localsend_app/data/flutter_assets/assets/web/index.html...
+ Reviewed src/usr/share/localsend_app/data/flutter_assets/version.json. Status: SAFE -- Inert JSON version metadata; no malicious content.
LLM auditresponse for localsend_app.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Linux desktop entry file (`.desktop`) that provides metadata about the LocalSend application. It contains no executable code, no network requests, no obfuscated content, and no operations that could exfiltrate data, download external binaries, or modify system files. The fields (`Type`, `Name`, `Exec`, `Categories`, etc.) are normal and expected for a desktop launcher. There is no evidence of malicious behavior.
</details>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[3/11] Reviewing src/usr/share/localsend_app/data/flutter_assets/assets/web/main.js, src/usr/share/localsend_app/data/flutter_assets/FontManifest.json, src/control, src/usr/share/localsend_app/data/flutter_assets/AssetManifest.json, src/usr/share/localsend_app/data/flutter_assets/packages/wakelock_plus/assets/no_sleep.js, src/postinst, src/postrm, src/usr/share/localsend_app/data/flutter_assets/assets/web/index.html...
+ Reviewed src/usr/share/applications/localsend_app.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for FontManifest.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Flutter `FontManifest.json` that declares font assets used by the application. It contains entries for Material Icons and Yaru-themed Ubuntu fonts. There are no commands, network requests, obfuscated data, or any other suspicious patterns. The content is purely declarative and poses no security risk.
</details>
<summary>Standard font manifest; no security issues.</summary>
</security_assessment>

[4/11] Reviewing src/usr/share/localsend_app/data/flutter_assets/assets/web/main.js, src/control, src/usr/share/localsend_app/data/flutter_assets/AssetManifest.json, src/usr/share/localsend_app/data/flutter_assets/packages/wakelock_plus/assets/no_sleep.js, src/postinst, src/postrm, src/usr/share/localsend_app/data/flutter_assets/assets/web/index.html...
+ Reviewed src/usr/share/localsend_app/data/flutter_assets/FontManifest.json. Status: SAFE -- Standard font manifest; no security issues.
LLM auditresponse for AssetManifest.json:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `AssetManifest.json` is a standard asset manifest used by Flutter/Dart applications. It lists static resource paths (images, fonts, icons, web assets, and documentation). There are no commands, network requests, obfuscated content, or any functionality beyond declaring bundled asset locations. No supply-chain attack indicators are present.
</details>
<summary>
Standard application asset manifest; no malicious content.</summary>
</security_assessment>

[5/11] Reviewing src/usr/share/localsend_app/data/flutter_assets/assets/web/main.js, src/control, src/usr/share/localsend_app/data/flutter_assets/packages/wakelock_plus/assets/no_sleep.js, src/postinst, src/postrm, src/usr/share/localsend_app/data/flutter_assets/assets/web/index.html...
+ Reviewed src/usr/share/localsend_app/data/flutter_assets/AssetManifest.json. Status: SAFE -- Standard application asset manifest; no malicious content.
LLM auditresponse for postinst:
<security_assessment>
<decision>SAFE</decision>
<details>
The **postinst** script performs standard post-installation tasks for a binary package: creating a symbolic link from the system binary directory (`/usr/bin`) to the installed application file in `/usr/share`, making it executable, and printing a success message. No network requests, obfuscation, or dangerous commands are present. The operations are limited to the package's own installation paths and are consistent with routine packaging practices. There is no indication of malicious or unexpected behavior.
</details>
<summary>Normal post-install script, no security issues.</summary>
</security_assessment>

[6/11] Reviewing src/usr/share/localsend_app/data/flutter_assets/assets/web/main.js, src/control, src/usr/share/localsend_app/data/flutter_assets/packages/wakelock_plus/assets/no_sleep.js, src/postrm, src/usr/share/localsend_app/data/flutter_assets/assets/web/index.html...
+ Reviewed src/postinst. Status: SAFE -- Normal post-install script, no security issues.
LLM auditresponse for index.html:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard HTML landing page for the LocalSend application. It contains only basic HTML, CSS, and a script reference to `main.js`. There is no obfuscated code, no suspicious network requests, no dangerous commands (eval, curl, wget, base64, etc.), and no system operations. The page is purely client-side presentation and is consistent with the expected web-based interface of a local file sharing tool. The `main.js` script is not included here, so any security concerns would be in that file, but this HTML itself poses no risk.
</details>
<summary>
Benign HTML file for LocalSend web interface.</summary>
</security_assessment>

[7/11] Reviewing src/usr/share/localsend_app/data/flutter_assets/assets/web/main.js, src/control, src/usr/share/localsend_app/data/flutter_assets/packages/wakelock_plus/assets/no_sleep.js, src/postrm...
+ Reviewed src/usr/share/localsend_app/data/flutter_assets/assets/web/index.html. Status: SAFE -- Benign HTML file for LocalSend web interface.
LLM auditresponse for no_sleep.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard JavaScript library (NoSleep.js) that provides a wake lock prevention mechanism for web browsers. It uses three methods depending on browser capabilities: the native Wake Lock API, a video playback trick with base64-encoded silent video files (webm/mp4), and an old iOS workaround that periodically reloads the current page (a known behavior to prevent sleep). All three are well-documented techniques for keeping the screen awake and are not malicious.

Signs of supply-chain attack are absent: there are no network requests to external domains, no data exfiltration (e.g., reading files, environment variables, or sending HTTP requests), no obfuscated or encoded commands that hide malicious intent, and no system modifications. The base64 data URIs are only used for the videos required for the video playback trick and are part of the upstream library's design. The old iOS workaround, while aggressive (reloading URL and stopping page load), is a standard hack documented in the original NoSleep.js repository (https://github.com/richtr/NoSleep.js) and does not exfiltrate data.

This file is consistent with its stated purpose and poses no discernible security threat.
</details>
<summary>Standard NoSleep.js library, no evidence of malice.</summary>
</security_assessment>

[8/11] Reviewing src/usr/share/localsend_app/data/flutter_assets/assets/web/main.js, src/control, src/postrm...
+ Reviewed src/usr/share/localsend_app/data/flutter_assets/packages/wakelock_plus/assets/no_sleep.js. Status: SAFE -- Standard NoSleep.js library, no evidence of malice.
LLM auditresponse for control:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a Debian control file containing standard package metadata (maintainer, version, dependencies, description). It contains no executable code, scripts, network requests, or obfuscated content. All fields are typical for a legitimate package descriptor. No evidence of malicious intent or supply-chain attack.
</details>
<summary>Standard package metadata, no security concerns.</summary>
</security_assessment>

[9/11] Reviewing src/usr/share/localsend_app/data/flutter_assets/assets/web/main.js, src/postrm...
+ Reviewed src/control. Status: SAFE -- Standard package metadata, no security concerns.
LLM auditresponse for main.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `main.js` is a standard JavaScript web client for the LocalSend application. It makes AJAX requests to the application's own API endpoints (`/api/localsend/v2`) and a localization file (`/i18n.json`). All requests use relative paths, meaning they target the same origin as the hosting page. There is no evidence of obfuscation, base64 decoding, eval usage, or any suspicious network requests to external hosts. The code handles expected HTTP status codes (401, 403, 429, 200) for authentication and rate limiting. This is ordinary upstream application functionality and does not contain any indicators of a supply-chain attack.
</details>
<summary>Standard web client code, no malicious behavior.</summary>
</security_assessment>

[10/11] Reviewing src/postrm...
+ Reviewed src/usr/share/localsend_app/data/flutter_assets/assets/web/main.js. Status: SAFE -- Standard web client code, no malicious behavior.
LLM auditresponse for postrm:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a post-removal script for the localsend-bin AUR package. It simply removes the installed binary `/usr/bin/localsend_app` and prints a farewell message. There is no evidence of malicious behavior such as data exfiltration, network requests, obfuscated commands, or unauthorized system modifications. The script performs a standard cleanup operation consistent with package removal.
</details>
<summary>
Standard post-removal script, no malicious activity.</summary>
</security_assessment>

[11/11] Reviewing ...
+ Reviewed src/postrm. Status: SAFE -- Standard post-removal script, no malicious activity.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,810
  Completion Tokens: 6,743
  Total Tokens: 43,553
  Total Cost: $0.004527
  Execution Time: 45.26 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-localsend-bin.txt
Final Status: SAFE


No issues found.
