---
package: stably-orca-bin
pkgver: 1.4.256
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 13619
completion_tokens: 2460
total_tokens: 16079
cost: 0.00166851
execution_time: 25.15
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-11T08:05:43Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard .desktop file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: AUR metadata file with no executable or suspicious content.
  - file: stably-orca.sh
    status: safe
    summary: Standard wrapper script, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable definitions and function declarations at the top level. No command substitutions, backtick executions, or other code that would run during `makepkg --printsrcinfo`. The `source` array and `sha256sums` are simple string/array assignments. Functions `prepare()` and `package()` are defined but not invoked during sourcing. There is no top-level code that downloads, executes, or exfiltrates data. Running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>Top-level only variable definitions, safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level only variable definitions, safe to source.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Linux desktop entry file (`.desktop` file). It contains only metadata: application name, comment, icon, categories, and an `Exec` line that launches the `stably-orca` binary with the `%U` argument (standard for handling URLs). There is no executable code, no network requests, no file operations, no obfuscation, and no deviation from normal packaging practices. The file is safe.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security concerns.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard .desktop file, no security concerns.
[1/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.SRCINFO` is a metadata file used by AUR helpers to describe package sources, dependencies, and checksums. It contains only static configuration data—no executable code, no network commands (curl, wget, etc.), no obfuscated strings, and no file manipulation logic. The sources point to the project’s own GitHub releases page and local files, all with pinned SHA‑256 checksums. This is standard packaging practice and does not exhibit any signs of malicious or supply‑chain attack behavior.
</details>
<evidence>
</evidence>
<summary>AUR metadata file with no executable or suspicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- AUR metadata file with no executable or suspicious content.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a straightforward wrapper script for the Stably AI Orca application. It sets the APPDIR environment variable to a fixed path (/opt/stably-orca) and then launches the AppRun binary with a single command-line flag (--disable-features=Vulkan) to work around a graphics-compatibility issue. There is no obfuscated code, no network access, no file operations outside the application directory, and no dynamic code execution. The script contains only comments and a standard exec call. It does exactly what it claims to do and does not introduce any supply-chain attack vector.
</details>
<evidence></evidence>
<summary>Standard wrapper script, no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed stably-orca.sh. Status: SAFE -- Standard wrapper script, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a prebuilt AppImage application. The source is downloaded from the official GitHub releases page of the upstream project, with a pinned SHA256 checksum verifying the AppImage integrity. The package only performs expected operations: extracting the AppImage, copying files into the package directory, installing a wrapper script and desktop entry, and installing icons from the extracted tree. No dangerous commands (eval, curl, wget, base64), obfuscated code, unexpected network requests, or file operations outside the intended directories are present. The icon discovery loop iterates over files within the extracted AppImage only. There is no evidence of supply-chain injection or malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with pinned checksums.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,619
  Completion Tokens: 2,460
  Total Tokens: 16,079
  Total Cost: $0.001669
  Execution Time: 25.15 seconds

Final Status: SAFE


No issues found.
