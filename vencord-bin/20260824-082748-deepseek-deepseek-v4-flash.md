---
package: vencord-bin
pkgver: 1.15.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 56580919ea5cd225cb34031d0932798021e4a0d8
prompt_tokens: 1660786
completion_tokens: 16020
total_tokens: 1676806
cost: 0.0971682124
execution_time: 234.34
files_reviewed: 11
files_skipped: 1
files_unauditable: 2
unpinned_sources: 0
date: 2026-08-24T08:27:48Z
file_verdicts:
  - file: vencord-bin-1.15.2.zip
    status: skipped
    summary: "Skipping binary file: vencord-bin-1.15.2.zip"
  - file: PKGBUILD
    status: safe
    summary: Clean AUR PKGBUILD for Vencord; pinned source, checksummed, standard install steps.
  - file: vencord.install
    status: safe
    summary: Informational post-install instructions only; no malicious code.
  - file: src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/preload.js
    status: safe
    summary: Standard Electron preload script; no malicious behavior found.
  - file: src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/vencordDesktopPreload.js
    status: safe
    summary: Safe preload script for Vencord.
  - file: src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/vencordDesktopMain.js
    status: safe
    summary: Legitimate Vencord modification code; no malicious behavior.
  - file: src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/patcher.js
    status: safe
    summary: Standard Vencord patcher; no malicious behavior detected.
  - file: src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/renderer.js
    status: safe
    summary: No malicious code detected; file is safe.
  - file: src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/extension.js
    status: safe
    summary: No malicious code found; standard client mod bundle.
  - file: src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/browser.js
    status: safe
    summary: Official Vencord build with no genuine malicious behavior.
  - file: src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/Vencord.user.js
    status: safe
    summary: Legitimate Vencord userscript bundle; no malicious behavior detected.
  - file: src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/vencordDesktopRenderer.js
    status: safe
    summary: "No injected malice; all operations serve Vencord's stated functionality."
---

Cloning https://aur.archlinux.org/vencord-bin.git...
Cloned vencord-bin
Analyzing vencord-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments and function definitions for packaging functions (`package_*`). There is no `pkgver()` function and no code in the global scope that executes commands or performs dynamic operations. The `source` array specifies a fixed commit archive from the official Vencord builds repository and includes a SHA-256 checksum. No top-level command substitutions, backticks, `eval`, or dangerous redirections are present. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only download the source archive and parse the PKGBUILD, which is safe.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope or pkgver.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope or pkgver.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, vencord.install...
[0/3] Reviewing PKGBUILD, vencord.install, vencord-bin-1.15.2.zip...
[1/3] Reviewing PKGBUILD, vencord.install...
! Reviewed vencord-bin-1.15.2.zip. Status: SKIPPED -- Skipping binary file: vencord-bin-1.15.2.zip
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR packaging script for the Vencord builds repository. It downloads a pinned commit archive from the project's official GitHub builds repository over HTTPS, verifies it with a sha256 checksum, and extracts prebuilt binaries into appropriate system locations (vencord library, Chromium extension, Firefox XPI files). All operations (install, cp, unzip) are routine packaging actions and stay within the package's intended scope. There is no network fetch beyond the declared source, no execution of downloaded code, no obfuscation, and no manipulation of files outside the package's own installation paths. The use of a pinned commit and checksum is good practice and does not introduce any supply-chain risk beyond trusting the upstream project itself.

The package also covers multiple browser variants via split packages, but all follow the same benign pattern. No evidence of injected malicious code, credential theft, backdoors, or unexpected system modifications was found. The file conforms to normal AUR packaging practices for a prebuilt binary application.
</details>
<evidence>
</evidence>
<summary>
Clean AUR PKGBUILD for Vencord; pinned source, checksummed, standard install steps.</summary>
</security_assessment>

[2/3] Reviewing vencord.install...
+ Reviewed PKGBUILD. Status: SAFE -- Clean AUR PKGBUILD for Vencord; pinned source, checksummed, standard install steps.
LLM auditresponse for vencord.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.install` script that only outputs post-installation instructions to the user via `echo`. It contains no executable commands beyond the `echo` itself. There are no network requests, file operations, encoded or obfuscated strings, or any other suspicious behavior. The printed instructions guide the user to configure Vesktop, Chromium, Firefox, and Zen browsers to use the installed Vencord files—this is normal for a browser extension package that requires manual setup. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Informational post-install instructions only; no malicious code.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed vencord.install. Status: SAFE -- Informational post-install instructions only; no malicious code.
Reviewed all required files.
Deciding which files to review next...
Note: 2 compiled/archived file(s) cannot be audited as text and were not reviewed (src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/extension-chrome.zip, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/extension-firefox.zip). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
LLM response for file selection:
src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/patcher.js
src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/preload.js
src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/vencordDesktopMain.js
src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/vencordDesktopPreload.js
src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/renderer.js
src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/Vencord.user.js
src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/extension.js
src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/browser.js
src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/vencordDesktopRenderer.js
Decided to review 9 additional files: src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/patcher.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/preload.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/vencordDesktopMain.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/vencordDesktopPreload.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/renderer.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/Vencord.user.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/extension.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/browser.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/vencordDesktopRenderer.js
Reviewing additional files...
Reviewing additional files...
[0/9] Reviewing src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/patcher.js...
[0/9] Reviewing src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/patcher.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/preload.js...
[0/9] Reviewing src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/patcher.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/preload.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/vencordDesktopMain.js...
LLM auditresponse for preload.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The preload.js file is a standard Electron preload script for the Vencord Discord client mod. It uses `ipcRenderer.invoke`/`sendSync` to communicate with the main process and exposes a `VencordNative` object to the renderer via `contextBridge.exposeInMainWorld`. The IPC calls include `VencordGetPluginIpcMethodMap`, `VencordGetThemesList`, `VencordGetUpdates`, `VencordGetSettings`, etc. – all of which are expected functionality for the application. The script also fetches renderer JavaScript via `webFrame.executeJavaScript(i("VencordPreloadGetRendererJs"))`, which is an IPC call to the main process (not an external URL). Finally, it requires the original Discord preload via `process.env.DISCORD_PRELOAD`. None of these operations exfiltrate data, download or execute code from untrusted sources, or exhibit obfuscated malicious behavior. The code is minified for size, but the source map is provided. There is no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard Electron preload script; no malicious behavior found.</summary>
</security_assessment>

[0/9] Reviewing src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/patcher.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/preload.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/vencordDesktopMain.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/vencordDesktopPreload.js...
[1/9] Reviewing src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/patcher.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/vencordDesktopMain.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/vencordDesktopPreload.js...
+ Reviewed src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/preload.js. Status: SAFE -- Standard Electron preload script; no malicious behavior found.
LLM auditresponse for vencordDesktopPreload.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard preload script for the Vencord Discord client mod. It exposes a `VencordNative` object to the renderer process via `contextBridge.exposeInMainWorld`, facilitating IPC communication with the main process for features like themes, settings, updater, and quick CSS. There are no obfuscated commands, no network requests, no file system modifications, and no execution of untrusted code. The script only uses Electron's `ipcRenderer.invoke` and `ipcRenderer.sendSync` for legitimate inter-process communication. No evidence of a supply chain attack or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Safe preload script for Vencord.</summary>
</security_assessment>

[1/9] Reviewing src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/patcher.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/vencordDesktopMain.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/vencordDesktopPreload.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/renderer.js...
[2/9] Reviewing src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/patcher.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/vencordDesktopMain.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/renderer.js...
+ Reviewed src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/vencordDesktopPreload.js. Status: SAFE -- Safe preload script for Vencord.
LLM auditresponse for vencordDesktopMain.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is the main process entry point for the Vencord desktop application (a Discord client mod). It contains standard functionality for a desktop application built with Electron: IPC handlers for settings, file operations, theme management, update checks (via GitHub API), Chrome extension installation (React DevTools), and various plugin native APIs (music rich presence, adblock, translation, redirect resolution). All network requests go to expected domains (github.com, apple.com, google.com, CDNs for editor assets). The code is minified but not obfuscated; no encoded/decoded payloads, backdoors, reverse shells, or data exfiltration are present. The use of `eval`-like constructs is limited to the bundled `fflate` library for in-worker decompression, which is a legitimate dependency. The CSP manipulation and DOM modifications serve the application's stated purpose of allowing custom themes, plugins, and ad blocking. There is no evidence of a supply-chain attack or malicious injection.
</details>
<evidence></evidence>
<summary>Legitimate Vencord modification code; no malicious behavior.</summary>
</security_assessment>

[3/9] Reviewing src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/patcher.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/renderer.js...
+ Reviewed src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/vencordDesktopMain.js. Status: SAFE -- Legitimate Vencord modification code; no malicious behavior.
[3/9] Reviewing src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/patcher.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/renderer.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/Vencord.user.js...
LLM auditresponse for patcher.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the compiled main-process patcher for the Vencord Discord mod. It contains a bundle of JavaScript that performs expected operations: setting up IPC handlers for Vencord features (themes, QuickCSS, plugins, updates), modifying CSP headers to allow Vencord's injected styles/scripts, patching Discord's `BrowserWindow` constructor to inject the preload script, handling Chrome extension installation (React DevTools), and managing an auto-updater that fetches releases from the official GitHub repository.

All network requests (GitHub API, Google update servers, iTunes, DeepL, Kagi, etc.) are consistent with Vencord's stated functionality – fetching updates, installing developer tools, and supporting plugin features. No code exfiltrates local data, installs backdoors, or executes arbitrary code from untrusted sources. The bundled deflate/inflate library is a standard compression dependency (fflate/pako) and does not indicate obfuscated malice. The file does not contain any encoded/obfuscated commands that hide malicious intent.

The updater functionality downloads and writes files from the upstream GitHub releases – this is a supply-chain risk inherent to any updater, but it is not evidence of malicious code within this file itself. The file faithfully implements Vencord's design.
</details>
<evidence></evidence>
<summary>Standard Vencord patcher; no malicious behavior detected.</summary>
</security_assessment>

[3/9] Reviewing src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/patcher.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/renderer.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/Vencord.user.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/extension.js...
[4/9] Reviewing src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/renderer.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/Vencord.user.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/extension.js...
+ Reviewed src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/patcher.js. Status: SAFE -- Standard Vencord patcher; no malicious behavior detected.
LLM auditresponse for renderer.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is the full Vencord renderer bundle, a Discord client mod consisting of many plugins and API definitions. All network requests and code execution patterns (e.g., `fetch` + `eval` in the `oneko` plugin) are part of the plugin's own documented functionality, fetching from pinned commit URLs on GitHub. No evidence of exfiltration, backdoors, obfuscated malicious code, or unexpected remote hosts. The code is consistent with the stated purpose of the package.
</details>
<evidence></evidence>
<summary>No malicious code detected; file is safe.</summary>
</security_assessment>

[4/9] Reviewing src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/renderer.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/Vencord.user.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/extension.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/browser.js...
[5/9] Reviewing src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/Vencord.user.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/extension.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/browser.js...
+ Reviewed src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/renderer.js. Status: SAFE -- No malicious code detected; file is safe.
LLM auditresponse for extension.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a minified JavaScript bundle for the Vencord Discord client mod, containing many plugins and APIs. All network requests (e.g., to GitHub, Tenor, Google Translate, Last.fm, etc.) are part of the application's intended functionality and are not hidden or obfuscated. The `oneko` plugin fetches a script from a third-party GitHub URL and executes it via `eval`, but this is an optional, user-enabled feature that aligns with the plugin's stated purpose (a cat following the mouse). There is no evidence of exfiltration of local data, credential theft, backdoors, or any other malicious behavior. The file is consistent with standard packaging for a client mod and does not contain injected malicious code.
</details>
<evidence>
</evidence>
<summary>No malicious code found; standard client mod bundle.</summary>
</security_assessment>

[5/9] Reviewing src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/Vencord.user.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/extension.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/browser.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/vencordDesktopRenderer.js...
[6/9] Reviewing src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/Vencord.user.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/browser.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/vencordDesktopRenderer.js...
+ Reviewed src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/extension.js. Status: SAFE -- No malicious code found; standard client mod bundle.
LLM auditresponse for browser.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the official Vencord browser build (commit ef29bbe). It is a large, minified JavaScript bundle that includes the core Vencord runtime, Webpack patching system, and over 100 bundled plugins. The code is obfuscated by the bundler, not by malicious intent. All network requests observed are either to Discord domains (cdn.discordapp.com, etc.), the Vencord backend (vencord.dev), or third-party APIs used by specific plugins (e.g., Last.fm, Tenor, Spotify, etc.).  

One notable pattern is the `oneko` plugin (line ~22100), which fetches a script from `raw.githubusercontent.com/adryd325/oneko.js` and then `eval`s it. This is a third-party source and an eval-based execution, which represents a trust and supply-chain risk. However, this is the plugin’s designed functionality ("cat follow mouse") and part of the upstream Vencord package, not an injected attack. The rest of the file follows standard AUR packaging practices: patching Discord at runtime, loading modules, installing styles, and registering commands.  

There are no signs of data exfiltration, backdoors, reverse shells, or credential theft. The file does not fetch code from unexpected hosts outside the plugin’s stated purpose. The oneko plugin’s behavior, while risky, is consistent with the package’s stated feature set and is not evidence of a malicious supply-chain attack.
</details>
<evidence>

</evidence>
<summary>Official Vencord build with no genuine malicious behavior.</summary>
</security_assessment>

[7/9] Reviewing src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/Vencord.user.js, src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/vencordDesktopRenderer.js...
+ Reviewed src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/browser.js. Status: SAFE -- Official Vencord build with no genuine malicious behavior.
LLM auditresponse for Vencord.user.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the compiled userscript bundle for Vencord, a well-known Discord client mod. It contains all plugins compiled together. The code makes network requests to various services (e.g., GitHub raw content, Discord CDN, project-specific APIs), but these are all part of the mod’s intended functionality (plugin loading, settings sync, badge fetching, etc.). The Webpack patching mechanism uses `eval` to re-evaluate patched module code; this is standard for such mods and not hidden. The oneko plugin fetches a script from the plugin author’s GitHub repository and executes it via `eval` – this is an intentional plugin feature (a fun cat animation) and part of the upstream code, not an injected backdoor. No evidence of data exfiltration, unexpected system modifications, or obfuscated malicious behavior was found. The file behaves as expected for the Vencord project.
</details>
<evidence/>

<summary>Legitimate Vencord userscript bundle; no malicious behavior detected.</summary>
</security_assessment>

[8/9] Reviewing src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/vencordDesktopRenderer.js...
+ Reviewed src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/Vencord.user.js. Status: SAFE -- Legitimate Vencord userscript bundle; no malicious behavior detected.
LLM auditresponse for vencordDesktopRenderer.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the compiled Vencord Desktop Renderer — the core JavaScript bundle of the Vencord Discord client mod. It is heavily minified and contains thousands of lines of plugin, patching, and webpack logic. No evidence of genuine supply‑chain injection was found. All network requests target the project’s own infrastructure (api.vencord.dev, badges.vencord.dev), Discord’s CDNs, or well‑known third‑party services (GitHub raw, jsDelivr, ClearURLs rules) that serve the application’s stated functionality (fetching error codes, theme assets, Shiki highlighter, petpet frames, ClearURLs rules, etc.). The oneko plugin fetches an external script and `eval`s it, but this is an explicit feature of that optional plugin and not an injected backdoor. No exfiltration of local data, hidden base64‑decoded commands, or unexpected hosts beyond the plugin’s intended scope were observed.
</details>
<evidence></evidence>
<summary>No injected malice; all operations serve Vencord's stated functionality.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed src/builds-28478d7b05dafe7a172aa011f56685d40f34d3c3/vencordDesktopRenderer.js. Status: SAFE -- No injected malice; all operations serve Vencord's stated functionality.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: vencord-bin-1.15.2.zip)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 1,660,786
  Completion Tokens: 16,020
  Total Tokens: 1,676,806
  Total Cost: $0.097168
  Execution Time: 234.34 seconds

Final Status: SAFE


No issues found.


Audit Skips:

vencord-bin-1.15.2.zip: [SKIPPED] Skipping binary file: vencord-bin-1.15.2.zip
