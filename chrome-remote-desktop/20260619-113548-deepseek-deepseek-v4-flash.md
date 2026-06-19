---
package: chrome-remote-desktop
pkgver: 149.0.7827.22
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 35726
completion_tokens: 7815
total_tokens: 43541
cost: 0.00462204
execution_time: 82.05
files_reviewed: 13
files_skipped: 0
date: 2026-06-19T11:35:48Z
file_verdicts:
  - file: chrome-remote-desktop.install
    status: safe
    summary: Standard post-install messages, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for official Google Chrome Remote Desktop package.
  - file: xdg-base-directory.patch
    status: safe
    summary: Innocuous path adjustment for Arch Linux.
  - file: pamrule
    status: safe
    summary: Standard PAM configuration, no malicious content.
  - file: src/usr/lib/systemd/user/chrome-remote-desktop-environment.service
    status: safe
    summary: Standard systemd service file for Chrome Remote Desktop.
  - file: src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_assistance.json
    status: safe
    summary: Standard native messaging host manifest, no threats.
  - file: src/usr/share/wireplumber/wireplumber.conf.d/chrome-remote-desktop.conf
    status: safe
    summary: Static WirePlumber config; no malicious activity.
  - file: src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_desktop.json
    status: safe
    summary: Standard Native Messaging manifest; no malicious content.
  - file: "src/lib/systemd/system/chrome-remote-desktop@.service"
    status: safe
    summary: Legitimate systemd service file for Chrome Remote Desktop.
  - file: src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_webauthn.json
    status: safe
    summary: Legitimate native messaging host manifest for Chrome Remote Desktop.
  - file: src/usr/share/applications/crd-url-forwarder.desktop
    status: safe
    summary: Standard .desktop file; no malicious content.
  - file: crd
    status: safe
    summary: Safe helper script for Chrome Remote Desktop management.
  - file: src/lib/systemd/system/chrome-remote-desktop.service
    status: safe
    summary: Standard systemd service; no malicious behavior found.
---

Cloning https://aur.archlinux.org/chrome-remote-desktop.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-xaf2vdd4...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-xaf2vdd4
Analyzing chrome-remote-desktop AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-xaf2vdd4) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD does not contain any code that executes during the top-level sourcing phase or `pkgver()` (which is not a function here — `pkgver` is a static variable). The global scope consists only of variable assignments and array definitions. The `latestver()` function is defined but not invoked; `prepare()` and `package()` are out of scope for this stage. The `source` array includes an HTTP download from `dl.google.com` (the official upstream) and local files (`pamrule`, `crd`, `xdg-base-directory.patch`), all of which are expected. There are no malicious commands, exfiltration attempts, or unexpected network fetches in the sourced scope.
</details>
<summary>No dangerous code in sourcing phase.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No dangerous code in sourcing phase.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing chrome-remote-desktop.install...
[0/3] Reviewing chrome-remote-desktop.install, PKGBUILD...
[0/3] Reviewing chrome-remote-desktop.install, PKGBUILD, xdg-base-directory.patch...
LLM auditresponse for chrome-remote-desktop.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains only standard informational messages for the user. `post_install` and `post_upgrade` print setup instructions, and `post_remove` suggests manual cleanup of the application’s own configuration directory. There are no network requests, no execution of downloaded code, no obfuscation, and no system modifications beyond normal packaging conventions.
</details>
<summary>Standard post-install messages, no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, xdg-base-directory.patch...
+ Reviewed chrome-remote-desktop.install. Status: SAFE -- Standard post-install messages, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard automated packaging script for the official Google Chrome Remote Desktop application. The source downloads the official `.deb` package from Google's servers (`dl.google.com`), which is the expected upstream. The `latestver()` function defined but never called during the build is a maintainer helper that polls Google's repository for version information — this is benign and not executed automatically. All other operations (extraction, patching, file installation, symlink creation for native messaging hosts) are typical packaging practices with no obfuscation, unexpected network activity, or execution of untrusted code. Checksums are provided for all sources. No evidence of supply-chain attacks, data exfiltration, backdoors, or malicious code injection was found.
</details>
<summary>Standard PKGBUILD for official Google Chrome Remote Desktop package.</summary>
</security_assessment>

[2/3] Reviewing xdg-base-directory.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for official Google Chrome Remote Desktop package.
LLM auditresponse for xdg-base-directory.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies the path to the Xorg binary in the Chrome Remote Desktop startup script from `/usr/lib/xorg/Xorg` to `/usr/lib/Xorg`. This is a common packaging adaptation for distributions like Arch Linux where the X server binary is located at `/usr/lib/Xorg` rather than in a subdirectory. The change is trivial, involves only a string constant, and does not introduce any network requests, code execution, file operations, or other malicious behavior. It is consistent with standard packaging practices to adjust paths for the target distribution.
</details>
<summary>Innocuous path adjustment for Arch Linux.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed xdg-base-directory.patch. Status: SAFE -- Innocuous path adjustment for Arch Linux.
Reviewed all required files.
Deciding which files to review next...
Note: 244 files available for selection; offering the 50 highest-priority to the model. 190 lower-priority file(s) were not offered.
LLM response for file selection:
src/lib/systemd/system/chrome-remote-desktop.service
src/lib/systemd/system/chrome-remote-desktop@.service
src/usr/lib/systemd/user/chrome-remote-desktop-environment.service
src/usr/share/applications/crd-url-forwarder.desktop
src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_assistance.json
src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_desktop.json
src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_webauthn.json
src/usr/share/wireplumber/wireplumber.conf.d/chrome-remote-desktop.conf
crd
pamrule
Decided to review 10 additional files: src/lib/systemd/system/chrome-remote-desktop.service, src/lib/systemd/system/chrome-remote-desktop@.service, src/usr/lib/systemd/user/chrome-remote-desktop-environment.service, src/usr/share/applications/crd-url-forwarder.desktop, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_assistance.json, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_desktop.json, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_webauthn.json, src/usr/share/wireplumber/wireplumber.conf.d/chrome-remote-desktop.conf, crd, pamrule
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/lib/systemd/system/chrome-remote-desktop.service...
[0/10] Reviewing src/lib/systemd/system/chrome-remote-desktop.service, src/lib/systemd/system/chrome-remote-desktop@.service...
[0/10] Reviewing src/lib/systemd/system/chrome-remote-desktop.service, src/lib/systemd/system/chrome-remote-desktop@.service, src/usr/lib/systemd/user/chrome-remote-desktop-environment.service...
[0/10] Reviewing src/lib/systemd/system/chrome-remote-desktop.service, src/lib/systemd/system/chrome-remote-desktop@.service, src/usr/lib/systemd/user/chrome-remote-desktop-environment.service, src/usr/share/applications/crd-url-forwarder.desktop...
[0/10] Reviewing src/lib/systemd/system/chrome-remote-desktop.service, src/lib/systemd/system/chrome-remote-desktop@.service, src/usr/lib/systemd/user/chrome-remote-desktop-environment.service, src/usr/share/applications/crd-url-forwarder.desktop, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_desktop.json...
[0/10] Reviewing src/lib/systemd/system/chrome-remote-desktop.service, src/lib/systemd/system/chrome-remote-desktop@.service, src/usr/lib/systemd/user/chrome-remote-desktop-environment.service, src/usr/share/applications/crd-url-forwarder.desktop, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_desktop.json, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_assistance.json...
[0/10] Reviewing src/lib/systemd/system/chrome-remote-desktop.service, src/lib/systemd/system/chrome-remote-desktop@.service, src/usr/lib/systemd/user/chrome-remote-desktop-environment.service, src/usr/share/applications/crd-url-forwarder.desktop, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_desktop.json, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_assistance.json, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_webauthn.json...
[0/10] Reviewing src/lib/systemd/system/chrome-remote-desktop.service, src/lib/systemd/system/chrome-remote-desktop@.service, src/usr/lib/systemd/user/chrome-remote-desktop-environment.service, src/usr/share/applications/crd-url-forwarder.desktop, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_desktop.json, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_assistance.json, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_webauthn.json, crd...
[0/10] Reviewing src/lib/systemd/system/chrome-remote-desktop.service, src/lib/systemd/system/chrome-remote-desktop@.service, src/usr/lib/systemd/user/chrome-remote-desktop-environment.service, src/usr/share/applications/crd-url-forwarder.desktop, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_desktop.json, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_assistance.json, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_webauthn.json, crd, pamrule...
[0/10] Reviewing src/lib/systemd/system/chrome-remote-desktop.service, src/lib/systemd/system/chrome-remote-desktop@.service, src/usr/lib/systemd/user/chrome-remote-desktop-environment.service, src/usr/share/applications/crd-url-forwarder.desktop, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_desktop.json, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_assistance.json, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_webauthn.json, crd, pamrule, src/usr/share/wireplumber/wireplumber.conf.d/chrome-remote-desktop.conf...
LLM auditresponse for pamrule:
<security_assessment>
<decision>SAFE</decision>
<details>
The file "pamrule" contains a standard PAM configuration using the pam_unix.so module for all management groups (auth, account, password, session). This is a routine and expected PAM service configuration. No obfuscation, network activity, file exfiltration, or execution of untrusted code is present. It is safe.
</details>
<summary>Standard PAM configuration, no malicious content.</summary>
</security_assessment>

[1/10] Reviewing src/lib/systemd/system/chrome-remote-desktop.service, src/lib/systemd/system/chrome-remote-desktop@.service, src/usr/lib/systemd/user/chrome-remote-desktop-environment.service, src/usr/share/applications/crd-url-forwarder.desktop, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_desktop.json, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_assistance.json, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_webauthn.json, crd, src/usr/share/wireplumber/wireplumber.conf.d/chrome-remote-desktop.conf...
+ Reviewed pamrule. Status: SAFE -- Standard PAM configuration, no malicious content.
LLM auditresponse for chrome-remote-desktop-environment.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service file for Chrome Remote Desktop. It runs a helper binary (`setup-session-environment`) from the package's own installation directory to set up environment variables for the session. The service only specifies unit dependencies (After, Before, PartOf) and a oneshot ExecStart/ExecStop. There is no network activity, no code execution from untrusted sources, no file manipulation outside the package's scope, and no obfuscation. The behavior is entirely within normal packaging practices.
</details>
<summary>Standard systemd service file for Chrome Remote Desktop.</summary>
</security_assessment>

[2/10] Reviewing src/lib/systemd/system/chrome-remote-desktop.service, src/lib/systemd/system/chrome-remote-desktop@.service, src/usr/share/applications/crd-url-forwarder.desktop, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_desktop.json, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_assistance.json, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_webauthn.json, crd, src/usr/share/wireplumber/wireplumber.conf.d/chrome-remote-desktop.conf...
+ Reviewed src/usr/lib/systemd/user/chrome-remote-desktop-environment.service. Status: SAFE -- Standard systemd service file for Chrome Remote Desktop.
LLM auditresponse for com.google.chrome.remote_assistance.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Native Messaging Host manifest for Chrome Remote Desktop. It defines an allowed extension (identified by its ID `inomeogfingihgjfjlpeplalcfajhgai`) and specifies the path to the native binary (`/opt/google/chrome-remote-desktop/remote-assistance-host`). The manifest is a simple JSON configuration with no embedded code, obfuscated strings, or suspicious commands. All values reference the package's own upstream component as expected. There is no evidence of malicious behavior such as data exfiltration, unauthorized downloads, or system tampering.
</details>
<summary>Standard native messaging host manifest, no threats.</summary>
</security_assessment>

[3/10] Reviewing src/lib/systemd/system/chrome-remote-desktop.service, src/lib/systemd/system/chrome-remote-desktop@.service, src/usr/share/applications/crd-url-forwarder.desktop, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_desktop.json, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_webauthn.json, crd, src/usr/share/wireplumber/wireplumber.conf.d/chrome-remote-desktop.conf...
+ Reviewed src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_assistance.json. Status: SAFE -- Standard native messaging host manifest, no threats.
LLM auditresponse for chrome-remote-desktop.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a WirePlumber configuration profile for Chrome Remote Desktop. It disables hardware audio, bluetooth, and video capture while requiring certain internal WirePlumber features. There are no commands, network operations, file modifications, or any code execution. It is a static configuration file that adjusts session management policies for the application. No malicious or obfuscated content is present.
</details>
<summary>Static WirePlumber config; no malicious activity.</summary>
</security_assessment>

[4/10] Reviewing src/lib/systemd/system/chrome-remote-desktop.service, src/lib/systemd/system/chrome-remote-desktop@.service, src/usr/share/applications/crd-url-forwarder.desktop, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_desktop.json, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_webauthn.json, crd...
+ Reviewed src/usr/share/wireplumber/wireplumber.conf.d/chrome-remote-desktop.conf. Status: SAFE -- Static WirePlumber config; no malicious activity.
LLM auditresponse for com.google.chrome.remote_desktop.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Native Messaging host manifest for the Chrome Remote Desktop extension. The file declares the host binary path (`/opt/google/chrome-remote-desktop/native-messaging-host`) and allows a single extension origin (`chrome-extension://inomeogfingihgjfjlpeplalcfajhgai/`). The extension ID matches the official Chrome Remote Desktop extension. No encoded, obfuscated, or suspicious commands are present. The JSON is well-formed and contains only expected fields for this type of configuration.
</details>
<summary>Standard Native Messaging manifest; no malicious content.</summary>
</security_assessment>

[5/10] Reviewing src/lib/systemd/system/chrome-remote-desktop.service, src/lib/systemd/system/chrome-remote-desktop@.service, src/usr/share/applications/crd-url-forwarder.desktop, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_webauthn.json, crd...
+ Reviewed src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_desktop.json. Status: SAFE -- Standard Native Messaging manifest; no malicious content.
LLM auditresponse for chrome-remote-desktop@.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd unit file for Chrome Remote Desktop. It defines a service that runs the official Chrome Remote Desktop binary (`chrome-remote-desktop`) with normal start/reload/stop commands. All paths are under `/opt/google/chrome-remote-desktop/`, consistent with Google's official installation. No suspicious network activity, obfuscated code, or unexpected system modifications. The TTYPath workaround and PAM configuration are well-documented upstream practices. No evidence of malicious or injected code.
</details>
<summary>Legitimate systemd service file for Chrome Remote Desktop.</summary>
</security_assessment>

[6/10] Reviewing src/lib/systemd/system/chrome-remote-desktop.service, src/usr/share/applications/crd-url-forwarder.desktop, src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_webauthn.json, crd...
+ Reviewed src/lib/systemd/system/chrome-remote-desktop@.service. Status: SAFE -- Legitimate systemd service file for Chrome Remote Desktop.
LLM auditresponse for com.google.chrome.remote_webauthn.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Chrome Native Messaging host manifest for the Chrome Remote Desktop application. It defines a host named `com.google.chrome.remote_webauthn` that communicates via stdio, points to a legitimate binary path under `/opt/google/chrome-remote-desktop/`, and lists two known Chrome extension IDs as allowed origins. There is no network request, encoded payload, dangerous command, or any sign of malicious injection. The file is a straightforward configuration artifact from the upstream developer (Google) and does not deviate from expected packaging practices.
</details>
<summary>Legitimate native messaging host manifest for Chrome Remote Desktop.</summary>
</security_assessment>

[7/10] Reviewing src/lib/systemd/system/chrome-remote-desktop.service, src/usr/share/applications/crd-url-forwarder.desktop, crd...
+ Reviewed src/etc/opt/chrome/native-messaging-hosts/com.google.chrome.remote_webauthn.json. Status: SAFE -- Legitimate native messaging host manifest for Chrome Remote Desktop.
LLM auditresponse for crd-url-forwarder.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Chrome Remote Desktop URL forwarder. It registers a MIME type handler that opens URLs via the `remote-open-url` helper binary located at the expected system path `/opt/google/chrome-remote-desktop/`. There are no commands, downloads, or obfuscated content. It is a configuration file for the legitimate upstream application.
</details>
<summary>Standard .desktop file; no malicious content.</summary>
</security_assessment>

[8/10] Reviewing src/lib/systemd/system/chrome-remote-desktop.service, crd...
+ Reviewed src/usr/share/applications/crd-url-forwarder.desktop. Status: SAFE -- Standard .desktop file; no malicious content.
LLM auditresponse for crd:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a helper shell script for managing Chrome Remote Desktop (CRD). It wraps the official Google binary `/opt/google/chrome-remote-desktop/chrome-remote-desktop` with commands for start, stop, restart, reload, and status. The setup function creates needed config files under `$HOME/.config/chrome-remote-desktop/` and the session file `$HOME/.chrome-remote-desktop-session`, then adds the user to the `chrome-remote-desktop` group via `sudo gpasswd`. All file operations are confined to the user's home directory and standard system locations (e.g., `/usr/share/xsessions/` for detecting desktop environments). No network requests, obfuscated code, dangerous commands (curl, wget, eval, base64), or exfiltration mechanisms are present. The script performs exactly the packaging and configuration tasks expected for Chrome Remote Desktop on Arch Linux.
</details>
<summary>Safe helper script for Chrome Remote Desktop management.</summary>
</security_assessment>

[9/10] Reviewing src/lib/systemd/system/chrome-remote-desktop.service...
+ Reviewed crd. Status: SAFE -- Safe helper script for Chrome Remote Desktop management.
LLM auditresponse for chrome-remote-desktop.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit for Chrome Remote Desktop. It runs a single binary from a hardcoded path (`/opt/google/chrome-remote-desktop/chrome-remote-desktop-host`), with no network downloads, obfuscation, or extraneous commands. The restart policy (`on-abnormal`) and logging settings are typical. There is no evidence of injected malicious code or supply-chain attack indicators within this file. The service file itself is benign and follows conventional packaging practices.
</details>
<summary>Standard systemd service; no malicious behavior found.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/lib/systemd/system/chrome-remote-desktop.service. Status: SAFE -- Standard systemd service; no malicious behavior found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,726
  Completion Tokens: 7,815
  Total Tokens: 43,541
  Total Cost: $0.004622
  Execution Time: 82.05 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-chrome-remote-desktop.txt
Final Status: SAFE


No issues found.
