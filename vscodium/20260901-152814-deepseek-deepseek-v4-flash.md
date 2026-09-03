---
package: vscodium
pkgver: 1.126.04524
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 21556
completion_tokens: 2985
total_tokens: 24541
cost: 0.0021002338
execution_time: 43.39
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: ok
upstream_files: 406
upstream_named_files: 3
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T15:28:13Z
file_verdicts:
  - file: BUILDING
    status: safe
    summary: Documentation-only build instructions; standard packaging workflow, no malicious behavior detected.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security concerns.
  - file: vscodium-uri-handler.desktop
    status: safe
    summary: Standard desktop entry file; no security issues.
  - file: vscodium.desktop
    status: safe
    summary: Standard .desktop file, no security issues.
  - file: vscodium-wayland.desktop
    status: safe
    summary: Standard desktop entry; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned sources, no malicious code.
---

Cloning https://aur.archlinux.org/vscodium.git...
Cloned vscodium
Analyzing vscodium AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments, array definitions, and a case statement based on `$CARCH`. The source array references three local `.desktop` files and one remote tarball from the official VSCodium GitHub releases URL, with a fixed checksum provided. There is no top-level code that executes arbitrary commands, downloads from non-standard hosts, or performs any obfuscated operations. The `build()` and `package()` functions contain potentially dangerous commands (sourcing external scripts, file manipulation), but these are not executed during the narrow scope of `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`. Therefore, running these commands is safe.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code; sources are legitimate.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sources are legitimate.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 3 file(s) in the downloaded sources (src/build.sh, src/get_repo.sh, src/src/stable/resources/linux/code.svg); they are upstream content and were not reviewed.
Reviewing the 7 file(s) in the AUR repository. The 406 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, BUILDING...
[0/7] Reviewing .SRCINFO, BUILDING, .gitignore...
LLM auditresponse for BUILDING:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a documentation file explaining how to build, install, and update the vscodium AUR package. It contains standard `git clone`, `makepkg`, `pacman -U`, and AUR update commands. The `makepkg --printsrcinfo`, `git add`, `git commit`, and `git push` steps are normal maintainer workflow for updating an AUR package. There is no obfuscated code, no suspicious network exfiltration, no downloading and executing code from unexpected hosts, and no system modification beyond routine package building and installation. The commands are consistent with ordinary Arch Linux packaging practices.
</details>
<evidence>
</evidence>
<summary>
Documentation-only build instructions; standard packaging workflow, no malicious behavior detected.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, BUILDING, .gitignore, PKGBUILD...
[1/7] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed BUILDING. Status: SAFE -- Documentation-only build instructions; standard packaging workflow, no malicious behavior detected.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an AUR package repository. It ignores all files except those explicitly listed (`.gitignore`, `.SRCINFO`, `BUILDING`, `PKGBUILD`, and several `.desktop` files). There is no executable code, no network requests, no obfuscation, and no system modification commands. This is a typical configuration file for version control and presents no security risk.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore with no malicious content.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, .gitignore, PKGBUILD, vscodium-uri-handler.desktop...
[2/7] Reviewing .SRCINFO, PKGBUILD, vscodium-uri-handler.desktop...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard metadata descriptor for the Arch User Repository (AUR). It contains no executable code. All source URLs point to the official VSCodium GitHub release page, and all sha256sums are provided and pinned. Dependencies and build tools are typical for this project. There is no evidence of malicious network requests, obfuscated commands, or unexpected file operations. The file follows normal AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Standard metadata file, no security concerns.</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, PKGBUILD, vscodium-uri-handler.desktop, vscodium-wayland.desktop...
[3/7] Reviewing PKGBUILD, vscodium-uri-handler.desktop, vscodium-wayland.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security concerns.
LLM auditresponse for vscodium-uri-handler.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for registering a URI scheme handler for VSCodium. It launches `/usr/bin/codium --open-url %U`, which is the expected behavior for handling `vscodium://` URIs. No malicious content, obfuscation, or unusual operations are present. It follows normal packaging conventions.</details>
<evidence></evidence>
<summary>Standard desktop entry file; no security issues.</summary>
</security_assessment>

[4/7] Reviewing PKGBUILD, vscodium-wayland.desktop...
+ Reviewed vscodium-uri-handler.desktop. Status: SAFE -- Standard desktop entry file; no security issues.
[4/7] Reviewing PKGBUILD, vscodium-wayland.desktop, vscodium.desktop...
LLM auditresponse for vscodium.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Freedesktop.org `.desktop` file for the VSCodium application. It defines the application name, comment, executable path (`/usr/bin/codium %F`), icon, categories, MIME types, and a desktop action for opening a new empty window. There are no signs of malicious code, obfuscation, network requests, or unusual file operations. The file is entirely declarative and follows normal packaging practices for desktop applications.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security issues.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, vscodium-wayland.desktop...
+ Reviewed vscodium.desktop. Status: SAFE -- Standard .desktop file, no security issues.
LLM auditresponse for vscodium-wayland.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file for launching VSCodium with Wayland-specific flags. It defines no network requests, no file operations outside of what a desktop entry typically does, and no obfuscated code. The command simply runs `/usr/bin/codium` with flags to enable Wayland support and passes file arguments (`%F`). There is no deviation from normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard desktop entry; no security concerns.</summary>
</security_assessment>

[6/7] Reviewing PKGBUILD...
+ Reviewed vscodium-wayland.desktop. Status: SAFE -- Standard desktop entry; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for building VSCodium from source. All source URLs point to the official VSCodium GitHub releases and are pinned with SHA256 checksums. The build process uses nvm to install a specific Node.js version from `.nvmrc` (included in the verified source tarball) and sources upstream build scripts (`get_repo.sh`, `build.sh`). There are no suspicious network requests, obfuscated commands, or unusual system modifications. The `package()` function only installs files and creates symlinks, which is typical. No evidence of malicious or dangerous behavior was found.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned sources, no malicious code.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned sources, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 21,556
  Completion Tokens: 2,985
  Total Tokens: 24,541
  Total Cost: $0.002100
  Execution Time: 43.39 seconds

Final Status: SAFE


No issues found.
