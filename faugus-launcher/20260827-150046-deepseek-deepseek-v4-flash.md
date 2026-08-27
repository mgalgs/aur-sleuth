---
package: faugus-launcher
pkgver: 2.2.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: f47e5ed5e9b50f484d29402229454e7d1b1d7cdb
prompt_tokens: 23720
completion_tokens: 2044
total_tokens: 25764
cost: 0.00221129216
execution_time: 26.89
files_reviewed: 4
files_skipped: 1
maintainer_files: 5
upstream_files: 93
upstream_named_files: 0
unpinned_sources: 1
date: 2026-08-27T15:00:44Z
file_verdicts:
  - file: faugus-launcher.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: faugus-launcher.png
    status: skipped
    summary: "Skipping binary file: faugus-launcher.png"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious content.
  - file: faugus-launcher.py
    status: safe
    summary: Legitimate game launcher; no supply-chain attack indicators.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO, no security concerns.
---

Cloning https://aur.archlinux.org/faugus-launcher.git...
Cloned faugus-launcher
Analyzing faugus-launcher AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments (pkgname, pkgver, etc.) and defines `build()` and `package()` functions. No code executes at the top level or in `pkgver()`. The single source is a GitHub tarball, which is standard. The `sha256sums` is set to `'SKIP'`, but that is not a concern for this narrow gate—`makepkg` will still download the source without executing any unexpected code. No dangerous commands (curl, eval, etc.) are present in the sourcing scope.
</details>
<evidence>
</evidence>
<summary>No malicious top-level code; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: https://github.com/Faugus/faugus-launcher/archive/refs/tags/2.2.0.tar.gz
Reviewing the 5 file(s) in the AUR repository. The 93 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, faugus-launcher.desktop...
LLM auditresponse for faugus-launcher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Linux desktop entry file (`.desktop`) for the application Faugus Launcher. It specifies the application type, name, executable command, icon, and categories. There is no embedded code, no network requests, no obfuscation, and no deviation from normal packaging practices. The file contains no instructions and performs no operations beyond describing how the launcher should appear in a desktop environment.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, PKGBUILD, faugus-launcher.desktop, faugus-launcher.png...
[1/5] Reviewing .SRCINFO, PKGBUILD, faugus-launcher.png...
+ Reviewed faugus-launcher.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
[1/5] Reviewing .SRCINFO, PKGBUILD, faugus-launcher.png, faugus-launcher.py...
[2/5] Reviewing .SRCINFO, PKGBUILD, faugus-launcher.py...
! Reviewed faugus-launcher.png. Status: SKIPPED -- Skipping binary file: faugus-launcher.png
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. It downloads the source tarball from the official GitHub repository (`https://github.com/Faugus/${pkgname}/archive/refs/tags/${pkgver}.tar.gz`), which is the expected upstream location. The build and package functions use meson, a standard build system, with no suspicious commands. The `sha256sums` is set to `SKIP`, which is common for AUR packages (especially when using tarballs from GitHub where checksums may change due to dynamic archives) and is not indicative of malice. There are no network requests, obfuscated code, or unexpected file operations. The dependencies are legitimate and relevant to the application's purpose (gaming launcher). No evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious content.</summary>
</security_assessment>

[3/5] Reviewing .SRCINFO, faugus-launcher.py...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious content.
LLM auditresponse for faugus-launcher.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Python GTK application for managing and launching Wine/Proton games. It reads and writes game configuration files under `~/.config/faugus-launcher/`, creates `.desktop` shortcuts in `~/.local/share/applications/` and on the desktop, and launches games via `umu-run`. There are no network requests to unexpected hosts, no encoded or obfuscated payloads, no attempts to exfiltrate system data, and no backdoors. While user-supplied fields are passed to shell commands (which could allow command injection if a user manually enters malicious input), that is a potential vulnerability in the application's own functionality, not evidence of a supply-chain attack. The script does exactly what a game launcher should do: manage game entries, call system tools (winecfg, winetricks, 7z), and run games. No genuinely malicious behavior is present.
</details>
<evidence></evidence>
<summary>Legitimate game launcher; no supply-chain attack indicators.</summary>
</security_assessment>

[4/5] Reviewing .SRCINFO...
+ Reviewed faugus-launcher.py. Status: SAFE -- Legitimate game launcher; no supply-chain attack indicators.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains only package metadata for the faugus-launcher AUR package. The source is fetched from the official upstream GitHub repository under a tagged release. The checksum is set to SKIP, which is permissible for release tarballs (though not best practice) and is explicitly not considered a sign of malice under these guidelines. All dependencies are standard Python/GTK libraries. There is no executable code, obfuscation, network requests, or system modifications defined in this file. No security issues are present.
</details>
<evidence>
</evidence>
<summary>Standard AUR .SRCINFO, no security concerns.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: faugus-launcher.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,720
  Completion Tokens: 2,044
  Total Tokens: 25,764
  Total Cost: $0.002211
  Execution Time: 26.89 seconds

Final Status: SAFE


No issues found.


Audit Skips:

faugus-launcher.png: [SKIPPED] Skipping binary file: faugus-launcher.png
