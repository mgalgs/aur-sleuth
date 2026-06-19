---
package: emby-server-beta
pkgver: 4.10.0.15
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 39444
completion_tokens: 8941
total_tokens: 48385
cost: 0.00515934
execution_time: 94.8
files_reviewed: 12
files_skipped: 1
date: 2026-06-19T08:34:16Z
file_verdicts:
  - file: license.docx
    status: skipped
    summary: "Skipping binary file: license.docx"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no security concerns found.
  - file: emby-server.install
    status: safe
    summary: Standard post-upgrade message, no security issues.
  - file: src/system/dashboard-ui/dashboard/releasenotes.js
    status: safe
    summary: Standard Emby release notes view code, no malicious behavior.
  - file: src/system/dashboard-ui/apikeys/apikeys.js
    status: safe
    summary: Standard Emby API key management UI code, no malicious behavior.
  - file: src/system/dashboard-ui/devices/cameraupload.js
    status: safe
    summary: Standard Emby settings frontend code, no malicious behavior.
  - file: emby-server.service
    status: safe
    summary: Standard service file; no signs of malicious code.
  - file: src/system/dashboard-ui/livetvsetup/guideprovider.js
    status: safe
    summary: Standard frontend code, no malicious behavior found.
  - file: src/system/dashboard-ui/apploader.js
    status: safe
    summary: Standard Emby app loader; no suspicious activity detected.
  - file: src/system/dashboard-ui/embypremiere/embypremiere.js
    status: safe
    summary: Standard Emby UI code; no malicious behavior found.
  - file: src/system/dashboard-ui/librarysetup/librariescontroller.js
    status: safe
    summary: Legitimate Emby frontend library controller.
  - file: src/system/dashboard-ui/livetvsetup/livetvtuner.js
    status: safe
    summary: Standard Emby UI tuner config module, no malicious code.
  - file: src/system/dashboard-ui/dashboard/serveractivity.js
    status: safe
    summary: Standard Emby web UI component, no malicious patterns detected.
---

Cloning https://aur.archlinux.org/emby-server-beta.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-hml57ra7...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-hml57ra7
Analyzing emby-server-beta AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-hml57ra7) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines package metadata, source URLs, checksums, and shell functions (prepare, package). At global scope, it sets variables and arrays; there are no command substitutions, no eval, no encoded or obfuscated commands, and no network operations outside the standard `source` array. The `source` array points to the upstream project's official GitHub releases and their own tools server, which is expected. All source entries have explicit SHA-256 checksums (none are `SKIP`), so the download integrity is verified. The `pkgver()` function is not defined (so nothing executes beyond variable assignment). The `prepare()`, `build()` (absent), and `package()` functions are not executed by `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. There is no code in the global scope that downloads and runs arbitrary payloads or exfiltrates data. The file is consistent with standard AUR packaging practices and poses no risk for the designated commands.
</details>
<summary>No malicious code in global scope; standard PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious code in global scope; standard PKGBUILD.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, emby-server.install...
[0/3] Reviewing PKGBUILD, emby-server.install, license.docx...
[1/3] Reviewing PKGBUILD, emby-server.install...
! Reviewed license.docx. Status: SKIPPED -- Skipping binary file: license.docx
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging conventions. It downloads the Emby Server binary and a precompiled FFmpeg bundle from official upstream sources (`github.com/MediaBrowser/Emby.Releases` and `mediabrowser.github.io`), with all checksums validated (no `SKIP` entries). The `prepare()` function removes unused platform runtimes (electron, OSX, Tizen, Windows), which is a normal optimization. The `package()` function installs files into the expected directories (`/usr/lib/emby-server`, `/usr/bin`, systemd unit, config, and license). There are no obfuscated commands, unexpected network requests, or dangerous operations like `eval`, `curl|bash`, or data exfiltration. The script is a straightforward packaging of an upstream project.
</details>
<summary>
Standard AUR PKGBUILD, no security concerns found.
</summary>
</security_assessment>

[2/3] Reviewing emby-server.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no security concerns found.
LLM auditresponse for emby-server.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux package install script (`emby-server.install`). It contains a single `post_upgrade()` function that uses `vercmp` to check the previously installed version and prints a message to the user about the service now using `DynamicUser`. There are no network requests, no execution of downloaded code, no obfuscation, no file system modifications beyond standard output, and no interaction with system configuration outside the packaging scope. The content is entirely benign and follows normal AUR packaging conventions.
</details>
<summary>Standard post-upgrade message, no security issues.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed emby-server.install. Status: SAFE -- Standard post-upgrade message, no security issues.
Reviewed all required files.
Deciding which files to review next...
Note: 897 files available for selection; offering the 50 highest-priority to the model. 690 lower-priority file(s) were not offered.
LLM response for file selection:
emby-server.service
src/system/dashboard-ui/apploader.js
src/system/dashboard-ui/dashboard/serveractivity.js
src/system/dashboard-ui/dashboard/releasenotes.js
src/system/dashboard-ui/livetvsetup/guideprovider.js
src/system/dashboard-ui/embypremiere/embypremiere.js
src/system/dashboard-ui/apikeys/apikeys.js
src/system/dashboard-ui/devices/cameraupload.js
src/system/dashboard-ui/livetvsetup/livetvtuner.js
src/system/dashboard-ui/librarysetup/librariescontroller.js
Decided to review 10 additional files: emby-server.service, src/system/dashboard-ui/apploader.js, src/system/dashboard-ui/dashboard/serveractivity.js, src/system/dashboard-ui/dashboard/releasenotes.js, src/system/dashboard-ui/livetvsetup/guideprovider.js, src/system/dashboard-ui/embypremiere/embypremiere.js, src/system/dashboard-ui/apikeys/apikeys.js, src/system/dashboard-ui/devices/cameraupload.js, src/system/dashboard-ui/livetvsetup/livetvtuner.js, src/system/dashboard-ui/librarysetup/librariescontroller.js
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/system/dashboard-ui/dashboard/serveractivity.js...
[0/10] Reviewing src/system/dashboard-ui/dashboard/serveractivity.js, src/system/dashboard-ui/apploader.js...
[0/10] Reviewing src/system/dashboard-ui/dashboard/serveractivity.js, src/system/dashboard-ui/apploader.js, emby-server.service...
[0/10] Reviewing src/system/dashboard-ui/dashboard/serveractivity.js, src/system/dashboard-ui/apploader.js, emby-server.service, src/system/dashboard-ui/dashboard/releasenotes.js...
[0/10] Reviewing src/system/dashboard-ui/dashboard/serveractivity.js, src/system/dashboard-ui/apploader.js, emby-server.service, src/system/dashboard-ui/dashboard/releasenotes.js, src/system/dashboard-ui/livetvsetup/guideprovider.js...
[0/10] Reviewing src/system/dashboard-ui/dashboard/serveractivity.js, src/system/dashboard-ui/apploader.js, emby-server.service, src/system/dashboard-ui/dashboard/releasenotes.js, src/system/dashboard-ui/livetvsetup/guideprovider.js, src/system/dashboard-ui/devices/cameraupload.js...
[0/10] Reviewing src/system/dashboard-ui/dashboard/serveractivity.js, src/system/dashboard-ui/apploader.js, emby-server.service, src/system/dashboard-ui/dashboard/releasenotes.js, src/system/dashboard-ui/livetvsetup/guideprovider.js, src/system/dashboard-ui/devices/cameraupload.js, src/system/dashboard-ui/embypremiere/embypremiere.js...
[0/10] Reviewing src/system/dashboard-ui/dashboard/serveractivity.js, src/system/dashboard-ui/apploader.js, emby-server.service, src/system/dashboard-ui/dashboard/releasenotes.js, src/system/dashboard-ui/livetvsetup/guideprovider.js, src/system/dashboard-ui/devices/cameraupload.js, src/system/dashboard-ui/embypremiere/embypremiere.js, src/system/dashboard-ui/apikeys/apikeys.js...
[0/10] Reviewing src/system/dashboard-ui/dashboard/serveractivity.js, src/system/dashboard-ui/apploader.js, emby-server.service, src/system/dashboard-ui/dashboard/releasenotes.js, src/system/dashboard-ui/livetvsetup/guideprovider.js, src/system/dashboard-ui/devices/cameraupload.js, src/system/dashboard-ui/embypremiere/embypremiere.js, src/system/dashboard-ui/apikeys/apikeys.js, src/system/dashboard-ui/livetvsetup/livetvtuner.js...
[0/10] Reviewing src/system/dashboard-ui/dashboard/serveractivity.js, src/system/dashboard-ui/apploader.js, emby-server.service, src/system/dashboard-ui/dashboard/releasenotes.js, src/system/dashboard-ui/livetvsetup/guideprovider.js, src/system/dashboard-ui/devices/cameraupload.js, src/system/dashboard-ui/embypremiere/embypremiere.js, src/system/dashboard-ui/apikeys/apikeys.js, src/system/dashboard-ui/livetvsetup/livetvtuner.js, src/system/dashboard-ui/librarysetup/librariescontroller.js...
LLM auditresponse for releasenotes.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a minified JavaScript module for the Emby application's release notes view. It uses the application's own API client to fetch release notes versions and display them. There are no suspicious network requests to unexpected hosts, no obfuscated code, no dangerous commands (eval, base64, curl, wget), and no file system manipulation outside the application's scope. This is standard upstream application code, not a supply-chain attack.
</details>
<summary>Standard Emby release notes view code, no malicious behavior.</summary>
</security_assessment>

[1/10] Reviewing src/system/dashboard-ui/dashboard/serveractivity.js, src/system/dashboard-ui/apploader.js, emby-server.service, src/system/dashboard-ui/livetvsetup/guideprovider.js, src/system/dashboard-ui/devices/cameraupload.js, src/system/dashboard-ui/embypremiere/embypremiere.js, src/system/dashboard-ui/apikeys/apikeys.js, src/system/dashboard-ui/livetvsetup/livetvtuner.js, src/system/dashboard-ui/librarysetup/librariescontroller.js...
+ Reviewed src/system/dashboard-ui/dashboard/releasenotes.js. Status: SAFE -- Standard Emby release notes view code, no malicious behavior.
LLM auditresponse for apikeys.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Emby web UI module for managing API keys. The code is minified but not obfuscated, and all operations (importing UI components, creating prompts, handling API calls) are normal for the application&#39;s purpose. There are no suspicious network requests, no use of dangerous functions like eval or base64, and no attempts to access external resources unexpectedly. The dynamic import via `Emby.importModule` is standard practice in Emby. No evidence of a supply-chain attack was found.
</details>
<summary>Standard Emby API key management UI code, no malicious behavior.</summary>
</security_assessment>

[2/10] Reviewing src/system/dashboard-ui/dashboard/serveractivity.js, src/system/dashboard-ui/apploader.js, emby-server.service, src/system/dashboard-ui/livetvsetup/guideprovider.js, src/system/dashboard-ui/devices/cameraupload.js, src/system/dashboard-ui/embypremiere/embypremiere.js, src/system/dashboard-ui/livetvsetup/livetvtuner.js, src/system/dashboard-ui/librarysetup/librariescontroller.js...
+ Reviewed src/system/dashboard-ui/apikeys/apikeys.js. Status: SAFE -- Standard Emby API key management UI code, no malicious behavior.
LLM auditresponse for cameraupload.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Emby server settings view for camera upload configuration. The code loads device settings from the server API, displays fields for upload path and subfolder toggle, and saves changes. It also integrates with Emby's directory browser for folder selection. The dynamic module import (`Emby.importModule`) is part of Emby's own module system, not an external/unexpected download. All network interactions go through the API client to the server's own configuration endpoints. There is no obfuscation beyond normal minification, no dangerous commands (`eval`, `base64`, `curl`, `wget`), and no exfiltration of data or execution of remote code. The file behaves as expected for an upstream Emby frontend component.
</details>
<summary>Standard Emby settings frontend code, no malicious behavior.</summary>
</security_assessment>

[3/10] Reviewing src/system/dashboard-ui/dashboard/serveractivity.js, src/system/dashboard-ui/apploader.js, emby-server.service, src/system/dashboard-ui/livetvsetup/guideprovider.js, src/system/dashboard-ui/embypremiere/embypremiere.js, src/system/dashboard-ui/livetvsetup/livetvtuner.js, src/system/dashboard-ui/librarysetup/librariescontroller.js...
+ Reviewed src/system/dashboard-ui/devices/cameraupload.js. Status: SAFE -- Standard Emby settings frontend code, no malicious behavior.
LLM auditresponse for emby-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The service file is a standard systemd unit for running the Emby media server. It employs recommended security hardening (e.g., `DynamicUser=true`, `LockPersonality=true`, `ProtectControlGroups=true`, `ProtectKernelModules=true`, `ProtectKernelTunables=true`). Hardware acceleration support is enabled via `ReadWritePaths=-/dev/dri` and the `video` group.  

A minor packaging flaw exists: `SupplementaryGroups` is set twice, so only `video` is applied (the second line overwrites the first). This does not introduce a security vulnerability, and there is no evidence of malicious or obfuscated commands, unexpected network requests, or backdoors.
</details>
<summary>Standard service file; no signs of malicious code.</summary>
</security_assessment>

[4/10] Reviewing src/system/dashboard-ui/dashboard/serveractivity.js, src/system/dashboard-ui/apploader.js, src/system/dashboard-ui/livetvsetup/guideprovider.js, src/system/dashboard-ui/embypremiere/embypremiere.js, src/system/dashboard-ui/livetvsetup/livetvtuner.js, src/system/dashboard-ui/librarysetup/librariescontroller.js...
+ Reviewed emby-server.service. Status: SAFE -- Standard service file; no signs of malicious code.
LLM auditresponse for guideprovider.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard JavaScript AMD module for an Emby frontend view. It manages the UI for selecting a TV listing provider based on country. The code fetches available providers from the server&#39;s API endpoint `LiveTv/ListingProviders/Available`, then on form submission navigates to the selected provider&#39;s setup URL (provided by the server). No obfuscation, external downloads, or suspicious patterns (eval, base64, curl, wget) are present. The communication is with the application&#39;s own server, which is expected. This is benign application logic.</details>
<summary>Standard frontend code, no malicious behavior found.</summary>
</security_assessment>

[5/10] Reviewing src/system/dashboard-ui/dashboard/serveractivity.js, src/system/dashboard-ui/apploader.js, src/system/dashboard-ui/embypremiere/embypremiere.js, src/system/dashboard-ui/livetvsetup/livetvtuner.js, src/system/dashboard-ui/librarysetup/librariescontroller.js...
+ Reviewed src/system/dashboard-ui/livetvsetup/guideprovider.js. Status: SAFE -- Standard frontend code, no malicious behavior found.
LLM auditresponse for apploader.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard application loader for Emby Server, a media server application. It dynamically loads scripts, registers a service worker for offline caching, and sets up the module path. The code uses relative URLs for loading resources (`./modules/alameda/alameda`, `./app`, etc.) and does not fetch or execute code from unexpected external hosts. No obfuscation, encoded commands, or dangerous operations (eval, base64, curl, wget) are present. The service worker registration and background sync are normal for web applications that cache assets. There is no evidence of malicious behavior or supply-chain attack.
</details>
<summary>Standard Emby app loader; no suspicious activity detected.</summary>
</security_assessment>

[6/10] Reviewing src/system/dashboard-ui/dashboard/serveractivity.js, src/system/dashboard-ui/embypremiere/embypremiere.js, src/system/dashboard-ui/livetvsetup/livetvtuner.js, src/system/dashboard-ui/librarysetup/librariescontroller.js...
+ Reviewed src/system/dashboard-ui/apploader.js. Status: SAFE -- Standard Emby app loader; no suspicious activity detected.
LLM auditresponse for embypremiere.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard minified JavaScript module from the Emby media server (upstream code). It handles supporter/premiere key operations—saving keys, checking status, and retrieving lost keys—via HTTP POST requests to ``https://mb3admin.com/``, the official Emby server. These network requests are expected functionality for the application, not a supply-chain attack. There is no obfuscated code, no dangerous commands like `eval` or `base64`, and no exfiltration of local data or execution of attacker-controlled content. The file is consistent with normal packaging practices for Emby's web interface.
</details>
<summary>Standard Emby UI code; no malicious behavior found.</summary>
</security_assessment>

[7/10] Reviewing src/system/dashboard-ui/dashboard/serveractivity.js, src/system/dashboard-ui/livetvsetup/livetvtuner.js, src/system/dashboard-ui/librarysetup/librariescontroller.js...
+ Reviewed src/system/dashboard-ui/embypremiere/embypremiere.js. Status: SAFE -- Standard Emby UI code; no malicious behavior found.
LLM auditresponse for librariescontroller.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `librariescontroller.js` is a standard Emby frontend module for adding and managing media libraries. It uses dynamic module imports (`Emby.importModule`) and references to Emby's own wiki URLs, which is typical for the application's architecture. There are no suspicious network requests, obfuscated code, or system commands. The minified format is for bundling, not to hide malicious behavior. No data exfiltration, backdoors, or tampering with system files is present. The code performs only UI operations and module loading consistent with the Emby web client.
</details>
<summary>Legitimate Emby frontend library controller.</summary>
</security_assessment>

[8/10] Reviewing src/system/dashboard-ui/dashboard/serveractivity.js, src/system/dashboard-ui/livetvsetup/livetvtuner.js...
+ Reviewed src/system/dashboard-ui/librarysetup/librariescontroller.js. Status: SAFE -- Legitimate Emby frontend library controller.
LLM auditresponse for livetvtuner.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Emby frontend module for configuring live TV tuner settings. It uses AMD-style `define` to import UI components and utility modules. The code interacts with `ApiClient` to fetch and save tuner host configurations—this is the application's own internal API, not an external service. No obfuscated code, suspicious network requests, or attempts to execute shell commands are present. All operations are within the expected scope of the Emby media server's configuration UI. This is normal upstream application functionality.
</details>
<summary>Standard Emby UI tuner config module, no malicious code.</summary>
</security_assessment>

[9/10] Reviewing src/system/dashboard-ui/dashboard/serveractivity.js...
+ Reviewed src/system/dashboard-ui/livetvsetup/livetvtuner.js. Status: SAFE -- Standard Emby UI tuner config module, no malicious code.
LLM auditresponse for serveractivity.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a minified JavaScript AMD module defining a `ServerActivityPage` component for the Emby server web interface. It imports standard modules (`globalize`, `appheader`, `list`, `listview`) and defines methods for displaying activity log entries. The code makes API calls to `getUserActivityLog` or `getActivityLog`, which is expected upstream functionality. There are no suspicious patterns such as base64, eval, exec, curl, wget, or obfuscated network requests. The minification is standard for production builds and does not conceal any malicious behavior. The file appears to be legitimate application code with no evidence of a supply-chain attack.
</details>
<summary>Standard Emby web UI component, no malicious patterns detected.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/system/dashboard-ui/dashboard/serveractivity.js. Status: SAFE -- Standard Emby web UI component, no malicious patterns detected.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: license.docx)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 39,444
  Completion Tokens: 8,941
  Total Tokens: 48,385
  Total Cost: $0.005159
  Execution Time: 94.80 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-emby-server-beta.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-hml57ra7/license.docx: [SKIPPED] Skipping binary file: license.docx
