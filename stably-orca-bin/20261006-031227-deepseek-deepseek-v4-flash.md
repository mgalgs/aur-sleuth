---
package: stably-orca-bin
pkgver: 1.4.221
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13625
completion_tokens: 2040
total_tokens: 15665
cost: 0.0028891500
execution_time: 86.93
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-06T03:12:27Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard source metadata with pinned checksums.
  - file: PKGBUILD
    status: safe
    summary: Standard pinned AppImage PKGBUILD; no malicious behavior or injected code found.
  - file: stably-orca.sh
    status: safe
    summary: "Safe launcher wrapper: sets APPDIR and runs the packaged AppRun normally."
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
No malicious code exists in the global/top-level scope of this PKGBUILD. All variable definitions and arrays are standard strings. No command substitutions (`$()`, backticks), `eval`, or other immediate execution constructs are present. The `prepare()`, `build()`, and `package()` functions contain scripting but are never executed during `makepkg --printsrcinfo`, so they are out of scope for this gate. Sourcing this file poses no risk.
</details>
<evidence></evidence>
<summary>Global scope is benign; no execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope is benign; no execution risk.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an Arch User Repository package. It specifies the package name, version, description, dependencies, and three source files: a prebuilt AppImage from the project's official GitHub releases page (with valid SHA-256 checksum), a shell wrapper script, and a desktop entry file. All sources are pinned with checksums, and there is no evidence of obfuscated code, suspicious network requests, or commands. The configuration is consistent with ordinary packaging practices for a binary AppImage distribution.
</details>
<evidence></evidence>
<summary>Standard source metadata with pinned checksums.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing PKGBUILD, stably-orca.desktop, stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard source metadata with pinned checksums.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt Electron/AppImage application. It downloads the upstream `orca-linux.AppImage` from the project&apos;s own GitHub releases URL, pins all sources with SHA-256 checksums, extracts the AppImage during `prepare()`, and installs the extracted tree plus a launcher script, desktop entry, and hicolor icons into `$pkgdir`. There is no obfuscated code, no `eval`/`base64`/`curl|bash`, no unexpected network destination, no tampering with system files, and no data exfiltration. The `chmod`/`install`/`cp` operations are ordinary packaging behavior, and the icon-searching loop is a reasonable compatibility fallback.
</details>
<evidence>
</evidence>
<summary>
Standard pinned AppImage PKGBUILD; no malicious behavior or injected code found.
</summary>
</security_assessment>

[2/4] Reviewing stably-orca.desktop, stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard pinned AppImage PKGBUILD; no malicious behavior or injected code found.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a straightforward application launcher wrapper. It sets `APPDIR` to the package-installed location `/opt/stably-orca` and executes the application's own `AppRun` binary with the `--disable-features=Vulkan` flag, passing through any user-supplied arguments. No untrusted content is downloaded or executed, no data is exfiltrated, and there is no obfuscation or hidden behavior. The comments explain the purpose of the environment variable and flags, which is consistent with fixing Electron/Chromium runtime issues in the packaged application.

The wrapper does not fetch any code at build or runtime, does not modify system files, and only launches the application from the package's own installation directory. This is standard packaging practice and contains no evidence of malicious or injected behavior.
</details>
<evidence>
</evidence>
<summary>
Safe launcher wrapper: sets APPDIR and runs the packaged AppRun normally.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.desktop...
+ Reviewed stably-orca.sh. Status: SAFE -- Safe launcher wrapper: sets APPDIR and runs the packaged AppRun normally.
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .desktop entry for a desktop application. It defines the application name, icon, categories, and the command to execute (`stably-orca %U`). There is no embedded code, network requests, file operations, or any other suspicious content. The file conforms entirely to the Freedesktop.org Desktop Entry specification and presents no security concerns.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,625
  Completion Tokens: 2,040
  Total Tokens: 15,665
  Total Cost: $0.002889
  Execution Time: 86.93 seconds

Final Status: SAFE


No issues found.
