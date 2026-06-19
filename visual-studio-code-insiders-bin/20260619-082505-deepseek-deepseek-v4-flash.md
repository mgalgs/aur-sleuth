---
package: visual-studio-code-insiders-bin
pkgver: 1781846441
pkgrel: 1
result: inconclusive
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 27567
completion_tokens: 8255
total_tokens: 35822
cost: 0.00396693
execution_time: 394.17
files_reviewed: 13
files_skipped: 0
date: 2026-06-19T08:25:05Z
file_verdicts:
  - file: visual-studio-code-insiders-bin.install
    status: safe
    summary: No malicious code; purely informational notes
  - file: visual-studio-code-insiders-bin.sh
    status: safe
    summary: Benign wrapper script, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; no signs of malicious behavior.
  - file: src/usr/share/applications/code-insiders.desktop
    status: safe
    summary: Standard .desktop file, no security issues.
  - file: src/usr/share/code-insiders/resources/app/extensions/git/dist/git-editor.sh
    status: safe
    summary: Simple VS Code git editor wrapper script; no suspicious activity.
  - file: src/usr/share/code-insiders/resources/app/extensions/git/dist/askpass-main.js
    status: safe
    summary: Standard VS Code Git askpass IPC helper.
  - file: src/usr/share/code-insiders/resources/app/extensions/git/dist/askpass.sh
    status: safe
    summary: Standard VS Code Git askpass helper, no malicious behavior.
  - file: src/usr/share/code-insiders/resources/app/extensions/git/dist/ssh-askpass.sh
    status: safe
    summary: Standard SSH askpass helper, no malicious behavior.
  - file: src/usr/share/code-insiders/resources/app/extensions/git/dist/git-editor-main.js
    status: safe
    summary: Standard VS Code Git IPC script, no malicious code.
  - file: src/usr/share/code-insiders/resources/app/extensions/copilot/dist/cli.js
    status: inconclusive
    summary: "Audit error: Error code: 400 - {'error': {'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\", 'code': 400, 'metadata': {'provider_name': None, 'previous_errors': [{'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}]}}, 'user_id': 'user_2txanhjAQL38U5DhycxGDFv7iBq'}"
  - file: src/usr/share/code-insiders/resources/app/extensions/copilot/dist/extension.js
    status: inconclusive
    summary: "Audit error: Error code: 400 - {'error': {'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\", 'code': 400, 'metadata': {'provider_name': None, 'previous_errors': [{'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}]}}, 'user_id': 'user_2txanhjAQL38U5DhycxGDFv7iBq'}"
  - file: src/usr/share/applications/code-insiders-url-handler.desktop
    status: safe
    summary: Standard desktop file for URI handler; no risk.
  - file: "src/usr/share/code-insiders/resources/app/extensions/copilot/node_modules/@github/copilot/sdk/index.js"
    status: inconclusive
    summary: "Audit error: LLM returned error payload (no choices): {'code': 400, 'message': 'Provider returned error'}"
---

Cloning https://aur.archlinux.org/visual-studio-code-insiders-bin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-r_zsc4a5...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-r_zsc4a5
Analyzing visual-studio-code-insiders-bin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-r_zsc4a5) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments, a function definition (`package()`), and an `install` file reference. No code in global scope or `pkgver()` executes during the sourcing phase. The source array consists of a local filename (no URL) and Microsoft’s official download URLs for `.deb` archives, each with a valid SHA-256 checksum. There are no top-level command substitutions, no network requests to unexpected hosts, and no obfuscated or dangerous operations that would run during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`.
</details>
<summary>No malicious code execution during sourcing or fetching.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious code execution during sourcing or fetching.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, visual-studio-code-insiders-bin.install...
[0/3] Reviewing PKGBUILD, visual-studio-code-insiders-bin.install, visual-studio-code-insiders-bin.sh...
LLM auditresponse for visual-studio-code-insiders-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.install` file contains only standard terminal formatting functions (using `tput`) and two post-installation/upgrade hooks that print informational notes to the user about configuration file locations for Visual Studio Code Insiders. There are no network requests, file downloads, encoded/obfuscated commands, or any operations that could exfiltrate data, modify system files, or execute untrusted code. The content is purely cosmetic and informational, consistent with typical AUR packaging practices.
</details>
<summary>
No malicious code; purely informational notes</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, visual-studio-code-insiders-bin.sh...
+ Reviewed visual-studio-code-insiders-bin.install. Status: SAFE -- No malicious code; purely informational notes
LLM auditresponse for visual-studio-code-insiders-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher script for Visual Studio Code Insiders. It reads optional configuration files from the user's XDG config directory to allow overriding command-line flags, then executes the packaged binary at /usr/share/code-insiders/bin/code-insiders. No network requests, no obfuscated code, no unexpected file operations, and no system modifications outside the expected scope. The script follows normal AUR packaging practices and contains no malicious behavior.
</details>
<summary>Benign wrapper script, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed visual-studio-code-insiders-bin.sh. Status: SAFE -- Benign wrapper script, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The provided PKGBUILD is a standard Arch User Repository packaging file for the official Visual Studio Code Insiders binary distribution. It downloads a `.deb` package from Microsoft’s official download server (`vscode.download.prss.microsoft.com`), verifies the archive with a `sha256sum`, and extracts it using `bsdtar`. The `package()` function only performs routine tasks: installing a launcher shell script (with a checksum), creating symlinks, fixing desktop entries, and hardening the `chrome-sandbox` permissions. There is no evidence of obfuscated commands, unexpected network requests, or execution of untrusted downloaded code beyond the expected upstream source. The referenced `.install` script is not included in this file, but its presence alone is not a red flag. All operations are consistent with normal binary packaging practices.
</details>
<summary>Standard AUR PKGBUILD; no signs of malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; no signs of malicious behavior.
Reviewed all required files.
Deciding which files to review next...
Note: 5153 files available for selection; offering the 50 highest-priority to the model. 2565 lower-priority file(s) were not offered.
LLM response for file selection:
src/usr/share/applications/code-insiders-url-handler.desktop
src/usr/share/applications/code-insiders.desktop
src/usr/share/code-insiders/resources/app/extensions/git/dist/askpass.sh
src/usr/share/code-insiders/resources/app/extensions/git/dist/askpass-main.js
src/usr/share/code-insiders/resources/app/extensions/git/dist/git-editor.sh
src/usr/share/code-insiders/resources/app/extensions/git/dist/git-editor-main.js
src/usr/share/code-insiders/resources/app/extensions/git/dist/ssh-askpass.sh
src/usr/share/code-insiders/resources/app/extensions/copilot/dist/cli.js
src/usr/share/code-insiders/resources/app/extensions/copilot/dist/extension.js
src/usr/share/code-insiders/resources/app/extensions/copilot/node_modules/@github/copilot/sdk/index.js
Decided to review 10 additional files: src/usr/share/applications/code-insiders-url-handler.desktop, src/usr/share/applications/code-insiders.desktop, src/usr/share/code-insiders/resources/app/extensions/git/dist/askpass.sh, src/usr/share/code-insiders/resources/app/extensions/git/dist/askpass-main.js, src/usr/share/code-insiders/resources/app/extensions/git/dist/git-editor.sh, src/usr/share/code-insiders/resources/app/extensions/git/dist/git-editor-main.js, src/usr/share/code-insiders/resources/app/extensions/git/dist/ssh-askpass.sh, src/usr/share/code-insiders/resources/app/extensions/copilot/dist/cli.js, src/usr/share/code-insiders/resources/app/extensions/copilot/dist/extension.js, src/usr/share/code-insiders/resources/app/extensions/copilot/node_modules/@github/copilot/sdk/index.js
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/usr/share/applications/code-insiders.desktop...
[0/10] Reviewing src/usr/share/applications/code-insiders.desktop, src/usr/share/applications/code-insiders-url-handler.desktop...
[0/10] Reviewing src/usr/share/applications/code-insiders.desktop, src/usr/share/applications/code-insiders-url-handler.desktop, src/usr/share/code-insiders/resources/app/extensions/git/dist/askpass.sh...
[0/10] Reviewing src/usr/share/applications/code-insiders.desktop, src/usr/share/applications/code-insiders-url-handler.desktop, src/usr/share/code-insiders/resources/app/extensions/git/dist/askpass.sh, src/usr/share/code-insiders/resources/app/extensions/git/dist/askpass-main.js...
[0/10] Reviewing src/usr/share/applications/code-insiders.desktop, src/usr/share/applications/code-insiders-url-handler.desktop, src/usr/share/code-insiders/resources/app/extensions/git/dist/askpass.sh, src/usr/share/code-insiders/resources/app/extensions/git/dist/askpass-main.js, src/usr/share/code-insiders/resources/app/extensions/git/dist/git-editor-main.js...
[0/10] Reviewing src/usr/share/applications/code-insiders.desktop, src/usr/share/applications/code-insiders-url-handler.desktop, src/usr/share/code-insiders/resources/app/extensions/git/dist/askpass.sh, src/usr/share/code-insiders/resources/app/extensions/git/dist/askpass-main.js, src/usr/share/code-insiders/resources/app/extensions/git/dist/git-editor-main.js, src/usr/share/code-insiders/resources/app/extensions/git/dist/git-editor.sh...
[0/10] Reviewing src/usr/share/applications/code-insiders.desktop, src/usr/share/applications/code-insiders-url-handler.desktop, src/usr/share/code-insiders/resources/app/extensions/git/dist/askpass.sh, src/usr/share/code-insiders/resources/app/extensions/git/dist/askpass-main.js, src/usr/share/code-insiders/resources/app/extensions/git/dist/git-editor-main.js, src/usr/share/code-insiders/resources/app/extensions/git/dist/git-editor.sh, src/usr/share/code-insiders/resources/app/extensions/git/dist/ssh-askpass.sh...
[0/10] Reviewing src/usr/share/applications/code-insiders.desktop, src/usr/share/applications/code-insiders-url-handler.desktop, src/usr/share/code-insiders/resources/app/extensions/git/dist/askpass.sh, src/usr/share/code-insiders/resources/app/extensions/git/dist/askpass-main.js, src/usr/share/code-insiders/resources/app/extensions/git/dist/git-editor-main.js, src/usr/share/code-insiders/resources/app/extensions/git/dist/git-editor.sh, src/usr/share/code-insiders/resources/app/extensions/git/dist/ssh-askpass.sh, src/usr/share/code-insiders/resources/app/extensions/copilot/dist/cli.js...
[0/10] Reviewing src/usr/share/applications/code-insiders.desktop, src/usr/share/applications/code-insiders-url-handler.desktop, src/usr/share/code-insiders/resources/app/extensions/git/dist/askpass.sh, src/usr/share/code-insiders/resources/app/extensions/git/dist/askpass-main.js, src/usr/share/code-insiders/resources/app/extensions/git/dist/git-editor-main.js, src/usr/share/code-insiders/resources/app/extensions/git/dist/git-editor.sh, src/usr/share/code-insiders/resources/app/extensions/git/dist/ssh-askpass.sh, src/usr/share/code-insiders/resources/app/extensions/copilot/dist/cli.js, src/usr/share/code-insiders/resources/app/extensions/copilot/dist/extension.js...
[0/10] Reviewing src/usr/share/applications/code-insiders.desktop, src/usr/share/applications/code-insiders-url-handler.desktop, src/usr/share/code-insiders/resources/app/extensions/git/dist/askpass.sh, src/usr/share/code-insiders/resources/app/extensions/git/dist/askpass-main.js, src/usr/share/code-insiders/resources/app/extensions/git/dist/git-editor-main.js, src/usr/share/code-insiders/resources/app/extensions/git/dist/git-editor.sh, src/usr/share/code-insiders/resources/app/extensions/git/dist/ssh-askpass.sh, src/usr/share/code-insiders/resources/app/extensions/copilot/dist/cli.js, src/usr/share/code-insiders/resources/app/extensions/copilot/dist/extension.js, src/usr/share/code-insiders/resources/app/extensions/copilot/node_modules/@github/copilot/sdk/index.js...
LLM auditresponse for code-insiders.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Linux desktop entry file for "Visual Studio Code - Insiders". It defines the application's name, icon, categories, MIME types, and an action for opening a new empty window. The `Exec` lines run `/usr/share/code-insiders/code-insiders` with appropriate arguments, which is the expected binary path for this package. There is no obfuscated code, no network requests, no file operations outside of launching the application, and no system modifications. It follows standard freedesktop.org desktop entry specifications and contains no malicious or suspicious content.
</details>
<summary>Standard .desktop file, no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/usr/share/applications/code-insiders-url-handler.desktop, src/usr/share/code-insiders/resources/app/extensions/git/dist/askpass.sh, src/usr/share/code-insiders/resources/app/extensions/git/dist/askpass-main.js, src/usr/share/code-insiders/resources/app/extensions/git/dist/git-editor-main.js, src/usr/share/code-insiders/resources/app/extensions/git/dist/git-editor.sh, src/usr/share/code-insiders/resources/app/extensions/git/dist/ssh-askpass.sh, src/usr/share/code-insiders/resources/app/extensions/copilot/dist/cli.js, src/usr/share/code-insiders/resources/app/extensions/copilot/dist/extension.js, src/usr/share/code-insiders/resources/app/extensions/copilot/node_modules/@github/copilot/sdk/index.js...
+ Reviewed src/usr/share/applications/code-insiders.desktop. Status: SAFE -- Standard .desktop file, no security issues.
LLM auditresponse for git-editor.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a straightforward wrapper script used by Visual Studio Code to launch its git editor functionality. It sets the `ELECTRON_RUN_AS_NODE` environment variable and then runs the VS Code Node.js binary with the editor main script and any additional arguments. All variables (`VSCODE_GIT_EDITOR_NODE`, `VSCODE_GIT_EDITOR_MAIN`, `VSCODE_GIT_EDITOR_EXTRA_ARGS`) are expected to be set by the calling process (VS Code itself) and are not defined or manipulated within this script. There are no network requests, no obfuscation, no file system modifications, and no execution of untrusted content. This is entirely normal and expected upstream behavior.
</details>
<summary>Simple VS Code git editor wrapper script; no suspicious activity.</summary>
</security_assessment>

[2/10] Reviewing src/usr/share/applications/code-insiders-url-handler.desktop, src/usr/share/code-insiders/resources/app/extensions/git/dist/askpass.sh, src/usr/share/code-insiders/resources/app/extensions/git/dist/askpass-main.js, src/usr/share/code-insiders/resources/app/extensions/git/dist/git-editor-main.js, src/usr/share/code-insiders/resources/app/extensions/git/dist/ssh-askpass.sh, src/usr/share/code-insiders/resources/app/extensions/copilot/dist/cli.js, src/usr/share/code-insiders/resources/app/extensions/copilot/dist/extension.js, src/usr/share/code-insiders/resources/app/extensions/copilot/node_modules/@github/copilot/sdk/index.js...
+ Reviewed src/usr/share/code-insiders/resources/app/extensions/git/dist/git-editor.sh. Status: SAFE -- Simple VS Code git editor wrapper script; no suspicious activity.
LLM auditresponse for askpass-main.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a minified Node.js script that handles Git askpass for Visual Studio Code. It communicates over a Unix socket (from `VSCODE_GIT_IPC_HANDLE`) to forward credentials requests (SSH or HTTPS) and writes the response to a pipe (`VSCODE_GIT_ASKPASS_PIPE`). No external network requests, obfuscated code, or suspicious operations are present. All environment variables used are standard for VS Code's Git integration. The code is legitimate packaging of upstream functionality.
</details>
<summary>Standard VS Code Git askpass IPC helper.</summary>
</security_assessment>

LLM auditresponse for askpass.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard Git askpass helper used by Visual Studio Code. It creates a temporary named pipe via `mktemp`, sets environment variables (`ELECTRON_RUN_AS_NODE`, `VSCODE_GIT_ASKPASS_PIPE`, `VSCODE_GIT_ASKPASS_TYPE`), then executes the VS Code askpass Node.js main script using environment-supplied paths (`$VSCODE_GIT_ASKPASS_NODE`, `$VSCODE_GIT_ASKPASS_MAIN`). After execution, it reads the pipe content (the password/credential) and removes the pipe. All operations are confined to temporary files and environment variables provided by the parent VS Code process. There is no network activity, obfuscation, or unexpected system modification. The script performs exactly the function expected for Git credential prompting in VS Code.
</details>
<summary>Standard VS Code Git askpass helper, no malicious behavior.</summary>
</security_assessment>

[3/10] Reviewing src/usr/share/applications/code-insiders-url-handler.desktop, src/usr/share/code-insiders/resources/app/extensions/git/dist/askpass.sh, src/usr/share/code-insiders/resources/app/extensions/git/dist/git-editor-main.js, src/usr/share/code-insiders/resources/app/extensions/git/dist/ssh-askpass.sh, src/usr/share/code-insiders/resources/app/extensions/copilot/dist/cli.js, src/usr/share/code-insiders/resources/app/extensions/copilot/dist/extension.js, src/usr/share/code-insiders/resources/app/extensions/copilot/node_modules/@github/copilot/sdk/index.js...
+ Reviewed src/usr/share/code-insiders/resources/app/extensions/git/dist/askpass-main.js. Status: SAFE -- Standard VS Code Git askpass IPC helper.
[4/10] Reviewing src/usr/share/applications/code-insiders-url-handler.desktop, src/usr/share/code-insiders/resources/app/extensions/git/dist/git-editor-main.js, src/usr/share/code-insiders/resources/app/extensions/git/dist/ssh-askpass.sh, src/usr/share/code-insiders/resources/app/extensions/copilot/dist/cli.js, src/usr/share/code-insiders/resources/app/extensions/copilot/dist/extension.js, src/usr/share/code-insiders/resources/app/extensions/copilot/node_modules/@github/copilot/sdk/index.js...
+ Reviewed src/usr/share/code-insiders/resources/app/extensions/git/dist/askpass.sh. Status: SAFE -- Standard VS Code Git askpass helper, no malicious behavior.
LLM auditresponse for ssh-askpass.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard SSH askpass helper for Visual Studio Code's Git integration. It creates a temporary named pipe, runs the VS Code Git askpass node script with the user's input, then reads and cleans up the pipe. All operations are confined to temporary files and the execution of the expected VS Code binary. No suspicious network requests, obfuscated code, or unauthorized system modifications are present. The use of unquoted `$VSCODE_GIT_ASKPASS_EXTRA_ARGS` and `$*` is typical for such helper scripts and does not indicate malice.
</details>
<summary>
Standard SSH askpass helper, no malicious behavior.
</summary>
</security_assessment>

[5/10] Reviewing src/usr/share/applications/code-insiders-url-handler.desktop, src/usr/share/code-insiders/resources/app/extensions/git/dist/git-editor-main.js, src/usr/share/code-insiders/resources/app/extensions/copilot/dist/cli.js, src/usr/share/code-insiders/resources/app/extensions/copilot/dist/extension.js, src/usr/share/code-insiders/resources/app/extensions/copilot/node_modules/@github/copilot/sdk/index.js...
+ Reviewed src/usr/share/code-insiders/resources/app/extensions/git/dist/ssh-askpass.sh. Status: SAFE -- Standard SSH askpass helper, no malicious behavior.
LLM auditresponse for git-editor-main.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard VS Code IPC client used to communicate with the VS Code Git editor handler via a Unix socket. It reads the `VSCODE_GIT_IPC_HANDLE` environment variable (set by VS Code itself) and sends the commit message path to the local IPC endpoint. There are no external network requests, encoded payloads, system command execution, or file operations beyond sending a JSON message over a local socket. The minification and source map link are normal for a bundled JavaScript file. The trust placed in the environment variable is an upstream design choice and not evidence of a supply-chain attack. No malicious or unexpected behavior is present.
</details>
<summary>Standard VS Code Git IPC script, no malicious code.</summary>
</security_assessment>

[6/10] Reviewing src/usr/share/applications/code-insiders-url-handler.desktop, src/usr/share/code-insiders/resources/app/extensions/copilot/dist/cli.js, src/usr/share/code-insiders/resources/app/extensions/copilot/dist/extension.js, src/usr/share/code-insiders/resources/app/extensions/copilot/node_modules/@github/copilot/sdk/index.js...
+ Reviewed src/usr/share/code-insiders/resources/app/extensions/git/dist/git-editor-main.js. Status: SAFE -- Standard VS Code Git IPC script, no malicious code.
LLM audit error for cli.js: Audit error: Error code: 400 - {'error': {'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.", 'code': 400, 'metadata': {'provider_name': None, 'previous_errors': [{'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}]}}, 'user_id': 'user_2txanhjAQL38U5DhycxGDFv7iBq'}

[7/10] Reviewing src/usr/share/applications/code-insiders-url-handler.desktop, src/usr/share/code-insiders/resources/app/extensions/copilot/dist/extension.js, src/usr/share/code-insiders/resources/app/extensions/copilot/node_modules/@github/copilot/sdk/index.js...
? Reviewed src/usr/share/code-insiders/resources/app/extensions/copilot/dist/cli.js. Status: INCONCLUSIVE -- Audit error: Error code: 400 - {'error': {'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.", 'code': 400, 'metadata': {'provider_name': None, 'previous_errors': [{'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}]}}, 'user_id': 'user_2txanhjAQL38U5DhycxGDFv7iBq'}
LLM audit error for extension.js: Audit error: Error code: 400 - {'error': {'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.", 'code': 400, 'metadata': {'provider_name': None, 'previous_errors': [{'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}]}}, 'user_id': 'user_2txanhjAQL38U5DhycxGDFv7iBq'}

[8/10] Reviewing src/usr/share/applications/code-insiders-url-handler.desktop, src/usr/share/code-insiders/resources/app/extensions/copilot/node_modules/@github/copilot/sdk/index.js...
? Reviewed src/usr/share/code-insiders/resources/app/extensions/copilot/dist/extension.js. Status: INCONCLUSIVE -- Audit error: Error code: 400 - {'error': {'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.", 'code': 400, 'metadata': {'provider_name': None, 'previous_errors': [{'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}]}}, 'user_id': 'user_2txanhjAQL38U5DhycxGDFv7iBq'}
LLM auditresponse for code-insiders-url-handler.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file that registers the `vscode-insiders://` URI scheme to open Visual Studio Code - Insiders. The Exec line runs the official code-insiders binary with the `--open-url` flag, which is the expected upstream behavior for a URL handler. No malicious commands, network requests, obfuscation, or file operations are present. The file conforms to normal packaging practices and poses no security risk.
</details>
<summary>Standard desktop file for URI handler; no risk.</summary>
</security_assessment>

[9/10] Reviewing src/usr/share/code-insiders/resources/app/extensions/copilot/node_modules/@github/copilot/sdk/index.js...
+ Reviewed src/usr/share/applications/code-insiders-url-handler.desktop. Status: SAFE -- Standard desktop file for URI handler; no risk.
LLM audit error for index.js: Audit error: LLM returned error payload (no choices): {'code': 400, 'message': 'Provider returned error'}

[10/10] Reviewing ...
? Reviewed src/usr/share/code-insiders/resources/app/extensions/copilot/node_modules/@github/copilot/sdk/index.js. Status: INCONCLUSIVE -- Audit error: LLM returned error payload (no choices): {'code': 400, 'message': 'Provider returned error'}
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: Inconclusive -- REVIEW MANUALLY
(Inconclusive 3 files: cli.js, extension.js, index.js)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 27,567
  Completion Tokens: 8,255
  Total Tokens: 35,822
  Total Cost: $0.003967
  Execution Time: 394.17 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-visual-studio-code-insiders-bin.txt
Final Status: INCONCLUSIVE



Inconclusive Results:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-r_zsc4a5/src/usr/share/code-insiders/resources/app/extensions/copilot/dist/cli.js: [INCONCLUSIVE] Audit error: Error code: 400 - {'error': {'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.", 'code': 400, 'metadata': {'provider_name': None, 'previous_errors': [{'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554210 tokens (2554210 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}]}}, 'user_id': 'user_2txanhjAQL38U5DhycxGDFv7iBq'}

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-r_zsc4a5/src/usr/share/code-insiders/resources/app/extensions/copilot/dist/extension.js: [INCONCLUSIVE] Audit error: Error code: 400 - {'error': {'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.", 'code': 400, 'metadata': {'provider_name': None, 'previous_errors': [{'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4195032 tokens (4195032 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}]}}, 'user_id': 'user_2txanhjAQL38U5DhycxGDFv7iBq'}

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-r_zsc4a5/src/usr/share/code-insiders/resources/app/extensions/copilot/node_modules/@github/copilot/sdk/index.js: [INCONCLUSIVE] Audit error: LLM returned error payload (no choices): {'code': 400, 'message': 'Provider returned error'}
