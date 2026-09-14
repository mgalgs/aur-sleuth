---
package: stably-orca-bin
pkgver: 1.4.201
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 13694
completion_tokens: 2847
total_tokens: 16541
cost: 0.001717893128
execution_time: 51.8
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-14T11:04:38Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with pinned checksums for official AppImage; no malicious behavior.
  - file: stably-orca.sh
    status: safe
    summary: Simple wrapper launching AppRun with a Vulkan flag; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AppImage PKGBUILD with pinned checksums and no malicious behavior detected.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
No code executes at the top-level scope beyond safe variable and array assignments. All potentially risky operations (chmod, AppImage extraction, file installation) are confined within `prepare()` and `package()` functions, which are not invoked by `makepkg --printsrcinfo`. No dangerous global command substitutions, URL calls, or data exfiltration are present. Running this specific command poses no security risk.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to parse.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.desktop` entry file for the Orca application. It defines a desktop shortcut that launches the `stably-orca` executable. There are no embedded commands, network requests, obfuscations, or any other suspicious elements. The file conforms to the expected format for Arch Linux package desktop entries and does not exhibit any signs of malicious intent.
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
This is a standard AUR `.SRCINFO` metadata file for a prebuilt Electron application. The sources are the official GitHub release AppImage from the project's own repository (`https://github.com/stablyai/orca/releases/...`), plus two local packaging support files. All three sources have pinned sha256 checksums, which is good practice and provides integrity verification.

There are no suspicious network operations, no obfuscated commands, no unexpected file operations, and no executable code in this file. The listed dependencies are typical for an Electron/GTK application, and the conflicts/provides entries are normal packaging metadata. The `noextract` and `!strip`/`!debug` options are also routine for AppImage-based AUR packages. No evidence of malicious or supply-chain behavior was found.
</details>
<evidence>
</evidence>
<summary>
Standard .SRCINFO with pinned checksums for official AppImage; no malicious behavior.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with pinned checksums for official AppImage; no malicious behavior.
LLM auditresponse for stably-orca.sh:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard shell wrapper for an extracted AppImage-based application. It sets `APPDIR=/opt/stably-orca` to help the upstream AppRun locate its application directory, then executes `${APPDIR}/AppRun` with a Chromium/Electron flag (`--disable-features=Vulkan`) and passes through the user&#39;s arguments with `"$@"`.

There is no suspicious behavior: no network access, no encoded or obfuscated commands, no downloading or executing remote content, no writes outside the application directory, and no tampering with unrelated system files. Passing runtime flags to the application is normal wrapper functionality. The file is consistent with ordinary AUR packaging practices and does not contain any injected malicious code.
</details>
<evidence>
</evidence>
<summary>
Simple wrapper launching AppRun with a Vulkan flag; no malicious behavior found.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed stably-orca.sh. Status: SAFE -- Simple wrapper launching AppRun with a Vulkan flag; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AppImage repackaging recipe. It downloads the upstream `orca-linux.AppImage` from the project's official GitHub releases URL, verifies a pinned `sha256sum`, extracts it with `--appimage-extract`, and installs the extracted tree into `/opt/stably-orca` along with a launcher script, desktop entry, and icons. All sources have concrete checksums, and no sources are set to `SKIP`.

The operations performed are consistent with normal packaging: running the AppImage with `--appimage-extract` is the standard way to unpack an AppImage, and `install`, `cp`, and `chmod` are all used to place files into `$pkgdir`. There is no obfuscation, no unexpected network fetch, no execution of code from an unrelated host, and no attempt to modify data outside the package's own install scope.
</details>
<evidence>
</evidence>
<summary>
Standard AppImage PKGBUILD with pinned checksums and no malicious behavior detected.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AppImage PKGBUILD with pinned checksums and no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,694
  Completion Tokens: 2,847
  Total Tokens: 16,541
  Total Cost: $0.001718
  Execution Time: 51.80 seconds

Final Status: SAFE


No issues found.
