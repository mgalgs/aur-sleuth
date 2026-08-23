---
package: gnome-shell-extension-dash-to-dock
pkgver: 105
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 87999
completion_tokens: 10529
total_tokens: 98528
cost: 0.00981513
execution_time: 89.44
files_reviewed: 11
files_skipped: 0
date: 2026-06-19T11:30:20Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned commit, no malicious indicators.
  - file: src/dash-to-dock/launcherAPI.js
    status: safe
    summary: Standard D-Bus integration code, no malicious behavior.
  - file: src/dash-to-dock/Makefile
    status: safe
    summary: Standard build and install Makefile, no malicious code.
  - file: src/dash-to-dock/dash.js
    status: safe
    summary: No malicious code found; standard GNOME extension UI code.
  - file: src/dash-to-dock/appIcons.js
    status: safe
    summary: Standard extension code, no malicious behavior.
  - file: src/dash-to-dock/fileManager1API.js
    status: safe
    summary: Safe GNOME Shell extension D-Bus client code.
  - file: src/dash-to-dock/intellihide.js
    status: safe
    summary: "Safe: standard extension window management code, no malicious behavior."
  - file: src/dash-to-dock/docking.js
    status: safe
    summary: No malicious code found; standard extension code.
  - file: src/dash-to-dock/locations.js
    status: safe
    summary: Standard GNOME Shell extension code, no malicious behavior found.
  - file: src/dash-to-dock/notificationsMonitor.js
    status: safe
    summary: Legitimate GNOME Shell extension notification monitoring code.
  - file: src/dash-to-dock/locationsWorker.js
    status: safe
    summary: Standard GNOME handler query script, no malicious behavior.
---

Cloning https://aur.archlinux.org/gnome-shell-extension-dash-to-dock.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-vw10ii69...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-vw10ii69
Analyzing gnome-shell-extension-dash-to-dock AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-vw10ii69) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines standard variables and sources from the official upstream GitHub repository with a pinned commit hash. The `pkgver()` function uses `git describe --tags` in a typical way for VCS packages. There is no top-level code execution, no suspicious network requests, no obfuscation, and no commands outside normal packaging practices. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only clone the repository and execute the benign `pkgver()` function. No malicious behavior is present.
</details>
<summary>Standard VCS PKGBUILD with pinned commit, no malicious code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard VCS PKGBUILD with pinned commit, no malicious code.[/]
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
This PKGBUILD follows standard AUR packaging practices. The source is pinned to a specific commit (`_commit=b1478f10a3fca9eaa5dc9d2f9907c20427e269f6`) from the official upstream GitHub repository. The build process only runs `make` and `make install` with proper DESTDIR. There are no network requests beyond the declared git source, no obfuscated or encoded commands, no file operations outside the expected package directory, and no attempts to exfiltrate data or execute untrusted code. The SKIP checksum is expected for VCS sources. No security issues are present.
</details>
<summary>Standard PKGBUILD with pinned commit, no malicious indicators.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned commit, no malicious indicators.
Reviewed all required files.
Deciding which files to review next...
Note: 91 files available for selection; offering the 50 highest-priority to the model. 40 lower-priority file(s) were not offered.
LLM response for file selection:
src/dash-to-dock/Makefile
src/dash-to-dock/appIcons.js
src/dash-to-dock/dash.js
src/dash-to-dock/docking.js
src/dash-to-dock/intellihide.js
src/dash-to-dock/launcherAPI.js
src/dash-to-dock/fileManager1API.js
src/dash-to-dock/locations.js
src/dash-to-dock/locationsWorker.js
src/dash-to-dock/notificationsMonitor.js
Decided to review 10 additional files: src/dash-to-dock/Makefile, src/dash-to-dock/appIcons.js, src/dash-to-dock/dash.js, src/dash-to-dock/docking.js, src/dash-to-dock/intellihide.js, src/dash-to-dock/launcherAPI.js, src/dash-to-dock/fileManager1API.js, src/dash-to-dock/locations.js, src/dash-to-dock/locationsWorker.js, src/dash-to-dock/notificationsMonitor.js
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/dash-to-dock/Makefile...
[0/10] Reviewing src/dash-to-dock/Makefile, src/dash-to-dock/appIcons.js...
[0/10] Reviewing src/dash-to-dock/Makefile, src/dash-to-dock/appIcons.js, src/dash-to-dock/dash.js...
[0/10] Reviewing src/dash-to-dock/Makefile, src/dash-to-dock/appIcons.js, src/dash-to-dock/dash.js, src/dash-to-dock/docking.js...
[0/10] Reviewing src/dash-to-dock/Makefile, src/dash-to-dock/appIcons.js, src/dash-to-dock/dash.js, src/dash-to-dock/docking.js, src/dash-to-dock/intellihide.js...
[0/10] Reviewing src/dash-to-dock/Makefile, src/dash-to-dock/appIcons.js, src/dash-to-dock/dash.js, src/dash-to-dock/docking.js, src/dash-to-dock/intellihide.js, src/dash-to-dock/launcherAPI.js...
[0/10] Reviewing src/dash-to-dock/Makefile, src/dash-to-dock/appIcons.js, src/dash-to-dock/dash.js, src/dash-to-dock/docking.js, src/dash-to-dock/intellihide.js, src/dash-to-dock/launcherAPI.js, src/dash-to-dock/fileManager1API.js...
[0/10] Reviewing src/dash-to-dock/Makefile, src/dash-to-dock/appIcons.js, src/dash-to-dock/dash.js, src/dash-to-dock/docking.js, src/dash-to-dock/intellihide.js, src/dash-to-dock/launcherAPI.js, src/dash-to-dock/fileManager1API.js, src/dash-to-dock/locations.js...
[0/10] Reviewing src/dash-to-dock/Makefile, src/dash-to-dock/appIcons.js, src/dash-to-dock/dash.js, src/dash-to-dock/docking.js, src/dash-to-dock/intellihide.js, src/dash-to-dock/launcherAPI.js, src/dash-to-dock/fileManager1API.js, src/dash-to-dock/locations.js, src/dash-to-dock/locationsWorker.js...
[0/10] Reviewing src/dash-to-dock/Makefile, src/dash-to-dock/appIcons.js, src/dash-to-dock/dash.js, src/dash-to-dock/docking.js, src/dash-to-dock/intellihide.js, src/dash-to-dock/launcherAPI.js, src/dash-to-dock/fileManager1API.js, src/dash-to-dock/locations.js, src/dash-to-dock/locationsWorker.js, src/dash-to-dock/notificationsMonitor.js...
LLM auditresponse for launcherAPI.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `launcherAPI.js` implements a D-Bus client for the Unity Launcher API (`com.canonical.Unity.LauncherEntry`). This is a standard feature of the dash-to-dock extension, which provides Unity-like dock behavior. The code listens for `Update` signals on the session bus, manages property stacks for application launchers, and emits change events. There are no network requests, no file operations, no obfuscated or encoded commands, no eval, and no execution of external code. All operations are confined to GNOME Shell's extension framework and D-Bus IPC. The D-Bus integration is the extension's intended functionality, not a supply-chain attack.
</details>
<summary>
Standard D-Bus integration code, no malicious behavior.
</summary>
</security_assessment>

[1/10] Reviewing src/dash-to-dock/Makefile, src/dash-to-dock/appIcons.js, src/dash-to-dock/dash.js, src/dash-to-dock/docking.js, src/dash-to-dock/intellihide.js, src/dash-to-dock/fileManager1API.js, src/dash-to-dock/locations.js, src/dash-to-dock/locationsWorker.js, src/dash-to-dock/notificationsMonitor.js...
+ Reviewed src/dash-to-dock/launcherAPI.js. Status: SAFE -- Standard D-Bus integration code, no malicious behavior.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
This Makefile is a standard build file for the `dash-to-dock` GNOME Shell extension. It performs expected actions such as compiling GSettings schemas, processing translations (`.po` → `.mo`), generating a stylesheet from SCSS, and installing the extension to the user's or system's GNOME Shell extensions directory.

There are no signs of malicious behavior: no obfuscated code, no downloads or execution of arbitrary external content (no `curl`, `wget`, `eval`, base64 decoding), and no exfiltration of data. The only network-relevant operation is `git rev-parse HEAD` to derive a version string—this reads a local Git repository's current commit hash and does not fetch anything from a remote. All file operations are confined to the extension's own build directory and installation target. The use of `sed -i` modifies only the generated `metadata.json` inside the build output, which is a routine packaging step.

The file follows standard GNOME extension packaging practices and contains no supply-chain attack indicators.
</details>
<summary>Standard build and install Makefile, no malicious code.</summary>
</security_assessment>

[2/10] Reviewing src/dash-to-dock/appIcons.js, src/dash-to-dock/dash.js, src/dash-to-dock/docking.js, src/dash-to-dock/intellihide.js, src/dash-to-dock/fileManager1API.js, src/dash-to-dock/locations.js, src/dash-to-dock/locationsWorker.js, src/dash-to-dock/notificationsMonitor.js...
+ Reviewed src/dash-to-dock/Makefile. Status: SAFE -- Standard build and install Makefile, no malicious code.
LLM auditresponse for dash.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `dash.js` is a standard GNOME Shell extension module that extends the built-in Dash component. It contains no network requests, no obfuscated code, no file exfiltration attempts, and no unexpected system modifications. All imports reference internal extension dependencies (`./dependencies/gi.js`, `./dependencies/shell/ui.js`, etc.) and standard shell modules, which is normal for this type of extension. The code performs UI-related operations such as icon sizing, scrolling behavior, drag-and-drop, and label handling – all within the expected scope of the dash-to-dock extension. There is no evidence of malicious or suspicious behavior. The package appears to be a legitimate AUR package for the `gnome-shell-extension-dash-to-dock` extension.
</details>
<summary>No malicious code found; standard GNOME extension UI code.</summary>
</security_assessment>

[3/10] Reviewing src/dash-to-dock/appIcons.js, src/dash-to-dock/docking.js, src/dash-to-dock/intellihide.js, src/dash-to-dock/fileManager1API.js, src/dash-to-dock/locations.js, src/dash-to-dock/locationsWorker.js, src/dash-to-dock/notificationsMonitor.js...
+ Reviewed src/dash-to-dock/dash.js. Status: SAFE -- No malicious code found; standard GNOME extension UI code.
LLM auditresponse for appIcons.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard GNOME Shell extension source code for the Dash to Dock extension. It implements UI components for dock app icons, menus, and window previews. All imports are from legitimate GNOME Shell libraries (`Clutter`, `Gio`, `GLib`, `Meta`, `Shell`, `St`) and the extension's own modules. The code manipulates application windows, handles user clicks, scrolls, and popup menus — all expected functionality for a dock extension.

There are no network requests, no downloads, no execution of external code (no `curl`, `wget`, `eval`, `base64` decoding), and no file system modifications outside the extension's scope. The only DBus interaction is with `org.gnome.Software` for showing app details, which is a standard GNOME feature. The `Util.spawnApp` call is used to launch a snap-store application, which is benign. No obfuscation or encoded payloads are present.

This file does not exhibit any supply-chain attack indicators. All operations are consistent with the extension's stated purpose of providing a customizable dock.
</details>
<summary>Standard extension code, no malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing src/dash-to-dock/docking.js, src/dash-to-dock/intellihide.js, src/dash-to-dock/fileManager1API.js, src/dash-to-dock/locations.js, src/dash-to-dock/locationsWorker.js, src/dash-to-dock/notificationsMonitor.js...
+ Reviewed src/dash-to-dock/appIcons.js. Status: SAFE -- Standard extension code, no malicious behavior.
LLM auditresponse for fileManager1API.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard JavaScript module for a GNOME Shell extension. It implements a D-Bus client for the `org.freedesktop.FileManager1` interface (used by Nautilus) to track open file windows and their locations. The code uses only legitimate GNOME Shell APIs (`GLib`, `Gio`, `global`, imports) and internal extension utilities (`Utils`, `./imports.js`). There are no network requests, no obfuscation, no execution of external commands, and no file system modifications outside of standard D-Bus property reading. The pattern of listening for D-Bus signals and workspace/display events is normal for a docks/dash extension that integrates with the file manager. No evidence of malicious or injection-related behavior.
</details>
<summary>Safe GNOME Shell extension D-Bus client code.</summary>
</security_assessment>

[5/10] Reviewing src/dash-to-dock/docking.js, src/dash-to-dock/intellihide.js, src/dash-to-dock/locations.js, src/dash-to-dock/locationsWorker.js, src/dash-to-dock/notificationsMonitor.js...
+ Reviewed src/dash-to-dock/fileManager1API.js. Status: SAFE -- Safe GNOME Shell extension D-Bus client code.
LLM auditresponse for intellihide.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is part of the GNOME Shell extension's own source code implementing the "intellihide" feature. It contains only standard GJS code for window management: tracking windows, listening to signals (window-created, restacked, focus changes), checking overlap with a target box, and emitting a status-changed signal. There are no network requests, file system writes, external command execution, obfuscated strings, or encoded payloads. All imported modules (Meta, Shell, GLib) are standard GNOME Shell libraries. The filtering of certain windows (e.g., DING extension) by application ID is normal behavior. No evidence of malicious or supply-chain attack code is present.
</details>
<summary>
Safe: standard extension window management code, no malicious behavior.</summary>
</security_assessment>

[6/10] Reviewing src/dash-to-dock/docking.js, src/dash-to-dock/locations.js, src/dash-to-dock/locationsWorker.js, src/dash-to-dock/notificationsMonitor.js...
+ Reviewed src/dash-to-dock/intellihide.js. Status: SAFE -- Safe: standard extension window management code, no malicious behavior.
LLM auditresponse for docking.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The provided file `docking.js` is a standard GNOME Shell extension component for `dash-to-dock`. It contains typical UI management code, event handlers, and animation logic. No suspicious patterns such as `curl`, `wget`, `eval`, `base64`, `exec`, or obfuscated commands were found in the visible excerpt or indicated in the truncated portion. The code imports dependencies from the shell's own libraries and defines classes for the dock's behavior. There is no evidence of network requests, data exfiltration, or unexpected system modifications. The file appears to be legitimate upstream extension code, not a supply-chain attack.
</details>
<summary>No malicious code found; standard extension code.</summary>
</security_assessment>

[7/10] Reviewing src/dash-to-dock/locations.js, src/dash-to-dock/locationsWorker.js, src/dash-to-dock/notificationsMonitor.js...
+ Reviewed src/dash-to-dock/docking.js. Status: SAFE -- No malicious code found; standard extension code.
LLM auditresponse for locations.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `locations.js` is part of the gnome-shell-extension-dash-to-dock extension, which integrates file manager locations (trash, removable devices) into the GNOME Shell dock. The code is consistent with this purpose and does not exhibit any indicators of a supply-chain attack.

All operations are standard for a GNOME Shell extension:
- It uses Gio, GLib, Shell, and St APIs for file operations, volume monitoring, D-Bus communication (e.g., Nautilus empty trash), and app window management.
- The subprocess spawn (`Gio.Subprocess.new`) in `_getHandlerAppFromWorker` runs a bundled worker script (`locationsWorker.js`) to query the default URI handler without blocking the UI. This is a legitimate pattern for offloading synchronous GIO calls. The worker path is derived from the extension's own installation directory, not from an untrusted source.
- No obfuscated code, base64/hex strings, `eval`, `curl`, `wget`, or network requests to external hosts are present.
- File metadata reads and icon updates are scoped to mounted volumes and the trash URI.
- The wrapping of `Shell.App` instances and injection of methods/properties is normal for extensions that customize app behavior, such as activating windows with workspace support.

There is no evidence of data exfiltration, credential theft, backdoors, or tampering with unrelated system files. The code follows expected patterns for a GNOME Shell extension that provides dash-to-dock functionality with trash and removable device integration.
</details>
<summary>
Standard GNOME Shell extension code, no malicious behavior found.
</summary>
</security_assessment>

[8/10] Reviewing src/dash-to-dock/locationsWorker.js, src/dash-to-dock/notificationsMonitor.js...
+ Reviewed src/dash-to-dock/locations.js. Status: SAFE -- Standard GNOME Shell extension code, no malicious behavior found.
LLM auditresponse for notificationsMonitor.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard GNOME Shell extension component that monitors notifications. It uses well-known GNOME APIs (`Gio.Settings`, `Main.messageTray`) and does not perform any network requests, file operations, or system modifications. The code follows normal patterns for signal handling and notification counting. No obfuscation or malicious behavior is present.
</details>
<summary>Legitimate GNOME Shell extension notification monitoring code.</summary>
</security_assessment>

[9/10] Reviewing src/dash-to-dock/locationsWorker.js...
+ Reviewed src/dash-to-dock/notificationsMonitor.js. Status: SAFE -- Legitimate GNOME Shell extension notification monitoring code.
LLM auditresponse for locationsWorker.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `locationsWorker.js` is a GNOME Shell worker script that uses GJS to query the default application handler for a given URI (e.g., `ftp://`, `file://`, or custom schemes). It imports standard GLib and Gio modules, performs an asynchronous `query_default_handler_async` call with a timeout to prevent hangs, and prints the handler's ID. There is no obfuscated code, no network requests to unexpected hosts, no file modifications, no data exfiltration, and no execution of untrusted binaries. The `Gio._promisify` calls are standard internal GJS promisification mechanisms, not malicious. The script's behavior is consistent with its stated purpose (finding the default handler for a URI) and does not present any supply-chain attack indicators.
</details>
<summary>Standard GNOME handler query script, no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/dash-to-dock/locationsWorker.js. Status: SAFE -- Standard GNOME handler query script, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 87,999
  Completion Tokens: 10,529
  Total Tokens: 98,528
  Total Cost: $0.009815
  Execution Time: 89.44 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-gnome-shell-extension-dash-to-dock.txt
Final Status: SAFE


No issues found.
