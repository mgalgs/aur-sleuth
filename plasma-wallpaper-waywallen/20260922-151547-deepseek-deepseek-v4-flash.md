---
package: plasma-wallpaper-waywallen
pkgbase: waywallen-display
pkgver: 0.4.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13484
completion_tokens: 3448
total_tokens: 16932
cost: 0.000998620
execution_time: 101.4
files_reviewed: 4
files_skipped: 2
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-22T15:15:46Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no malicious content.
  - file: 0001-cmake-Install-kde-wallpaper-to-correct-path.patch
    status: skipped
    summary: "Skipping binary file: 0001-cmake-Install-kde-wallpaper-to-correct-path.patch"
  - file: 0002-cmake-Install-gnome-extensions-separately.patch
    status: skipped
    summary: "Skipping binary file: 0002-cmake-Install-gnome-extensions-separately.patch"
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config tracking upstream GitHub releases; benign and routine packaging tooling.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore whitelisting packaging files; no malicious or suspicious behavior.
  - file: PKGBUILD
    status: safe
    summary: "PKGBUILD is safe: pinned source, standard build/install, no malicious behavior."
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
This PKGBUILD only defines variables, arrays, and packaging functions at the top level. Running `makepkg --printsrcinfo` sources the file, which executes only these global assignments and function definitions; there are no top-level command substitutions, `eval`, `curl`, `wget`, or other executable statements that would run during this step. The `source` array references the project's own GitHub tag archive plus local patch files, which is normal packaging practice, and checksums are provided rather than skipped.

The `prepare()`, `build()`, and `package_*()` functions contain network/build/install operations (such as `cargo fetch` and `cmake --install`), but these run only during later stages of the package build and are out of scope for this narrow `makepkg --printsrcinfo` safety gate. They should be reviewed in the full PKGBUILD audit, but nothing in the top-level scope of this file is malicious or dangerous to source.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is safe; no execution occurs during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is safe; no execution occurs during printsrcinfo.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It declares the package base `waywallen-display`, its dependencies (cmake, vulkan-headers, cargo, etc.), and three source tarballs (the upstream release from GitHub and two patch files), each with a valid SHA256 checksum. There are no encoded commands, suspicious network requests, obfuscated operations, or any deviation from normal packaging metadata. The content is purely declarative and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata, no malicious content.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, 0001-cmake-Install-kde-wallpaper-to-correct-path.patch...
[1/6] Reviewing .gitignore, .nvchecker.toml, 0001-cmake-Install-kde-wallpaper-to-correct-path.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no malicious content.
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
This is a standard [nvchecker](https://github.com/lilydjwg/nvchecker) configuration file used by AUR maintainers to automatically check for new upstream releases. It instructs nvchecker to query the GitHub API for the latest release of the `waywallen/waywallen-display` repository, expecting version tags prefixed with `v`. 

The configuration references the package's own upstream project on GitHub, which is the expected and legitimate destination. There is no obfuscation, no code execution, no data exfiltration, and no download from an unexpected host. The only "network request" this file would cause is nvchecker's normal release lookup against the official GitHub API. This is a routine, benign packaging aid.
</details>
<evidence>
</evidence>
<summary>
Standard nvchecker config tracking upstream GitHub releases; benign and routine packaging tooling.
</summary>
</security_assessment>

[4/6] Reviewing .gitignore, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config tracking upstream GitHub releases; benign and routine packaging tooling.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package git repository. It follows the common "ignore everything, then explicitly whitelist" pattern, which is normal for AUR maintenance. The un-ignored entries are routine package metadata files: the `PKGBUILD`, `.SRCINFO`, two patch files (likely applied during the package build to fix install paths), and `.nvchecker.toml` (a configuration for `nvchecker`, a legitimate upstream-version checking tool commonly used by AUR maintainers).

There is no executable content, no network activity, no obfuscated or encoded data, no file manipulation logic, and nothing that could exfiltrate data or execute attacker-controlled code. The file only controls how Git treats certain paths under the AUR repository directory, and every pattern used is mechanical and conventional for version-controlled AUR packaging. No security issues exist in this file.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore whitelisting packaging files; no malicious or suspicious behavior.
</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore whitelisting packaging files; no malicious or suspicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows normal AUR packaging practices for a Rust/CMake project. It downloads a pinned version tarball of the upstream project from GitHub with valid sha256 checksums, applies two local patches, runs cmake/cargo build, and installs files only into `$pkgdir`. There are no suspicious network requests, no use of `eval`, `base64`, `curl`, `wget`, or other obfuscated commands, and no file operations that touch system files outside the package installation directories.

The `cargo build --frozen --release` invocation relies on the upstream `Cargo.lock`, which is expected for this type of project. The use of `RUSTUP_TOOLCHAIN=stable` is not pinned to an exact toolchain version, but this is a reproducibility/hygiene concern rather than evidence of malicious behavior. The install commands with `cmake --install`, `find`, and `install` are standard packaging steps and do not indicate a supply-chain attack.
</details>
<evidence></evidence>
<summary>PKGBUILD is safe: pinned source, standard build/install, no malicious behavior.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- PKGBUILD is safe: pinned source, standard build/install, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 2 files: 0001-cmake-Install-kde-wallpaper-to-correct-path.patch, 0002-cmake-Install-gnome-extensions-separately.patch)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,484
  Completion Tokens: 3,448
  Total Tokens: 16,932
  Total Cost: $0.000999
  Execution Time: 101.40 seconds

Final Status: SAFE


No issues found.


Audit Skips:

0001-cmake-Install-kde-wallpaper-to-correct-path.patch: [SKIPPED] Skipping binary file: 0001-cmake-Install-kde-wallpaper-to-correct-path.patch

0002-cmake-Install-gnome-extensions-separately.patch: [SKIPPED] Skipping binary file: 0002-cmake-Install-gnome-extensions-separately.patch
