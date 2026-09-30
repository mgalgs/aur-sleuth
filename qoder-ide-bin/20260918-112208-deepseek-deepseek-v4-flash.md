---
package: qoder-ide-bin
pkgver: 1.31.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 56247
completion_tokens: 2853
total_tokens: 59100
cost: 0.005489407518
execution_time: 32.17
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-18T11:22:07Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD, no malicious activity found.
  - file: LICENSE.html
    status: safe
    summary: Standard legal page for upstream IDE package; no malicious code found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no code execution.
  - file: qoder-ide.js
    status: safe
    summary: Standard Electron entry point, no security issues.
  - file: qoder-ide.sh
    status: safe
    summary: Standard Electron launcher, no malicious content.
---

Materializing qoder-ide-bin from local mirror...
Materialized qoder-ide-bin
Analyzing qoder-ide-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions, array declarations, and function definitions at the global scope. There are no top-level command substitutions, function calls, or any other executable code that would run during `makepkg --printsrcinfo`. The source array specifies remote URLs but no download or execution occurs at this stage. The `sha256sums` array has fixed values and are not validated during this step. All functional logic (pkgver(), prepare(), package(), and helper functions) is confined to function bodies that are not invoked when the PKGBUILD is sourced. Therefore, sourcing this file for metadata parsing is safe.
</details>
<evidence></evidence>
<summary>No executable code runs at top level; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code runs at top level; sourcing is safe.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, LICENSE.html...
[0/5] Reviewing .SRCINFO, LICENSE.html, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for an Electron-based application. It downloads the official RPM from the project's own domain (download.qoder.com), verifies checksums, and installs files to standard locations. The script strips Windows-specific components (win32-* files, windows-foreground-love, native-is-elevated) which is normal for cross-platform applications. The `_check_electron_version()` function only inspects the binary without making any changes. No obfuscated code, unexpected network requests, backdoors, or data exfiltration is present. All operations are consistent with legitimate packaging.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD, no malicious activity found.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, LICENSE.html...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD, no malicious activity found.
[1/5] Reviewing .SRCINFO, LICENSE.html, qoder-ide.js...
LLM auditresponse for LICENSE.html:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a minified HTML page from the Qoder website (Terms of Service). It contains standard web resources: Google Analytics/Tag Manager, a locale-detection script, an i18n CDN fetcher using `atob` and `fetch` (all pointing to Alicloud CDN), and Next.js framework chunks loaded from `g.alicdn.com`. There is no obfuscated code, no unexpected network destinations, no downloads or execution of attacker-controlled code, and no attempts to exfiltrate data. All scripts serve the legitimate purpose of rendering the upstream application's legal page. The use of `atob` to decode a static CDN URL is standard practice for i18n bootstrapping and does not indicate malice.
</details>
<evidence></evidence>
<summary>Standard legal page for upstream IDE package; no malicious code found.</summary>
</security_assessment>

[2/5] Reviewing .SRCINFO, qoder-ide.js...
+ Reviewed LICENSE.html. Status: SAFE -- Standard legal page for upstream IDE package; no malicious code found.
[2/5] Reviewing .SRCINFO, qoder-ide.js, qoder-ide.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.SRCINFO` is a metadata file used by the Arch Linux package manager. It contains no executable code. It defines package name, version, dependencies, sources (all originating from the upstream domain `qoder.com`), and SHA-256 checksums for each source file. There is no evidence of obfuscation, suspicious network destinations, or any commands that could perform malicious actions. The file adheres to standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no code execution.</summary>
</security_assessment>

[3/5] Reviewing qoder-ide.js, qoder-ide.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no code execution.
LLM auditresponse for qoder-ide.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `qoder-ide.js` is a standard Electron application entry point. It renames the process via `/proc/self/comm` (a common Linux technique), sets application paths and metadata, and then dynamically imports the main application code from `./out/main.js`. There are no network requests, no execution of external code or commands (no `eval`, `exec`, `curl`, `wget`, `base64`), and no obfuscation. The code is transparent and typical for an Electron app launched from an AUR package. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard Electron entry point, no security issues.</summary>
</security_assessment>

[4/5] Reviewing qoder-ide.sh...
+ Reviewed qoder-ide.js. Status: SAFE -- Standard Electron entry point, no security issues.
LLM auditresponse for qoder-ide.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Electron application launcher wrapper for the Qoder IDE package. It sets environment variables for Electron&#x27;s behavior, sources user-provided configuration flags from well-known paths, and launches the application&#x27;s main JavaScript file with Electron. No suspicious activities such as network requests, obfuscation, unauthorized file operations, or command execution of untrusted input are present. It follows typical packaging practices for bundled Electron apps and does not contain any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard Electron launcher, no malicious content.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed qoder-ide.sh. Status: SAFE -- Standard Electron launcher, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 56,247
  Completion Tokens: 2,853
  Total Tokens: 59,100
  Total Cost: $0.005489
  Execution Time: 32.17 seconds

Final Status: SAFE


No issues found.
