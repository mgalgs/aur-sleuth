---
package: stably-orca-bin
pkgver: 1.4.255
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13539
completion_tokens: 1958
total_tokens: 15497
cost: 0.001588405
execution_time: 24.74
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-10T00:23:22Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for prebuilt binary, no security issues.
  - file: stably-orca.sh
    status: safe
    summary: Standard wrapper, no malicious behavior.
---

Materializing stably-orca-bin from local mirror...
Cloning https://aur.archlinux.org/stably-orca-bin.git...
Cloned stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains top-level variable assignments (pkgname, pkgver, source, checksums, etc.) and function definitions (prepare, package). No commands are executed at the global scope, no eval, no command substitution, and no network requests occur during sourcing. Therefore `makepkg --printsrcinfo` is safe; no malicious code runs at parse time.
</details>
<evidence></evidence>
<summary>No dangerous top-level code in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code in PKGBUILD.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Linux desktop entry file (.desktop). It defines application metadata including name, generic name, comment, executable path, icon, and categories. The `Exec` line runs `stably-orca %U`, which is typical for launching an Electron-based IDE. There are no network requests, obfuscated commands, file operations, or any other suspicious behavior. This file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry file, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .SRCINFO metadata file for an Arch User Repository (AUR) package. It contains only declarative key-value pairs describing the package name, version, dependencies, sources, and checksums. No executable code, network requests, obfuscation, or dangerous commands are present. All sources have provided SHA256 checksums, and the download URL points to the official GitHub releases page of the upstream project (stablyai/orca). There is no evidence of malicious behavior or supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary AppImage. It downloads the upstream release from the official GitHub repository with a pinned SHA256 checksum, extracts the AppImage, and installs the contents into `/opt/stably-orca` along with a launcher script and desktop file. No suspicious network requests, obfuscated code, or dangerous commands are present. All operations are transparent and consistent with the package's stated purpose of distributing an Electron-based IDE. The `--appimage-extract` step is the normal method for installing AppImages as regular directories. There are no red flags indicating a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD for prebuilt binary, no security issues.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for prebuilt binary, no security issues.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard wrapper for the Stably AI Orca application. It sets the `APPDIR` environment variable to `/opt/stably-orca` (the package's installation directory) and launches the AppRun binary with a Vulkan disable flag for compatibility reasons. There are no network requests, no obfuscated code, no downloads, no system modifications outside the application's scope, and no unexpected commands. The commented line about Wayland is harmless. The script performs only routine operations expected for launching a pre-installed application.
</details>
<evidence>
</evidence>
<summary>Standard wrapper, no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.sh. Status: SAFE -- Standard wrapper, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,539
  Completion Tokens: 1,958
  Total Tokens: 15,497
  Total Cost: $0.001588
  Execution Time: 24.74 seconds

Final Status: SAFE


No issues found.
