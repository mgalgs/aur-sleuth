---
package: minimax-code-cn-bin
pkgver: 3.1.11
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 29724
completion_tokens: 7388
total_tokens: 37112
cost: 0.004049500
execution_time: 52.74
files_reviewed: 6
files_skipped: 8
maintainer_files: 14
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-09T12:09:02Z
file_verdicts:
  - file: minimax-code-cn-128.png
    status: skipped
    summary: "Skipping binary file: minimax-code-cn-128.png"
  - file: minimax-code-cn-16.png
    status: skipped
    summary: "Skipping binary file: minimax-code-cn-16.png"
  - file: minimax-code-cn-24.png
    status: skipped
    summary: "Skipping binary file: minimax-code-cn-24.png"
  - file: minimax-code-cn-256.png
    status: skipped
    summary: "Skipping binary file: minimax-code-cn-256.png"
  - file: minimax-code-cn-32.png
    status: skipped
    summary: "Skipping binary file: minimax-code-cn-32.png"
  - file: minimax-code-cn-48.png
    status: skipped
    summary: "Skipping binary file: minimax-code-cn-48.png"
  - file: minimax-code-cn-512.png
    status: skipped
    summary: "Skipping binary file: minimax-code-cn-512.png"
  - file: minimax-code-cn-64.png
    status: skipped
    summary: "Skipping binary file: minimax-code-cn-64.png"
  - file: minimax-code-cn.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: minimax-code-cn.sh
    status: safe
    summary: Standard launcher script, no malicious behavior detected.
  - file: patch-region.js
    status: safe
    summary: Legitimate region-patch script, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Metadata file; no malicious behavior observed.
  - file: repack-asar.js
    status: safe
    summary: Legitimate asar header repackaging tool; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard repackaging; no supply‑chain indicators in PKGBUILD.
---

Materializing minimax-code-cn-bin from local mirror...
Materialized minimax-code-cn-bin
Analyzing minimax-code-cn-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function declarations at the global scope. No command substitutions, eval statements, or other executable code is present outside of function bodies. Functions like `prepare()`, `build()`, and `package()` are not executed during `makepkg --printsrcinfo`, so any code inside them is out of scope for this gate. There is no top-level code that could download, execute, or exfiltrate data. Sourcing this file is safe.
</details>
<evidence></evidence>
<summary>No top-level malicious code in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code in PKGBUILD.
Reviewing the 14 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/14] Reviewing .SRCINFO...
[0/14] Reviewing .SRCINFO, minimax-code-cn-128.png...
[0/14] Reviewing .SRCINFO, minimax-code-cn-128.png, PKGBUILD...
[0/14] Reviewing .SRCINFO, minimax-code-cn-128.png, PKGBUILD, minimax-code-cn-16.png...
[1/14] Reviewing .SRCINFO, PKGBUILD, minimax-code-cn-16.png...
! Reviewed minimax-code-cn-128.png. Status: SKIPPED -- Skipping binary file: minimax-code-cn-128.png
[1/14] Reviewing .SRCINFO, PKGBUILD, minimax-code-cn-16.png, minimax-code-cn-24.png...
[2/14] Reviewing .SRCINFO, PKGBUILD, minimax-code-cn-24.png...
! Reviewed minimax-code-cn-16.png. Status: SKIPPED -- Skipping binary file: minimax-code-cn-16.png
[3/14] Reviewing .SRCINFO, PKGBUILD...
! Reviewed minimax-code-cn-24.png. Status: SKIPPED -- Skipping binary file: minimax-code-cn-24.png
[3/14] Reviewing .SRCINFO, PKGBUILD, minimax-code-cn-256.png...
[4/14] Reviewing .SRCINFO, PKGBUILD...
! Reviewed minimax-code-cn-256.png. Status: SKIPPED -- Skipping binary file: minimax-code-cn-256.png
[4/14] Reviewing .SRCINFO, PKGBUILD, minimax-code-cn-32.png...
[5/14] Reviewing .SRCINFO, PKGBUILD...
! Reviewed minimax-code-cn-32.png. Status: SKIPPED -- Skipping binary file: minimax-code-cn-32.png
[5/14] Reviewing .SRCINFO, PKGBUILD, minimax-code-cn-48.png...
[5/14] Reviewing .SRCINFO, PKGBUILD, minimax-code-cn-48.png, minimax-code-cn-512.png...
[6/14] Reviewing .SRCINFO, PKGBUILD, minimax-code-cn-512.png...
! Reviewed minimax-code-cn-48.png. Status: SKIPPED -- Skipping binary file: minimax-code-cn-48.png
[7/14] Reviewing .SRCINFO, PKGBUILD...
! Reviewed minimax-code-cn-512.png. Status: SKIPPED -- Skipping binary file: minimax-code-cn-512.png
[7/14] Reviewing .SRCINFO, PKGBUILD, minimax-code-cn-64.png...
[8/14] Reviewing .SRCINFO, PKGBUILD...
! Reviewed minimax-code-cn-64.png. Status: SKIPPED -- Skipping binary file: minimax-code-cn-64.png
[8/14] Reviewing .SRCINFO, PKGBUILD, minimax-code-cn.desktop...
LLM auditresponse for minimax-code-cn.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file for the MiniMax Code application. It defines basic metadata such as the application name, comment, executable path, icon, and categories. The `Exec` line launches `minimax-code-cn %U`, which is a normal pattern for handling URIs. There are no suspicious commands, obfuscated code, or unexpected operations. The file follows typical packaging practices for AUR packages.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[8/14] Reviewing .SRCINFO, PKGBUILD, minimax-code-cn.desktop, minimax-code-cn.sh...
[9/14] Reviewing .SRCINFO, PKGBUILD, minimax-code-cn.sh...
+ Reviewed minimax-code-cn.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for minimax-code-cn.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard desktop launcher for the MiniMax Code application (mainland-China build). It sets a profile directory based on environment variables (`MINIMAX_CODE_PROFILE`, `XDG_CONFIG_HOME`, or `HOME/.config`), then executes the main binary (`/opt/minimax-code-cn/minimax-code-cn`) with `--no-sandbox` and `--user-data-dir`. The `--no-sandbox` flag is common in Electron-based applications packaged for Linux to avoid sandboxing issues in certain environments (e.g., running as root, or in containerized builds). The script contains no obfuscated code, no network requests, no file manipulation outside expected paths, and no execution of untrusted content. It is a straightforward, minimal helper script consistent with standard AUR packaging practices.
</details>
<evidence>

</evidence>
<summary>Standard launcher script, no malicious behavior detected.</summary>
</security_assessment>

[10/14] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed minimax-code-cn.sh. Status: SAFE -- Standard launcher script, no malicious behavior detected.
[10/14] Reviewing .SRCINFO, PKGBUILD, patch-region.js...
LLM auditresponse for patch-region.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a Node.js utility that patches an Electron ASAR archive to switch between two region-specific builds (CN and international) of the MiniMax Code desktop application. It performs straightforward string replacements on packed ASAR entries (e.g., replacing China-specific domains with international ones and flipping a region flag). All filesystem operations are confined to the package's own archive (`app.asar`). There are no network requests, code downloads, obfuscation, or exfiltration of any kind. The script only modifies local files in alignment with the package's stated purpose of pinning a region and isolating the profile. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Legitimate region-patch script, no security issues.</summary>
</security_assessment>

[10/14] Reviewing .SRCINFO, PKGBUILD, patch-region.js, repack-asar.js...
[11/14] Reviewing .SRCINFO, PKGBUILD, repack-asar.js...
+ Reviewed patch-region.js. Status: SAFE -- Legitimate region-patch script, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata file for an AUR binary package. It contains no executable code, shell commands, or obfuscated content. All source URLs point to the project's own upstream (MiniMax Code at `filecdn.minimax.chat`), official Electron releases, or standard npm registries — expected destinations for a repackaged Electron application. Every source is accompanied by a SHA‑256 checksum (none are `SKIP`), so the downloads are pinned. The included helper scripts (`patch-region.js`, `repack-asar.js`) are not present in the file; their content cannot be evaluated here, but their mere listing is consistent with a non‑official Linux port. No evidence of data exfiltration, hidden backdoors, or other supply‑chain attack indicators is present.
</details>
<evidence>
</evidence>
<summary>Metadata file; no malicious behavior observed.</summary>
</security_assessment>

[12/14] Reviewing PKGBUILD, repack-asar.js...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file; no malicious behavior observed.
LLM auditresponse for repack-asar.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a helper tool for repacking Electron `.asar` archives after replacing native modules (e.g. `sharp`, `koffi`) in the unpacked directory. It performs standard file I/O operations using Node.js built-in modules (`fs`, `path`).  

- No network requests, no downloads, and no execution of external commands or binaries.  
- No obfuscated code, eval, or base64 decoding is present.  
- The only file modification is to the specified `.asar` file and a temporary file in the same directory, which is renamed and chmod’d to `0o644` (a common, world-readable permission for installed packages).  
- The script reads file **sizes** from the unpacked directory but never reads or exfiltrates file contents.  
- It removes integrity hashes from modified entries, which is a necessary and expected behavior when on-disk files replace the original archive entries.  

All operations are transparent and serve the stated purpose of synchronizing the asar header with the real filesystem. There is no evidence of malicious or injected code.
</details>
<evidence>
</evidence>
<summary>Legitimate asar header repackaging tool; no malicious behavior.</summary>
</security_assessment>

[13/14] Reviewing PKGBUILD...
+ Reviewed repack-asar.js. Status: SAFE -- Legitimate asar header repackaging tool; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD performs a standard repackaging of a Windows Electron application (MiniMax Code) for Linux by extracting the NSIS installer, replacing platform-specific native modules with Linux equivalents, and rebuilding the node-pty module from source. All external sources are from the application's own upstream distribution (filecdn.minimax.chat), official Electron GitHub releases, the npm registry, and the better-sqlite3 GitHub releases. Every source archive has a pinned SHA‑256 checksum, ensuring integrity even if the download host were compromised. There are no network requests beyond the declared `source` array, no obfuscated code, no eval, no curl|bash patterns, and no unexpected system modifications outside the installation prefix. The prepare/build/package stages perform only the actions necessary to produce a working Linux package: extracting archives, removing Windows/macOS artifacts, copying Linux native modules, building one native module from source via node‑gyp, and installing files under $pkgdir. No data exfiltration, backdooring, or host tampering is present. The auxiliary scripts `patch‑region.js` and `repack‑asar.js` are sourced from the AUR repository and would need separate review, but the PKGBUILD itself shows no sign of injection or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard repackaging; no supply‑chain indicators in PKGBUILD.</summary>
</security_assessment>

[14/14] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard repackaging; no supply‑chain indicators in PKGBUILD.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 8 files: minimax-code-cn-128.png, minimax-code-cn-16.png, minimax-code-cn-24.png, minimax-code-cn-256.png, minimax-code-cn-32.png, minimax-code-cn-48.png, minimax-code-cn-512.png, minimax-code-cn-64.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 29,724
  Completion Tokens: 7,388
  Total Tokens: 37,112
  Total Cost: $0.004050
  Execution Time: 52.74 seconds

Final Status: SAFE


No issues found.


Audit Skips:

minimax-code-cn-128.png: [SKIPPED] Skipping binary file: minimax-code-cn-128.png

minimax-code-cn-16.png: [SKIPPED] Skipping binary file: minimax-code-cn-16.png

minimax-code-cn-24.png: [SKIPPED] Skipping binary file: minimax-code-cn-24.png

minimax-code-cn-256.png: [SKIPPED] Skipping binary file: minimax-code-cn-256.png

minimax-code-cn-32.png: [SKIPPED] Skipping binary file: minimax-code-cn-32.png

minimax-code-cn-48.png: [SKIPPED] Skipping binary file: minimax-code-cn-48.png

minimax-code-cn-512.png: [SKIPPED] Skipping binary file: minimax-code-cn-512.png

minimax-code-cn-64.png: [SKIPPED] Skipping binary file: minimax-code-cn-64.png
