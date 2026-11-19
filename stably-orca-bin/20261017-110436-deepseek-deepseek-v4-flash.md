---
package: stably-orca-bin
pkgver: 1.4.229
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13449
completion_tokens: 2190
total_tokens: 15639
cost: 0.001622439
execution_time: 35.88
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-17T11:04:35Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content.
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry, no security issues.
  - file: stably-orca.sh
    status: safe
    summary: Standard wrapper, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package, no malicious content detected.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only standard variable assignments (pkgname, pkgver, source, sha256sums, etc.) and function definitions for `prepare()` and `package()`. No command substitutions, backticks, eval, or other executable code exists at the global level that would run when the file is sourced by `makepkg --printsrcinfo`. The source URL points to the project's own GitHub releases, and all checksums are provided. There is no dangerous global code.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to parse.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard metadata file for Arch Linux AUR packages. It defines the package source as an AppImage fetched from the official GitHub releases of `stablyai/orca`, alongside two supporting files (`stably-orca.sh` and `stably-orca.desktop`). All three sources have explicit SHA‑256 checksums (none set to `SKIP`), which provides integrity verification. There is no evidence of obfuscated code, unexpected network destinations, dangerous commands, or any deviation from normal AUR packaging practices. The package is a prebuilt binary (`-bin` variant) that pulls its executable from the project's own upstream repository, which is expected and safe.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing PKGBUILD, stably-orca.desktop, stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content.
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Linux desktop entry file for the Orca IDE by Stably AI. It contains only metadata such as the application name, comment, executable path (`stably-orca %U`), icon, and categories. No executable code, network requests, obfuscation, or any potentially dangerous operations are present. The file conforms to typical packaging practices and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard desktop entry, no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry, no security issues.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `stably-orca.sh` is a straightforward wrapper script that sets the `APPDIR` environment variable to `/opt/stably-orca` and then executes the application's `AppRun` with some Vulkan-related flags. There is no evidence of malicious behavior such as network requests, obfuscated code, unexpected file operations, or attempts to exfiltrate data. The script does exactly what a launcher for an extracted AppImage tree should do: it fixes an upstream bug with auto-detection of APPDIR and disables Vulkan due to compatibility issues (documented in comments). All operations are local and related to the application itself. No suspicious destinations or commands are used.
</details>
<evidence>
</evidence>
<summary>Standard wrapper, no malicious code.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed stably-orca.sh. Status: SAFE -- Standard wrapper, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt binary (AppImage) from the upstream GitHub releases. The source URL points to the official project repository, and sha256sums are provided and pinned (no SKIP pragma). The prepare() function extracts the AppImage using the built-in `--appimage-extract` flag, which is the normal method to obtain the application filesystem from an AppImage. The package() function installs the extracted tree into /opt/stably-orca along with a launcher script and desktop entry, which are all typical operations. There is no obfuscated code, no unexpected network requests, no execution of downloaded code beyond the AppImage extraction, and no evidence of exfiltration, backdoors, or file manipulation outside the package&#x27;s own installation scope. The icon installation logic, while slightly involved, is a workaround for upstream naming inconsistencies and is not malicious. Everything in this file is consistent with a trustworthy, maintainer-written PKGBUILD.
</details>
<evidence></evidence>
<summary>Standard AUR package, no malicious content detected.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package, no malicious content detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,449
  Completion Tokens: 2,190
  Total Tokens: 15,639
  Total Cost: $0.001622
  Execution Time: 35.88 seconds

Final Status: SAFE


No issues found.
