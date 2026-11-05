---
package: vscodium-code-bin
pkgver: 1.143.17232
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 21160
completion_tokens: 3562
total_tokens: 24722
cost: 0.002573844
execution_time: 24.42
files_reviewed: 7
files_skipped: 2
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-05T20:05:41Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard packaging with no malicious indicators.
  - file: .gitignore
    status: safe
    summary: A standard Git ignore file with no security concerns.
  - file: code-url-handler.desktop
    status: safe
    summary: Standard desktop file for URL handler, no issues.
  - file: .SRCINFO
    status: safe
    summary: No malicious behavior; standard AUR metadata for VSCodium binary package.
  - file: vscode.svg
    status: skipped
    summary: "Skipping binary file: vscode.svg"
  - file: vscode_1024.png
    status: skipped
    summary: "Skipping binary file: vscode_1024.png"
  - file: code.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: vscodium-code-bin.install
    status: safe
    summary: Standard cache refresh hooks only; no malicious behavior detected.
  - file: codium
    status: safe
    summary: Standard VSCodium launcher, no malicious behavior.
---

Materializing vscodium-code-bin from local mirror...
Materialized vscodium-code-bin
Analyzing vscodium-code-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments (pkgname, pkgver, source, sha256sums, etc.), array definitions, and function stubs (prepare, package). No top-level command substitutions, eval, or any code that executes during sourcing. All content is static data. Running `makepkg --printsrcinfo` will simply read these variables and output metadata; no malicious side effects are possible at this stage.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, .gitignore...
[0/9] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a repackaged binary application. It downloads a specific versioned tarball from VSCodium's official GitHub releases with a pinned SHA-256 checksum, extracts it, and installs files alongside local desktop integration files and a wrapper script. No unexpected network requests (curl, wget, git pull) are made at build time beyond the declared source. There is no use of obfuscated commands, eval, or base64-encoded blobs. The SKIP checksums on the local source files are normal for files that are not downloaded. The sed patching and file replacements are part of the stated rebranding purpose and do not indicate malicious intent. No evidence of exfiltration, backdoors, or supply-chain attack was found.
</details>
<evidence></evidence>
<summary>Standard packaging with no malicious indicators.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard packaging with no malicious indicators.
[1/9] Reviewing .SRCINFO, .gitignore, code-url-handler.desktop...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` file for an AUR package repository. It lists common patterns such as backup files (`*.bak`), built package archives (`*.pkg.tar.zst`, `*.tar.gz`), build directories (`src/`, `pkg/`), macOS metadata (`.DS_Store`), and editor swap/backup files (`*.swp`, `*~`). These patterns are harmless and serve only to prevent unintended version control commits. No commands, network requests, or any executable content are present.
</details>
<evidence></evidence>
<summary>A standard Git ignore file with no security concerns.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, code-url-handler.desktop...
+ Reviewed .gitignore. Status: SAFE -- A standard Git ignore file with no security concerns.
[2/9] Reviewing .SRCINFO, code-url-handler.desktop, code.desktop...
LLM auditresponse for code-url-handler.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .desktop file that registers VSCodium as a handler for URL schemes (vscodium:// and vscode://). The Exec line runs `codium --open-url %U`, which is the normal way for a code editor to handle URL-based file opening (e.g., opening a file via a link in a browser). There is no malicious behavior: no network requests, no data exfiltration, no obfuscated commands, and no deviation from expected desktop entry specifications. The file is purely declarative and serves its intended purpose.</details>
<evidence></evidence>
<summary>Standard desktop file for URL handler, no issues.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, code-url-handler.desktop, code.desktop, codium...
[3/9] Reviewing .SRCINFO, code.desktop, codium...
+ Reviewed code-url-handler.desktop. Status: SAFE -- Standard desktop file for URL handler, no issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard AUR package metadata for a repackaged VSCodium binary. The main source is downloaded from the official VSCodium GitHub releases URL with a pinned version and a specific SHA-256 checksum, which is normal for a prebuilt binary package. The remaining SKIP checksums apply to local packaging auxiliary files (launcher script, desktop entries, icons), which is a common and acceptable practice rather than a security concern.

No suspicious network endpoints, encoded commands, or unexpected file operations are present in this file. The `url` pointing to a personal packaging repository is consistent with a user-maintained AUR package and is not itself evidence of malice. Based on this metadata alone, the package appears to follow ordinary AUR packaging conventions.
</details>
<evidence>
</evidence>
<summary>
No malicious behavior; standard AUR metadata for VSCodium binary package.</summary>
</security_assessment>

[3/9] Reviewing .SRCINFO, code.desktop, codium, vscode.svg...
[4/9] Reviewing code.desktop, codium, vscode.svg...
+ Reviewed .SRCINFO. Status: SAFE -- No malicious behavior; standard AUR metadata for VSCodium binary package.
[5/9] Reviewing code.desktop, codium...
! Reviewed vscode.svg. Status: SKIPPED -- Skipping binary file: vscode.svg
[5/9] Reviewing code.desktop, codium, vscode_1024.png...
[6/9] Reviewing code.desktop, codium...
! Reviewed vscode_1024.png. Status: SKIPPED -- Skipping binary file: vscode_1024.png
[6/9] Reviewing code.desktop, codium, vscodium-code-bin.install...
LLM auditresponse for code.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the VSCodium application. It defines the application name, comment, executable command (`codium %F`), icon, MIME types, and a desktop action for opening a new empty window. There are no commands, network requests, file manipulations, or any executable logic beyond specifying the application launcher entry. The file is benign and follows the freedesktop.org Desktop Entry Specification. No security issues are present.
</details>
<evidence>
</evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[7/9] Reviewing codium, vscodium-code-bin.install...
+ Reviewed code.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for vscodium-code-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script for vscodium-code-bin. It runs routine post-install cache refresh commands: `gtk-update-icon-cache` and `update-desktop-database`. Both are conventional packaging hooks used to refresh system icon and desktop-entry caches after package installation or removal. The commands are safely guarded with `|| true` so failures do not abort the transaction. No network activity, file exfiltration, obfuscation, or execution of untrusted content is present. This file is consistent with normal packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard cache refresh hooks only; no malicious behavior detected.</summary>
</security_assessment>

[8/9] Reviewing codium...
+ Reviewed vscodium-code-bin.install. Status: SAFE -- Standard cache refresh hooks only; no malicious behavior detected.
LLM auditresponse for codium:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the standard VSCodium launcher shell script, directly derived from the upstream VSCode wrapper. It performs routine startup operations: loading optional user‑configured flags from `~/.config/*-flags.conf`, detecting whether it is running inside a remote CLI context or WSL, refusing to run as root without explicit flags, resolving the installation path, and finally launching the Electron application.  
No network requests, no downloads, no obfuscation, no unexpected file writes, and no execution of code from untrusted sources. The config‑file reading is an intended feature and the user controls that file; it does not constitute a supply‑chain attack. All behavior is consistent with normal packaging and the application&#8217;s stated purpose.
</details>
<evidence></evidence>
<summary>Standard VSCodium launcher, no malicious behavior.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed codium. Status: SAFE -- Standard VSCodium launcher, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 2 files: vscode.svg, vscode_1024.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 21,160
  Completion Tokens: 3,562
  Total Tokens: 24,722
  Total Cost: $0.002574
  Execution Time: 24.42 seconds

Final Status: SAFE


No issues found.


Audit Skips:

vscode.svg: [SKIPPED] Skipping binary file: vscode.svg

vscode_1024.png: [SKIPPED] Skipping binary file: vscode_1024.png
