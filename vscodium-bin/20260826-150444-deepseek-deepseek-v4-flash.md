---
package: vscodium-bin
pkgver: 1.126.04524
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: bf65c6be33eadea3455007f8db36db9ddf76ab3c
prompt_tokens: 25008
completion_tokens: 3746
total_tokens: 28754
cost: 0.00263445000
execution_time: 265.76
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
upstream_files: 4671
upstream_named_files: 4
unpinned_sources: 0
date: 2026-08-26T15:04:43Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard MIT license file with no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard declarative metadata, no malicious content.
  - file: vscodium-bin-url-handler.desktop
    status: safe
    summary: Standard desktop file - no security issues.
  - file: vscodium-bin-wayland.desktop
    status: safe
    summary: Standard desktop entry file; no security concerns.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security concerns.
  - file: vscodium-bin.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: vscodium-bin.install
    status: safe
    summary: Benign install script with no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard VSCodium AUR package, no malicious code.
  - file: vscodium-bin.sh
    status: safe
    summary: Standard wrapper script, no security issues.
---

Cloning https://aur.archlinux.org/vscodium-bin.git...
Cloned vscodium-bin
Analyzing vscodium-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable declarations, arrays, and function definitions. There is no `pkgver()` function or top-level command substitution that could execute arbitrary code during sourcing. The `source` array fetches files from the official VSCodium GitHub repository (raw.githubusercontent.com and github.com/releases), which is the expected upstream source. The `shopt -s extglob` line is a benign shell option. No obfuscated code, encoded payloads, or unexpected network destinations are present. Running `makepkg --nobuild --nodeps --noprepare` and `--printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD with no dangerous top-level code.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 4 file(s) in the downloaded sources (src/bin/codium, src/resources/app/resources/linux/code.png, src/resources/completions/bash/codium and 1 more); they are upstream content and were not reviewed.
Reviewing the 9 file(s) in the AUR repository. The 4671 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, .gitignore...
[0/9] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard MIT License text. It contains no executable code, no network requests, no obfuscation, and no system modifications. There is nothing malicious or suspicious in this file.
</details>
<evidence></evidence>
<summary>Standard MIT license file with no security concerns.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, .gitignore...
+ Reviewed LICENSE. Status: SAFE -- Standard MIT license file with no security concerns.
[1/9] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata declaration for the vscodium-bin AUR package. It defines package dependencies, build options, and source URLs with pinned SHA256 checksums. All source URLs point to the official VSCodium GitHub repository (github.com/VSCodium/vscodium) for both tarballs and the SVG icon. No scripts, obfuscation, or unusual operations are present. The file contains only declarative packaging metadata with no executable code, making it standard and benign.
</details>
<evidence></evidence>
<summary>Standard declarative metadata, no malicious content.</summary>
</security_assessment>

[2/9] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard declarative metadata, no malicious content.
[2/9] Reviewing .gitignore, PKGBUILD, vscodium-bin-url-handler.desktop...
LLM auditresponse for vscodium-bin-url-handler.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file that registers VSCodium as a URL handler for `vscode://` and `vscodium://` URI schemes. It contains only metadata fields (Name, Comment, Exec, Icon, etc.) and a MimeType association. The `Exec` line runs `/usr/bin/codium --open-url %U`, which is the expected binary from the package. There is no obfuscated code, no network requests, no file operations outside normal packaging, and no deviation from standard packaging practices.
</details>
<evidence></evidence>
<summary>Standard desktop file - no security issues.</summary>
</security_assessment>

[3/9] Reviewing .gitignore, PKGBUILD...
+ Reviewed vscodium-bin-url-handler.desktop. Status: SAFE -- Standard desktop file - no security issues.
[3/9] Reviewing .gitignore, PKGBUILD, vscodium-bin-wayland.desktop...
LLM auditresponse for vscodium-bin-wayland.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Linux desktop entry file for VSCodium, a community build of Visual Studio Code. The file defines a launcher that runs `/usr/bin/codium` with specific flags to enable Wayland support (`--enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform=wayland`). There are no suspicious network requests, obfuscated code, dangerous commands, or system modifications outside of normal application launching. The file is entirely benign and follows typical desktop entry conventions.
</details>
<evidence></evidence>
<summary>Standard desktop entry file; no security concerns.</summary>
</security_assessment>

[3/9] Reviewing .gitignore, PKGBUILD, vscodium-bin-wayland.desktop, vscodium-bin.desktop...
[4/9] Reviewing .gitignore, PKGBUILD, vscodium-bin.desktop...
+ Reviewed vscodium-bin-wayland.desktop. Status: SAFE -- Standard desktop entry file; no security concerns.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The .gitignore file contains only standard git ignore patterns for build artifacts and downloaded sources (compressed archives, extracted source directories, and compiled packages). There is no executable code, no network operations, no obfuscation, and no deviation from normal packaging practices. This file poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore with no security concerns.</summary>
</security_assessment>

[4/9] Reviewing .gitignore, PKGBUILD, vscodium-bin.desktop, vscodium-bin.install...
[5/9] Reviewing PKGBUILD, vscodium-bin.desktop, vscodium-bin.install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security concerns.
LLM auditresponse for vscodium-bin.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the VSCodium application. It contains no executable code, network requests, or system modifications. It simply defines metadata such as the application name, icon, categories, and the command to run (`/usr/bin/codium`). All fields are typical for a desktop entry and pose no security risk.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[5/9] Reviewing PKGBUILD, vscodium-bin.desktop, vscodium-bin.install, vscodium-bin.sh...
[6/9] Reviewing PKGBUILD, vscodium-bin.install, vscodium-bin.sh...
+ Reviewed vscodium-bin.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for vscodium-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains only helper functions for colored output and a `post_install` function that prints a note directing users to place custom flags in `~/.config/codium-flags.conf`. There are no network requests, file writes, code execution, or any other operations that could indicate a supply-chain attack. The content is entirely benign and consistent with standard AUR installation scripts.
</details>
<evidence>
</evidence>
<summary>Benign install script with no malicious behavior.</summary>
</security_assessment>

[7/9] Reviewing PKGBUILD, vscodium-bin.sh...
+ Reviewed vscodium-bin.install. Status: SAFE -- Benign install script with no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard binary AUR packaging practices for VSCodium. It downloads prebuilt tarballs from the official VSCodium GitHub releases and verifies them with SHA-256 checksums. The package() function performs only routine installation steps: copying files into `/opt/vscodium-bin`, setting up symlinks, installing desktop files, icons, shell completions, and a wrapper script. The only unusual permission is the setuid chrome-sandbox binary, which is a normal requirement for Electron-based applications and originates from the upstream project. There is no obfuscated code, no suspicious network requests beyond the declared upstream sources, and no operations that manipulate files outside the package's own directory tree. No evidence of a supply-chain attack or injected malicious functionality was found.
</details>
<evidence></evidence>
<summary>Standard VSCodium AUR package, no malicious code.</summary>
</security_assessment>

[8/9] Reviewing vscodium-bin.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard VSCodium AUR package, no malicious code.
LLM auditresponse for vscodium-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher script for the VSCodium binary. It reads optional command-line flags from a user configuration file (`~/.config/codium-flags.conf`), ignoring comment lines, and then launches the application binary (`/opt/vscodium-bin/bin/codium`) with those flags and any arguments passed to the script. There are no suspicious operations, network requests, obfuscated code, or unexpected file manipulations. The script follows normal AUR packaging conventions for providing a wrapper that respects user preferences.
</details>
<evidence></evidence>
<summary>Standard wrapper script, no security issues.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed vscodium-bin.sh. Status: SAFE -- Standard wrapper script, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 25,008
  Completion Tokens: 3,746
  Total Tokens: 28,754
  Total Cost: $0.002634
  Execution Time: 265.76 seconds

Final Status: SAFE


No issues found.
