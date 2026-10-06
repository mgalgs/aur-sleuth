---
package: plasma-wallpaper-waywallen
pkgbase: waywallen-display
pkgver: 0.4.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13369
completion_tokens: 2839
total_tokens: 16208
cost: 0.0036820484
execution_time: 48.94
files_reviewed: 4
files_skipped: 2
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-06T15:06:07Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with pinned upstream sources; no security issues found.
  - file: 0001-cmake-Install-kde-wallpaper-to-correct-path.patch
    status: skipped
    summary: "Skipping binary file: 0001-cmake-Install-kde-wallpaper-to-correct-path.patch"
  - file: 0002-cmake-Install-gnome-extensions-separately.patch
    status: skipped
    summary: "Skipping binary file: 0002-cmake-Install-gnome-extensions-separately.patch"
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no security issues.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for a legitimate upstream project.
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
`makepkg --printsrcinfo` only sources the PKGBUILD top-level. The top-level statements here are variable/array definitions (`pkgbase`, `pkgname`, `pkgver`, `source`, `sha256sums`, etc.) and function definitions; none of them execute subprocesses, download files, evaluate strings, or perform filesystem mutations. The `prepare()`, `build()`, and `package_*()` functions contain build/patch/cargo/cmake commands, but those are not executed during `--printsrcinfo`, so they are out of scope for this gate. No obfuscation, encoded payloads, network exfiltration, or malicious top-level side effects are present.
</details>
<evidence></evidence>
<summary>Top-level PKGBUILD sourcing is limited to safe variable and function definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD sourcing is limited to safe variable and function definitions.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file describes a standard Arch package split into three subpackages: the display integration library, a Plasma 6 wallpaper plugin, and a GNOME shell extension. All sources come from the project's own GitHub repository (tagged release `v0.4.1`) plus two local patch files with pinned SHA-256 checksums. There are no suspicious URLs, no downloaded executables, no encoded commands, and no unexpected file operations. The dependency lists are consistent with the stated purpose of providing KDE Plasma and GNOME wallpaper/daemon integrations.

The use of pinned checksums for the tarball and patches is good supply-chain hygiene. Nothing in this file deviates from normal AUR packaging practices or suggests malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard .SRCINFO with pinned upstream sources; no security issues found.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, 0001-cmake-Install-kde-wallpaper-to-correct-path.patch...
[1/6] Reviewing .gitignore, .nvchecker.toml, 0001-cmake-Install-kde-wallpaper-to-correct-path.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with pinned upstream sources; no security issues found.
[1/6] Reviewing .gitignore, .nvchecker.toml, 0001-cmake-Install-kde-wallpaper-to-correct-path.patch, 0002-cmake-Install-gnome-extensions-separately.patch...
[2/6] Reviewing .gitignore, .nvchecker.toml, 0002-cmake-Install-gnome-extensions-separately.patch...
! Reviewed 0001-cmake-Install-kde-wallpaper-to-correct-path.patch. Status: SKIPPED -- Skipping binary file: 0001-cmake-Install-kde-wallpaper-to-correct-path.patch
[2/6] Reviewing .gitignore, .nvchecker.toml, 0002-cmake-Install-gnome-extensions-separately.patch, PKGBUILD...
[3/6] Reviewing .gitignore, .nvchecker.toml, PKGBUILD...
! Reviewed 0002-cmake-Install-gnome-extensions-separately.patch. Status: SKIPPED -- Skipping binary file: 0002-cmake-Install-gnome-extensions-separately.patch
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `nvchecker` configuration for checking the latest release of the upstream project `waywallen/waywallen-display` on GitHub. It uses `use_latest_release = true` to automatically track new versions. No malicious content or behavior is present; it is a benign configuration file that supports automated version checking during packaging.
</details>
<evidence></evidence>
<summary>Standard nvchecker config, no security issues.</summary>
</security_assessment>

[4/6] Reviewing .gitignore, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no security issues.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in version control to ignore all files by default (`*`) and then un-ignore specific files needed for the AUR package. The listed files are expected for an AUR package (patches, PKGBUILD, .SRCINFO, .gitignore itself, and an nvchecker config). There is no code execution, no network requests, no obfuscation, and no system modifications. It poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no security issues.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices. All source tarballs and patches are downloaded from the official upstream GitHub repository and pinned with SHA256 checksums. The build process uses standard CMake and Cargo invocations with `--frozen`/`--locked` flags to ensure reproducibility. Package installation is confined to `$pkgdir` with no unexpected file operations, network requests, or obfuscated code. No evidence of supply-chain tampering or malicious behavior was found.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for a legitimate upstream project.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for a legitimate upstream project.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 2 files: 0001-cmake-Install-kde-wallpaper-to-correct-path.patch, 0002-cmake-Install-gnome-extensions-separately.patch)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,369
  Completion Tokens: 2,839
  Total Tokens: 16,208
  Total Cost: $0.003682
  Execution Time: 48.94 seconds

Final Status: SAFE


No issues found.


Audit Skips:

0001-cmake-Install-kde-wallpaper-to-correct-path.patch: [SKIPPED] Skipping binary file: 0001-cmake-Install-kde-wallpaper-to-correct-path.patch

0002-cmake-Install-gnome-extensions-separately.patch: [SKIPPED] Skipping binary file: 0002-cmake-Install-gnome-extensions-separately.patch
