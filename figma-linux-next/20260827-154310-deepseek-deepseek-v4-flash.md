---
package: figma-linux-next
pkgver: 0.17.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: f47e5ed5e9b50f484d29402229454e7d1b1d7cdb
prompt_tokens: 15019
completion_tokens: 2634
total_tokens: 17653
cost: 0.00158198026
execution_time: 175.64
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
upstream_files: 412
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-27T15:43:09Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no signs of malicious code.
  - file: figma-linux-next.desktop
    status: safe
    summary: Standard desktop launcher file; no malicious or suspicious behavior found.
  - file: figma-linux-next-launcher.sh
    status: safe
    summary: Standard Electron launcher script, no issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security concerns.
---

Cloning https://aur.archlinux.org/figma-linux-next.git...
Cloned figma-linux-next
Analyzing figma-linux-next AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains top-level variable assignments and function definitions. No dangerous command substitutions or code execution occurs at the global scope or in `pkgver()` (which is absent). The `source` array includes a tarball from the project&#x27;s own GitHub repository with a checksum, plus two local helper files with SKIP checksums—this is standard AUR practice. Fetching and extracting these sources, as done by `makepkg --nobuild --nodeps --noprepare`, poses no risk of malicious code execution because no top-level or `pkgver()` code performs network requests, runs eval, or otherwise injects untrusted payloads. The `prepare()`, `build()`, and `package()` functions are not executed during this gate and will be audited separately.
</details>
<evidence></evidence>
<summary>No malicious code at top-level or in pkgver(). Safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code at top-level or in pkgver(). Safe to fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 5 file(s) in the AUR repository. The 412 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an Arch Linux package repository. It ignores the build directories (`src/`, `pkg/`) and generated package archives (`*.pkg.tar.zst`, `*.tar.gz`). There are no commands, network requests, or any executable content. No security issues.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no security concerns.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no security concerns.
[1/5] Reviewing .SRCINFO, PKGBUILD, figma-linux-next-launcher.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices. The source is a pinned tarball from the project's own GitHub release. Checksums are present for the tarball (SKIP on the two local files is normal). The `prepare()` stage uses `bun install --ignore-scripts`, which prevents execution of arbitrary install scripts. No dangerous commands (curl, wget, eval, base64) appear. All build and install steps are standard for an Electron application using system `electron`. No suspicious activity, backdoors, or data exfiltration is present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no signs of malicious code.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, figma-linux-next-launcher.sh, figma-linux-next.desktop...
[2/5] Reviewing .SRCINFO, figma-linux-next-launcher.sh, figma-linux-next.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no signs of malicious code.
LLM auditresponse for figma-linux-next.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` launcher file for the figma-linux-next application. It defines the application name, icon, MIME types, and desktop actions such as opening new design files or FigJam boards. The `Exec` lines simply invoke the package's own binary (`figma-linux-next`) with expected arguments (`%U`, `--new-file=design`, `--new-file=figjam`). There are no network requests, no encoded or obfuscated commands, no file manipulations, and no behavior outside the normal scope of an application launcher. The file contains no security concerns.
</details>
<evidence>
</evidence>
<summary>
Standard desktop launcher file; no malicious or suspicious behavior found.</summary>
</security_assessment>

[3/5] Reviewing .SRCINFO, figma-linux-next-launcher.sh...
+ Reviewed figma-linux-next.desktop. Status: SAFE -- Standard desktop launcher file; no malicious or suspicious behavior found.
LLM auditresponse for figma-linux-next-launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This launcher script is a straightforward wrapper to start the figma-linux-next Electron application. It detects the display server type to set Ozone flags for Wayland compatibility, supplies typical performance and memory tuning flags, locates the Electron binary either via `$PATH` or a fixed system path, and determines the application root directory. The script performs no network operations, downloads, or obfuscated commands. All commands (`command -v`, `exec`, `exit`) are normal for a launcher. There is no evidence of malicious or injected behavior; the script serves only to launch the application with appropriate runtime flags.
</details>
<evidence></evidence>
<summary>Standard Electron launcher script, no issues.</summary>
</security_assessment>

[4/5] Reviewing .SRCINFO...
+ Reviewed figma-linux-next-launcher.sh. Status: SAFE -- Standard Electron launcher script, no issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR metadata file and does not contain any executable code or directives. It lists the package name, version, dependencies, sources, and checksums. The sources include a pinned tarball from the project's official GitHub releases (with a valid sha256sum) and two local files (`.desktop` and launcher script) with `SKIP` checksums, which is a normal practice for AUR packages. No network requests, obfuscated commands, unexpected file operations, or any other signs of malicious activity are present. The file solely describes the package and does not perform any actions on its own.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security concerns.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,019
  Completion Tokens: 2,634
  Total Tokens: 17,653
  Total Cost: $0.001582
  Execution Time: 175.64 seconds

Final Status: SAFE


No issues found.
