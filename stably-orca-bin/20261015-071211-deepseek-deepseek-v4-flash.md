---
package: stably-orca-bin
pkgver: 1.4.226
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13464
completion_tokens: 1941
total_tokens: 15405
cost: 0.001578486
execution_time: 38.41
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-15T07:12:10Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums; no malicious behavior.
  - file: stably-orca.sh
    status: safe
    summary: Wrapper script is benign; no security concerns.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope consists solely of variable definitions (pkgname, pkgver, source, sha256sums, etc.) and comments. No command substitutions, external program calls, or network operations are executed at the top level. Functions `prepare()` and `package()` are defined but not invoked during `makepkg --printsrcinfo`. There is no malicious code that would execute during sourcing.
</details>
<evidence></evidence>
<summary>No dangerous top-level code in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code in PKGBUILD.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing PKGBUILD...
[0/4] Reviewing PKGBUILD, .SRCINFO...
[0/4] Reviewing PKGBUILD, .SRCINFO, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for an Electron-based IDE application (Orca by Stably AI). It contains only metadata fields: application name, generic name, comment, executable command (`stably-orca %U`), terminal flag, icon, categories, and startup WM class. There are no network requests, obfuscated code, file operations, or any other potentially malicious behavior. The file conforms to the freedesktop.org Desktop Entry Specification and is typical for packaging GUI applications in Linux distributions. No security concerns.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing PKGBUILD, .SRCINFO, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing PKGBUILD, .SRCINFO, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO metadata file for the AUR package stably-orca-bin. It contains only package metadata, source URLs, and checksums. All source URLs point to the official GitHub repository of the upstream project (stablyai/orca). There are no executable commands, network requests, obfuscated content, or system modifications present in the file. Checksums are provided and verified. No indicators of supply-chain attack or malicious behavior are present. The file adheres to normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard metadata file with no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a prebuilt AppImage. All sources are pinned with SHA-256 checksums, including the upstream AppImage and support files. No network requests beyond downloading the declared upstream release are performed. The `prepare()` function extracts the AppImage (which is a standard approach for repackaging AppImages as regular packages), and `package()` copies files into the package directory. There are no calls to `curl`, `wget`, `eval`, `base64`, or any obfuscated commands. No file operations occur outside the expected package paths (`$srcdir`, `$pkgdir`). No post-install hooks that modify system configuration or run arbitrary code are present. The script is transparent and consistent with the stated purpose of packaging the Stably Orca application.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksums; no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums; no malicious behavior.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `stably-orca.sh` is a simple wrapper script for the Stably AI Orca application. It exports the `APPDIR` environment variable to `/opt/stably-orca` and then executes the application&#39;s `AppRun` binary with `--disable-features=Vulkan`, passing along any user-provided arguments. There are no network requests, downloads, obfuscated code, file modifications, or any other suspicious operations. The script only performs standard application launching tasks, consistent with AUR packaging practices. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Wrapper script is benign; no security concerns.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.sh. Status: SAFE -- Wrapper script is benign; no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,464
  Completion Tokens: 1,941
  Total Tokens: 15,405
  Total Cost: $0.001578
  Execution Time: 38.41 seconds

Final Status: SAFE


No issues found.
