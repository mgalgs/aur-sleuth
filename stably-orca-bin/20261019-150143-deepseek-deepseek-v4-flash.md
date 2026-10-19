---
package: stably-orca-bin
pkgver: 1.4.230
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13463
completion_tokens: 1848
total_tokens: 15311
cost: 0.001561469
execution_time: 26.52
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-19T15:01:43Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior detected.
  - file: stably-orca.sh
    status: safe
    summary: Clean wrapper script, no security issues found.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only static variable definitions (pkgname, pkgver, source, sha256sums, etc.) and no command substitutions, function calls, or inline executions. The `prepare()` and `package()` functions are defined but are not executed during `makepkg --printsrcinfo`. There is no danger of malicious code running when sourcing this file for metadata extraction.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to parse.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing PKGBUILD...
[0/4] Reviewing PKGBUILD, stably-orca.desktop...
[0/4] Reviewing PKGBUILD, stably-orca.desktop, .SRCINFO...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard desktop entry file used to register the application in the system's application menu. It contains no executable code, no network requests, no obfuscation, and no suspicious operations. All fields are typical for a desktop shortcut: name, generic name, comment, exec command, icon, categories, and startup WM class. There is no deviance from standard packaging practices or any indication of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security concerns.</summary>
</security_assessment>

[1/4] Reviewing PKGBUILD, .SRCINFO...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry file, no security concerns.
[1/4] Reviewing PKGBUILD, .SRCINFO, stably-orca.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file. It declares package name, version, dependencies, and sources, all of which point to the official upstream GitHub repository (`https://github.com/stablyai/orca`). All three source entries include SHA-256 checksums (none are `SKIP`), so integrity is verifiable. There is no executable code, no obfuscation, no network requests, and no system-modifying operations — the file is purely declarative. No evidence of malicious or dangerous behavior was found.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt Electron AppImage. It downloads the upstream AppImage from the project's official GitHub releases with a pinned SHA-256 checksum. The `prepare()` function extracts the AppImage (normal for repackaging), and `package()` installs the extracted files into `/opt`, installs a wrapper script, desktop file, and icons—all routine operations. There are no suspicious network requests, obfuscated commands, system file tampering, or unexpected code execution. The icon-finding loop only searches inside the extracted AppImage's own directory tree, not system-wide locations. No evidence of a supply-chain attack was found.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior detected.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard wrapper for an AppImage-based application. It sets the `APPDIR` environment variable to ensure the application can locate itself, then launches the AppRun binary with a Vulkan-disabling flag and user-provided arguments. There is no suspicious network activity, no obfuscation, no encoded commands, and no execution of untrusted content. All actions are routine for installing and launching a self-contained application. The comments explain the rationale for the flags and environment variable. No malicious or supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Clean wrapper script, no security issues found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.sh. Status: SAFE -- Clean wrapper script, no security issues found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,463
  Completion Tokens: 1,848
  Total Tokens: 15,311
  Total Cost: $0.001561
  Execution Time: 26.52 seconds

Final Status: SAFE


No issues found.
