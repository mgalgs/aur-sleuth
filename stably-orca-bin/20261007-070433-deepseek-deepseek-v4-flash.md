---
package: stably-orca-bin
pkgver: 1.4.222
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13467
completion_tokens: 1872
total_tokens: 15339
cost: 0.00280017
execution_time: 49.72
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-07T07:04:32Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata with verified checksums, no malicious content.
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: "Safe: standard prebuilt Electron AUR packaging with pinned checksums."
  - file: stably-orca.sh
    status: safe
    summary: Clean wrapper script, no security issues.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard variable definitions and function declarations at the top level. There are no command substitutions, backtick executions, `eval` calls, or any other active code that would execute when the file is sourced by `makepkg --printsrcinfo`. The `prepare()`, `build()`, and `package()` functions are defined but never called during the `--printsrcinfo` step, so they are out of scope for this narrow gate. No evidence of malicious top-level code exists.
</details>
<evidence></evidence>
<summary>No executable code at top level; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code at top level; sourcing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains standard package metadata for an AUR package. It declares three sources: an AppImage from the project's official GitHub releases page and two supporting files (a shell script and a desktop file). All sources have explicit SHA-256 checksums, which are not skipped and can be verified. There is no obfuscated code, no network requests to unexpected hosts, no dangerous commands (eval, curl, wget, etc.), and no file system manipulation. The file solely describes the package structure and does not contain any executable content. It follows normal AUR packaging practices without any indicators of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata with verified checksums, no malicious content.</summary>
</security_assessment>

[1/4] Reviewing PKGBUILD, stably-orca.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata with verified checksums, no malicious content.
[1/4] Reviewing PKGBUILD, stably-orca.desktop, stably-orca.sh...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Linux desktop entry file (`.desktop`) for the "stably-orca" application, an Electron-based IDE. It contains no executable code, no network requests, no obfuscation, and no suspicious operations. The `Exec` line simply runs the package's own binary with the standard `%U` argument for URL handling, which is normal and expected. There is no evidence of injected malicious behavior or supply chain attack.
</details>
<evidence>
</evidence>
<summary>Standard desktop entry; no security concerns.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR packaging recipe for a prebuilt Electron application. It downloads the AppImage from the official GitHub releases URL (https://github.com/stablyai/orca/releases/download/), verifies it with a pinned SHA256 checksum, extracts it using the standard `--appimage-extract` flag, and installs the extracted contents under `/opt/stably-orca`. It also installs a launcher script, a desktop entry, and icons from the extracted tree. There are no obfuscated commands, no unexpected network requests (the only download is the package's own upstream source), no attempts to exfiltrate data, and no execution of untrusted code beyond the normal build/install process. The icon search loop and error handling are benign and serve a legitimate packaging purpose.
</details>
<evidence></evidence>
<summary>Safe: standard prebuilt Electron AUR packaging with pinned checksums.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Safe: standard prebuilt Electron AUR packaging with pinned checksums.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a simple wrapper that sets environment variable `APPDIR` and launches `AppRun` with `--disable-features=Vulkan`. It contains no network requests, obfuscated code, or unusual file operations. The comments explain the rationale (Workaround for upstream AppRun path detection and Vulkan compatibility). This is standard packaging practice for an AppImage-based application.
</details>
<evidence></evidence>
<summary>Clean wrapper script, no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.sh. Status: SAFE -- Clean wrapper script, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,467
  Completion Tokens: 1,872
  Total Tokens: 15,339
  Total Cost: $0.002800
  Execution Time: 49.72 seconds

Final Status: SAFE


No issues found.
