---
package: qoder-cn-ide
pkgver: 1.38.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 57236
completion_tokens: 5036
total_tokens: 62272
cost: 0.006125028
execution_time: 67.09
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-03T12:11:35Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package with pinned checksums; no malicious indicators.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior detected.
  - file: qoder-cn-ide.js
    status: safe
    summary: Benign Electron app-override shim redirecting resource paths within the installed app directory.
  - file: qoder-cn-ide.sh
    status: safe
    summary: Standard Electron launcher script, no malicious content.
  - file: LICENSE.html
    status: safe
    summary: Standard TOS page; no malicious behavior found.
---

Materializing qoder-cn-ide from local mirror...
Materialized qoder-cn-ide
Analyzing qoder-cn-ide AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD at top level. This PKGBUILD contains only variable assignments, arrays, and function definitions in its global scope; there are no top-level command substitutions, network calls, downloads, or file modifications that would execute while sourcing it. The `source` array entries are normal package source declarations pointing to the project's own distribution host, and the checksums are pinned values rather than `SKIP`.

The functions `pkgver()`, `prepare()`, and `package()` contain more involved logic, but they are not executed during `makepkg --printsrcinfo` and are therefore outside the scope of this narrow gate. No obfuscation, encoded payloads, or exfiltration behavior is present at the top level. This gate is safe.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD sourcing only defines variables and functions; no malicious code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD sourcing only defines variables and functions; no malicious code executes during printsrcinfo.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, LICENSE.html...
[0/5] Reviewing .SRCINFO, LICENSE.html, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file describes a standard Arch User Repository (AUR) package for the Qoder CN IDE. All sources are listed with pinned SHA-256 checksums, and the download URL points to the official Alibaba Cloud OSS distribution bucket for the project. No malicious code, obfuscation, or suspicious operations are present. The dependencies and optional dependencies are normal for an Electron-based IDE. There is no evidence of supply-chain tampering or exfiltration.
</details>
<evidence></evidence>
<summary>Standard AUR package with pinned checksums; no malicious indicators.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, LICENSE.html, PKGBUILD, qoder-cn-ide.js...
[1/5] Reviewing LICENSE.html, PKGBUILD, qoder-cn-ide.js...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package with pinned checksums; no malicious indicators.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt IDE application. All source files are downloaded from the project&#39;s own official upstream (Aliyun OSS) with pinned SHA256 checksums, ensuring integrity. The prepare() and package() functions perform expected operations: version detection, path substitutions, removal of platform-specific node modules (Windows/macOS/ARM), and installation of files into the package directory. There is no obfuscated code, no unexpected network requests, no data exfiltration, and no execution of untrusted content. The removal of &#39;windows-foreground-love&#39; and &#39;native-is-elevated&#39; modules is normal for Linux packaging.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[1/5] Reviewing LICENSE.html, PKGBUILD, qoder-cn-ide.js, qoder-cn-ide.sh...
[2/5] Reviewing LICENSE.html, qoder-cn-ide.js, qoder-cn-ide.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior detected.
LLM auditresponse for qoder-cn-ide.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an Electron "app-override" launcher shim, a common packaging pattern for AUR/repackaged Electron applications. It locates the application directory via `--app` arguments, the executable path under `/usr/lib/`, or `_APPDIR`, then sets `process.resourcesPath` accordingly and forces production mode. It also monkey-patches a limited set of `fs` read/stat functions to redirect paths pointing at the default Electron `resources` directory to the installed app directory, guarding against path traversal (`..`) and only redirecting paths whose first component exists in the app directory.

No malicious behavior is present: there are no network requests, no obfuscated/encoded payloads, no `eval`/`base64`/`curl`/`wget`, no writing outside the application scope, and no execution of remote or downloaded content. The `fs` wrapping is invasive but strictly scoped to redirecting resource lookups within the package's own install layout, which serves the application's stated packaging purpose. The code is transparent and consistent with standard Electron repackaging shims.
</details>
<evidence>
</evidence>
<summary>
Benign Electron app-override shim redirecting resource paths within the installed app directory.
</summary>
</security_assessment>

[3/5] Reviewing LICENSE.html, qoder-cn-ide.sh...
+ Reviewed qoder-cn-ide.js. Status: SAFE -- Benign Electron app-override shim redirecting resource paths within the installed app directory.
LLM auditresponse for qoder-cn-ide.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard Electron application launcher used in many AUR packages. It sets up environment variables, detects the application bundle, configures sandbox and Ozone platform settings based on standard environment hints, and then executes Electron with the appropriate arguments. All operations are normal for launching an Electron-based desktop application. There are no network requests, no downloads, no obfuscated code, no unexpected file operations, and no attempts to exfiltrate data. The use of indirect variable expansion (`${!_ozone_var}`) is a common pattern to allow user configuration via environment variables and is not suspicious. The script is consistent with legitimate packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard Electron launcher script, no malicious content.</summary>
</security_assessment>

[4/5] Reviewing LICENSE.html...
+ Reviewed qoder-cn-ide.sh. Status: SAFE -- Standard Electron launcher script, no malicious content.
LLM auditresponse for LICENSE.html:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `LICENSE.html` contains the Terms of Service page for the Qoder platform. It is a complete HTML document that loads standard web resources (stylesheets, fonts, images) from the project's own CDN (`g.alicdn.com`, `img.alicdn.com`) and includes typical analytics scripts (Google Tag Manager, Google Analytics). The embedded i18n script uses `atob` and `fetch` to retrieve localization files from `lang.alicdn.com`, which is a legitimate practice for multi-language support and not evidence of malice. There is no code that exfiltrates local data, downloads and executes binaries, or performs any other supply-chain attack. The file is consistent with upstream application functionality and contains no injected malicious behavior.
</details>
<evidence></evidence>
<summary>Standard TOS page; no malicious behavior found.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed LICENSE.html. Status: SAFE -- Standard TOS page; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 57,236
  Completion Tokens: 5,036
  Total Tokens: 62,272
  Total Cost: $0.006125
  Execution Time: 67.09 seconds

Final Status: SAFE


No issues found.
