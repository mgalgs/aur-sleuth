---
package: cursor-bin
pkgver: 3.17.19
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 76c02596d4f1a58500b30a8fd37c0598e2c7d68c
prompt_tokens: 13300
completion_tokens: 4623
total_tokens: 17923
cost: 0.001997710876
execution_time: 253.75
files_reviewed: 4
files_skipped: 0
files_unauditable: 1
unpinned_sources: 0
date: 2026-08-25T02:28:50Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard repackaging of official Cursor binary; no malicious or suspicious behavior found.
  - file: rg.sh
    status: safe
    summary: Simple argument-rewriting wrapper script, no malicious behavior.
  - file: code.mjs
    status: safe
    summary: Standard Electron app entry point, no malicious behavior.
  - file: code.sh
    status: safe
    summary: Standard Electron wrapper script, no malicious activity.
---

Cloning https://aur.archlinux.org/cursor-bin.git...
Cloned cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and function definitions at the top level. There is no executable code in the global scope or `pkgver()` that would run during `makepkg --nobuild --nodeps --noprepare`. The source array points to official upstream locations (downloads.cursor.com and gitlab.archlinux.org) and a local file (`rg.sh`). Checksums are properly provided for the downloaded files. While the initial `sha512sums` array has `SKIP` for the first source, it is later overridden with a valid checksum via `sha512sums[0]=...`. No dangerous operations such as `curl|bash`, base64 decoding, or data exfiltration are present. The package function (`package()`) is not executed during this step. Therefore, fetching sources and sourcing the PKGBUILD is safe.</details>
<evidence></evidence>
<summary>No dangerous code at top-level or in pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code at top-level or in pkgver().
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, rg.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD repackages the official Cursor .deb for Arch Linux. The remote sources are the official Cursor downloads domain and the Arch Linux GitLab packaging repository, both with pinned SHA-512 checksums. The initial `SKIP` for the .deb is overridden by an explicit checksum, so all remote artifacts are verified.

The `package()` function performs standard packaging operations: extracting the .deb, excluding the bundled Electron, replacing bundled components with system equivalents (`node`, `xdg-open`, a ripgrep wrapper), and generating launcher scripts via `sed` and `install`. There are no network requests during build, no obfuscated or encoded commands, no `eval`/`base64`/`curl`/`wget`, and no writes outside `$pkgdir`. The only locally sourced file, `rg.sh`, is installed as a ripgrep wrapper; without its contents showing otherwise, its use is consistent with ordinary packaging. No evidence of injected malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>
Standard repackaging of official Cursor binary; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[1/2] Reviewing rg.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard repackaging of official Cursor binary; no malicious or suspicious behavior found.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a minimal wrapper that replaces the `--cursor-ignore` flag with `--ignore-file` when invoking `rg` (ripgrep). It performs no network requests, file operations, or command execution beyond `exec` of a legitimate binary. No obfuscation or suspicious content is present. This is a standard helper script for integration purposes, not a supply-chain attack.
</details>
<evidence></evidence>
<summary>Simple argument-rewriting wrapper script, no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed rg.sh. Status: SAFE -- Simple argument-rewriting wrapper script, no malicious behavior.
Reviewed all required files.
Deciding which files to review next...
Note: 1 compiled/archived file(s) cannot be audited as text and were not reviewed (cursor_3.17.19_amd64.deb). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Decided to review 2 additional files: code.sh, code.mjs
Reviewing additional files...
Reviewing additional files...
[0/2] Reviewing code.sh...
[0/2] Reviewing code.sh, code.mjs...
LLM auditresponse for code.mjs:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Electron application entry point. It renames the process via `/proc/self/comm`, strips prefix arguments, sets application paths (appPath, userCache, userData) using the package's own directory and standard Electron APIs, reads `package.json` from the same package, and launches the main script at `out/main.js`. There are no network requests, no downloads of external code, no obfuscated or encoded commands, no access to sensitive user data outside of the application's own scope, and no system modifications beyond self-contained Electron configuration. The behavior is entirely consistent with a normal Electron bootstrapper for a VS Code-like editor.
</details>
<evidence>

</evidence>
<summary>Standard Electron app entry point, no malicious behavior.</summary>
</security_assessment>

[1/2] Reviewing code.sh...
+ Reviewed code.mjs. Status: SAFE -- Standard Electron app entry point, no malicious behavior.
LLM auditresponse for code.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard wrapper script for launching an Electron-based application (VS Code / Cursor). It reads user-defined flags from configuration files (~/.config/code-flags.conf and ~/.config/electron-flags.conf), then executes the Electron binary with the appropriate command-line arguments. The script uses only local file operations and standard shell constructs; there are no network requests, obfuscated code, or unexpected system modifications. All paths point to the application's own installed files under /usr/lib/. No evidence of supply-chain attack or malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>Standard Electron wrapper script, no malicious activity.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed code.sh. Status: SAFE -- Standard Electron wrapper script, no malicious activity.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,300
  Completion Tokens: 4,623
  Total Tokens: 17,923
  Total Cost: $0.001998
  Execution Time: 253.75 seconds

Final Status: SAFE


No issues found.
