---
package: stably-orca-bin
pkgver: 1.4.238
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13476
completion_tokens: 1862
total_tokens: 15338
cost: 0.001565200
execution_time: 35.67
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-24T07:05:18Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksum; no security issues.
  - file: stably-orca.sh
    status: safe
    summary: Wrapper script sets env and runs AppRun, no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope only contains standard variable definitions (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.) and function definitions (`prepare()`, `package()`). No command substitutions, backtick expansions, or other executable code appears at the top level. The `source` array constructs a URL using normal variable expansion, which is a standard packaging practice and does not run any code at parse time. Since `makepkg --printsrcinfo` only sources the global scope and does not invoke `prepare()` or `package()`, there is no risk of executing malicious code during this step.
</details>
<evidence></evidence>
<summary>No top-level malicious code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code found.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file (`.desktop`) that defines the launcher metadata for the `stably-orca` application. It contains only expected fields such as `Name`, `GenericName`, `Comment`, `Exec`, `Terminal`, `Type`, `Icon`, `Categories`, and `StartupWMClass`. There are no commands, scripts, network requests, or any executable logic. The file is purely declarative and follows the freedesktop.org specification. No evidence of malicious or suspicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard desktop entry, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt binary AppImage. It downloads the AppImage from the official upstream GitHub releases page with a pinned SHA256 checksum. The `prepare()` function extracts the AppImage using `--appimage-extract`, and `package()` installs the extracted files into the package directory. All operations are confined to the build and package directories. There are no network requests, obfuscated code, or unexpected system modifications. The file contains no evidence of malicious activity or supply-chain attack patterns.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksum; no security issues.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksum; no security issues.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple shell wrapper that sets the `APPDIR` environment variable to `/opt/stably-orca` and launches the AppRun binary with a `--disable-features=Vulkan` flag. The comments explain the purpose: to work around auto-detection issues in AppRun and to handle Vulkan incompatibility with Wayland. There are no network requests, no obfuscated code, no dangerous commands like `eval`, `curl`, or `base64`. The script does not perform any file operations outside its expected scope. It is a standard packaging practice to provide a wrapper script that sets environment variables and passes arguments to the main executable. No evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Wrapper script sets env and runs AppRun, no malicious code.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed stably-orca.sh. Status: SAFE -- Wrapper script sets env and runs AppRun, no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file for the `stably-orca-bin` package. It declares the package name, version, dependencies, and source files. The three source URLs point to the official GitHub repository of the upstream project (stablyai/orca) and include valid SHA-256 checksums. There is no executable code, obfuscated content, or suspicious network destinations in this file. It follows normal AUR packaging conventions and contains no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,476
  Completion Tokens: 1,862
  Total Tokens: 15,338
  Total Cost: $0.001565
  Execution Time: 35.67 seconds

Final Status: SAFE


No issues found.
