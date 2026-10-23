---
package: xodus-nexus-bin
pkgver: 0.3.11
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17111
completion_tokens: 4184
total_tokens: 21295
cost: 0.002318589
execution_time: 23.8
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-23T03:23:57Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore whitelisting AUR packaging files; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums and official upstream sources; no security issues found.
  - file: xodus-nexus
    status: safe
    summary: Minimal launcher executes installed package binary with arguments; no malicious behavior found.
  - file: xodus-nexus.desktop
    status: safe
    summary: Standard desktop entry file; no malicious or suspicious behavior present.
  - file: PKGBUILD
    status: safe
    summary: Standard checksum-pinned AppImage PKGBUILD; no malicious behavior found.
  - file: xodus-nexus-bin.install
    status: safe
    summary: Simple informational install hook; only echo statements, no malicious behavior.
---

Materializing xodus-nexus-bin from local mirror...
Materialized xodus-nexus-bin
Analyzing xodus-nexus-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable and array assignments: `pkgname`, `pkgver`, `pkgrel`, `_appimage`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `optdepends`, `provides`, `conflicts`, `options`, `install`, `source`, `noextract`, and `sha256sums`. There are no top-level command substitutions, no `eval`, no `base64`/`curl`/`wget` calls, and no code that would execute during `makepkg --printsrcinfo`.

Suspicious-looking operations such as `chmod +x`, running the AppImage with `--appimage-extract`, and copying files into `$pkgdir` all appear inside `prepare()` and `package()`. Those functions are not executed by `makepkg --printsrcinfo`, so they are out of scope for this narrow gate and will be reviewed in the full audit. Nothing in the global scope poses a risk when sourcing this PKGBUILD.
</details>
<evidence>
</evidence>
<summary>
Global scope is safe; only static assignments, no execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope is safe; only static assignments, no execution risk.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository. It ignores all files by default while explicitly whitelisting the packaging-related files: `PKGBUILD`, `.SRCINFO`, the `xodus-nexus` binary/symlink, the desktop entry, and the `.install` script. This is normal and expected AUR packaging practice. There is no obfuscated code, no network activity, no file modification logic, and no indication of injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore whitelisting AUR packaging files; no security concerns.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, PKGBUILD, xodus-nexus...
[1/6] Reviewing .SRCINFO, PKGBUILD, xodus-nexus...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore whitelisting AUR packaging files; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` describes a standard AUR binary package for `xodus-nexus-bin`. It declares sources from the project's official GitHub releases and raw GitHub license file, with pinned SHA-256 checksums for every source. No suspicious network endpoints, encoded commands, file tampering, or unexpected build-time behavior are present.

The only nonstandard elements are expected for an AppImage-based `-bin` package: `noextract` for the AppImage, `options = !strip` and `options = !debug`, and an install script referenced via `install = xodus-nexus-bin.install`. These are ordinary packaging choices and do not indicate malicious behavior. Dependencies and optdependencies are appropriate for a GTK-based game launcher.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums and official upstream sources; no security issues found.
</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, xodus-nexus...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums and official upstream sources; no security issues found.
[2/6] Reviewing PKGBUILD, xodus-nexus, xodus-nexus-bin.install...
LLM auditresponse for xodus-nexus:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a minimal launcher script that simply executes the package's installed binary at `/opt/xodus-nexus/xodus-nexus`, passing through any command-line arguments with `"$@"`. This is standard behavior for an application wrapper installed into the system PATH.

There is no network access, no encoded or obfuscated content, no file system modification, and no execution of untrusted downloaded code. The script only runs a binary from the package's own installation directory, which is expected for this type of packaged application.
</details>
<evidence>
</evidence>
<summary>
Minimal launcher executes installed package binary with arguments; no malicious behavior found.
</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, xodus-nexus, xodus-nexus-bin.install, xodus-nexus.desktop...
[3/6] Reviewing PKGBUILD, xodus-nexus-bin.install, xodus-nexus.desktop...
+ Reviewed xodus-nexus. Status: SAFE -- Minimal launcher executes installed package binary with arguments; no malicious behavior found.
LLM auditresponse for xodus-nexus.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org desktop entry file for the Xodus Nexus application. It declares the application type, display name, icon, executable command, and category. The `Exec=xodus-nexus %U` line simply launches the application binary with any passed URLs, which is normal desktop-entry behavior for a game launcher. There are no network requests, code execution tricks, obfuscation, or file operations beyond launching the named application. No security issues found.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry file; no malicious or suspicious behavior present.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, xodus-nexus-bin.install...
+ Reviewed xodus-nexus.desktop. Status: SAFE -- Standard desktop entry file; no malicious or suspicious behavior present.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AppImage packaging practices. It downloads the upstream release AppImage from the project's own GitHub releases, verifies it with a pinned SHA-256 checksum, extracts it with `--appimage-extract`, and repackages the extracted contents under `/opt/xodus-nexus`. It also installs desktop/icon/license files and a wrapper script into `/usr/bin`. All network destinations are the declared upstream project, and all sources have pinned checksums.

There are no obfuscated commands, suspicious network endpoints, data exfiltration, backdoors, or modifications to unrelated system files. `chmod +x` and executing the AppImage extractor is normal for AppImage-based AUR packages. The wrapper script and `.install` file are not shown in the provided content, but nothing in the PKGBUILD itself indicates malicious behavior.
</details>
<evidence></evidence>
<summary>Standard checksum-pinned AppImage PKGBUILD; no malicious behavior found.</summary>
</security_assessment>

[5/6] Reviewing xodus-nexus-bin.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard checksum-pinned AppImage PKGBUILD; no malicious behavior found.
LLM auditresponse for xodus-nexus-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script containing only `post_install()` and `post_upgrade()` hooks. Both functions merely print informational messages to the user via `echo` statements. There are no network requests, file operations, downloads, code execution, obfuscation, or references to external hosts. The messages note that the application manages its own Wine/Proton runtime and backend updates from within the app; that is upstream application functionality, and this install script performs no such action itself. No security issues found.
</details>
<evidence>
</evidence>
<summary>
Simple informational install hook; only echo statements, no malicious behavior.
</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed xodus-nexus-bin.install. Status: SAFE -- Simple informational install hook; only echo statements, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,111
  Completion Tokens: 4,184
  Total Tokens: 21,295
  Total Cost: $0.002319
  Execution Time: 23.80 seconds

Final Status: SAFE


No issues found.
