---
package: rustdesk-unattended-wayland
pkgver: 1.5.0
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10531
completion_tokens: 1698
total_tokens: 12229
cost: 0.001267357
execution_time: 22.18
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-17T11:12:18Z
file_verdicts:
  - file: rustdesk-unattended-wayland.install
    status: safe
    summary: Standard install script with usage info.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksum; no malicious content.
---

Materializing rustdesk-unattended-wayland from local mirror...
Materialized rustdesk-unattended-wayland
Analyzing rustdesk-unattended-wayland AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable definitions (pkgname, pkgver, depends, source array, etc.) and function definitions (package()). No command substitutions, backticks, or other executable code are present in the global scope that would run when the file is sourced by `makepkg --printsrcinfo`. The `install` variable points to a filename string, not an executed command. The `source_x86_64` array defines a standard download URL. All potentially dangerous operations (bsdtar, sed, install, rm) are confined to the `package()` function, which is not executed during this step. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No top-level exec; package() not sourced.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level exec; package() not sourced.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, rustdesk-unattended-wayland.install...
LLM auditresponse for rustdesk-unattended-wayland.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux install script (`.install`) that only prints informational messages to the user. It provides instructions on enabling the systemd service at boot and notes about Wayland and PipeWire permissions. There are no network requests, obfuscated code, file manipulations, or any other actions that could be considered malicious. The content is purely informational and follows normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard install script with usage info.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed rustdesk-unattended-wayland.install. Status: SAFE -- Standard install script with usage info.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file contains only standard package metadata for the `rustdesk-unattended-wayland` package. The source is a `.deb` binary fetched from the official GitHub releases page of the project (`github.com/rustdesk/rustdesk`), and the `sha256sums` field is pinned to a specific hash (not `SKIP`). All dependencies and options appear legitimate for a remote desktop application. There is no evidence of obfuscated code, suspicious network requests, or any behavior deviating from normal AUR packaging practices. The file is purely declarative and contains no executable logic.
</details>
<evidence>
</evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. It fetches the `.deb` asset from the upstream GitHub releases (rustdesk/rustdesk) under a pinned version tag, and the download URL is the project's own official source. The checksum is pinned (not SKIP), providing integrity verification.  

The `package()` function extracts the `.deb` using `bsdtar`, which is normal archive handling. The `sed` command adjusts the systemd service unit to use an absolute path for `pkill`, a routine compatibility fix. It then installs the service file, creates a symlink, and cleans up empty leftover directories from the `.deb`'s packaging. There are no obfuscated commands, no unexpected network requests, and no execution of untrusted code. All operations are confined to the package's own install destination (`$pkgdir`) and are consistent with the package's stated purpose of providing an unattended Wayland-enabled RustDesk build.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with pinned checksum; no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksum; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,531
  Completion Tokens: 1,698
  Total Tokens: 12,229
  Total Cost: $0.001267
  Execution Time: 22.18 seconds

Final Status: SAFE


No issues found.
