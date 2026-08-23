---
package: vscodium-bin
pkgver: 1.126.04524
pkgrel: 1
result: inconclusive
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3aa684c47f9b6bac5667ff3cee413c3a000b1b0d
prompt_tokens: 355790
completion_tokens: 7897
total_tokens: 363687
cost: 0.02023646464
execution_time: 148.64
files_reviewed: 12
files_skipped: 1
files_unauditable: 170
unpinned_sources: 0
date: 2026-08-23T03:25:48Z
file_verdicts:
  - file: code.svg
    status: skipped
    summary: "Skipping binary file: code.svg"
  - file: vscodium-bin.install
    status: safe
    summary: Standard .install file with informational note only.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with official sources and normal practices.
  - file: src/resources/app/extensions/bat/package.json
    status: safe
    summary: Standard VS Code extension package.json, no security issues.
  - file: src/resources/app/extensions/css-language-features/server/dist/node/cssServerMain.js
    status: inconclusive
    summary: "Audit error: <html>\n<head><title>413 Request Entity Too Large</title></head>\n<body>\n<center><h1>413 Request Entity Too Large</h1></center>\n<hr><center>nginx/1.27.5</center>\n</body>\n</html>"
  - file: src/resources/app/extensions/css-language-features/client/dist/node/cssClientMain.js
    status: safe
    summary: Legitimate VS Code CSS extension, no malicious code.
  - file: src/resources/app/extensions/debug-auto-launch/dist/extension.js
    status: safe
    summary: Legitimate VS Code debug extension, no malicious behavior.
  - file: src/resources/app/extensions/git/dist/askpass-empty.sh
    status: safe
    summary: Minimal script echoing empty string, harmless.
  - file: src/resources/app/extensions/emmet/dist/node/emmetNodeMain.js
    status: safe
    summary: Standard Emmet extension module; no malicious behavior found.
  - file: src/resources/app/extensions/configuration-editing/dist/configurationEditingMain.js
    status: safe
    summary: Legitimate VSCodium config editor, no supply-chain threats.
  - file: src/resources/app/extensions/git/dist/askpass-main.js
    status: safe
    summary: Standard VSCodium git askpass helper; no malicious behavior.
  - file: src/resources/app/extensions/git/dist/askpass.sh
    status: safe
    summary: Standard VSCodium Git askpass helper, no security issues.
  - file: src/resources/app/extensions/git/dist/git-editor-empty.sh
    status: safe
    summary: Empty script; no malicious code.
---

Cloning https://aur.archlinux.org/vscodium-bin.git...
Cloned vscodium-bin
Analyzing vscodium-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no dangerous top-level code, `pkgver()` function, or command substitutions that would execute during sourcing. All sources point to the official VSCodium GitHub repository, using standard HTTPS URLs. Checksums are provided and not set to SKIP. The `shopt -s extglob` is harmless. The `package()` function is not executed by `makepkg --nobuild --nodeps --noprepare`. No suspicious network requests or code execution in the global scope. Running the specified commands is safe.</details>
<summary>Safe to run; no malicious code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe to run; no malicious code in global scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, vscodium-bin.install...
[0/3] Reviewing PKGBUILD, vscodium-bin.install, code.svg...
[1/3] Reviewing PKGBUILD, vscodium-bin.install...
! Reviewed code.svg. Status: SKIPPED -- Skipping binary file: code.svg
LLM auditresponse for vscodium-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.install` file used by Arch Linux PKGBUILDs to run hooks after package installation or upgrade. The file defines helper functions for colored output (`msg_blue`, `note`) and a `post_install` / `post_upgrade` hook that simply prints a note directing users to `~/.config/codium-flags.conf` for custom flags. There is no code that downloads or executes remote content, performs system modifications outside the package's scope, or contains obfuscated or encoded commands. The behavior is purely informational and matches expected packaging practices.
</details>
<summary>Standard .install file with informational note only.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed vscodium-bin.install. Status: SAFE -- Standard .install file with informational note only.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a binary release package. Sources are fetched exclusively from the official VSCodium GitHub repository (tags and releases) and are accompanied by proper sha256sums—no checksums are skipped. The package function performs routine installation: copying files, setting permissions, creating symlinks, and placing the standard `chrome-sandbox` with setuid (4755) permissions, which is normal for Electron-based applications that require a sandbox helper. No obfuscated code, encoded payloads, `eval`/`curl`/`wget` to unexpected hosts, or data exfiltration commands are present. The `shopt -s extglob` line is unused but harmless. The install script is referenced but not included in this file; its inclusion in the source array is standard. There is no evidence of injected malicious behavior that deviates from the stated purpose of packaging VSCodium.
</details>
<summary>
Standard PKGBUILD with official sources and normal practices.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with official sources and normal practices.
Reviewed all required files.
Deciding which files to review next...
Note: 170 compiled/archived file(s) cannot be audited as text and were not reviewed (VSCodium-linux-x64-1.126.04524.tar.gz, src/v8_context_snapshot.bin, src/chrome_100_percent.pak and 167 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 3551 files available for selection; offering the 50 highest-priority to the model. 1912 lower-priority file(s) were not offered.
File selection failed (LLM response message content is empty or missing. Raw response: ChatCompletion(id='gen-1787455474-Ql1dWWBBBPazCOXJiKQ2', choices=[Choice(finish_reason='stop', index=0, logprobs=None, message=ChatCompletionMessage(content=None, refusal=None, role='assistant', annotations=None, audio=None, function_call=None, tool_calls=None, reasoning='We are asked to select UP TO 10 files from the listing that are most likely to contain malicious or dangerous code. The review budget is limited, and we already reviewed PKGBUILD, vscodium-bin.install, and code.svg. So we need to choose from the remaining files.\n\nImportant: The package is "vscodium-bin", which is a binary repackage of VSCodium (a fork of VS Code). The listing shows many files under src/resources/app/extensions/... which are part of the prebuilt VSCodium binary package (the app itself). The AUR maintainer likely just repackages the prebuilt archive, so the AUR-controlled surface is only the PKGBUILD and install hook (already reviewed). The files listed are from the bundled upstream VSCodium application. They are vendored upstream content: they come from the VSCodium release artifact. The AUR maintainer did not modify them. The instructions: "DEPRIORITIZE vendored upstream bundle content. We hunt for code INJECTED into the AUR packaging, so files that ship verbatim inside an upstream release artifact are a poor use of a slot -- no AUR maintainer touched them..." Therefore, almost all files in the listing are vendored upstream bundle content. They are the same for every user of that VSCodium release. So they are extremely unlikely to contain AUR-specific malicious code.\n\nWe should first check if any files in the listing are not from the upstream bundle. The listing path is "src/resources/app/extensions/...". The AUR package likely extracts the VSCodium tarball into $srcdir, and the PKGBUILD copies those files to the package. So these are all part of the VSCodium application itself. The AUR maintainer didn\'t create them.\n\nPotentially, there could be patches or other files that m... (truncated)); using highest-priority files instead

Note: file selection did not complete (LLM response message content is empty or missing. Raw response: ChatCompletion(id='gen-1787455474-Ql1dWWBBBPazCOXJiKQ2', choices=[Choice(finish_reason='stop', index=0, logprobs=None, message=ChatCompletionMessage(content=None, refusal=None, role='assistant', annotations=None, audio=None, function_call=None, tool_calls=None, reasoning='We are asked to select UP TO 10 files from the listing that are most likely to contain malicious or dangerous code. The review budget is limited, and we already reviewed PKGBUILD, vscodium-bin.install, and code.svg. So we need to choose from the remaining files.\n\nImportant: The package is "vscodium-bin", which is a binary repackage of VSCodium (a fork of VS Code). The listing shows many files under src/resources/app/extensions/... which are part of the prebuilt VSCodium binary package (the app itself). The AUR maintainer likely just repackages the prebuilt archive, so the AUR-controlled surface is only the PKGBUILD and install hook (already reviewed). The files listed are from the bundled upstream VSCodium application. They are vendored upstream content: they come from the VSCodium release artifact. The AUR maintainer did not modify them. The instructions: "DEPRIORITIZE vendored upstream bundle content. We hunt for code INJECTED into the AUR packaging, so files that ship verbatim inside an upstream release artifact are a poor use of a slot -- no AUR maintainer touched them..." Therefore, almost all files in the listing are vendored upstream bundle content. They are the same for every user of that VSCodium release. So they are extremely unlikely to contain AUR-specific malicious code.\n\nWe should first check if any files in the listing are not from the upstream bundle. The listing path is "src/resources/app/extensions/...". The AUR package likely extracts the VSCodium tarball into $srcdir, and the PKGBUILD copies those files to the package. So these are all part of the VSCodium application itself. The AUR maintainer didn\'t create them.\n\nPotentially, there could be patches or other files that m... (truncated)). Falling back to the 10 highest-priority file(s) by ranking.
Decided to review 10 additional files: src/resources/app/extensions/bat/package.json, src/resources/app/extensions/configuration-editing/dist/configurationEditingMain.js, src/resources/app/extensions/css-language-features/client/dist/node/cssClientMain.js, src/resources/app/extensions/css-language-features/server/dist/node/cssServerMain.js, src/resources/app/extensions/debug-auto-launch/dist/extension.js, src/resources/app/extensions/emmet/dist/node/emmetNodeMain.js, src/resources/app/extensions/git/dist/askpass-empty.sh, src/resources/app/extensions/git/dist/askpass-main.js, src/resources/app/extensions/git/dist/askpass.sh, src/resources/app/extensions/git/dist/git-editor-empty.sh
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/resources/app/extensions/configuration-editing/dist/configurationEditingMain.js...
[0/10] Reviewing src/resources/app/extensions/configuration-editing/dist/configurationEditingMain.js, src/resources/app/extensions/bat/package.json...
[0/10] Reviewing src/resources/app/extensions/configuration-editing/dist/configurationEditingMain.js, src/resources/app/extensions/bat/package.json, src/resources/app/extensions/css-language-features/client/dist/node/cssClientMain.js...
LLM auditresponse for package.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard VS Code extension `package.json` for the Batch language extension (`bat`). It defines language contributions, grammars, and snippets. The only script, `update-grammar`, is a development utility that uses `vscode-grammar-updater` to fetch a grammar file from a legitimate GitHub repository (`mmims/language-batchfile`). There are no suspicious network requests, obfuscated code, dangerous commands, or attempts to exfiltrate data. The repository URL points to the official Microsoft VS Code repository. The file exhibits no malicious or anomalous behavior.
</details>
<summary>
Standard VS Code extension package.json, no security issues.
</summary>
</security_assessment>

[1/10] Reviewing src/resources/app/extensions/configuration-editing/dist/configurationEditingMain.js, src/resources/app/extensions/css-language-features/client/dist/node/cssClientMain.js...
+ Reviewed src/resources/app/extensions/bat/package.json. Status: SAFE -- Standard VS Code extension package.json, no security issues.
[1/10] Reviewing src/resources/app/extensions/configuration-editing/dist/configurationEditingMain.js, src/resources/app/extensions/css-language-features/client/dist/node/cssClientMain.js, src/resources/app/extensions/css-language-features/server/dist/node/cssServerMain.js...
LLM audit error for cssServerMain.js: Audit error: <html>
<head><title>413 Request Entity Too Large</title></head>
<body>
<center><h1>413 Request Entity Too Large</h1></center>
<hr><center>nginx/1.27.5</center>
</body>
</html>

[1/10] Reviewing src/resources/app/extensions/configuration-editing/dist/configurationEditingMain.js, src/resources/app/extensions/css-language-features/client/dist/node/cssClientMain.js, src/resources/app/extensions/css-language-features/server/dist/node/cssServerMain.js, src/resources/app/extensions/debug-auto-launch/dist/extension.js...
[2/10] Reviewing src/resources/app/extensions/configuration-editing/dist/configurationEditingMain.js, src/resources/app/extensions/css-language-features/client/dist/node/cssClientMain.js, src/resources/app/extensions/debug-auto-launch/dist/extension.js...
? Reviewed src/resources/app/extensions/css-language-features/server/dist/node/cssServerMain.js. Status: INCONCLUSIVE -- Audit error: <html>
<head><title>413 Request Entity Too Large</title></head>
<body>
<center><h1>413 Request Entity Too Large</h1></center>
<hr><center>nginx/1.27.5</center>
</body>
</html>
LLM auditresponse for cssClientMain.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is the compiled/minified JavaScript bundle for the VS Code CSS language features extension (cssClientMain.js). It is a standard LSP client implementation that communicates with the CSS language server via stdio or IPC. The code imports Node.js built-in modules (`child_process`, `fs`, `path`, `readline`) and the VS Code extension API (`vscode`) in expected ways — for spawning the language server process, reading files, and interacting with the editor. No suspicious network requests (curl, wget, fetch), no obfuscated code (eval, base64, hex-encoded strings), and no data exfiltration are present. The `terminateProcess` helper using `child_process` is a standard utility to kill the language server on shutdown. The file is a legitimate part of the official VS Code CSS language feature extension and shows no signs of a supply-chain attack.
</details>
<summary>Legitimate VS Code CSS extension, no malicious code.</summary>
</security_assessment>

[2/10] Reviewing src/resources/app/extensions/configuration-editing/dist/configurationEditingMain.js, src/resources/app/extensions/css-language-features/client/dist/node/cssClientMain.js, src/resources/app/extensions/debug-auto-launch/dist/extension.js, src/resources/app/extensions/emmet/dist/node/emmetNodeMain.js...
[3/10] Reviewing src/resources/app/extensions/configuration-editing/dist/configurationEditingMain.js, src/resources/app/extensions/debug-auto-launch/dist/extension.js, src/resources/app/extensions/emmet/dist/node/emmetNodeMain.js...
+ Reviewed src/resources/app/extensions/css-language-features/client/dist/node/cssClientMain.js. Status: SAFE -- Legitimate VS Code CSS extension, no malicious code.
LLM auditresponse for extension.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard VS Code extension for Node.js debug auto-attach functionality. It uses `require` calls for `fs`, `net`, `path`, and `vscode` — all expected built-in or first-party modules. The code manages configuration, shows a QuickPick UI, creates a local IPC server (via `net.createServer`) that listens on a Unix socket path for IPC with another debug extension (`ms-vscode.js-debug` or `ms-vscode.js-debug-nightly`). No external network connections, no base64 decoding, no `eval`, no `curl`/`wget`, and no unexpected file operations outside the extension's scope. The minified/obfuscated style is typical of bundled JavaScript and not indicative of malice. The file performs only its stated purpose: toggling and managing auto-attach settings for Node.js debugging within VS Code.
</details>
<summary>Legitimate VS Code debug extension, no malicious behavior.</summary>
</security_assessment>

[3/10] Reviewing src/resources/app/extensions/configuration-editing/dist/configurationEditingMain.js, src/resources/app/extensions/debug-auto-launch/dist/extension.js, src/resources/app/extensions/emmet/dist/node/emmetNodeMain.js, src/resources/app/extensions/git/dist/askpass-empty.sh...
[4/10] Reviewing src/resources/app/extensions/configuration-editing/dist/configurationEditingMain.js, src/resources/app/extensions/emmet/dist/node/emmetNodeMain.js, src/resources/app/extensions/git/dist/askpass-empty.sh...
+ Reviewed src/resources/app/extensions/debug-auto-launch/dist/extension.js. Status: SAFE -- Legitimate VS Code debug extension, no malicious behavior.
LLM auditresponse for askpass-empty.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `askpass-empty.sh` contains only a shebang and a single command `echo ''`. It outputs an empty string and does nothing else. This is a common pattern used in automated builds to suppress password prompts (e.g., as an SSH_ASKPASS helper). There is no network activity, obfuscation, data exfiltration, or any other malicious behavior. The file is perfectly benign.
</details>
<summary>Minimal script echoing empty string, harmless.</summary>
</security_assessment>

[5/10] Reviewing src/resources/app/extensions/configuration-editing/dist/configurationEditingMain.js, src/resources/app/extensions/emmet/dist/node/emmetNodeMain.js...
+ Reviewed src/resources/app/extensions/git/dist/askpass-empty.sh. Status: SAFE -- Minimal script echoing empty string, harmless.
[5/10] Reviewing src/resources/app/extensions/configuration-editing/dist/configurationEditingMain.js, src/resources/app/extensions/emmet/dist/node/emmetNodeMain.js, src/resources/app/extensions/git/dist/askpass-main.js...
LLM auditresponse for emmetNodeMain.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a bundled and minified JavaScript module for the Emmet abbreviation expansion feature, intended to run inside VSCode/VSCodium. It defines standard functionality: abbreviation parsing, CSS/HTML expansion, command registration, completion providers, and image size detection. All network requests (http.get/https.get) are for fetching remote images to determine dimensions—a legitimate Emmet feature. There is no use of eval, atob, base64-decode, or obfuscated strings intended to hide malicious behavior. The file follows normal VSCode extension patterns (using `require("vscode")`, `require("fs")`, `require("path")`, etc.). No exfiltration, backdoor, or unexpected file/system modifications are present. The code is consistent with the upstream `@vscode/emmet-helper` package.
</details>
<summary>Standard Emmet extension module; no malicious behavior found.</summary>
</security_assessment>

[6/10] Reviewing src/resources/app/extensions/configuration-editing/dist/configurationEditingMain.js, src/resources/app/extensions/git/dist/askpass-main.js...
+ Reviewed src/resources/app/extensions/emmet/dist/node/emmetNodeMain.js. Status: SAFE -- Standard Emmet extension module; no malicious behavior found.
[6/10] Reviewing src/resources/app/extensions/configuration-editing/dist/configurationEditingMain.js, src/resources/app/extensions/git/dist/askpass-main.js, src/resources/app/extensions/git/dist/askpass.sh...
LLM auditresponse for configurationEditingMain.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a minified JavaScript bundle implementing configuration editing features for VSCodium, a VS Code fork. It includes standard completion providers for settings, launch.json, tasks.json, and keybindings, a GitHub-integrated settings sync via gists (using Octokit), and variable resolution for task configurations.

All network requests target `api.github.com` for the legitimate profile/gist sync feature. The code uses well-known open-source libraries (e.g., `octokit`, `tunnel-agent`, `jsonc-parser`) imported via `require` calls. There is no evidence of obfuscated or encoded commands, downloads from unexpected hosts, exfiltration of sensitive data, or any behavior that deviates from normal VSCodium extension functionality. The authentication flow uses VS Code's standard `authentication.getSession` API, and the proxy handling respects the `HTTPS_PROXY` environment variable in a typical manner.

No genuinely malicious patterns (backdoors, reverse shells, credential theft, execution of attacker-controlled code) are present. The code matches the expected upstream feature set and does not exhibit any supply-chain attack indicators.
</details>
<summary>Legitimate VSCodium config editor, no supply-chain threats.</summary>
</security_assessment>

[6/10] Reviewing src/resources/app/extensions/configuration-editing/dist/configurationEditingMain.js, src/resources/app/extensions/git/dist/askpass-main.js, src/resources/app/extensions/git/dist/askpass.sh, src/resources/app/extensions/git/dist/git-editor-empty.sh...
[7/10] Reviewing src/resources/app/extensions/git/dist/askpass-main.js, src/resources/app/extensions/git/dist/askpass.sh, src/resources/app/extensions/git/dist/git-editor-empty.sh...
+ Reviewed src/resources/app/extensions/configuration-editing/dist/configurationEditingMain.js. Status: SAFE -- Legitimate VSCodium config editor, no supply-chain threats.
LLM auditresponse for askpass-main.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard VSCodium/VSCode git askpass helper script. It communicates over a local Unix socket (from `VSCODE_GIT_IPC_HANDLE`) to request credentials from the main application process, then writes the result to a local pipe (`VSCODE_GIT_ASKPASS_PIPE`). The network request (`http.request`) is directed at a local socket path, not a remote host. There is no exfiltration, no downloading of code from unexpected sources, no obfuscation beyond normal minification, and no other malicious behavior. The script performs its intended function of handling git authentication prompts for the editor.
</details>
<summary>Standard VSCodium git askpass helper; no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/resources/app/extensions/git/dist/askpass.sh, src/resources/app/extensions/git/dist/git-editor-empty.sh...
+ Reviewed src/resources/app/extensions/git/dist/askpass-main.js. Status: SAFE -- Standard VSCodium git askpass helper; no malicious behavior.
LLM auditresponse for askpass.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard Git askpass helper used by VSCodium to handle HTTPS authentication prompts. It creates a temporary pipe, runs the application's Node.js askpass module with environment variables set by VSCodium, then outputs the result and cleans up. No malicious behavior is present: it does not exfiltrate data, download or execute code from unexpected sources, or perform unauthorized system modifications. The use of `mktemp`, `cat`, and `rm` is routine and expected for this use case. The environment variables are set by the application itself, not by external input, so no injection risk exists.
</details>
<summary>Standard VSCodium Git askpass helper, no security issues.</summary>
</security_assessment>

[9/10] Reviewing src/resources/app/extensions/git/dist/git-editor-empty.sh...
+ Reviewed src/resources/app/extensions/git/dist/askpass.sh. Status: SAFE -- Standard VSCodium Git askpass helper, no security issues.
LLM auditresponse for git-editor-empty.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `git-editor-empty.sh` contains only a shebang line (`#!/bin/sh`) and no further commands or code. It is effectively an empty script, likely used as a no-op editor for git operations during the build process (e.g., to avoid interactive prompts). There is no executable content, network access, data manipulation, or any behavior that could be considered malicious. This is a standard packaging utility script.
</details>
<summary>Empty script; no malicious code.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/resources/app/extensions/git/dist/git-editor-empty.sh. Status: SAFE -- Empty script; no malicious code.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: Inconclusive -- REVIEW MANUALLY
(Inconclusive 1 file: cssServerMain.js)

(Skipped 1 file: code.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 355,790
  Completion Tokens: 7,897
  Total Tokens: 363,687
  Total Cost: $0.020236
  Execution Time: 148.64 seconds

Final Status: INCONCLUSIVE



Inconclusive Results:

/data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-mi_w059r/src/resources/app/extensions/css-language-features/server/dist/node/cssServerMain.js: [INCONCLUSIVE] Audit error: <html>
<head><title>413 Request Entity Too Large</title></head>
<body>
<center><h1>413 Request Entity Too Large</h1></center>
<hr><center>nginx/1.27.5</center>
</body>
</html>


Audit Skips:

/data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-mi_w059r/code.svg: [SKIPPED] Skipping binary file: code.svg
