---
package: plasma-wallpaper-waywallen
pkgbase: waywallen-display
pkgver: 0.4.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15836
completion_tokens: 2060
total_tokens: 17896
cost: 0.001815996
execution_time: 44.81
files_reviewed: 5
files_skipped: 1
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T07:08:42Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no security concern.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config file, no security issues.
  - file: 0002-cmake-Install-gnome-extensions-separately.patch
    status: skipped
    summary: "Skipping binary file: 0002-cmake-Install-gnome-extensions-separately.patch"
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no security issues.
  - file: 0001-cmake-Install-kde-wallpaper-to-correct-path.patch
    status: safe
    summary: Legitimate CMake patch correcting wallpaper install paths.
  - file: PKGBUILD
    status: safe
    summary: PKGBUILD is standard and contains no malicious code.
---

plasma-wallpaper-waywallen is built from waywallen-display
Materializing plasma-wallpaper-waywallen from local mirror...
Materialized plasma-wallpaper-waywallen
Analyzing plasma-wallpaper-waywallen AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its global/top-level scope. In this file, the global scope consists solely of standard variable assignments: `pkgbase`, `pkgname`, `pkgver`, `pkgrel`, `arch`, `url`, `license`, `depends`, `makedepends`, `options`, `source`, and `sha256sums`. There are no top-level command substitutions, no external tool invocations, no network requests, and no file modifications. The `prepare()`, `build()`, and `package_*()` functions are not executed by `makepkg --printsrcinfo`, so their contents are out of scope for this narrow gate.

The `source` array references the project's own upstream GitHub tarball and local patch files, with pinned sha256 checksums. Even if checksums were missing or SKIPped, that would not affect this step because `makepkg --printsrcinfo` does not download or verify sources. No genuinely malicious code would execute during this command.
</details>
<evidence>
</evidence>
<summary>
Top-level scope contains only standard PKGBUILD variable definitions; no dangerous execution occurs.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope contains only standard PKGBUILD variable definitions; no dangerous execution occurs.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for a git repository containing only file patterns to include (via `!` negation) and ignoring everything else. There is no executable code, no network requests, no system modifications, no obfuscation, and no deviation from normal packaging practices. No security issues detected.</details>
<evidence></details>
<summary>Standard .gitignore file with no security concern.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, 0001-cmake-Install-kde-wallpaper-to-correct-path.patch...
[1/6] Reviewing .SRCINFO, .nvchecker.toml, 0001-cmake-Install-kde-wallpaper-to-correct-path.patch...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no security concern.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard nvchecker configuration for tracking upstream releases. It specifies a GitHub repository `waywallen/waywallen-display` as the source for version checks. There are no executable commands, obfuscated content, or network requests embedded in this file. It is a plain text configuration file with no potential for malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config file, no security issues.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .nvchecker.toml, 0001-cmake-Install-kde-wallpaper-to-correct-path.patch, 0002-cmake-Install-gnome-extensions-separately.patch...
[2/6] Reviewing .SRCINFO, 0001-cmake-Install-kde-wallpaper-to-correct-path.patch, 0002-cmake-Install-gnome-extensions-separately.patch...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config file, no security issues.
[2/6] Reviewing .SRCINFO, 0001-cmake-Install-kde-wallpaper-to-correct-path.patch, 0002-cmake-Install-gnome-extensions-separately.patch, PKGBUILD...
[3/6] Reviewing .SRCINFO, 0001-cmake-Install-kde-wallpaper-to-correct-path.patch, PKGBUILD...
! Reviewed 0002-cmake-Install-gnome-extensions-separately.patch. Status: SKIPPED -- Skipping binary file: 0002-cmake-Install-gnome-extensions-separately.patch
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file. It declares three subpackages (`waywallen-display`, `plasma-wallpaper-waywallen`, `gnome-shell-extension-waywallen`) with dependencies and build sources. The sources point to the official GitHub repository of the upstream project (waywallen/waywallen-display) at a tagged release (v0.4.2). Two patches are also sourced. All checksums are provided as hex strings. No executable code, obfuscation, or suspicious network destinations are present. The file only describes the package structure and build inputs for the AUR helper to process.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no security issues.</summary>
</security_assessment>

[4/6] Reviewing 0001-cmake-Install-kde-wallpaper-to-correct-path.patch, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no security issues.
LLM auditresponse for 0001-cmake-Install-kde-wallpaper-to-correct-path.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMake patch that adjusts installation paths for a KDE Plasma wallpaper plugin. It moves the install destination from a custom directory (`org.waywallen.kde`) to the proper Plasma wallpaper path (`${CMAKE_INSTALL_DATADIR}/plasma/wallpapers/org.waywallen.kde`), which is normal packaging practice. It also removes a duplicate install of `.mo` translation files to the old path while retaining the correct path via `CMAKE_INSTALL_LOCALEDIR`. There is no obfuscation, no network activity, no execution of external code, and no deviation from expected build system modifications. This patch is entirely benign and aligns with standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Legitimate CMake patch correcting wallpaper install paths.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed 0001-cmake-Install-kde-wallpaper-to-correct-path.patch. Status: SAFE -- Legitimate CMake patch correcting wallpaper install paths.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices without any suspicious elements. The source tarball is downloaded from the project&#39;s official GitHub repository with a provided SHA-256 checksum, ensuring integrity. The build process uses typical tooling (`cmake`, `cargo fetch --locked`, `cargo build --frozen --release`) and installs files only into the package directory. The two patches are local and applied with `patch -Np1`, which is normal. There are no network requests to unexpected hosts, no obfuscated code, no invocation of `eval`, `base64`, or unchecked `curl`/`wget`. All operations are confined to building and installing the package as intended.
</details>
<evidence></evidence>
<summary>PKGBUILD is standard and contains no malicious code.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- PKGBUILD is standard and contains no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: 0002-cmake-Install-gnome-extensions-separately.patch)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,836
  Completion Tokens: 2,060
  Total Tokens: 17,896
  Total Cost: $0.001816
  Execution Time: 44.81 seconds

Final Status: SAFE


No issues found.


Audit Skips:

0002-cmake-Install-gnome-extensions-separately.patch: [SKIPPED] Skipping binary file: 0002-cmake-Install-gnome-extensions-separately.patch
