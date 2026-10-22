---
package: artcraft-launcher-appimage
pkgver: 0.6.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14517
completion_tokens: 2424
total_tokens: 16941
cost: 0.001762215
execution_time: 42.38
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-22T11:13:06Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: artcraft-launcher
    status: safe
    summary: Standard launcher script, no security issues found.
  - file: .SRCINFO
    status: safe
    summary: Metadata only; no executable content or suspicious indicators.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious code or suspicious behavior found.
---

Materializing artcraft-launcher-appimage from local mirror...
Materialized artcraft-launcher-appimage
Analyzing artcraft-launcher-appimage AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its top-level scope. In this PKGBUILD, the top-level content consists entirely of variable and array assignments (`pkgname`, `pkgver`, `source`, `sha256sums`, `noextract`, etc.) and function definitions (`prepare`, `check`, `package`). There are no command substitutions, backticks, `eval`, `curl`, `wget`, or other executable statements at global scope that would run during sourcing.

All potentially interesting behavior — extracting the AppImage, validating desktop files, and installing files into `$pkgdir` — is inside `prepare()`, `check()`, and `package()`, which are not executed by `makepkg --printsrcinfo`. Therefore, this command itself does not execute any malicious or unexpected code.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is only variable definitions; printsrcinfo is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is only variable definitions; printsrcinfo is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, LICENSE...
[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text. It contains no executable code, no network requests, no obfuscation, and no system operations. It is purely a legal notice and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD, artcraft-launcher...
[1/4] Reviewing .SRCINFO, PKGBUILD, artcraft-launcher...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for artcraft-launcher:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a minimal shell script that exports an environment variable (ARTCRAFT_LAUNCHER_NO_DESKTOP_INTEGRATION) and executes an AppImage from a fixed system path. There are no network requests, obfuscated code, or unexpected file operations. This is a standard launcher pattern used in AUR packages for AppImages. No evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard launcher script, no security issues found.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed artcraft-launcher. Status: SAFE -- Standard launcher script, no security issues found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata descriptor for the AUR package `artcraft-launcher-appimage`. It contains purely declarative information: package name, version, description, architecture, dependencies, sources, and checksums. All sources point to the official upstream GitHub repository (`github.com/storytold/craft-launcher`) and its release downloads. SHA-256 checksums are provided for every source, enabling integrity verification. No executable code, obfuscated strings, suspicious network destinations, or unexpected operations are present. The file conforms to standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Metadata only; no executable content or suspicious indicators.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata only; no executable content or suspicious indicators.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for an AppImage-based application. All source files are fetched from the project's official GitHub repository (`https://github.com/storytold/craft-launcher`) with pinned version tags and valid SHA-256 checksums. The `prepare()` and `package()` functions perform only expected operations: extracting the desktop file and icons from the AppImage, installing the binary, launcher script, icons, and licenses. There is no obfuscated code, no unexpected network requests, no execution of untrusted content from external sources, and no manipulation of system files outside the package's own installation paths. The use of `--appimage-extract` is normal for AppImage packaging. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious code or suspicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious code or suspicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,517
  Completion Tokens: 2,424
  Total Tokens: 16,941
  Total Cost: $0.001762
  Execution Time: 42.38 seconds

Final Status: SAFE


No issues found.
