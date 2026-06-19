---
package: keybase-bin
pkgver: 6.6.3_20260603142455+f60f2ff97e
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 87318
completion_tokens: 8461
total_tokens: 95779
cost: 0.00938160
execution_time: 71.67
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T11:03:23Z
file_verdicts:
  - file: keybase.install
    status: safe
    summary: Standard pacman install script, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard official upstream binary package with checksum.
  - file: src/opt/keybase/resources/app/desktop/dist/102.bundle.js
    status: safe
    summary: Standard Keybase webpack chunk, no malicious code.
  - file: src/opt/keybase/resources/app/desktop/dist/1078.bundle.js
    status: safe
    summary: Standard React UI bundle, no malicious code detected.
  - file: src/opt/keybase/resources/app/desktop/dist/1102.bundle.js
    status: safe
    summary: Standard React UI component; no malicious behavior found.
  - file: src/opt/keybase/post_install.sh
    status: safe
    summary: Standard Keybase post-install script; no malicious behavior.
  - file: src/opt/keybase/resources/app/desktop/dist/1365.bundle.js
    status: safe
    summary: Standard Keybase webpack chunk, no malicious patterns found.
  - file: src/opt/keybase/resources/app/desktop/dist/1130.bundle.js
    status: safe
    summary: Normal Keybase proof post UI component; no malicious behavior.
  - file: src/opt/keybase/resources/app/desktop/dist/1257.bundle.js
    status: safe
    summary: Standard Keybase login UI component; no malicious code detected.
  - file: src/opt/keybase/resources/app/desktop/dist/1442.bundle.js
    status: safe
    summary: Keybase UI code for team invites; no malicious patterns.
  - file: src/opt/keybase/resources/app/desktop/dist/1307.bundle.js
    status: safe
    summary: Legitimate Keybase webpack chunk; no malicious code detected.
  - file: src/opt/keybase/resources/app/desktop/dist/1370.bundle.js
    status: safe
    summary: Standard Keybase UI component, no malicious code found.
---

Cloning https://aur.archlinux.org/keybase-bin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ylhqfuog...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ylhqfuog
Analyzing keybase-bin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ylhqfuog) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is straightforward. The `source` array downloads a `.deb` file from `https://prerelease.keybase.io/linux_binaries/deb`, which is the official Keybase repository, and includes a pinned SHA-256 checksum. No dangerous code appears in the global scope or `pkgver()` (which is not defined; `pkgver` is a static string). The `install` file (`keybase.install`) is not executed during the `--nobuild --nodeps --noprepare` step. No command substitutions, `curl|bash`, obfuscated code, or exfiltration attempts are present. The commands `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only fetch the source and source the PKGBUILD, which is safe.
</details>
<summary>Standard PKGBUILD with official source, no malicious code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD with official source, no malicious code.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, keybase.install...
LLM auditresponse for keybase.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `keybase.install` is a standard Arch Linux package install script (`.install` file used by `pacman`). It defines two functions, `post_install()` and `post_upgrade()`, each of which simply executes `/opt/keybase/post_install.sh`. This is a common and expected pattern for packages that need to run setup or configuration tasks after installation or upgrade. There is no obfuscated code, no network requests, no dangerous commands, and no deviation from standard packaging practices. The external script it runs is part of the package itself, and its behavior would need to be audited separately, but within this file there is nothing malicious.
</details>
<summary>Standard pacman install script, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed keybase.install. Status: SAFE -- Standard pacman install script, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is for the official Keybase binary package. It downloads a `.deb` from Keybase's own pre-release server (`prerelease.keybase.io`) using HTTPS and extracts it with `ar` and `tar`. A SHA256 checksum is provided for the downloaded file, ensuring integrity. The only file operations are extracting the archive and removing a cron directory (`/etc/cron.daily`) from the Debian package contents, which is a routine hygiene measure. There are no suspicious network requests, no obfuscated commands, and no execution of unchecked scripts from untrusted sources. The package is consistent with standard Arch Linux binary packaging practices and does not exhibit any supply chain attack indicators.
</details>
<summary>Standard official upstream binary package with checksum.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard official upstream binary package with checksum.
Reviewed all required files.
Deciding which files to review next...
Note: 230 files available for selection; offering the 50 highest-priority to the model. 178 lower-priority file(s) were not offered.
LLM response for file selection:
src/opt/keybase/post_install.sh
src/opt/keybase/resources/app/desktop/dist/102.bundle.js
src/opt/keybase/resources/app/desktop/dist/1078.bundle.js
src/opt/keybase/resources/app/desktop/dist/1102.bundle.js
src/opt/keybase/resources/app/desktop/dist/1130.bundle.js
src/opt/keybase/resources/app/desktop/dist/1257.bundle.js
src/opt/keybase/resources/app/desktop/dist/1307.bundle.js
src/opt/keybase/resources/app/desktop/dist/1365.bundle.js
src/opt/keybase/resources/app/desktop/dist/1370.bundle.js
src/opt/keybase/resources/app/desktop/dist/1442.bundle.js
Decided to review 10 additional files: src/opt/keybase/post_install.sh, src/opt/keybase/resources/app/desktop/dist/102.bundle.js, src/opt/keybase/resources/app/desktop/dist/1078.bundle.js, src/opt/keybase/resources/app/desktop/dist/1102.bundle.js, src/opt/keybase/resources/app/desktop/dist/1130.bundle.js, src/opt/keybase/resources/app/desktop/dist/1257.bundle.js, src/opt/keybase/resources/app/desktop/dist/1307.bundle.js, src/opt/keybase/resources/app/desktop/dist/1365.bundle.js, src/opt/keybase/resources/app/desktop/dist/1370.bundle.js, src/opt/keybase/resources/app/desktop/dist/1442.bundle.js
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/opt/keybase/resources/app/desktop/dist/102.bundle.js...
[0/10] Reviewing src/opt/keybase/resources/app/desktop/dist/102.bundle.js, src/opt/keybase/resources/app/desktop/dist/1078.bundle.js...
[0/10] Reviewing src/opt/keybase/resources/app/desktop/dist/102.bundle.js, src/opt/keybase/resources/app/desktop/dist/1078.bundle.js, src/opt/keybase/post_install.sh...
[0/10] Reviewing src/opt/keybase/resources/app/desktop/dist/102.bundle.js, src/opt/keybase/resources/app/desktop/dist/1078.bundle.js, src/opt/keybase/post_install.sh, src/opt/keybase/resources/app/desktop/dist/1102.bundle.js...
[0/10] Reviewing src/opt/keybase/resources/app/desktop/dist/102.bundle.js, src/opt/keybase/resources/app/desktop/dist/1078.bundle.js, src/opt/keybase/post_install.sh, src/opt/keybase/resources/app/desktop/dist/1102.bundle.js, src/opt/keybase/resources/app/desktop/dist/1130.bundle.js...
[0/10] Reviewing src/opt/keybase/resources/app/desktop/dist/102.bundle.js, src/opt/keybase/resources/app/desktop/dist/1078.bundle.js, src/opt/keybase/post_install.sh, src/opt/keybase/resources/app/desktop/dist/1102.bundle.js, src/opt/keybase/resources/app/desktop/dist/1130.bundle.js, src/opt/keybase/resources/app/desktop/dist/1365.bundle.js...
[0/10] Reviewing src/opt/keybase/resources/app/desktop/dist/102.bundle.js, src/opt/keybase/resources/app/desktop/dist/1078.bundle.js, src/opt/keybase/post_install.sh, src/opt/keybase/resources/app/desktop/dist/1102.bundle.js, src/opt/keybase/resources/app/desktop/dist/1130.bundle.js, src/opt/keybase/resources/app/desktop/dist/1365.bundle.js, src/opt/keybase/resources/app/desktop/dist/1257.bundle.js...
[0/10] Reviewing src/opt/keybase/resources/app/desktop/dist/102.bundle.js, src/opt/keybase/resources/app/desktop/dist/1078.bundle.js, src/opt/keybase/post_install.sh, src/opt/keybase/resources/app/desktop/dist/1102.bundle.js, src/opt/keybase/resources/app/desktop/dist/1130.bundle.js, src/opt/keybase/resources/app/desktop/dist/1365.bundle.js, src/opt/keybase/resources/app/desktop/dist/1257.bundle.js, src/opt/keybase/resources/app/desktop/dist/1307.bundle.js...
[0/10] Reviewing src/opt/keybase/resources/app/desktop/dist/102.bundle.js, src/opt/keybase/resources/app/desktop/dist/1078.bundle.js, src/opt/keybase/post_install.sh, src/opt/keybase/resources/app/desktop/dist/1102.bundle.js, src/opt/keybase/resources/app/desktop/dist/1130.bundle.js, src/opt/keybase/resources/app/desktop/dist/1365.bundle.js, src/opt/keybase/resources/app/desktop/dist/1257.bundle.js, src/opt/keybase/resources/app/desktop/dist/1307.bundle.js, src/opt/keybase/resources/app/desktop/dist/1370.bundle.js...
[0/10] Reviewing src/opt/keybase/resources/app/desktop/dist/102.bundle.js, src/opt/keybase/resources/app/desktop/dist/1078.bundle.js, src/opt/keybase/post_install.sh, src/opt/keybase/resources/app/desktop/dist/1102.bundle.js, src/opt/keybase/resources/app/desktop/dist/1130.bundle.js, src/opt/keybase/resources/app/desktop/dist/1365.bundle.js, src/opt/keybase/resources/app/desktop/dist/1257.bundle.js, src/opt/keybase/resources/app/desktop/dist/1307.bundle.js, src/opt/keybase/resources/app/desktop/dist/1370.bundle.js, src/opt/keybase/resources/app/desktop/dist/1442.bundle.js...
LLM auditresponse for 102.bundle.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard minified webpack chunk for the Keybase application. It exports React components for channel selection and team repo settings, using Keybase's internal state management (e.g., `useTeamsState`, `useConvoState`) and RPC functions (`localGetTLFConversationsLocalRpcPromise`) to fetch team conversations. The code is typical frontend JavaScript for a chat/team management UI. There are no obfuscated strings, no suspicious network requests (beyond the application's own RPCs), no eval or base64 decoding, and no file system or system modifications. The minified format is expected for webpack bundles. No evidence of a supply-chain attack or malicious behavior.
</details>
<summary>Standard Keybase webpack chunk, no malicious code.</summary>
</security_assessment>

[1/10] Reviewing src/opt/keybase/resources/app/desktop/dist/1078.bundle.js, src/opt/keybase/post_install.sh, src/opt/keybase/resources/app/desktop/dist/1102.bundle.js, src/opt/keybase/resources/app/desktop/dist/1130.bundle.js, src/opt/keybase/resources/app/desktop/dist/1365.bundle.js, src/opt/keybase/resources/app/desktop/dist/1257.bundle.js, src/opt/keybase/resources/app/desktop/dist/1307.bundle.js, src/opt/keybase/resources/app/desktop/dist/1370.bundle.js, src/opt/keybase/resources/app/desktop/dist/1442.bundle.js...
+ Reviewed src/opt/keybase/resources/app/desktop/dist/102.bundle.js. Status: SAFE -- Standard Keybase webpack chunk, no malicious code.
LLM auditresponse for 1078.bundle.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The analyzed file is a standard webpack chunk (1078.bundle.js) from the Keybase desktop application, containing React components for a bot team picker UI. The code shows only expected application logic: React state management, debounced search input, rendering of avatar components, and CSS injection via style-loader. No suspicious patterns such as `curl`, `wget`, `eval`, `base64`, file system access, data exfiltration, or obfuscated commands were detected. The minified/compiled format is normal for a production webpack bundle and does not hide malicious intent. The file is part of the legitimate keybase-bin AUR package and exhibits no supply-chain attack indicators.
</details>
<summary>Standard React UI bundle, no malicious code detected.</summary>
</security_assessment>

[2/10] Reviewing src/opt/keybase/post_install.sh, src/opt/keybase/resources/app/desktop/dist/1102.bundle.js, src/opt/keybase/resources/app/desktop/dist/1130.bundle.js, src/opt/keybase/resources/app/desktop/dist/1365.bundle.js, src/opt/keybase/resources/app/desktop/dist/1257.bundle.js, src/opt/keybase/resources/app/desktop/dist/1307.bundle.js, src/opt/keybase/resources/app/desktop/dist/1370.bundle.js, src/opt/keybase/resources/app/desktop/dist/1442.bundle.js...
+ Reviewed src/opt/keybase/resources/app/desktop/dist/1078.bundle.js. Status: SAFE -- Standard React UI bundle, no malicious code detected.
LLM auditresponse for 1102.bundle.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a minified JavaScript bundle for a React password change UI component. It handles password input, validation, and submission, and integrates with Keybase's own password/PGP settings hooks (`usePWState`). There are no network requests, external downloads, obfuscated code, system file operations, or any behavior outside the stated application functionality. The code is consistent with standard React packaging and does not contain any indicators of a supply-chain attack. The presence of a source map comment is normal for development builds.
</details>
<summary>Standard React UI component; no malicious behavior found.</summary>
</security_assessment>

[3/10] Reviewing src/opt/keybase/post_install.sh, src/opt/keybase/resources/app/desktop/dist/1130.bundle.js, src/opt/keybase/resources/app/desktop/dist/1365.bundle.js, src/opt/keybase/resources/app/desktop/dist/1257.bundle.js, src/opt/keybase/resources/app/desktop/dist/1307.bundle.js, src/opt/keybase/resources/app/desktop/dist/1370.bundle.js, src/opt/keybase/resources/app/desktop/dist/1442.bundle.js...
+ Reviewed src/opt/keybase/resources/app/desktop/dist/1102.bundle.js. Status: SAFE -- Standard React UI component; no malicious behavior found.
LLM auditresponse for post_install.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard post-install script for the Keybase binary package. It manages the `/keybase` redirector mountpoint, sets SUID permissions on the `keybase-redirector` binary, restarts systemd services for running Keybase instances (if autorestart is enabled), and handles upgrades from older installations (e.g., replacing symlinks, cleaning up legacy mounts). It also fixes bad permissions that could have been created by a previous bug in a similar script. All operations are confined to Keybase’s own binaries, configuration directories, and standard system caches (MIME, icon). There are no network requests, no code fetched or executed from unexpected sources, no obfuscation, and no exfiltration of data. The use of `su`, `killall`, `systemctl`, and `chown`/`chmod` is normal for a post-install script managing system-wide and per-user Keybase services. Nothing in this file deviates from legitimate packaging or maintenance behavior.
</details>
<summary>Standard Keybase post-install script; no malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing src/opt/keybase/resources/app/desktop/dist/1130.bundle.js, src/opt/keybase/resources/app/desktop/dist/1365.bundle.js, src/opt/keybase/resources/app/desktop/dist/1257.bundle.js, src/opt/keybase/resources/app/desktop/dist/1307.bundle.js, src/opt/keybase/resources/app/desktop/dist/1370.bundle.js, src/opt/keybase/resources/app/desktop/dist/1442.bundle.js...
+ Reviewed src/opt/keybase/post_install.sh. Status: SAFE -- Standard Keybase post-install script; no malicious behavior.
LLM auditresponse for 1365.bundle.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard webpack chunk (1365.bundle.js) from the Keybase desktop application renderer process. It contains CSS injection for page styling, font-face definitions, and a module that bridges to native code via `globalThis._fromPreload`. This is normal for an Electron-based application that uses a preload script to expose native functions. No suspicious patterns (curl, wget, eval, base64 decode, obfuscation, unexpected network requests) are present. The file adheres to expected Keybase application behavior and does not exhibit any supply-chain attack indicators.
</details>
<summary>Standard Keybase webpack chunk, no malicious patterns found.</summary>
</security_assessment>

[5/10] Reviewing src/opt/keybase/resources/app/desktop/dist/1130.bundle.js, src/opt/keybase/resources/app/desktop/dist/1257.bundle.js, src/opt/keybase/resources/app/desktop/dist/1307.bundle.js, src/opt/keybase/resources/app/desktop/dist/1370.bundle.js, src/opt/keybase/resources/app/desktop/dist/1442.bundle.js...
+ Reviewed src/opt/keybase/resources/app/desktop/dist/1365.bundle.js. Status: SAFE -- Standard Keybase webpack chunk, no malicious patterns found.
LLM auditresponse for 1130.bundle.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard frontend JavaScript bundle for the Keybase application. It contains React components that render a proof-posting workflow (for identity proofs on platforms like Twitter, GitHub, Reddit, HackerNews, etc.). The code uses webpack module loading and React runtime, importing common adapters and utilities. It constructs URLs to social media sites and opens them in the browser when the user interacts with the UI — this is expected application functionality, not malicious. There are no obfuscated strings, no `eval`, no `base64` decoding, no unexpected network fetches (the only external URLs are the user's own proof post targets). The file does not contain any code that exfiltrates data, downloads or executes binaries, performs unauthorized system modifications, or deviates from the Keybase application’s stated purpose. It is a typical UI module for managing cryptographic identity proofs.
</details>
<summary>Normal Keybase proof post UI component; no malicious behavior.</summary>
</security_assessment>

[6/10] Reviewing src/opt/keybase/resources/app/desktop/dist/1257.bundle.js, src/opt/keybase/resources/app/desktop/dist/1307.bundle.js, src/opt/keybase/resources/app/desktop/dist/1370.bundle.js, src/opt/keybase/resources/app/desktop/dist/1442.bundle.js...
+ Reviewed src/opt/keybase/resources/app/desktop/dist/1130.bundle.js. Status: SAFE -- Normal Keybase proof post UI component; no malicious behavior.
LLM auditresponse for 1257.bundle.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a minified webpack chunk (1257.bundle.js) from the Keybase desktop application. It contains React components for the login/sign-in UI and standard lodash utility functions. There is no evidence of malicious behavior: no obfuscated code, no unexpected network requests (fetch, XMLHttpRequest, curl, wget), no dynamic code execution (eval, base64 decoding), no file system manipulation, and no exfiltration of sensitive data. The code follows standard patterns for a Redux-based React application using webpack module federation. The presence of `&amp;`, `&lt;`, `&gt;` in the provided text is an XML presentation artifact; the actual JavaScript file contains the corresponding raw characters (`&`, `<`, `>`). All dispatched actions (`setLoginError`, `login`, `startProvision`, etc.) are normal for this application's authentication flow.
</details>
<summary>Standard Keybase login UI component; no malicious code detected.</summary>
</security_assessment>

[7/10] Reviewing src/opt/keybase/resources/app/desktop/dist/1307.bundle.js, src/opt/keybase/resources/app/desktop/dist/1370.bundle.js, src/opt/keybase/resources/app/desktop/dist/1442.bundle.js...
+ Reviewed src/opt/keybase/resources/app/desktop/dist/1257.bundle.js. Status: SAFE -- Standard Keybase login UI component; no malicious code detected.
LLM auditresponse for 1442.bundle.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a minified JavaScript bundle (webpack chunk) from the Keybase desktop application. It contains React components for handling team invitation workflows, including rendering invitation details, join/success/error states, and UI elements like avatars, buttons, and modals. All imported modules reference the application's own internal modules (e.g., `_common_adapters`, `_constants_teams`, `_container`). There are no suspicious patterns such as `curl`, `wget`, `eval`, `base64`, `exec`, or any obfuscated/encoded code. No network requests to unexpected hosts, no file system manipulations, and no exfiltration of sensitive data. The code is consistent with the application's stated purpose of managing team invitations.
</details>
<summary>
Keybase UI code for team invites; no malicious patterns.</summary>
</security_assessment>

[8/10] Reviewing src/opt/keybase/resources/app/desktop/dist/1307.bundle.js, src/opt/keybase/resources/app/desktop/dist/1370.bundle.js...
+ Reviewed src/opt/keybase/resources/app/desktop/dist/1442.bundle.js. Status: SAFE -- Keybase UI code for team invites; no malicious patterns.
LLM auditresponse for 1307.bundle.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a minified webpack chunk from the Keybase application, containing React components for a team settings modal (toggle between open/closed team). It uses standard React patterns, zustand state management, and imports from Keybase's internal modules. There is no evidence of malicious behavior: no network requests, no downloads/execution of external code, no base64/hex decoding, no eval, no system commands. The minification is standard for production JS bundles and does not conceal malicious intent. The code's functionality aligns with Keybase's legitimate team management features. No supply chain attack indicators found.
</details>
<summary>Legitimate Keybase webpack chunk; no malicious code detected.</summary>
</security_assessment>

[9/10] Reviewing src/opt/keybase/resources/app/desktop/dist/1370.bundle.js...
+ Reviewed src/opt/keybase/resources/app/desktop/dist/1307.bundle.js. Status: SAFE -- Legitimate Keybase webpack chunk; no malicious code detected.
LLM auditresponse for 1370.bundle.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard webpack chunk from the Keybase application, containing a React component for a "delete account" confirmation dialog. The code is minified but shows no signs of malicious behavior: no network requests, no obfuscated code, no eval or base64 usage, and no unexpected file operations. It only imports internal Keybase modules and renders UI elements. The source map comment is normal for bundled JavaScript. There is no evidence of a supply-chain attack or any deviation from expected application functionality.
</details>
<summary>Standard Keybase UI component, no malicious code found.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/opt/keybase/resources/app/desktop/dist/1370.bundle.js. Status: SAFE -- Standard Keybase UI component, no malicious code found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 87,318
  Completion Tokens: 8,461
  Total Tokens: 95,779
  Total Cost: $0.009382
  Execution Time: 71.67 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-keybase-bin.txt
Final Status: SAFE


No issues found.
