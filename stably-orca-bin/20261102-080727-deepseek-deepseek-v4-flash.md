---
package: stably-orca-bin
pkgver: 1.4.246
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13458
completion_tokens: 1661
total_tokens: 15119
cost: 0.001526980
execution_time: 39.36
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-02T08:07:27Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard .desktop file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
  - file: stably-orca.sh
    status: safe
    summary: Standard application wrapper script, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious code.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only standard variable declarations (metadata, dependencies, source URLs, checksums) and comments. There are no top-level command substitutions, function calls, eval/curl/wget invocations, or any other executable code that would run when the file is sourced by `makepkg --printsrcinfo`. All operational logic is confined to `prepare()`, `build()` (not present), and `package()` functions, which are not executed during the `--printsrcinfo` step. No malicious or dangerous code is present at the global level.
</details>
<evidence></evidence>
<summary>No dangerous global-scope code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous global-scope code; safe to source.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Linux desktop entry file (`.desktop` file) that defines how the application "Orca" appears in the system menu and how it is launched. It specifies the application name, icon, categories, and the executable command (`stably-orca %U`). There is no executable code, no network requests, no file operations, and no obfuscation. The file conforms to the freedesktop.org specification and contains no malicious or suspicious content.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard .desktop file, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file for the `stably-orca-bin` package. It declares the package name, version, description, upstream URL, dependencies, and source files with their corresponding SHA256 checksums. All three sources are pinned to a specific version (v1.4.246) and originate from the project's own GitHub releases repository, which is expected and safe. There are no malicious commands, obfuscated content, network requests to untrusted hosts, or any code execution capabilities within this file. It purely describes the package and its build configuration.
</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple wrapper script that sets the `APPDIR` environment variable to `/opt/stably-orca` and executes the application's `AppRun` binary with `--disable-features=Vulkan` and the user's arguments. There are no network requests, no obfuscated code, no file operations outside the application's own directory, and no unexpected system modifications. The script is purely a launcher for a packaged application and follows standard AUR wrapper practices. The commented-out line mentioning `--ozone-platform=wayland` is a normal configuration hint for the user.
</details>
<evidence></evidence>
<summary>Standard application wrapper script, no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed stably-orca.sh. Status: SAFE -- Standard application wrapper script, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt AppImage application. The source is fetched directly from the upstream GitHub releases (stablyai/orca) with hardcoded SHA-256 checksums, ensuring integrity. The `prepare()` function extracts the AppImage using its built-in `--appimage-extract` flag, and the `package()` function installs the extracted files, a launcher script, desktop entry, and icons into the appropriate system paths. No obfuscation, encoded commands, suspicious network requests, or operations outside the package&#39;s own scope are present. All commands (chmod, cp, install, loops) are routine for this type of package.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious code.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,458
  Completion Tokens: 1,661
  Total Tokens: 15,119
  Total Cost: $0.001527
  Execution Time: 39.36 seconds

Final Status: SAFE


No issues found.
