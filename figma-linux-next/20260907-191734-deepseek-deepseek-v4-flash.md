---
package: figma-linux-next
pkgver: 0.20.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 14750
completion_tokens: 2187
total_tokens: 16937
cost: 0.001694501144
execution_time: 141.77
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-07T19:17:34Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata, no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR builds; no security concerns.
  - file: figma-linux-next-launcher.sh
    status: safe
    summary: Standard Electron launcher, no malicious behavior.
  - file: figma-linux-next.desktop
    status: safe
    summary: Standard desktop entry file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no security concerns.
---

Materializing figma-linux-next from local mirror...
Materialized figma-linux-next
Analyzing figma-linux-next AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable definitions and function definitions (prepare, build, package). There are no command substitutions, backtick executions, `eval`, or any other code that runs at global scope. The `source` array uses `$pkgver` variable expansion, but `pkgver` is a static string defined earlier; this is normal. No dangerous operations occur during sourcing. Therefore, running `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No global-scope code execution risks present.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No global-scope code execution risks present.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It defines package metadata, sources, dependencies, and checksums. Checksums for the local files (`figma-linux-next.desktop` and `figma-linux-next-launcher.sh`) are set to `SKIP`, which is a common and accepted practice for non-archived sources. The main source tarball has a pinned SHA-256 checksum, providing integrity verification. There are no network requests, code execution, obfuscation, or any other malicious indicators in this metadata file. The content is entirely routine for AUR packaging.
</details>
<evidence></evidence>
<summary>Standard AUR package metadata, no malicious content.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD, figma-linux-next-launcher.sh...
[1/5] Reviewing .gitignore, PKGBUILD, figma-linux-next-launcher.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata, no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains standard entries for ignoring build artifacts commonly generated during AUR package builds (`src/`, `pkg/`, `*.pkg.tar.zst`, `*.tar.gz`). There is no executable code, no network requests, no obfuscation, and no sign of malicious behavior. The file is harmless and conforms to normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR builds; no security concerns.</summary>
</security_assessment>

[1/5] Reviewing .gitignore, PKGBUILD, figma-linux-next-launcher.sh, figma-linux-next.desktop...
[2/5] Reviewing PKGBUILD, figma-linux-next-launcher.sh, figma-linux-next.desktop...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR builds; no security concerns.
LLM auditresponse for figma-linux-next-launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The launcher script is a standard wrapper for an Electron application. It detects the display server (Wayland/X11), sets performance flags for GPU acceleration, locates the Electron binary, and executes it with the application path. There are no network requests, file downloads, obfuscated code, unsafe eval calls, or attempts to exfiltrate data. The script only interacts with the local file system to verify the presence of required files and binaries, and then runs the user-provided arguments via `exec` in a controlled manner. No malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard Electron launcher, no malicious behavior.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, figma-linux-next.desktop...
+ Reviewed figma-linux-next-launcher.sh. Status: SAFE -- Standard Electron launcher, no malicious behavior.
LLM auditresponse for figma-linux-next.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file (`.desktop`). It defines application metadata, launch command, MIME type handling, and two desktop actions for creating new design/figjam files. No executable code, network requests, obfuscation, or system modifications are present. The content adheres to the freedesktop.org Desktop Entry Specification and is typical for packaging a graphical application.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security concerns.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed figma-linux-next.desktop. Status: SAFE -- Standard desktop entry file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for an Electron-based application. It downloads the source tarball from the project's official GitHub releases, uses `bun install --ignore-scripts` (which prevents arbitrary post-install scripts from running), and builds the application normally. All source files are from the project's own repository, and no external or unexpected network requests are made during build or package time. The use of SKIP checksums for the local desktop and launcher files is standard for AUR packages. No malicious code, obfuscation, or suspicious operations are present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no security concerns.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,750
  Completion Tokens: 2,187
  Total Tokens: 16,937
  Total Cost: $0.001695
  Execution Time: 141.77 seconds

Final Status: SAFE


No issues found.
