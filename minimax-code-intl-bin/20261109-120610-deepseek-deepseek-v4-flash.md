---
package: minimax-code-intl-bin
pkgver: 3.1.11
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 29784
completion_tokens: 7546
total_tokens: 37330
cost: 0.004083716
execution_time: 48.41
files_reviewed: 6
files_skipped: 8
maintainer_files: 14
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-09T12:06:09Z
file_verdicts:
  - file: minimax-code-intl-128.png
    status: skipped
    summary: "Skipping binary file: minimax-code-intl-128.png"
  - file: minimax-code-intl-16.png
    status: skipped
    summary: "Skipping binary file: minimax-code-intl-16.png"
  - file: minimax-code-intl-24.png
    status: skipped
    summary: "Skipping binary file: minimax-code-intl-24.png"
  - file: minimax-code-intl-256.png
    status: skipped
    summary: "Skipping binary file: minimax-code-intl-256.png"
  - file: minimax-code-intl-32.png
    status: skipped
    summary: "Skipping binary file: minimax-code-intl-32.png"
  - file: minimax-code-intl-48.png
    status: skipped
    summary: "Skipping binary file: minimax-code-intl-48.png"
  - file: minimax-code-intl-512.png
    status: skipped
    summary: "Skipping binary file: minimax-code-intl-512.png"
  - file: minimax-code-intl-64.png
    status: skipped
    summary: "Skipping binary file: minimax-code-intl-64.png"
  - file: minimax-code-intl.desktop
    status: safe
    summary: Standard .desktop file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata; no security concerns identified.
  - file: patch-region.js
    status: safe
    summary: Clean maintainer patching script; no malicious behavior found.
  - file: minimax-code-intl.sh
    status: safe
    summary: Standard Electron launcher, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior detected.
  - file: repack-asar.js
    status: safe
    summary: Legitimate asar repacking script, no security issues.
---

Materializing minimax-code-intl-bin from local mirror...
Materialized minimax-code-intl-bin
Analyzing minimax-code-intl-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope consists only of variable assignments (pkgname, pkgver, _electron, source, sha256sums, etc.) and the definition of a helper function `pkg_extract()`. No command substitutions, immediate commands, or function invocations exist at the global level. Function bodies (`pkg_extract()`, `prepare()`, `build()`, `package()`) are not executed when `makepkg --printsrcinfo` sources the file. Therefore, sourcing this PKGBUILD poses no risk of executing malicious code during this narrow gate.
</details>
<evidence></evidence>
<summary>Top-level code is safe, no immediate execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code is safe, no immediate execution.
Reviewing the 14 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/14] Reviewing .SRCINFO...
[0/14] Reviewing .SRCINFO, minimax-code-intl-128.png...
[0/14] Reviewing .SRCINFO, minimax-code-intl-128.png, PKGBUILD...
[0/14] Reviewing .SRCINFO, minimax-code-intl-128.png, PKGBUILD, minimax-code-intl-16.png...
[1/14] Reviewing .SRCINFO, PKGBUILD, minimax-code-intl-16.png...
! Reviewed minimax-code-intl-128.png. Status: SKIPPED -- Skipping binary file: minimax-code-intl-128.png
[2/14] Reviewing .SRCINFO, PKGBUILD...
! Reviewed minimax-code-intl-16.png. Status: SKIPPED -- Skipping binary file: minimax-code-intl-16.png
[2/14] Reviewing .SRCINFO, PKGBUILD, minimax-code-intl-24.png...
[2/14] Reviewing .SRCINFO, PKGBUILD, minimax-code-intl-24.png, minimax-code-intl-256.png...
[3/14] Reviewing .SRCINFO, PKGBUILD, minimax-code-intl-256.png...
! Reviewed minimax-code-intl-24.png. Status: SKIPPED -- Skipping binary file: minimax-code-intl-24.png
[4/14] Reviewing .SRCINFO, PKGBUILD...
! Reviewed minimax-code-intl-256.png. Status: SKIPPED -- Skipping binary file: minimax-code-intl-256.png
[4/14] Reviewing .SRCINFO, PKGBUILD, minimax-code-intl-32.png...
[5/14] Reviewing .SRCINFO, PKGBUILD...
! Reviewed minimax-code-intl-32.png. Status: SKIPPED -- Skipping binary file: minimax-code-intl-32.png
[5/14] Reviewing .SRCINFO, PKGBUILD, minimax-code-intl-48.png...
[5/14] Reviewing .SRCINFO, PKGBUILD, minimax-code-intl-48.png, minimax-code-intl-512.png...
[6/14] Reviewing .SRCINFO, PKGBUILD, minimax-code-intl-512.png...
! Reviewed minimax-code-intl-48.png. Status: SKIPPED -- Skipping binary file: minimax-code-intl-48.png
[6/14] Reviewing .SRCINFO, PKGBUILD, minimax-code-intl-512.png, minimax-code-intl-64.png...
[7/14] Reviewing .SRCINFO, PKGBUILD, minimax-code-intl-64.png...
! Reviewed minimax-code-intl-512.png. Status: SKIPPED -- Skipping binary file: minimax-code-intl-512.png
[7/14] Reviewing .SRCINFO, PKGBUILD, minimax-code-intl-64.png, minimax-code-intl.desktop...
[8/14] Reviewing .SRCINFO, PKGBUILD, minimax-code-intl.desktop...
! Reviewed minimax-code-intl-64.png. Status: SKIPPED -- Skipping binary file: minimax-code-intl-64.png
LLM auditresponse for minimax-code-intl.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .desktop file used to register the application in the desktop menu. It contains only metadata (name, comment, icon, categories) and the `Exec` line which launches the `minimax-code` binary with URL handling (`%U`). There are no network requests, obfuscated commands, or unexpected file operations. The file conforms to normal packaging practices and presents no security concerns.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security concerns.</summary>
</security_assessment>

[9/14] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed minimax-code-intl.desktop. Status: SAFE -- Standard .desktop file, no security concerns.
[9/14] Reviewing .SRCINFO, PKGBUILD, minimax-code-intl.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard package metadata file for the AUR. It declares the package name, version, dependencies, source URLs, and SHA-256 checksums. All source URLs point to expected upstream locations (the project's own CDN, GitHub releases, npm registry) and the checksums are present (not set to SKIP), providing integrity verification. There are no executable instructions, obfuscated content, or references to external resources outside the project's own infrastructure. The use of a .exe as a source indicates the maintainer extracts the Windows application for the Linux port—a known practice for packaging proprietary Electron applications—and is not inherently malicious. No supply-chain attack indicators (exfiltration, backdoors, code injection, or unexpected downloads) are present.
</details>
<evidence></evidence>
<summary>Standard metadata; no security concerns identified.</summary>
</security_assessment>

[9/14] Reviewing .SRCINFO, PKGBUILD, minimax-code-intl.sh, patch-region.js...
[10/14] Reviewing PKGBUILD, minimax-code-intl.sh, patch-region.js...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata; no security concerns identified.
LLM auditresponse for patch-region.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a maintainer utility that modifies an Electron ASAR archive to change region-specific URLs and configuration for the MiniMax Code desktop application. It performs only local file operations (reading and rewriting `app.asar`) and does **not** make any network requests, download external code, execute fetched content, or access sensitive system files. All modifications are explicitly documented in the comments (e.g., changing `agent.minimax.cn` to `agent.minimax.io`, flipping a region flag, and renaming the package for Electron user data isolation). The logic is straightforward with no obfuscation or encoded payloads. There is no evidence of malicious behavior such as data exfiltration, backdoors, or supply-chain injection.
</details>
<evidence></evidence>
<summary>Clean maintainer patching script; no malicious behavior found.</summary>
</security_assessment>

[10/14] Reviewing PKGBUILD, minimax-code-intl.sh, patch-region.js, repack-asar.js...
[11/14] Reviewing PKGBUILD, minimax-code-intl.sh, repack-asar.js...
+ Reviewed patch-region.js. Status: SAFE -- Clean maintainer patching script; no malicious behavior found.
LLM auditresponse for minimax-code-intl.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard shell-script launcher for the MiniMax Code international desktop application. It defines an application data directory based on the user's XDG configuration or home directory and executes the bundled Electron binary with the `--no-sandbox` flag. The comment block clearly explains the reason for disabling the Chromium sandbox (the bundled runtime lacks the sandbox binary, mirroring the upstream catpaw port) and notes that the application provides its own tool-execution sandbox (bubblewrap).

The script contains no network activity, no obfuscated or encoded commands, no file manipulation outside of setting an environment-based variable for the application's data path, and no execution of content from untrusted sources. It strictly follows conventional patterns for AUR-packaged Electron applications.

There is no evidence of supply-chain attack, data exfiltration, backdoors, or any behavior that deviates from the stated purpose of launching the installed application. This file is safe.
</details>
<evidence/>
<summary>Standard Electron launcher, no malicious content.</summary>
</security_assessment>

[12/14] Reviewing PKGBUILD, repack-asar.js...
+ Reviewed minimax-code-intl.sh. Status: SAFE -- Standard Electron launcher, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard port of the MiniMax Code international desktop application to Linux. All source URLs point to the official upstream (minimax.io CDN, GitHub Electron releases, npm registry, WiseLibs GitHub). Checksums are provided for every source, ensuring integrity. The build process extracts the Windows installer, replaces native modules with Linux equivalents (downloaded from official sources), and builds node-pty from source using node-gyp. There are no network operations in build() or package() beyond the declared sources. No obfuscated code, dangerous commands (eval, base64, curl|bash), or attempts to modify system files outside the package directory are present. The helper scripts (patch-region.js, repack-asar.js) are local files with verified checksums and serve legitimate packaging purposes (region patching and asar repacking). This is a well-structured, transparent packaging workflow with no evidence of supply-chain compromise.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[13/14] Reviewing repack-asar.js...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior detected.
LLM auditresponse for repack-asar.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Node.js script that rewrites the header of an Electron asar archive so that the on-disk ``.unpacked`` directory is the source of truth for unpacked entries. It reads the asar header, walks the unpacked directory, and updates the header (adding new entries, removing stale ones, updating sizes, stripping integrity hashes). The script then writes the updated header and copies the payload data verbatim, finally replacing the original file with appropriate permissions.

The script uses only built-in Node.js modules (`fs`, `path`) and performs no network requests, no execution of external commands, no base64 decoding or obfuscation, and no operations outside the specified asar path and its corresponding unpacked directory. All file operations are normal for a packaging helper that adjusts an asar archive to reflect the actual filesystem state after native module replacement.

There is no evidence of data exfiltration, code injection, backdoors, credential theft, or any behavior that deviates from its stated purpose of maintaining consistency between the asar header and the unpacked directory. The comments are consistent with the code and describe a legitimate build-step task commonly needed when distributing binary replacements for Electron native modules.
</details>
<evidence>
</evidence>
<summary>Legitimate asar repacking script, no security issues.</summary>
</security_assessment>

[14/14] Reviewing ...
+ Reviewed repack-asar.js. Status: SAFE -- Legitimate asar repacking script, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 8 files: minimax-code-intl-128.png, minimax-code-intl-16.png, minimax-code-intl-24.png, minimax-code-intl-256.png, minimax-code-intl-32.png, minimax-code-intl-48.png, minimax-code-intl-512.png, minimax-code-intl-64.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 29,784
  Completion Tokens: 7,546
  Total Tokens: 37,330
  Total Cost: $0.004084
  Execution Time: 48.41 seconds

Final Status: SAFE


No issues found.


Audit Skips:

minimax-code-intl-128.png: [SKIPPED] Skipping binary file: minimax-code-intl-128.png

minimax-code-intl-16.png: [SKIPPED] Skipping binary file: minimax-code-intl-16.png

minimax-code-intl-24.png: [SKIPPED] Skipping binary file: minimax-code-intl-24.png

minimax-code-intl-256.png: [SKIPPED] Skipping binary file: minimax-code-intl-256.png

minimax-code-intl-32.png: [SKIPPED] Skipping binary file: minimax-code-intl-32.png

minimax-code-intl-48.png: [SKIPPED] Skipping binary file: minimax-code-intl-48.png

minimax-code-intl-512.png: [SKIPPED] Skipping binary file: minimax-code-intl-512.png

minimax-code-intl-64.png: [SKIPPED] Skipping binary file: minimax-code-intl-64.png
