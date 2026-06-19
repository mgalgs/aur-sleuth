---
package: scalpel-poe
pkgver: 0.9.15
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: af83c8ecbd0b8272d6c9200f7baf40324851f319
prompt_tokens: 45226
completion_tokens: 8178
total_tokens: 53404
cost: 0.00554238
execution_time: 96.81
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T06:50:53Z
file_verdicts:
  - file: scalpel-poe.desktop
    status: safe
    summary: Safe desktop entry file with no anomalies.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with trusted sources and no malicious indicators.
  - file: src/scalpel-0.9.15/postcss.config.js
    status: safe
    summary: Simple PostCSS config with no security issues.
  - file: src/scalpel-0.9.15/packaging/aur/scalpel-poe-bin/PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums and no suspicious behavior.
  - file: src/scalpel-0.9.15/src/main/app-macros.ts
    status: safe
    summary: No suspicious activity; standard TypeScript utility for plugin hotkeys.
  - file: src/scalpel-0.9.15/src/main/client-log/watcher.ts
    status: safe
    summary: Standard file watcher; no malicious code detected.
  - file: scalpel-poe.sh
    status: safe
    summary: Simple wrapper script, no security concerns.
  - file: src/scalpel-0.9.15/patches/uiohook-napi+1.5.4.patch
    status: safe
    summary: Legitimate compatibility fix for X11 keyboard detection.
  - file: src/scalpel-0.9.15/electron.vite.config.ts
    status: safe
    summary: Standard Vite config, no malicious code.
  - file: src/scalpel-0.9.15/src/main/cheat-sheets.ts
    status: safe
    summary: Clean Electron overlay module for game helper; no security issues.
  - file: src/scalpel-0.9.15/package.json
    status: safe
    summary: Standard package.json, no malicious indicators found.
  - file: src/scalpel-0.9.15/src/main/evaluation.ts
    status: safe
    summary: Legitimate game overlay tool code, no malicious behavior.
---

Cloning https://aur.archlinux.org/scalpel-poe.git to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-fhsw9b_l...
Cloned repository to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-fhsw9b_l
Analyzing scalpel-poe AUR package (working in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-fhsw9b_l) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines only functions (`_check_node_version`, `_enter_builddir`, `prepare`, `build`, `package`) at the top level, none of which are executed during `makepkg --nobuild --nodeps --noprepare` (since only `pkgver()` or top-level code runs, and `pkgver` is static here). The `source` array fetches a tarball from the project's own GitHub releases URL (`github.com/scalpelpoe/scalpel`) and two local files (`scalpel-poe.sh`, `scalpel-poe.desktop`) – all standard and expected. Checksums are provided and non-SKIP. There is no obfuscated code, no remote execution, no network requests to unexpected hosts, and no `eval`/`base64`/`curl|bash` patterns. The file is consistent with normal AUR packaging and poses no risk during the source-fetching and PKGBUILD-parsing step.
</details>
<summary>Standard PKGBUILD with no malicious top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD with no malicious top-level code.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, scalpel-poe.desktop...
LLM auditresponse for scalpel-poe.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for launching the `scalpel-poe` application. It contains no executable code, network requests, obfuscation, or system modifications. The `Exec` line runs `scalpel-poe %U`, which is a normal invocation for a GUI application that can accept file URLs. The file is consistent with routine packaging and presents no security concerns.
</details>
<summary>Safe desktop entry file with no anomalies.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed scalpel-poe.desktop. Status: SAFE -- Safe desktop entry file with no anomalies.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for an Electron-based application. All source files are downloaded from the official GitHub repository (`https://github.com/scalpelpoe/scalpel`) with pinned version tags and valid SHA256 checksums. The build process uses `npm ci` and `electron-builder`, which are the expected build tools for this type of project. There are no suspicious network requests to unknown hosts, no obfuscated commands, no dangerous operations like `eval` or `curl|bash`, and no attempts to exfiltrate data or modify system files outside the package's own installation directory. The node version check and the `SHARP_IGNORE_GLOBAL_LIBVIPS` environment variable are routine configuration steps. The package is safe.
</details>
<summary>Standard AUR PKGBUILD with trusted sources and no malicious indicators.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with trusted sources and no malicious indicators.
Reviewed all required files.
Deciding which files to review next...
Note: 908 files available for selection; offering the 50 highest-priority to the model. 750 lower-priority file(s) were not offered.
LLM response for file selection:
scalpel-poe.sh
src/scalpel-0.9.15/electron.vite.config.ts
src/scalpel-0.9.15/package.json
src/scalpel-0.9.15/packaging/aur/scalpel-poe-bin/PKGBUILD
src/scalpel-0.9.15/patches/uiohook-napi+1.5.4.patch
src/scalpel-0.9.15/postcss.config.js
src/scalpel-0.9.15/src/main/app-macros.ts
src/scalpel-0.9.15/src/main/evaluation.ts
src/scalpel-0.9.15/src/main/cheat-sheets.ts
src/scalpel-0.9.15/src/main/client-log/watcher.ts
Decided to review 10 additional files: scalpel-poe.sh, src/scalpel-0.9.15/electron.vite.config.ts, src/scalpel-0.9.15/package.json, src/scalpel-0.9.15/packaging/aur/scalpel-poe-bin/PKGBUILD, src/scalpel-0.9.15/patches/uiohook-napi+1.5.4.patch, src/scalpel-0.9.15/postcss.config.js, src/scalpel-0.9.15/src/main/app-macros.ts, src/scalpel-0.9.15/src/main/evaluation.ts, src/scalpel-0.9.15/src/main/cheat-sheets.ts, src/scalpel-0.9.15/src/main/client-log/watcher.ts
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing scalpel-poe.sh...
[0/10] Reviewing scalpel-poe.sh, src/scalpel-0.9.15/electron.vite.config.ts...
[0/10] Reviewing scalpel-poe.sh, src/scalpel-0.9.15/electron.vite.config.ts, src/scalpel-0.9.15/package.json...
[0/10] Reviewing scalpel-poe.sh, src/scalpel-0.9.15/electron.vite.config.ts, src/scalpel-0.9.15/package.json, src/scalpel-0.9.15/postcss.config.js...
[0/10] Reviewing scalpel-poe.sh, src/scalpel-0.9.15/electron.vite.config.ts, src/scalpel-0.9.15/package.json, src/scalpel-0.9.15/postcss.config.js, src/scalpel-0.9.15/patches/uiohook-napi+1.5.4.patch...
[0/10] Reviewing scalpel-poe.sh, src/scalpel-0.9.15/electron.vite.config.ts, src/scalpel-0.9.15/package.json, src/scalpel-0.9.15/postcss.config.js, src/scalpel-0.9.15/patches/uiohook-napi+1.5.4.patch, src/scalpel-0.9.15/src/main/app-macros.ts...
[0/10] Reviewing scalpel-poe.sh, src/scalpel-0.9.15/electron.vite.config.ts, src/scalpel-0.9.15/package.json, src/scalpel-0.9.15/postcss.config.js, src/scalpel-0.9.15/patches/uiohook-napi+1.5.4.patch, src/scalpel-0.9.15/src/main/app-macros.ts, src/scalpel-0.9.15/packaging/aur/scalpel-poe-bin/PKGBUILD...
[0/10] Reviewing scalpel-poe.sh, src/scalpel-0.9.15/electron.vite.config.ts, src/scalpel-0.9.15/package.json, src/scalpel-0.9.15/postcss.config.js, src/scalpel-0.9.15/patches/uiohook-napi+1.5.4.patch, src/scalpel-0.9.15/src/main/app-macros.ts, src/scalpel-0.9.15/packaging/aur/scalpel-poe-bin/PKGBUILD, src/scalpel-0.9.15/src/main/evaluation.ts...
[0/10] Reviewing scalpel-poe.sh, src/scalpel-0.9.15/electron.vite.config.ts, src/scalpel-0.9.15/package.json, src/scalpel-0.9.15/postcss.config.js, src/scalpel-0.9.15/patches/uiohook-napi+1.5.4.patch, src/scalpel-0.9.15/src/main/app-macros.ts, src/scalpel-0.9.15/packaging/aur/scalpel-poe-bin/PKGBUILD, src/scalpel-0.9.15/src/main/evaluation.ts, src/scalpel-0.9.15/src/main/cheat-sheets.ts...
[0/10] Reviewing scalpel-poe.sh, src/scalpel-0.9.15/electron.vite.config.ts, src/scalpel-0.9.15/package.json, src/scalpel-0.9.15/postcss.config.js, src/scalpel-0.9.15/patches/uiohook-napi+1.5.4.patch, src/scalpel-0.9.15/src/main/app-macros.ts, src/scalpel-0.9.15/packaging/aur/scalpel-poe-bin/PKGBUILD, src/scalpel-0.9.15/src/main/evaluation.ts, src/scalpel-0.9.15/src/main/cheat-sheets.ts, src/scalpel-0.9.15/src/main/client-log/watcher.ts...
LLM auditresponse for postcss.config.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard PostCSS configuration that simply enables the `tailwindcss` and `autoprefixer` plugins. There are no network requests, obfuscated code, file operations, or any other potentially dangerous behavior. This is a routine configuration file for a common frontend build toolchain.
</details>
<summary>Simple PostCSS config with no security issues.</summary>
</security_assessment>

[1/10] Reviewing scalpel-poe.sh, src/scalpel-0.9.15/electron.vite.config.ts, src/scalpel-0.9.15/package.json, src/scalpel-0.9.15/patches/uiohook-napi+1.5.4.patch, src/scalpel-0.9.15/src/main/app-macros.ts, src/scalpel-0.9.15/packaging/aur/scalpel-poe-bin/PKGBUILD, src/scalpel-0.9.15/src/main/evaluation.ts, src/scalpel-0.9.15/src/main/cheat-sheets.ts, src/scalpel-0.9.15/src/main/client-log/watcher.ts...
+ Reviewed src/scalpel-0.9.15/postcss.config.js. Status: SAFE -- Simple PostCSS config with no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads files exclusively from the official Scalpel GitHub repository, with pinned checksums for all sources. The package function only installs files into standard system directories without any obfuscation, network requests beyond upstream sources, or dangerous commands. No evidence of malicious code or supply chain attack is present.
</details>
<summary>Standard PKGBUILD with pinned checksums and no suspicious behavior.</summary>
</security_assessment>

[2/10] Reviewing scalpel-poe.sh, src/scalpel-0.9.15/electron.vite.config.ts, src/scalpel-0.9.15/package.json, src/scalpel-0.9.15/patches/uiohook-napi+1.5.4.patch, src/scalpel-0.9.15/src/main/app-macros.ts, src/scalpel-0.9.15/src/main/evaluation.ts, src/scalpel-0.9.15/src/main/cheat-sheets.ts, src/scalpel-0.9.15/src/main/client-log/watcher.ts...
+ Reviewed src/scalpel-0.9.15/packaging/aur/scalpel-poe-bin/PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums and no suspicious behavior.
LLM auditresponse for app-macros.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This TypeScript file is a standard utility module for an application that supports plugin hotkeys. It exports functions to merge plugin-registered hotkey stubs into a user-defined macro list (`withPluginHotkeys`), set up a refresh callback (`initAppMacrosRefresh`), and re-apply the combined macro list (`refreshAppMacros`). The code performs no network requests, file operations, system modifications, or obfuscated commands. It operates entirely on in-memory data structures and imports from local modules. There is no evidence of malicious behavior; the file follows normal application logic patterns.
</details>
<summary>No suspicious activity; standard TypeScript utility for plugin hotkeys.</summary>
</security_assessment>

[3/10] Reviewing scalpel-poe.sh, src/scalpel-0.9.15/electron.vite.config.ts, src/scalpel-0.9.15/package.json, src/scalpel-0.9.15/patches/uiohook-napi+1.5.4.patch, src/scalpel-0.9.15/src/main/evaluation.ts, src/scalpel-0.9.15/src/main/cheat-sheets.ts, src/scalpel-0.9.15/src/main/client-log/watcher.ts...
+ Reviewed src/scalpel-0.9.15/src/main/app-macros.ts. Status: SAFE -- No suspicious activity; standard TypeScript utility for plugin hotkeys.
LLM auditresponse for watcher.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file (`watcher.ts`) is a TypeScript module that implements a file watcher using Node.js's built-in `fs.watchFile`. It reads appended content from a given file path and invokes a callback for each new line. The code is self-contained, uses only standard library calls, and performs no network operations, no obfuscation, and no execution of external commands. 

The function `startWatcher` accepts a `path` parameter and an `onLine` callback; the watcher reads from that path deterministically. There are no suspicious patterns such as downloading data, exfiltrating information, or modifying system files. The module also includes a test helper `_resetForTests` that unwatches the file, which is normal testing practice. 

The behavior is consistent with a legitimate utility that monitors log files or similar append-only files. No evidence of a supply-chain attack or malicious injection is present.
</details>
<summary>Standard file watcher; no malicious code detected.</summary>
</security_assessment>

[4/10] Reviewing scalpel-poe.sh, src/scalpel-0.9.15/electron.vite.config.ts, src/scalpel-0.9.15/package.json, src/scalpel-0.9.15/patches/uiohook-napi+1.5.4.patch, src/scalpel-0.9.15/src/main/evaluation.ts, src/scalpel-0.9.15/src/main/cheat-sheets.ts...
+ Reviewed src/scalpel-0.9.15/src/main/client-log/watcher.ts. Status: SAFE -- Standard file watcher; no malicious code detected.
LLM auditresponse for scalpel-poe.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard wrapper script for launching an AppImage with specific environment and options. It sets `XDG_SESSION_TYPE=x11` to ensure X11 session type and executes the AppImage with `--ozone-platform=x11`. There is no evidence of malicious behavior: no network requests, no obfuscated code, no unexpected file operations, and no deviation from normal packaging practices for AppImage-based packages.
</details>
<summary>
Simple wrapper script, no security concerns.</summary>
</security_assessment>

[5/10] Reviewing src/scalpel-0.9.15/electron.vite.config.ts, src/scalpel-0.9.15/package.json, src/scalpel-0.9.15/patches/uiohook-napi+1.5.4.patch, src/scalpel-0.9.15/src/main/evaluation.ts, src/scalpel-0.9.15/src/main/cheat-sheets.ts...
+ Reviewed scalpel-poe.sh. Status: SAFE -- Simple wrapper script, no security concerns.
LLM auditresponse for uiohook-napi+1.5.4.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies the `uiohook-napi` library's X11 input helper to fix a compatibility issue with modern X.Org and XWayland servers. The original code used `XkbGetKeyboard` with `XkbGBN_AllComponentsMask`, which fails on these servers because they refuse to provide keyboard geometry. The patch replaces this with `XkbAllocKeyboard` and `XkbGetNames` to fetch only the keycodes atom name, which is sufficient for the library's keycode detection logic. The change also adjusts the evdev prefix matching to handle the modern atom format `"evdev+aliases(qwerty)"` instead of the older `"evdev_"` prefix.

The patch contains no obfuscated code, no network requests, no file operations outside the application's scope, no execution of downloaded content, no backdoors, and no exfiltration of data. It is a straightforward, well-documented C code change that addresses a real upstream compatibility issue. The behavior is entirely within the expected scope of the library's functionality.
</details>
<summary>Legitimate compatibility fix for X11 keyboard detection.</summary>
</security_assessment>

[6/10] Reviewing src/scalpel-0.9.15/electron.vite.config.ts, src/scalpel-0.9.15/package.json, src/scalpel-0.9.15/src/main/evaluation.ts, src/scalpel-0.9.15/src/main/cheat-sheets.ts...
+ Reviewed src/scalpel-0.9.15/patches/uiohook-napi+1.5.4.patch. Status: SAFE -- Legitimate compatibility fix for X11 keyboard detection.
LLM auditresponse for electron.vite.config.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Vite configuration file for an Electron application. It defines path aliases, plugins (react, externalizeDepsPlugin), and build entry points for multiple HTML files. There are no network requests, obfuscated code, or unexpected system operations. The file does not contain any malicious behavior; it is consistent with normal packaging practices for an Electron app.
</details>
<summary>Standard Vite config, no malicious code.</summary>
</security_assessment>

[7/10] Reviewing src/scalpel-0.9.15/package.json, src/scalpel-0.9.15/src/main/evaluation.ts, src/scalpel-0.9.15/src/main/cheat-sheets.ts...
+ Reviewed src/scalpel-0.9.15/electron.vite.config.ts. Status: SAFE -- Standard Vite config, no malicious code.
LLM auditresponse for cheat-sheets.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Electron overlay management module for the Path of Exile game helper application (scalpel-poe). It handles cheat sheet overlay windows, hotkey registration, minimize/restore animations, and hover previews. All functionality is directly related to the application's stated purpose: providing an in-game overlay for cheat sheets.

No malicious behavior is present:
- No network requests, data exfiltration, or downloads from external sources
- No obfuscated code, encoded strings, or dangerous commands (eval, exec, spawn)
- No file operations outside the application's own resources
- All imports are from local files or legitimate npm packages (electron, electron-overlay-window)
- The code follows standard Electron patterns for overlay windows, IPC communication, and window management

The file is well-commented and transparent in its operations. There is no evidence of a supply chain attack or injected malicious code.
</details>
<summary>Clean Electron overlay module for game helper; no security issues.</summary>
</security_assessment>

[8/10] Reviewing src/scalpel-0.9.15/package.json, src/scalpel-0.9.15/src/main/evaluation.ts...
+ Reviewed src/scalpel-0.9.15/src/main/cheat-sheets.ts. Status: SAFE -- Clean Electron overlay module for game helper; no security issues.
LLM auditresponse for package.json:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `package.json` for an Electron application (scalpel). It defines project metadata, npm scripts, dependencies, and electron-builder configuration. No malicious code, obfuscation, or suspicious network requests are present. The scripts reference local files (e.g., `node scripts/postinstall.js`) but the content of those files is not included for review. The dependencies appear legitimate and the project points to its official GitHub repository. There is no evidence of supply-chain attack or unsafe behavior in this file.
</details>
<summary>Standard package.json, no malicious indicators found.</summary>
</security_assessment>

[9/10] Reviewing src/scalpel-0.9.15/src/main/evaluation.ts...
+ Reviewed src/scalpel-0.9.15/package.json. Status: SAFE -- Standard package.json, no malicious indicators found.
LLM auditresponse for evaluation.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is part of the `scalpel-poe` package, an overlay tool for the game Path of Exile. It contains standard application logic for capturing in-game item data via clipboard, evaluating items against filter rules, looking up prices, and managing overlay windows. All network requests (e.g., `refreshPrices`, `lookupPrice`) are directed at the game's own trade APIs or price databases, which is normal upstream functionality. There is no obfuscated code, no use of `eval` or `base64`, no unexpected file operations, and no exfiltration of system files or credentials. The code interacts with the game's window and clipboard as expected for a tool of this type. No evidence of a supply chain attack or malicious injection is present.
</details>
<summary>
Legitimate game overlay tool code, no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/scalpel-0.9.15/src/main/evaluation.ts. Status: SAFE -- Legitimate game overlay tool code, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 45,226
  Completion Tokens: 8,178
  Total Tokens: 53,404
  Total Cost: $0.005542
  Execution Time: 96.81 seconds
Full audit report can be found in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-scalpel-poe.txt
Final Status: SAFE


No issues found.
