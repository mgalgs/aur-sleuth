---
package: claude-desktop-extra
pkgver: 1.40609.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 16735
completion_tokens: 2567
total_tokens: 19302
cost: 0.00187373592
execution_time: 231.54
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 3054
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-29T03:04:37Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums; no malicious behavior found.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard pacman install script, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums, no malicious code.
---

Cloning https://aur.archlinux.org/claude-desktop-extra.git...
Cloned claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable assignments, arrays, and comments. No code execution occurs at the global scope — there are no command substitutions, function calls, or any dangerous operations (curl, wget, eval, base64, etc.) that would run when the PKGBUILD is sourced. The `package()` function is defined but will not be executed by `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The `source` entries point to the maintainer's GitHub releases over HTTPS, which is a standard and expected download location. No `pkgver()` function is defined. Fetching the sources and sourcing the PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; standard AUR packaging.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; standard AUR packaging.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/launcher/claude-desktop); they are upstream content and were not reviewed.
Reviewing the 3 file(s) in the AUR repository. The 3054 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file. It declares package metadata, dependencies, and two `source_x86_64` / `source_aarch64` entries that point to release tarballs on the project's own GitHub repository (`github.com/patrickjaja/claude-desktop-extra/releases/download/...`). Both sources have pinned SHA-256 checksums, and no `SKIP` entries are present. There is no code to execute, no build script content, no network exfiltration, no obfuscated commands, and no unexpected file operations. The content is consistent with ordinary AUR packaging practice for a prebuilt desktop application bundle.

The only mild consideration is that the package is distributed as a prebuilt binary rather than built from source, and the URLs reference the package maintainer's own release host rather than an official upstream domain. However, the download location is the package's own upstream repository, and the checksums pin exact artifacts. This is not malicious behavior; it is a trust/packaging choice. No evidence of a supply-chain attack or injected malicious code was found.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums; no malicious behavior found.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard pacman install script that mirrors the official Claude Desktop postinst behavior. It performs three expected post-install tasks: setting the SUID bit on the Chrome sandbox binary, installing an AppArmor profile (unconfined with userns) to allow Chromium's namespace sandbox to work on recent kernels, and refreshing desktop/icon caches. It also prints informational notes about optional Cowork VM dependencies and a legacy repo name transition. There are no network requests, no obfuscated code, no execution of downloaded content, and no operations outside the package's own installation scope. All file operations are routine and expected for this type of package.
</details>
<evidence></evidence>
<summary>Standard pacman install script, no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard pacman install script, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a pre-built binary package. It downloads a tarball from the maintainer&#x27;s GitHub releases with pinned SHA256 checksums, then copies the contents into the target directory. The package() function uses only standard commands (install, cp, chmod, cat, find) with no obfuscation, network requests, code execution, or data exfiltration. The SUID bit on chrome-sandbox is a normal requirement for Electron/Chromium-based applications. The desktop entry and icon installation are routine. No evidence of injected malicious code, backdoors, or supply-chain attack vectors is present in this file.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksums, no malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,735
  Completion Tokens: 2,567
  Total Tokens: 19,302
  Total Cost: $0.001874
  Execution Time: 231.54 seconds

Final Status: SAFE


No issues found.
