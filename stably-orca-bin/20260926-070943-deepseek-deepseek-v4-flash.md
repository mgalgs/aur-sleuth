---
package: stably-orca-bin
pkgver: 1.4.212
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13466
completion_tokens: 1771
total_tokens: 15237
cost: 0.00080005632
execution_time: 27.5
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-26T07:09:43Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for a prebuilt AppImage; no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata file, no malicious indicators.
  - file: stably-orca.sh
    status: safe
    summary: Standard wrapper script, no security issues.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and function definitions at the top level. There are no commands that execute during sourcing (no `eval`, `curl`, `wget`, or subshell expansions that could run arbitrary code). All potentially dangerous operations (AppImage extraction, file installation) are confined to `prepare()` and `package()` functions, which are not invoked by `makepkg --printsrcinfo`. Therefore, parsing this PKGBUILD is safe.
</details>
<evidence>
</evidence>
<summary>No top-level malicious code; printsrcinfo safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; printsrcinfo safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .desktop file for a desktop application. It contains no executable code, no network requests, and no obfuscation. The `Exec` line launches the application normally. Everything here is consistent with proper packaging of an Electron-based IDE.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt Electron-based application distributed as an AppImage. It downloads the official AppImage from the project's GitHub releases (using pinned version v1.4.212), verifies it with a SHA-256 checksum, extracts it with `--appimage-extract`, and installs the extracted directory alongside a launcher script and desktop entry. There are no suspicious network requests, no obfuscated commands, no attempts to exfiltrate data, no unexpected file operations (all operations are within the application's own install prefix `/opt/stably-orca` and system icon/application directories), and no backdoors. The icon-finding logic iterates standard hicolor icon sizes and falls back to the AppImage root, which is normal for handling upstream naming changes without hardcoding. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for a prebuilt AppImage; no malicious code.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for a prebuilt AppImage; no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It declares sources from the official GitHub releases page (`https://github.com/stablyai/orca/releases/download/...`), along with a shell script and a desktop file. All three sources have explicit sha256sums, matching best practices for verifying integrity. There is no obfuscated code, no embedded commands, no references to unusual network destinations, and no supply-chain attack indicators. The file simply describes the package structure for the Arch Build System.
</details>
<evidence></evidence>
<summary>Standard AUR package metadata file, no malicious indicators.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata file, no malicious indicators.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `stably-orca.sh` is a standard wrapper script that sets the `APPDIR` environment variable to `/opt/stably-orca` and then launches the application's `AppRun` binary with a Vulkan feature flag. There are no network requests, obfuscated commands, file operations, or dangerous commands (eval, curl, wget, etc.). The script performs only routine packaging tasks: exporting a variable and executing the application binary. No evidence of malicious behavior or supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard wrapper script, no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.sh. Status: SAFE -- Standard wrapper script, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,466
  Completion Tokens: 1,771
  Total Tokens: 15,237
  Total Cost: $0.000800
  Execution Time: 27.50 seconds

Final Status: SAFE


No issues found.
