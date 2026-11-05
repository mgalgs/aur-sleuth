---
package: plasma-wallpaper-waywallen
pkgbase: waywallen-display
pkgver: 0.4.5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16141
completion_tokens: 5094
total_tokens: 21235
cost: 0.002395939
execution_time: 40.09
files_reviewed: 5
files_skipped: 1
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-05T04:17:29Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for tracking GitHub releases; no security issues found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned upstream source and checksums; no malicious behavior found.
  - file: 0002-cmake-Install-gnome-extensions-separately.patch
    status: skipped
    summary: "Skipping binary file: 0002-cmake-Install-gnome-extensions-separately.patch"
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no malicious content.
  - file: 0001-cmake-Install-kde-wallpaper-to-correct-path.patch
    status: safe
    summary: Benign CMake patch correcting install paths for KDE wallpaper package.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums, local patches, and normal build/install steps; no malicious behavior found.
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
The PKGBUILD's global scope contains only standard variable assignments (pkgbase, pkgname, pkgver, source, sha256sums, depends, makedepends, options) and function definitions (prepare, build, package_*). No command substitutions, backtick executions, eval invocations, or network calls are present in the top-level code that would execute during sourcing. All potentially dangerous operations (patch, cargo fetch, cmake, find -exec, install) are strictly encapsulated within function bodies. Since `makepkg --printsrcinfo` only sources the file and does not execute pkgver(), prepare(), build(), or package_*(), this step is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level actions found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level actions found.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an nvchecker configuration that simply checks the latest GitHub release for the `waywallen/waywallen-display` repository, using the `v` version prefix and the latest release. It performs no downloads, no code execution, no obfuscation, and no network requests beyond what nvchecker itself would normally do to query GitHub release metadata. This is standard, expected packaging automation and contains no malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard nvchecker config for tracking GitHub releases; no security issues found.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, 0001-cmake-Install-kde-wallpaper-to-correct-path.patch...
[1/6] Reviewing .SRCINFO, .gitignore, 0001-cmake-Install-kde-wallpaper-to-correct-path.patch...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for tracking GitHub releases; no security issues found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata for `waywallen-display`. It declares the upstream tarball from the project's own GitHub repository (`https://github.com/waywallen/waywallen-display/archive/refs/tags/v0.4.5.tar.gz`) plus two CMake patch files, all with pinned SHA-256 checksums. No suspicious network destinations, encoded commands, file operations, or executable content are present. The metadata describes normal build dependencies, subpackages, and integration plugins for Plasma and GNOME.

The pinned version tag and checksums are good supply-chain hygiene. There are no `SKIP` checksums, no unexpected hosts, and no indication of injected or obfuscated code. The file contains only declarative packaging data and does not execute anything by itself.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned upstream source and checksums; no malicious behavior found.
</summary>
</security_assessment>

[2/6] Reviewing .gitignore, 0001-cmake-Install-kde-wallpaper-to-correct-path.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned upstream source and checksums; no malicious behavior found.
[2/6] Reviewing .gitignore, 0001-cmake-Install-kde-wallpaper-to-correct-path.patch, 0002-cmake-Install-gnome-extensions-separately.patch...
[3/6] Reviewing .gitignore, 0001-cmake-Install-kde-wallpaper-to-correct-path.patch...
! Reviewed 0002-cmake-Install-gnome-extensions-separately.patch. Status: SKIPPED -- Skipping binary file: 0002-cmake-Install-gnome-extensions-separately.patch
[3/6] Reviewing .gitignore, 0001-cmake-Install-kde-wallpaper-to-correct-path.patch, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file. It ignores all files except those explicitly listed (patches, PKGBUILD, .SRCINFO, the gitignore itself, and an nvchecker config). There is no executable code, no network requests, no obfuscation, and no system modifications. The content is innocuous and follows normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no malicious content.</summary>
</security_assessment>

[4/6] Reviewing 0001-cmake-Install-kde-wallpaper-to-correct-path.patch, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no malicious content.
LLM auditresponse for 0001-cmake-Install-kde-wallpaper-to-correct-path.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMake packaging patch that relocates the installed KDE wallpaper extension files from a relative destination (`org.waywallen.kde`) to the correct KDE plasma wallpaper directory (`${CMAKE_INSTALL_DATADIR}/plasma/wallpapers/org.waywallen.kde`). It also removes a duplicate translation installation that targeted an incorrect locale path. There are no network requests, no encoded or obfuscated commands, no file deletion, no execution of downloaded content, and no access to sensitive system data. The changes are consistent with ordinary packaging fixes for an upstream CMake build.
</details>
<evidence>
</evidence>
<summary>
Benign CMake patch correcting install paths for KDE wallpaper package.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed 0001-cmake-Install-kde-wallpaper-to-correct-path.patch. Status: SAFE -- Benign CMake patch correcting install paths for KDE wallpaper package.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch packaging script for the waywallen-display project. It downloads the upstream source tarball from the project's official GitHub releases URL with pinned SHA-256 checksums, applies two local patch files, fetches Rust dependencies with `cargo fetch --locked`, builds via CMake and `cargo build --frozen --release`, and installs the resulting binaries, plugins, and licenses into `$pkgdir`. No obfuscated code, unexpected network destinations, dangerous shell constructs, or data-exfiltrating operations are present.

The use of `cargo fetch`, `cargo build --frozen`, and `RUSTUP_TOOLCHAIN=stable` is normal for Rust-based packages. The `find` command in `package_waywallen-display()` installs built executables from the package's own release target directory, which is standard packaging behavior. The patches are local files with pinned checksums and are applied in `prepare()` as expected. No supply-chain red flags were found.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD with pinned checksums, local patches, and normal build/install steps; no malicious behavior found.
</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums, local patches, and normal build/install steps; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: 0002-cmake-Install-gnome-extensions-separately.patch)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,141
  Completion Tokens: 5,094
  Total Tokens: 21,235
  Total Cost: $0.002396
  Execution Time: 40.09 seconds

Final Status: SAFE


No issues found.


Audit Skips:

0002-cmake-Install-gnome-extensions-separately.patch: [SKIPPED] Skipping binary file: 0002-cmake-Install-gnome-extensions-separately.patch
