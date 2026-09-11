---
package: cad-viewer-bin
pkgver: 1.7.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 15663
completion_tokens: 3303
total_tokens: 18966
cost: 0.001973167014
execution_time: 42.21
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-11T07:15:06Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard prebuilt packaging; no malicious behavior found; decision SAFE.
  - file: cad-viewer-main.js
    status: safe
    summary: Standard Electron app; no malicious behavior found.
  - file: cad-viewer.desktop
    status: safe
    summary: Standard desktop entry file; no security issues.
  - file: cad-viewer.sh
    status: safe
    summary: Standard Electron launcher, no suspicious behavior.
---

Materializing cad-viewer-bin from local mirror...
Materialized cad-viewer-bin
Analyzing cad-viewer-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's top-level scope. This PKGBUILD contains only standard variable definitions, source array entries, checksum arrays, and function definitions. No top-level command substitutions, downloads, executions, obfuscated code, or data exfiltration are present. The `package()` function is not executed during `--printsrcinfo`, so its contents are outside the scope of this gate.
</details>
<evidence>
</evidence>
<summary>
No dangerous top-level code; printsrcinfo execution is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; printsrcinfo execution is safe.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, cad-viewer-main.js...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.SRCINFO` is a metadata file that describes the package sources, dependencies, and checksums. It does not contain any executable code or commands. All sources point to GitHub releases or archives from the project's own repositories (`mlightcad/cad-viewer` and a fork `4ni1ak/cad-viewer`), and all have SHA256 checksums provided. There is no evidence of obfuscation, network exfiltration, backdoors, or any deviation from standard packaging metadata. The file is purely descriptive and poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata, no malicious content.</summary>
</security_assessment>

[1/5] Reviewing PKGBUILD, cad-viewer-main.js...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no malicious content.
[1/5] Reviewing PKGBUILD, cad-viewer-main.js, cad-viewer.desktop...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt application. It downloads a release tarball, a pinned cad-data archive, an icon, and several local support files, then installs them under `$pkgdir`. All sources have explicit sha256 checksums. There are no network requests during build or package phases, no shell pipelines, no encoded or obfuscated commands, and no execution of downloaded binaries.

The only notable supply-chain consideration is that the main `cad-viewer-web-dist` tarball is fetched from the `4ni1ak/cad-viewer` GitHub repository rather than the upstream `mlightcad/cad-viewer` repository. This is likely the AUR maintainer's release/fork hosting the prebuilt artifact, and it is pinned with a checksum. While it is a trust consideration, it does not by itself indicate malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard prebuilt packaging; no malicious behavior found; decision SAFE.
</summary>
</security_assessment>

[1/5] Reviewing PKGBUILD, cad-viewer-main.js, cad-viewer.desktop, cad-viewer.sh...
[2/5] Reviewing cad-viewer-main.js, cad-viewer.desktop, cad-viewer.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard prebuilt packaging; no malicious behavior found; decision SAFE.
LLM auditresponse for cad-viewer-main.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `cad-viewer-main.js` is a standard Electron main process script for a CAD viewer application. It sets up a privileged custom scheme (`app://local`) to serve local web assets and bundled CAD data, intercepts CDN requests for the project's own assets to redirect them to local copies (reducing external dependencies), and creates a secure `BrowserWindow` with `contextIsolation: true`, `nodeIntegration: false`, and `sandbox: true`. All file serving includes path traversal protection. There are no network requests to unknown hosts, no obfuscated code, no execution of untrusted content, and no system modifications beyond the application's own scope. The behavior is consistent with legitimate packaging practices for an Electron-based desktop application.
</details>
<evidence></evidence>
<summary>Standard Electron app; no malicious behavior found.</summary>
</security_assessment>

[3/5] Reviewing cad-viewer.desktop, cad-viewer.sh...
+ Reviewed cad-viewer-main.js. Status: SAFE -- Standard Electron app; no malicious behavior found.
LLM auditresponse for cad-viewer.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for a CAD viewer application. It defines a desktop entry with typical fields: an executable command (`cad-viewer %U`), icon, MIME type associations, and category tags. There is no obfuscated code, suspicious network requests, file manipulation, or any deviation from normal desktop entry format. The file contains no security threats.
</details>
<evidence></evidence>
<summary>Standard desktop entry file; no security issues.</summary>
</security_assessment>

[4/5] Reviewing cad-viewer.sh...
+ Reviewed cad-viewer.desktop. Status: SAFE -- Standard desktop entry file; no security issues.
LLM auditresponse for cad-viewer.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard wrapper for launching an Electron application. It invokes the `electron` binary with a fixed `--ozone-platform-hint=auto` flag and points to the application entry point at `/usr/lib/cad-viewer/main.js`, passing through any command-line arguments (`"$@"`). There are no network requests, obfuscated code, file operations outside the package scope, or any other suspicious activities. This is a typical pattern for AUR binary packages that bundle Electron applications.
</details>
<evidence></evidence>
<summary>Standard Electron launcher, no suspicious behavior.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed cad-viewer.sh. Status: SAFE -- Standard Electron launcher, no suspicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,663
  Completion Tokens: 3,303
  Total Tokens: 18,966
  Total Cost: $0.001973
  Execution Time: 42.21 seconds

Final Status: SAFE


No issues found.
