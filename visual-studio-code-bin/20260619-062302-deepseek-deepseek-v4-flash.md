---
package: visual-studio-code-bin
pkgver: 1.125.0
pkgrel: 1
result: inconclusive
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 5790943c1b39200ecdf449522971aa7db90ade4a
prompt_tokens: 27618
completion_tokens: 7098
total_tokens: 34716
cost: 0.00376326
execution_time: 118.6
files_reviewed: 13
files_skipped: 0
date: 2026-06-19T06:23:01Z
file_verdicts:
  - file: visual-studio-code-bin.install
    status: safe
    summary: Harmless install script with only informational output.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD – safe, no evidence of malicious code.
  - file: visual-studio-code-bin.sh
    status: safe
    summary: Standard wrapper; no supply-chain attack indicators
  - file: src/usr/share/code/resources/app/extensions/git/dist/ssh-askpass.sh
    status: safe
    summary: Standard VS Code Git SSH askpass helper; no malicious behavior.
  - file: src/usr/share/code/resources/app/extensions/git/dist/git-editor.sh
    status: safe
    summary: Standard VS Code Git editor wrapper, no suspicious activity.
  - file: src/usr/share/applications/code.desktop
    status: safe
    summary: A standard desktop entry file with no malicious content.
  - file: src/usr/share/code/resources/app/extensions/git/dist/askpass.sh
    status: safe
    summary: Standard VS Code Git askpass helper, no malicious behavior.
  - file: src/usr/share/code/resources/app/extensions/git/dist/askpass-empty.sh
    status: safe
    summary: Harmless script that prints an empty string.
  - file: src/usr/share/code/resources/app/extensions/git/dist/ssh-askpass-empty.sh
    status: safe
    summary: A safe, simple script returning an empty string.
  - file: src/usr/share/applications/code-url-handler.desktop
    status: safe
    summary: Standard desktop entry for VS Code URL handler.
  - file: src/usr/share/code/resources/app/extensions/copilot/dist/cli.js
    status: inconclusive
    summary: "Audit error: Error code: 400 - {'error': {'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\", 'code': 400, 'metadata': {'provider_name': None, 'previous_errors': [{'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}]}}, 'user_id': 'user_2txanhjAQL38U5DhycxGDFv7iBq'}"
  - file: src/usr/share/code/resources/app/extensions/git/dist/git-editor-empty.sh
    status: safe
    summary: Empty shell script, no instructions or risk.
  - file: src/usr/share/code/resources/app/extensions/copilot/dist/extension.js
    status: inconclusive
    summary: "Audit error: Error code: 400 - {'error': {'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\", 'code': 400, 'metadata': {'provider_name': None, 'previous_errors': [{'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}, {'code': 400, 'message': \"This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.\"}]}}, 'user_id': 'user_2txanhjAQL38U5DhycxGDFv7iBq'}"
---

Cloning https://aur.archlinux.org/visual-studio-code-bin.git to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-tajsco33...
Cloned repository to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-tajsco33
Analyzing visual-studio-code-bin AUR package (working in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-tajsco33) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and function definitions. No top-level command substitutions, `pkgver()` function, or other code that would execute during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. Source URLs point to the official Microsoft domain, and the included local script (`visual-studio-code-bin.sh`) is a source file that will be fetched but not executed during these operations. No obfuscated or suspicious code is present.
</details>
<summary>No executable code at top-level; sources from official domain.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No executable code at top-level; sources from official domain.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing visual-studio-code-bin.install...
[0/3] Reviewing visual-studio-code-bin.install, visual-studio-code-bin.sh...
[0/3] Reviewing visual-studio-code-bin.install, visual-studio-code-bin.sh, PKGBUILD...
LLM auditresponse for visual-studio-code-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux install script (`.install` file) for the `visual-studio-code-bin` AUR package. It defines helper functions for colored output and two post-installation hooks. The `post_install` function prints a note directing users to place custom flags in `~/.config/code-flags.conf`. The `post_upgrade` simply calls `post_install`. There are no network requests, no file writes or modifications, no evaluation of external code, and no obfuscation. The script performs only informational output, which is normal and expected for AUR package install scripts. No security issues are present.
</details>
<summary>
Harmless install script with only informational output.
</summary>
</security_assessment>

[1/3] Reviewing visual-studio-code-bin.sh, PKGBUILD...
+ Reviewed visual-studio-code-bin.install. Status: SAFE -- Harmless install script with only informational output.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices. It downloads the official VS Code binary from Microsoft's own update server (`update.code.visualstudio.com`) with hardcoded checksums for integrity. All operations in `package()` (archive extraction, symlinks, desktop entry fix, setuid removal) are legitimate packaging steps. There are no suspicious network requests, obfuscated commands, or data exfiltration. The launcher script (`visual-studio-code-bin.sh`) is not shown, but the PKGBUILD itself contains no red flags.
</details>
<summary>Clean PKGBUILD – safe, no evidence of malicious code.</summary>
</security_assessment>

[2/3] Reviewing visual-studio-code-bin.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD – safe, no evidence of malicious code.
LLM auditresponse for visual-studio-code-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard wrapper that reads user-specified command-line flags from `~/.config/code-flags.conf` and passes them to the official VSCode binary. The configuration file is parsed using `sed` and `tr` to strip comments and join lines; the resulting string is then used in the `exec` line. There are no network requests, obfuscated code, eval of arbitrary input, or any operations that deviate from normal packaging practices. The unquoted expansion of `$CODE_USER_FLAGS` on the `exec` line is a deliberate design that allows word splitting for flags; since the user controls the config file, this is not a supply-chain vector. No evidence of malicious behavior is present.
</details>
<summary>Standard wrapper; no supply-chain attack indicators</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed visual-studio-code-bin.sh. Status: SAFE -- Standard wrapper; no supply-chain attack indicators
Reviewed all required files.
Deciding which files to review next...
Note: 5018 files available for selection; offering the 50 highest-priority to the model. 2569 lower-priority file(s) were not offered.
LLM response for file selection:
src/usr/share/applications/code-url-handler.desktop
src/usr/share/applications/code.desktop
src/usr/share/code/resources/app/extensions/git/dist/askpass.sh
src/usr/share/code/resources/app/extensions/git/dist/askpass-empty.sh
src/usr/share/code/resources/app/extensions/git/dist/git-editor.sh
src/usr/share/code/resources/app/extensions/git/dist/git-editor-empty.sh
src/usr/share/code/resources/app/extensions/git/dist/ssh-askpass.sh
src/usr/share/code/resources/app/extensions/git/dist/ssh-askpass-empty.sh
src/usr/share/code/resources/app/extensions/copilot/dist/cli.js
src/usr/share/code/resources/app/extensions/copilot/dist/extension.js
Decided to review 10 additional files: src/usr/share/applications/code-url-handler.desktop, src/usr/share/applications/code.desktop, src/usr/share/code/resources/app/extensions/git/dist/askpass.sh, src/usr/share/code/resources/app/extensions/git/dist/askpass-empty.sh, src/usr/share/code/resources/app/extensions/git/dist/git-editor.sh, src/usr/share/code/resources/app/extensions/git/dist/git-editor-empty.sh, src/usr/share/code/resources/app/extensions/git/dist/ssh-askpass.sh, src/usr/share/code/resources/app/extensions/git/dist/ssh-askpass-empty.sh, src/usr/share/code/resources/app/extensions/copilot/dist/cli.js, src/usr/share/code/resources/app/extensions/copilot/dist/extension.js
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/usr/share/applications/code-url-handler.desktop...
[0/10] Reviewing src/usr/share/applications/code-url-handler.desktop, src/usr/share/applications/code.desktop...
[0/10] Reviewing src/usr/share/applications/code-url-handler.desktop, src/usr/share/applications/code.desktop, src/usr/share/code/resources/app/extensions/git/dist/askpass-empty.sh...
[0/10] Reviewing src/usr/share/applications/code-url-handler.desktop, src/usr/share/applications/code.desktop, src/usr/share/code/resources/app/extensions/git/dist/askpass-empty.sh, src/usr/share/code/resources/app/extensions/git/dist/askpass.sh...
[0/10] Reviewing src/usr/share/applications/code-url-handler.desktop, src/usr/share/applications/code.desktop, src/usr/share/code/resources/app/extensions/git/dist/askpass-empty.sh, src/usr/share/code/resources/app/extensions/git/dist/askpass.sh, src/usr/share/code/resources/app/extensions/git/dist/ssh-askpass.sh...
[0/10] Reviewing src/usr/share/applications/code-url-handler.desktop, src/usr/share/applications/code.desktop, src/usr/share/code/resources/app/extensions/git/dist/askpass-empty.sh, src/usr/share/code/resources/app/extensions/git/dist/askpass.sh, src/usr/share/code/resources/app/extensions/git/dist/ssh-askpass.sh, src/usr/share/code/resources/app/extensions/git/dist/git-editor.sh...
[0/10] Reviewing src/usr/share/applications/code-url-handler.desktop, src/usr/share/applications/code.desktop, src/usr/share/code/resources/app/extensions/git/dist/askpass-empty.sh, src/usr/share/code/resources/app/extensions/git/dist/askpass.sh, src/usr/share/code/resources/app/extensions/git/dist/ssh-askpass.sh, src/usr/share/code/resources/app/extensions/git/dist/git-editor.sh, src/usr/share/code/resources/app/extensions/git/dist/git-editor-empty.sh...
[0/10] Reviewing src/usr/share/applications/code-url-handler.desktop, src/usr/share/applications/code.desktop, src/usr/share/code/resources/app/extensions/git/dist/askpass-empty.sh, src/usr/share/code/resources/app/extensions/git/dist/askpass.sh, src/usr/share/code/resources/app/extensions/git/dist/ssh-askpass.sh, src/usr/share/code/resources/app/extensions/git/dist/git-editor.sh, src/usr/share/code/resources/app/extensions/git/dist/git-editor-empty.sh, src/usr/share/code/resources/app/extensions/git/dist/ssh-askpass-empty.sh...
[0/10] Reviewing src/usr/share/applications/code-url-handler.desktop, src/usr/share/applications/code.desktop, src/usr/share/code/resources/app/extensions/git/dist/askpass-empty.sh, src/usr/share/code/resources/app/extensions/git/dist/askpass.sh, src/usr/share/code/resources/app/extensions/git/dist/ssh-askpass.sh, src/usr/share/code/resources/app/extensions/git/dist/git-editor.sh, src/usr/share/code/resources/app/extensions/git/dist/git-editor-empty.sh, src/usr/share/code/resources/app/extensions/git/dist/ssh-askpass-empty.sh, src/usr/share/code/resources/app/extensions/copilot/dist/cli.js...
[0/10] Reviewing src/usr/share/applications/code-url-handler.desktop, src/usr/share/applications/code.desktop, src/usr/share/code/resources/app/extensions/git/dist/askpass-empty.sh, src/usr/share/code/resources/app/extensions/git/dist/askpass.sh, src/usr/share/code/resources/app/extensions/git/dist/ssh-askpass.sh, src/usr/share/code/resources/app/extensions/git/dist/git-editor.sh, src/usr/share/code/resources/app/extensions/git/dist/git-editor-empty.sh, src/usr/share/code/resources/app/extensions/git/dist/ssh-askpass-empty.sh, src/usr/share/code/resources/app/extensions/copilot/dist/cli.js, src/usr/share/code/resources/app/extensions/copilot/dist/extension.js...
LLM auditresponse for ssh-askpass.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard VS Code Git askpass helper script. It creates a temporary file, invokes a Node.js process using environment variables set by the application, then reads and removes the temporary file. The script does not perform any network requests, download or execute code from unexpected sources, exfiltrate data, or use obfuscation. All operations are consistent with the intended upstream functionality of prompting for SSH passphrases in VS Code's Git integration.
</details>
<summary>
Standard VS Code Git SSH askpass helper; no malicious behavior.</summary>
</security_assessment>

[1/10] Reviewing src/usr/share/applications/code-url-handler.desktop, src/usr/share/applications/code.desktop, src/usr/share/code/resources/app/extensions/git/dist/askpass-empty.sh, src/usr/share/code/resources/app/extensions/git/dist/askpass.sh, src/usr/share/code/resources/app/extensions/git/dist/git-editor.sh, src/usr/share/code/resources/app/extensions/git/dist/git-editor-empty.sh, src/usr/share/code/resources/app/extensions/git/dist/ssh-askpass-empty.sh, src/usr/share/code/resources/app/extensions/copilot/dist/cli.js, src/usr/share/code/resources/app/extensions/copilot/dist/extension.js...
+ Reviewed src/usr/share/code/resources/app/extensions/git/dist/ssh-askpass.sh. Status: SAFE -- Standard VS Code Git SSH askpass helper; no malicious behavior.
LLM auditresponse for git-editor.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard wrapper script used by Visual Studio Code to act as a Git editor. It sets an environment variable `ELECTRON_RUN_AS_NODE` to `1` and then executes the VS Code Node.js binary with its main editor script and any extra arguments, passing through the Git-provided arguments (`"$@"`).  

All variables (`$VSCODE_GIT_EDITOR_NODE`, `$VSCODE_GIT_EDITOR_MAIN`, `$VSCODE_GIT_EDITOR_EXTRA_ARGS`) are expected to be set by the VS Code environment. There is no network access, no obfuscated or encoded commands, no file exfiltration, and no execution of untrusted or unexpected code. The script does exactly what it advertises: launch VS Code's Git editor.  

This is ordinary packaging/application behavior with zero malicious indicators.
</details>
<summary>Standard VS Code Git editor wrapper, no suspicious activity.</summary>
</security_assessment>

[2/10] Reviewing src/usr/share/applications/code-url-handler.desktop, src/usr/share/applications/code.desktop, src/usr/share/code/resources/app/extensions/git/dist/askpass-empty.sh, src/usr/share/code/resources/app/extensions/git/dist/askpass.sh, src/usr/share/code/resources/app/extensions/git/dist/git-editor-empty.sh, src/usr/share/code/resources/app/extensions/git/dist/ssh-askpass-empty.sh, src/usr/share/code/resources/app/extensions/copilot/dist/cli.js, src/usr/share/code/resources/app/extensions/copilot/dist/extension.js...
+ Reviewed src/usr/share/code/resources/app/extensions/git/dist/git-editor.sh. Status: SAFE -- Standard VS Code Git editor wrapper, no suspicious activity.
LLM auditresponse for code.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.desktop` entry for Visual Studio Code. It defines the application name, icon, categories, MIME types, and execution command (`/usr/share/code/code %F`). The `Exec` line points to the expected binary installed by the package. There is no obfuscated code, no network requests, no file operations beyond normal desktop entry registration, and no deviation from standard packaging practices. The desktop action for opening a new empty window is also typical. No security issues detected.
</details>
<summary>A standard desktop entry file with no malicious content.</summary>
</security_assessment>

[3/10] Reviewing src/usr/share/applications/code-url-handler.desktop, src/usr/share/code/resources/app/extensions/git/dist/askpass-empty.sh, src/usr/share/code/resources/app/extensions/git/dist/askpass.sh, src/usr/share/code/resources/app/extensions/git/dist/git-editor-empty.sh, src/usr/share/code/resources/app/extensions/git/dist/ssh-askpass-empty.sh, src/usr/share/code/resources/app/extensions/copilot/dist/cli.js, src/usr/share/code/resources/app/extensions/copilot/dist/extension.js...
+ Reviewed src/usr/share/applications/code.desktop. Status: SAFE -- A standard desktop entry file with no malicious content.
LLM auditresponse for askpass.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard component of Visual Studio Code's Git credential handling. It creates a temporary file, runs an internal VS Code Node.js script (specified via environment variables `VSCODE_GIT_ASKPASS_NODE` and `VSCODE_GIT_ASKPASS_MAIN`) to prompt for credentials, then outputs the result from the temp file and removes it. The script does not make network requests, download or execute code from external sources, modify system files, or exfiltrate data. All operations are confined to a temporary file used only for this credential prompt, which is immediately cleaned up. There is no obfuscation, encoded commands, or deviation from expected behavior for a Git askpass helper integrated with VS Code.
</details>
<summary>Standard VS Code Git askpass helper, no malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing src/usr/share/applications/code-url-handler.desktop, src/usr/share/code/resources/app/extensions/git/dist/askpass-empty.sh, src/usr/share/code/resources/app/extensions/git/dist/git-editor-empty.sh, src/usr/share/code/resources/app/extensions/git/dist/ssh-askpass-empty.sh, src/usr/share/code/resources/app/extensions/copilot/dist/cli.js, src/usr/share/code/resources/app/extensions/copilot/dist/extension.js...
+ Reviewed src/usr/share/code/resources/app/extensions/git/dist/askpass.sh. Status: SAFE -- Standard VS Code Git askpass helper, no malicious behavior.
LLM auditresponse for askpass-empty.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script simply outputs an empty string using `echo ''`. There are no dangerous commands, no network requests, no file operations, no obfuscated code, and no deviation from its apparent purpose as a harmless utility. It is a standard pattern used to suppress password prompts in automated environments (e.g., setting `SSH_ASKPASS` to this script to provide an empty password). No security concerns.
</details>
<summary>Harmless script that prints an empty string.</summary>
</security_assessment>

[5/10] Reviewing src/usr/share/applications/code-url-handler.desktop, src/usr/share/code/resources/app/extensions/git/dist/git-editor-empty.sh, src/usr/share/code/resources/app/extensions/git/dist/ssh-askpass-empty.sh, src/usr/share/code/resources/app/extensions/copilot/dist/cli.js, src/usr/share/code/resources/app/extensions/copilot/dist/extension.js...
+ Reviewed src/usr/share/code/resources/app/extensions/git/dist/askpass-empty.sh. Status: SAFE -- Harmless script that prints an empty string.
LLM auditresponse for ssh-askpass-empty.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ssh-askpass-empty.sh` is a minimal shell script that outputs an empty string. It is intended to act as an SSH_ASKPASS program, returning a blank password (e.g., for use with key-only or password-less SSH connections). There is no obfuscation, no network activity, no dangerous command execution, and no deviation from its stated purpose. No security issues are present.
</details>
<summary>A safe, simple script returning an empty string.</summary>
</security_assessment>

[6/10] Reviewing src/usr/share/applications/code-url-handler.desktop, src/usr/share/code/resources/app/extensions/git/dist/git-editor-empty.sh, src/usr/share/code/resources/app/extensions/copilot/dist/cli.js, src/usr/share/code/resources/app/extensions/copilot/dist/extension.js...
+ Reviewed src/usr/share/code/resources/app/extensions/git/dist/ssh-askpass-empty.sh. Status: SAFE -- A safe, simple script returning an empty string.
LLM auditresponse for code-url-handler.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file that registers Visual Studio Code as a handler for `vscode://` URIs. The `Exec` line invokes the VS Code binary with the `--open-url` flag and the passed URI. There is no embedded malicious behavior: no network requests, obfuscation, or unexpected commands. The file conforms to the expected packaging practice for an application that supports custom URL schemes.
</details>
<summary>Standard desktop entry for VS Code URL handler.</summary>
</security_assessment>

[7/10] Reviewing src/usr/share/code/resources/app/extensions/git/dist/git-editor-empty.sh, src/usr/share/code/resources/app/extensions/copilot/dist/cli.js, src/usr/share/code/resources/app/extensions/copilot/dist/extension.js...
+ Reviewed src/usr/share/applications/code-url-handler.desktop. Status: SAFE -- Standard desktop entry for VS Code URL handler.
LLM audit error for cli.js: Audit error: Error code: 400 - {'error': {'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.", 'code': 400, 'metadata': {'provider_name': None, 'previous_errors': [{'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}]}}, 'user_id': 'user_2txanhjAQL38U5DhycxGDFv7iBq'}

LLM auditresponse for git-editor-empty.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains only a shebang line (`#!/bin/sh`) and no further commands. It does nothing when executed. There is no code to evaluate, no network activity, no file manipulation, and no potential for supply-chain attack. This is a minimal dummy script, likely intended for use as a non-interactive git editor.
</details>
<summary>Empty shell script, no instructions or risk.</summary>
</security_assessment>

[8/10] Reviewing src/usr/share/code/resources/app/extensions/git/dist/git-editor-empty.sh, src/usr/share/code/resources/app/extensions/copilot/dist/extension.js...
? Reviewed src/usr/share/code/resources/app/extensions/copilot/dist/cli.js. Status: INCONCLUSIVE -- Audit error: Error code: 400 - {'error': {'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.", 'code': 400, 'metadata': {'provider_name': None, 'previous_errors': [{'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}]}}, 'user_id': 'user_2txanhjAQL38U5DhycxGDFv7iBq'}
[9/10] Reviewing src/usr/share/code/resources/app/extensions/copilot/dist/extension.js...
+ Reviewed src/usr/share/code/resources/app/extensions/git/dist/git-editor-empty.sh. Status: SAFE -- Empty shell script, no instructions or risk.
LLM audit error for extension.js: Audit error: Error code: 400 - {'error': {'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.", 'code': 400, 'metadata': {'provider_name': None, 'previous_errors': [{'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}]}}, 'user_id': 'user_2txanhjAQL38U5DhycxGDFv7iBq'}

[10/10] Reviewing ...
? Reviewed src/usr/share/code/resources/app/extensions/copilot/dist/extension.js. Status: INCONCLUSIVE -- Audit error: Error code: 400 - {'error': {'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.", 'code': 400, 'metadata': {'provider_name': None, 'previous_errors': [{'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}]}}, 'user_id': 'user_2txanhjAQL38U5DhycxGDFv7iBq'}
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: Inconclusive -- REVIEW MANUALLY
(Inconclusive 2 files: cli.js, extension.js)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 27,618
  Completion Tokens: 7,098
  Total Tokens: 34,716
  Total Cost: $0.003763
  Execution Time: 118.60 seconds
Full audit report can be found in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-visual-studio-code-bin.txt
Final Status: INCONCLUSIVE



Inconclusive Results:

/tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-tajsco33/src/usr/share/code/resources/app/extensions/copilot/dist/cli.js: [INCONCLUSIVE] Audit error: Error code: 400 - {'error': {'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.", 'code': 400, 'metadata': {'provider_name': None, 'previous_errors': [{'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 2554208 tokens (2554208 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}]}}, 'user_id': 'user_2txanhjAQL38U5DhycxGDFv7iBq'}

/tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-tajsco33/src/usr/share/code/resources/app/extensions/copilot/dist/extension.js: [INCONCLUSIVE] Audit error: Error code: 400 - {'error': {'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically.", 'code': 400, 'metadata': {'provider_name': None, 'previous_errors': [{'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}, {'code': 400, 'message': "This endpoint's maximum context length is 1048576 tokens. However, you requested about 4356896 tokens (4356896 of text input). Please reduce the length of either one, or use the context-compression plugin to compress your prompt automatically."}]}}, 'user_id': 'user_2txanhjAQL38U5DhycxGDFv7iBq'}
