---
package: stably-orca-bin
pkgver: 1.4.244
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13601
completion_tokens: 3331
total_tokens: 16932
cost: 0.001843933
execution_time: 63.92
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-29T07:06:17Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard .desktop file, no security issues.
  - file: stably-orca.sh
    status: safe
    summary: Clean wrapper, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with pinned checksums and standard practices.
  - file: .SRCINFO
    status: safe
    summary: Benign AUR metadata file with no executable code.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no executable code in its global/top-level scope. All variable assignments (pkgver, source, sha256sums, etc.) are standard and inert. The only potentially dangerous operations (chmod, running the AppImage, file copying) reside inside prepare() and package() functions, which are not executed by `makepkg --printsrcinfo`. Therefore, sourcing this file for metadata parsing poses no risk.
</details>
<evidence></evidence>
<summary>No top-level executable code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code; safe to parse.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Orca application launcher. It defines the application name, categories, icon, and the command to run (`stably-orca %U`). There are no embedded commands, suspicious strings, or unusual paths. The file conforms entirely to the freedesktop.org Desktop Entry specification and performs no network operations, no file manipulation, and no code execution beyond starting the packaged application binary. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard .desktop file, no security issues.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward wrapper that sets the `APPDIR` environment variable to `/opt/stably-orca` and launches the application's AppRun with a `--disable-features=Vulkan` flag. It contains no network requests, no obfuscated or encoded commands, no file operations outside the application directory, and no execution of untrusted code. All operations are standard for a packaging wrapper that ensures correct runtime behavior (e.g., avoiding an empty APPDIR probe and disabling incompatible Vulkan rendering). There is no evidence of malicious or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Clean wrapper, no security issues.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed stably-orca.sh. Status: SAFE -- Clean wrapper, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux packaging practices for distributing a prebuilt AppImage. The source is fetched from the official GitHub releases page of the project (`https://github.com/stablyai/orca`), and the SHA-256 checksums are pinned for all three source files. The `prepare()` function extracts the AppImage using `--appimage-extract`, and the `package()` function copies the extracted tree into `/opt/stably-orca`, installs a wrapper script and a `.desktop` file, and handles icon installation from the extracted tree. There is no obfuscated code, no unexpected network requests, no execution of unverified external content, and no modification of system files outside the package's own installation paths. All operations are confined to the package's own directories (`$srcdir`, `$pkgdir`). The file does not contain any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD with pinned checksums and standard practices.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with pinned checksums and standard practices.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
`.SRCINFO` is a declarative metadata file automatically generated by `makepkg` for the Arch User Repository (AUR). It contains no executable code, instructions, or logic—it solely defines the package’s name, version, dependencies, and source locations. All source URLs point to the project’s official upstream repository (`github.com/stablyai/orca`) on a pinned tag release (`v1.4.244`), and explicit SHA-256 checksums are provided for every listed source file. There is no evidence of obfuscation, data exfiltration, backdoors, or any deviation from standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Benign AUR metadata file with no executable code.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Benign AUR metadata file with no executable code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,601
  Completion Tokens: 3,331
  Total Tokens: 16,932
  Total Cost: $0.001844
  Execution Time: 63.92 seconds

Final Status: SAFE


No issues found.
