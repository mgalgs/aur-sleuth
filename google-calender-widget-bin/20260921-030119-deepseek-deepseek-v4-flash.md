---
package: google-calender-widget-bin
pkgver: 1.1.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12903
completion_tokens: 1671
total_tokens: 14574
cost: 0.001439404470
execution_time: 31.77
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-21T03:01:19Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: google-calender-widget.sh
    status: safe
    summary: Standard Electron wrapper; no malicious code detected.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for prebuilt Electron app, no malicious code.
---

Materializing google-calender-widget-bin from local mirror...
Materialized google-calender-widget-bin
Analyzing google-calender-widget-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope only contains variable assignments and function definitions. No commands are executed during sourcing: there are no command substitutions, backticks, or immediate function calls. The functions `_get_app_dir`, `_check_electron_version`, `prepare()`, and `package()` are defined but not invoked at the global scope. The source array uses standard URL strings. There are no obfuscated or dangerous constructs (eval, curl, wget, base64, etc.) at the top level. Therefore, running `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>Top-level PKGBUILD has no executed code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD has no executed code; safe to parse.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, google-calender-widget.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR .SRCINFO metadata file. It declares package metadata (name, version, description, dependencies) and defines three sources: an AppImage binary, a LICENSE file, and a shell script. All sources are fetched from the project's own GitHub repository (https://github.com/p32929/google-calender-widget). Each source has a hardcoded SHA-256 checksum (none are set to SKIP). No executable code, obfuscated strings, suspicious network requests, or system-modifying commands are present. The content is purely declarative and follows normal AUR packaging conventions. There is no evidence of malicious or supply-chain attack behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, google-calender-widget.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for google-calender-widget.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard Electron application wrapper for the `google-calender-widget-bin` AUR package. It sets environment variables for Electron, supports Wayland and desktop environment compatibility, loads user-defined flags from configuration files in `$XDG_CONFIG_HOME`, and runs the application binary. There are no network requests (e.g., `curl`, `wget`), no encoded/obfuscated commands, no unexpected file operations, and no execution of untrusted code. The script follows normal packaging practices for Electron-based applications.
</details>
<evidence>
</evidence>
<summary>Standard Electron wrapper; no malicious code detected.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed google-calender-widget.sh. Status: SAFE -- Standard Electron wrapper; no malicious code detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard practices for packaging a prebuilt Electron application from an upstream GitHub release. All sources are fetched from the project's official repository (github.com/p32929/google-calender-widget) with pinned version tags. The sha256sums are provided for all three source files. The `prepare()` function extracts the AppImage, checks the Electron version (with a warning on mismatch), and patches the application's icon reference and resource path to match the installed location. The `package()` function installs the binary, libraries, icons, desktop file, and license. No suspicious commands (curl, wget, eval, base64, exec) are used outside the expected packaging workflow. The only dynamic behavior is the use of `find` and `strings` to locate files and check versions, which is harmless. There is no obfuscation, no unexpected network requests, no exfiltration, and no tampering with system files outside the package's scope. The use of `chmod +x` on the AppImage and `--appimage-extract` is standard for handling AppImage packages. Overall, this PKGBUILD appears to be a legitimate, well-formed packaging script for the stated application.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for prebuilt Electron app, no malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for prebuilt Electron app, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,903
  Completion Tokens: 1,671
  Total Tokens: 14,574
  Total Cost: $0.001439
  Execution Time: 31.77 seconds

Final Status: SAFE


No issues found.
