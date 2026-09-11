---
package: cad-viewer
pkgver: 1.7.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 14746
completion_tokens: 3815
total_tokens: 18561
cost: 0.001982647856
execution_time: 48.0
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-11T07:13:24Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD without suspicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata from upstream with pinned checksums; no malicious indicators found.
  - file: cad-viewer.desktop
    status: safe
    summary: Standard desktop entry file; no malicious or suspicious behavior found.
  - file: cad-viewer.sh
    status: safe
    summary: Standard Electron launcher script; no malicious or unexpected behavior found.
  - file: cad-viewer-main.js
    status: safe
    summary: Benign Electron file server; no malicious, obfuscated, or remote-execution behavior.
---

Materializing cad-viewer from local mirror...
Materialized cad-viewer
Analyzing cad-viewer AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard variable definitions (pkgname, pkgver, source, checksums, etc.) and two function definitions (build, package). No code is executed at the top level beyond assigning these variables. There are no command substitutions, no dangerous commands (eval, curl, wget), and no obfuscated or encoded content in the global scope. Running `makepkg --printsrcinfo` will simply source these definitions, which is safe.
</details>
<evidence></evidence>
<summary>No malicious top-level code present.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code present.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, cad-viewer-main.js...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard packaging recipe for an Electron-based DWG/DXF viewer. It downloads the source tarball from the official GitHub releases URL, uses specific sha256sums for integrity, and performs a typical Node.js build with `pnpm install` and `nx run`. The `package()` function copies the built web assets, an Electron main script, a shell launcher, a desktop file, an icon, and the license into standard system paths. No obfuscated commands, unexpected network calls, or system modifications outside the package's scope are present. The file contains only standard AUR packaging operations and poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD without suspicious code.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, cad-viewer-main.js...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD without suspicious code.
[1/5] Reviewing .SRCINFO, cad-viewer-main.js, cad-viewer.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file. It describes the `cad-viewer` package, its dependencies, and its source files. The primary source is an official GitHub release tarball from the project's own upstream repository (`https://github.com/mlightcad/cad-viewer`), and all four listed sources have pinned SHA-256 checksums.

No suspicious network destinations, obfuscated commands, dangerous build steps, or unexpected file operations are present. The file contains only package metadata; any potentially relevant behavior would be in the referenced helper scripts or PKGBUILD, which are not included here. Based solely on this `.SRCINFO`, there is no evidence of malicious or supply-chain-attack behavior.
</details>
<evidence>
</evidence>
<summary>
Standard package metadata from upstream with pinned checksums; no malicious indicators found.</summary>
</security_assessment>

[2/5] Reviewing cad-viewer-main.js, cad-viewer.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata from upstream with pinned checksums; no malicious indicators found.
[2/5] Reviewing cad-viewer-main.js, cad-viewer.desktop, cad-viewer.sh...
LLM auditresponse for cad-viewer.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` launcher file for an application called CAD Viewer. It declares the application type, display name, comment, executable command (`cad-viewer %U`), icon, categories, supported MIME types, and window class. There are no network requests, no obfuscated code, no file operations, and no execution of arbitrary commands beyond launching the application with the selected file arguments (`%U` is the standard placeholder for URL/file arguments). The content is consistent with ordinary packaging and poses no security risk.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry file; no malicious or suspicious behavior found.</summary>
</security_assessment>

[3/5] Reviewing cad-viewer-main.js, cad-viewer.sh...
+ Reviewed cad-viewer.desktop. Status: SAFE -- Standard desktop entry file; no malicious or suspicious behavior found.
LLM auditresponse for cad-viewer.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard application launcher script. It simply executes the Electron runtime with the package's main JavaScript entry point located under `/usr/lib/cad-viewer/`, passing through any command-line arguments. There is no network access, no obfuscation, no encoded payloads, no file manipulation outside the package's own directory, and no execution of untrusted downloaded content. The behavior is consistent with ordinary packaging for an Electron-based application.
</details>
<evidence>
</evidence>
<summary>
Standard Electron launcher script; no malicious or unexpected behavior found.</summary>
</security_assessment>

[4/5] Reviewing cad-viewer-main.js...
+ Reviewed cad-viewer.sh. Status: SAFE -- Standard Electron launcher script; no malicious or unexpected behavior found.
LLM auditresponse for cad-viewer-main.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This Electron main process script is a minimal local file server for a packaged web application. It registers a privileged `app://` protocol, resolves requested paths under `WEB_ROOT`, and rejects normalized paths that escape that directory, which mitigates path traversal. The BrowserWindow is created with reasonable security defaults: `contextIsolation: true`, `nodeIntegration: false`, and `sandbox: true`.

There is no obfuscated code, no `eval`, no subprocess execution, no remote download, and no unexpected file writes. The only fetch operation reads local files via `file://` URLs constructed from the package's own `web` directory. External window opens are denied and handed to the system browser, which is normal behavior for an Electron shell. No evidence of supply-chain injection or malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>
Benign Electron file server; no malicious, obfuscated, or remote-execution behavior.
</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed cad-viewer-main.js. Status: SAFE -- Benign Electron file server; no malicious, obfuscated, or remote-execution behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,746
  Completion Tokens: 3,815
  Total Tokens: 18,561
  Total Cost: $0.001983
  Execution Time: 48.00 seconds

Final Status: SAFE


No issues found.
