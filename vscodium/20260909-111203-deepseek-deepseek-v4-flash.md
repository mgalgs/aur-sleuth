---
package: vscodium
pkgver: 1.135.06055
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 21297
completion_tokens: 3108
total_tokens: 24405
cost: 0.002437816878
execution_time: 61.53
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-09T11:12:03Z
file_verdicts:
  - file: BUILDING
    status: safe
    summary: Standard build instructions, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file; no malicious content found.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file for an AUR package. No security issues.
  - file: vscodium-wayland.desktop
    status: safe
    summary: Standard .desktop file, no security concerns.
  - file: vscodium-uri-handler.desktop
    status: safe
    summary: Standard URI handler desktop entry, no issues.
  - file: vscodium.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with verified upstream source.
---

Materializing vscodium from local mirror...
Materialized vscodium
Analyzing vscodium AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only standard variable definitions (pkgname, pkgver, etc.) and a benign `case` block that assigns an architecture constant based on `$CARCH`. There are no command substitutions, no downloads, no executions of external programs, and no dangerous operations that would execute during sourcing. The `build()` and `package()` functions are defined but not invoked during `--printsrcinfo`, so any code inside them is out of scope for this gate.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to parse.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, BUILDING...
LLM auditresponse for BUILDING:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard BUILDING documentation file that explains how to build, install, and update the vscodium AUR package. It contains only benign shell commands for cloning the repository, building with `makepkg`, installing the package, and updating the AUR with new code. There is no obfuscated code, no network requests to unexpected hosts, no exfiltration of data, and no system modifications outside the normal packaging workflow. The file is safe.
</details>
<evidence></evidence>
<summary>Standard build instructions, no malicious content.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .gitignore, BUILDING, PKGBUILD...
[1/7] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed BUILDING. Status: SAFE -- Standard build instructions, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard metadata file for Arch User Repository (AUR) packages. It contains only declarative information: package description, version, dependencies, sources, and checksums. All source URLs point to the official VSCodium GitHub repository (the project's own upstream), and all sources have SHA-256 checksums provided (no `SKIP`). There are no embedded scripts, no obfuscated content, no suspicious network requests, and no operations that deviate from normal packaging practices. The file poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard metadata file; no malicious content found.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, .gitignore, PKGBUILD, vscodium-uri-handler.desktop...
[2/7] Reviewing .gitignore, PKGBUILD, vscodium-uri-handler.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file; no malicious content found.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an AUR package repository. It ignores all files by default (`*`) and then selectively un-ignores (`!`) the specific files that should be tracked: `.gitignore`, `.SRCINFO`, `BUILDING`, `PKGBUILD`, and three desktop files. This is a common and expected pattern for AUR git repositories. There is no executable code, no network requests, no obfuscation, and no indication of any malicious activity. The file is entirely passive and safe.
</details>
<evidence></evidence>
<summary>Standard .gitignore file for an AUR package. No security issues.</summary>
</security_assessment>

[2/7] Reviewing .gitignore, PKGBUILD, vscodium-uri-handler.desktop, vscodium-wayland.desktop...
[3/7] Reviewing PKGBUILD, vscodium-uri-handler.desktop, vscodium-wayland.desktop...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file for an AUR package. No security issues.
LLM auditresponse for vscodium-wayland.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .desktop file for launching VSCodium with Wayland-specific flags. It contains no executable code, no network requests, no obfuscation, and no system modifications beyond the normal execution of the application. The flags `--enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform=wayland` are legitimate upstream options to enable Wayland support in Chromium-based applications. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security concerns.</summary>
</security_assessment>

[3/7] Reviewing PKGBUILD, vscodium-uri-handler.desktop, vscodium-wayland.desktop, vscodium.desktop...
[4/7] Reviewing PKGBUILD, vscodium-uri-handler.desktop, vscodium.desktop...
+ Reviewed vscodium-wayland.desktop. Status: SAFE -- Standard .desktop file, no security concerns.
LLM auditresponse for vscodium-uri-handler.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` file that registers VSCodium as a handler for `vscodium://` URI links. It contains no executable code, no network requests, no file operations, and no obfuscation. The `Exec` line calls the legitimate `/usr/bin/codium` binary with the `--open-url` flag and passes the URI. This is normal and expected behavior for an application that supports custom URI schemes. No security concerns.
</details>
<evidence>
</evidence>
<summary>Standard URI handler desktop entry, no issues.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, vscodium.desktop...
+ Reviewed vscodium-uri-handler.desktop. Status: SAFE -- Standard URI handler desktop entry, no issues.
LLM auditresponse for vscodium.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard freedesktop.org `.desktop` entry for the VSCodium application. It defines the application name, comment, generic name, icon, categories, MIME types, and a desktop action for opening a new empty window. All `Exec` lines invoke `/usr/bin/codium`, the expected binary installed by the package. There are no obfuscated commands, no network requests, no file system manipulation, and no execution of untrusted content. The file conforms entirely to normal packaging practices and contains no supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[6/7] Reviewing PKGBUILD...
+ Reviewed vscodium.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for building VSCodium from source. All sources are from the official VSCodium GitHub repository and have pinned SHA-256 checksums (none are skipped). The build process uses nvm to install the correct Node.js version, rustup for Rust, and sources upstream build scripts (`get_repo.sh` and `build.sh`) from the verified source tarball. The package function installs files and creates symlinks as expected. There are no suspicious network requests, obfuscated commands, file exfiltration, backdoors, or other malicious behaviors. No deviations from normal packaging workflow are present.
</details>
<evidence/>
<summary>Standard PKGBUILD with verified upstream source.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with verified upstream source.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 21,297
  Completion Tokens: 3,108
  Total Tokens: 24,405
  Total Cost: $0.002438
  Execution Time: 61.53 seconds

Final Status: SAFE


No issues found.
