---
package: stably-orca-bin
pkgver: 1.4.195
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: c6a5a9f6b0e70545bff9fff8802c361e476b0a86
prompt_tokens: 13714
completion_tokens: 1984
total_tokens: 15698
cost: 0.00145805772
execution_time: 158.06
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 3
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-02T19:24:01Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for upstream AppImage, no malicious code.
  - file: stably-orca.desktop
    status: safe
    summary: Standard .desktop file, no security issues.
  - file: stably-orca.sh
    status: safe
    summary: Standard wrapper script, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with no malicious content.
---

Cloning https://aur.archlinux.org/stably-orca-bin.git...
Cloned stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions and function definitions at the top level. Sourcing it for `makepkg --printsrcinfo` or `makepkg --nobuild --nodeps --noprepare` does not execute any code outside of normal source fetching. The `source` array downloads the upstream AppImage from the project&apos;s official GitHub releases URL and two local helper files, and checksums are pinned. `noextract` simply prevents archive extraction during the source-fetch phase.

The `prepare()`, `build()` (absent), and `package()` functions contain the AppImage extraction and installation logic, but those are not executed by the two commands in scope due to `--nobuild` and `--noprepare`. Nothing in the top-level scope or `pkgver()` (which is not even defined) downloads and executes an untrusted payload or exfiltrates data. The use of an AppImage artifact and `chmod`/`--appimage-extract` inside `prepare()` will be reviewed in the full PKGBUILD audit, but is out of scope for this narrow safety gate.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD sourcing is safe; prepare/build/package are out of scope for this gate.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD sourcing is safe; prepare/build/package are out of scope for this gate.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 4 file(s) in the AUR repository. The 3 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, stably-orca.desktop...
[0/4] Reviewing .SRCINFO, stably-orca.desktop, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary (AppImage) application. It downloads the upstream binary from the official GitHub releases URL, verifies it with a full SHA-256 checksum (not SKIP), extracts the AppImage (standard using `--appimage-extract`), and installs the contents into the package directory along with a launcher script and desktop file. There are no network requests beyond the declared source, no obfuscated code, no unexpected system modifications, and no commands that could exfiltrate data or execute attacker-controlled code. The extraction of the AppImage is done solely to repackage the contents as a normal directory, avoiding runtime FUSE dependencies. All operations are confined to the build and package directories. No evidence of supply-chain compromise or malicious intent.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for upstream AppImage, no malicious code.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, stably-orca.desktop, PKGBUILD, stably-orca.sh...
[1/4] Reviewing .SRCINFO, stably-orca.desktop, stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for upstream AppImage, no malicious code.
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file for the Orca IDE. It defines the application name, comment, icon, categories, and launch command (`stably-orca %U`). There is no embedded code, no network requests, no obfuscation, and no dangerous operations. The file conforms to the freedesktop.org Desktop Entry Specification and does not exhibit any security concerns.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security issues.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard .desktop file, no security issues.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a straightforward wrapper script for the Stably AI Orca application. It sets the `APPDIR` environment variable to `/opt/stably-orca` and launches the application's `AppRun` with `--disable-features=Vulkan`. The script contains no network requests, no obfuscated or encoded commands, no unexpected file operations, and no references to external resources beyond the local path. All operations are confined to the package's own installed files and standard system binaries (`export`, `exec`). The comments explain the purpose of the configuration choices (Wayland/Vulkan compatibility). There is no evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard wrapper script, no security issues.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed stably-orca.sh. Status: SAFE -- Standard wrapper script, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file contains standard AUR package metadata. It defines sources (AppImage, shell script, desktop file) from the official GitHub releases page of the project. All three sources have explicit SHA-256 checksums, providing integrity verification. There is no executable code, no suspicious network requests, no obfuscation, and no deviation from normal packaging practices. No security issues identified.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata with no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,714
  Completion Tokens: 1,984
  Total Tokens: 15,698
  Total Cost: $0.001458
  Execution Time: 158.06 seconds

Final Status: SAFE


No issues found.
