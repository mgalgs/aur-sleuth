---
package: gitkraken
pkgver: 12.4.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 09f2e477a21d918155ca5fbfdf5bc833f8a3f124
prompt_tokens: 45374
completion_tokens: 5917
total_tokens: 51291
cost: 0.00439700688
execution_time: 83.36
files_reviewed: 10
files_skipped: 0
files_unauditable: 128
unpinned_sources: 0
date: 2026-08-22T03:01:47Z
file_verdicts:
  - file: eula.html
    status: safe
    summary: Static EULA HTML file, no executable or suspicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package, no malicious code found.
  - file: GitKraken.desktop
    status: safe
    summary: Standard desktop entry file, no malicious content.
  - file: gk-cli-url-handler.desktop
    status: safe
    summary: Standard desktop entry for URI scheme handling; no security issues.
  - file: gitkraken-url-handler.desktop
    status: safe
    summary: Standard desktop file for URI handler. No issues.
  - file: src/gitkraken/resources/bin/gitkraken.sh
    status: safe
    summary: Standard Electron launcher script, no malicious code.
  - file: src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/AskPass/AskPass.sh
    status: safe
    summary: Standard GitKraken askpass helper - no malicious behavior found.
  - file: src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/Rebase/GitSequenceEditor.sh
    status: safe
    summary: Simple wrapper script for GitKraken sequence editor; no malicious behavior.
  - file: src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/Rebase/GitSequenceEditorClient.js
    status: safe
    summary: Standard IPC client, no signs of malice.
  - file: src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/AskPass/AskPassClient.js
    status: safe
    summary: Legitimate credential helper, no malicious behavior.
---

Cloning https://aur.archlinux.org/gitkraken.git...
Cloned gitkraken
Analyzing gitkraken AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and function definitions at the top level. There are no command substitutions, `eval`, inline `curl|bash`, or other code that would execute when sourced by `makepkg --nobuild --nodeps --noprepare` or during `--printsrcinfo`. The `source` array fetches the official GitKraken binary tarball from the upstream API (`api.gitkraken.dev`) along with static helper files (desktop entries, EULA). All checksums are provided and pinned. Any potentially risky operations (e.g., `chmod 4755` on chrome-sandbox) are inside the `package()` function, which is not executed during this narrow gate. Running the two commands is safe.
</details>
<summary>Safe, no malicious top-level code or suspicious execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe, no malicious top-level code or suspicious execution.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, eula.html...
LLM auditresponse for eula.html:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `eula.html` is a static HTML document containing the GitKraken End User License Agreement. It contains no executable code, no scripts (JavaScript or otherwise), no network requests, no obfuscation, and no system commands. It is a plain text legal document formatted with HTML and CSS classes. There is no evidence of malicious or suspicious behavior. This file serves its intended purpose of displaying the EULA and poses no security risk.
</details>
<summary>Static EULA HTML file, no executable or suspicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed eula.html. Status: SAFE -- Static EULA HTML file, no executable or suspicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging conventions for a prebuilt proprietary application. It downloads the official x86_64 and aarch64 tarballs from the upstream GitKraken API (`api.gitkraken.dev`), provides SHA-256 checksums for all sources, and installs the application files (binaries, launcher scripts, desktop entries, icons, license) into the expected locations under `/opt/gitkraken` and `/usr`.  

The only notable operational detail is the explicit `chmod 4755` on `chrome-sandbox`, which is required for Electron’s SUID sandbox on Linux. The maintainer’s comment explains this is intentional and expected (matching upstream’s `.deb` packaging). No obfuscated code, unexpected network requests, dangerous commands (`eval`, `curl|bash`, etc.), or tampering with system files outside the package’s scope are present. All operations are confined to the package’s own directory tree, standard system paths (`/usr/bin`, `/usr/share`), and the upstream-provided archive.

No evidence of supply-chain injection or malicious behavior.
</details>
<summary>Standard AUR package, no malicious code found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package, no malicious code found.
Reviewed all required files.
Deciding which files to review next...
Note: 128 compiled/archived file(s) cannot be audited as text and were not reviewed (gitkraken-12.4.0-x86_64.tar.gz, src/gitkraken/snapshot_blob.bin, src/gitkraken/libGLESv2.so and 125 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 206 files available for selection; offering the 50 highest-priority to the model. 137 lower-priority file(s) were not offered.
LLM response for file selection:
GitKraken.desktop
gitkraken-url-handler.desktop
gk-cli-url-handler.desktop
src/gitkraken/resources/bin/gitkraken.sh
src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/AskPass/AskPass.sh
src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/Rebase/GitSequenceEditor.sh
src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/AskPass/AskPassClient.js
src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/Rebase/GitSequenceEditorClient.js
Decided to review 8 additional files: GitKraken.desktop, gitkraken-url-handler.desktop, gk-cli-url-handler.desktop, src/gitkraken/resources/bin/gitkraken.sh, src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/AskPass/AskPass.sh, src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/Rebase/GitSequenceEditor.sh, src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/AskPass/AskPassClient.js, src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/Rebase/GitSequenceEditorClient.js
Reviewing additional files...
Reviewing additional files...
[0/8] Reviewing gitkraken-url-handler.desktop...
[0/8] Reviewing gitkraken-url-handler.desktop, GitKraken.desktop...
[0/8] Reviewing gitkraken-url-handler.desktop, GitKraken.desktop, gk-cli-url-handler.desktop...
LLM auditresponse for GitKraken.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Linux desktop entry file (.desktop) for the GitKraken application. It contains only typical fields such as Name, Comment, Exec, Icon, Type, and Categories. The Exec path points to `/opt/gitkraken/gitkraken`, which is a conventional installation directory for AUR packages. There is no evidence of malicious code, network requests, obfuscation, or dangerous operations. The content aligns with normal packaging practices and presents no security concerns.
</details>
<summary>Standard desktop entry file, no malicious content.</summary>
</security_assessment>

[1/8] Reviewing gitkraken-url-handler.desktop, gk-cli-url-handler.desktop...
+ Reviewed GitKraken.desktop. Status: SAFE -- Standard desktop entry file, no malicious content.
[1/8] Reviewing gitkraken-url-handler.desktop, gk-cli-url-handler.desktop, src/gitkraken/resources/bin/gitkraken.sh...
LLM auditresponse for gk-cli-url-handler.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.desktop` entry that registers GitKraken as a handler for the `gk://` URI scheme. The `Exec` line launches `/usr/bin/gitkraken --uri=%U`, which is the intended upstream application behavior. There is no obfuscation, network activity, system modification, or any code execution beyond launching the legitimate application. This is a routine packaging file with no security concerns.
</details>
<summary>Standard desktop entry for URI scheme handling; no security issues.</summary>
</security_assessment>

[1/8] Reviewing gitkraken-url-handler.desktop, gk-cli-url-handler.desktop, src/gitkraken/resources/bin/gitkraken.sh, src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/AskPass/AskPass.sh...
[2/8] Reviewing gitkraken-url-handler.desktop, src/gitkraken/resources/bin/gitkraken.sh, src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/AskPass/AskPass.sh...
+ Reviewed gk-cli-url-handler.desktop. Status: SAFE -- Standard desktop entry for URI scheme handling; no security issues.
LLM auditresponse for gitkraken-url-handler.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file that registers GitKraken as a handler for `gitkraken://` URIs. The `Exec` line runs the package's own binary with the `--uri` argument, which is expected behavior for a URL handler. There is no obfuscated code, no network requests, no file operations beyond launching the application, and no deviation from normal packaging practices. The file is benign.
</details>
<summary>Standard desktop file for URI handler. No issues.</summary>
</security_assessment>

[3/8] Reviewing src/gitkraken/resources/bin/gitkraken.sh, src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/AskPass/AskPass.sh...
+ Reviewed gitkraken-url-handler.desktop. Status: SAFE -- Standard desktop file for URI handler. No issues.
[3/8] Reviewing src/gitkraken/resources/bin/gitkraken.sh, src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/AskPass/AskPass.sh, src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/Rebase/GitSequenceEditor.sh...
LLM auditresponse for gitkraken.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard launcher script for the GitKraken application. It resolves the script's own symlink path, constructs paths to the bundled Node.js CLI entry point (`cli.js`) and the main Electron binary (`gitkraken`), then invokes the binary with `ELECTRON_RUN_AS_NODE=1` to run the CLI script with any provided arguments. This is a typical pattern for Electron-based applications that offer a command-line interface. There are no network requests, obfuscated code, file modifications outside the application's scope, or any other suspicious operations. The script only executes the package's own declared resources and passes through arguments. No security concerns.
</details>
<summary>
Standard Electron launcher script, no malicious code.
</summary>
</security_assessment>

[4/8] Reviewing src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/AskPass/AskPass.sh, src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/Rebase/GitSequenceEditor.sh...
+ Reviewed src/gitkraken/resources/bin/gitkraken.sh. Status: SAFE -- Standard Electron launcher script, no malicious code.
[4/8] Reviewing src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/AskPass/AskPass.sh, src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/Rebase/GitSequenceEditor.sh, src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/AskPass/AskPassClient.js...
LLM auditresponse for AskPass.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a helper script for GitKraken's askpass mechanism. It sets `ELECTRON_RUN_AS_NODE=1` and executes the GitKraken binary with the askpass script path, the parent PID, and any forwarded arguments. This is standard upstream functionality for credential prompting and does not perform any network requests, file exfiltration, code downloads, or obfuscated operations. No signs of a supply-chain attack or malicious behavior are present.
</details>
<summary>Standard GitKraken askpass helper - no malicious behavior found.</summary>
</security_assessment>

[5/8] Reviewing src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/Rebase/GitSequenceEditor.sh, src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/AskPass/AskPassClient.js...
+ Reviewed src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/AskPass/AskPass.sh. Status: SAFE -- Standard GitKraken askpass helper - no malicious behavior found.
[5/8] Reviewing src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/Rebase/GitSequenceEditor.sh, src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/AskPass/AskPassClient.js, src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/Rebase/GitSequenceEditorClient.js...
LLM auditresponse for GitSequenceEditor.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple shell wrapper that sets an environment variable (`ELECTRON_RUN_AS_NODE=1`) and launches the GitKraken binary with a provided script path and arguments. It contains no suspicious commands (no `curl`, `wget`, `eval`, `base64`, network requests, or file exfiltration). The behavior is consistent with a helper script for an Electron-based application to run a script as a Node.js process. There is no evidence of malicious or injected code.
</details>
<summary>Simple wrapper script for GitKraken sequence editor; no malicious behavior.</summary>
</security_assessment>

[6/8] Reviewing src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/AskPass/AskPassClient.js, src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/Rebase/GitSequenceEditorClient.js...
+ Reviewed src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/Rebase/GitSequenceEditor.sh. Status: SAFE -- Simple wrapper script for GitKraken sequence editor; no malicious behavior.
LLM auditresponse for GitSequenceEditorClient.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an IPC client for GitKraken's local socket service. It connects exclusively to 127.0.0.1 on a port specified by an environment variable, performs a simple handshake, sends a JSON request with a file path from the command line, and exits based on the response. No external network connections, no code download or execution, no obfuscation, no file system access beyond the typical process arguments. The behavior is entirely consistent with the intended application functionality of a Git sequence editor client.
</details>
<summary>Standard IPC client, no signs of malice.</summary>
</security_assessment>

[7/8] Reviewing src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/AskPass/AskPassClient.js...
+ Reviewed src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/Rebase/GitSequenceEditorClient.js. Status: SAFE -- Standard IPC client, no signs of malice.
LLM auditresponse for AskPassClient.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a legitimate credential helper script for the GitKraken desktop application. It communicates only with a local socket (`127.0.0.1`) to request credentials, spawns `gpg` locally with a passphrase for GPG operations, and logs debug information to stderr or a local file. No external network requests, obfuscated code, or suspicious file operations are present. All behavior is consistent with the intended functionality of an ask‑pass helper.
</details>
<summary>Legitimate credential helper, no malicious behavior.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed src/gitkraken/resources/app.asar.unpacked/src/js/redux/domain/AskPass/AskPassClient.js. Status: SAFE -- Legitimate credential helper, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 45,374
  Completion Tokens: 5,917
  Total Tokens: 51,291
  Total Cost: $0.004397
  Execution Time: 83.36 seconds

Final Status: SAFE


No issues found.
