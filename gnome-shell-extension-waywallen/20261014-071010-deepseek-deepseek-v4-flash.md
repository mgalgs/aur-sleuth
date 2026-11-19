---
package: gnome-shell-extension-waywallen
pkgbase: waywallen-display
pkgver: 0.4.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15769
completion_tokens: 1931
total_tokens: 17700
cost: 0.001786421
execution_time: 54.05
files_reviewed: 5
files_skipped: 1
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T07:10:10Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no malicious behavior.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: 0002-cmake-Install-gnome-extensions-separately.patch
    status: skipped
    summary: "Skipping binary file: 0002-cmake-Install-gnome-extensions-separately.patch"
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: 0001-cmake-Install-kde-wallpaper-to-correct-path.patch
    status: safe
    summary: Standard patch fixing install path for KDE wallpaper.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums, no malicious behavior.
---

gnome-shell-extension-waywallen is built from waywallen-display
Materializing gnome-shell-extension-waywallen from local mirror...
Materialized gnome-shell-extension-waywallen
Analyzing gnome-shell-extension-waywallen AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments (pkgbase, pkgname, pkgver, etc.) and function definitions for prepare(), build(), and package_*(). No top-level command substitutions, eval, or other code execution constructs exist that would run when the file is sourced by `makepkg --printsrcinfo`. All URLs point to the legitimate upstream GitHub repository. There are no suspicious network requests, obfuscated code, or data exfiltration attempts at the global scope.</details>
<evidence></evidence>
<summary>No malicious code executes at top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes at top-level scope.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .nvchecker.toml...
[0/6] Reviewing .SRCINFO, .nvchecker.toml, .gitignore...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a configuration file for the `nvchecker` tool, which is used to automatically check for new upstream releases. It specifies checking the GitHub repository `waywallen/waywallen-display` for latest releases with a version prefix `v`. This is a standard and legitimate packaging workflow step. There is no code execution, no obfuscation, no unexpected network destinations, and no file system manipulation. The file contains only plain configuration data. No security issues detected.
</details>
<evidence></evidence>
<summary>Standard nvchecker config, no malicious behavior.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .nvchecker.toml, .gitignore, 0001-cmake-Install-kde-wallpaper-to-correct-path.patch...
[1/6] Reviewing .SRCINFO, .gitignore, 0001-cmake-Install-kde-wallpaper-to-correct-path.patch...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no malicious behavior.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file used in an AUR package repository. It ignores all files by default and then explicitly un-ignores files that are necessary for the AUR package (patches, PKGBUILD, .SRCINFO, .gitignore, and .nvchecker.toml). This is a normal and expected pattern for maintaining an AUR package in a git repository. There are no suspicious commands, obfuscated code, network requests, or other malicious indicators.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .gitignore, 0001-cmake-Install-kde-wallpaper-to-correct-path.patch, 0002-cmake-Install-gnome-extensions-separately.patch...
[2/6] Reviewing .SRCINFO, 0001-cmake-Install-kde-wallpaper-to-correct-path.patch, 0002-cmake-Install-gnome-extensions-separately.patch...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
[2/6] Reviewing .SRCINFO, 0001-cmake-Install-kde-wallpaper-to-correct-path.patch, 0002-cmake-Install-gnome-extensions-separately.patch, PKGBUILD...
[3/6] Reviewing .SRCINFO, 0001-cmake-Install-kde-wallpaper-to-correct-path.patch, PKGBUILD...
! Reviewed 0002-cmake-Install-gnome-extensions-separately.patch. Status: SKIPPED -- Skipping binary file: 0002-cmake-Install-gnome-extensions-separately.patch
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file for the `waywallen-display` package. It declares sources from the official GitHub repository with pinned version (`v0.4.2`), two patches (also pinned), and all checksums are provided (none are `SKIP`). No executable commands, obfuscation, suspicious network destinations, or unexpected system operations are present. The file contains only package metadata (dependencies, sources, architecture). There is no evidence of malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[4/6] Reviewing 0001-cmake-Install-kde-wallpaper-to-correct-path.patch, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for 0001-cmake-Install-kde-wallpaper-to-correct-path.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adjusts the install destination paths for a KDE wallpaper component from a relative directory (`org.waywallen.kde`) to the proper system data path under `${CMAKE_INSTALL_DATADIR}/plasma/wallpapers/org.waywallen.kde`. This is a straightforward packaging fix to ensure the wallpaper is installed in the correct location expected by KDE Plasma. There is no malicious code, no network requests, no obfuscation, and no deviation from standard packaging practices.
</details>
<evidence></evidence>
<summary>Standard patch fixing install path for KDE wallpaper.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed 0001-cmake-Install-kde-wallpaper-to-correct-path.patch. Status: SAFE -- Standard patch fixing install path for KDE wallpaper.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Rust/C++ hybrid project. It fetches source code from the project's own GitHub repository via a tarball with a pinned SHA-256 checksum, applies two local patches (also checksum-verified), and builds using cmake and cargo with locked dependencies. There are no unexpected network requests, no obfuscated or encoded commands, no exfiltration of data, and no installation of backdoors or reverse shells. The package functions (`package_*`) install files into `$pkgdir only using standard `install`, `cmake --install`, and standard licensing/copying. No malicious patterns are present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksums, no malicious behavior.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: 0002-cmake-Install-gnome-extensions-separately.patch)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,769
  Completion Tokens: 1,931
  Total Tokens: 17,700
  Total Cost: $0.001786
  Execution Time: 54.05 seconds

Final Status: SAFE


No issues found.


Audit Skips:

0002-cmake-Install-gnome-extensions-separately.patch: [SKIPPED] Skipping binary file: 0002-cmake-Install-gnome-extensions-separately.patch
