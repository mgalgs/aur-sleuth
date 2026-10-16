---
package: stably-orca-bin
pkgver: 1.4.227
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13458
completion_tokens: 2134
total_tokens: 15592
cost: 0.001613066
execution_time: 43.83
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T07:07:52Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry file; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for a prebuilt AppImage; no issues.
  - file: stably-orca.sh
    status: safe
    summary: Standard wrapper script, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with pinned checksums, no malicious content.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments (strings and arrays) and function definitions (`prepare()`, `package()`) at the top level. No command substitutions, backtick expressions, `eval`, or any other executable code runs when the file is sourced. The `source` array includes a URL to the upstream GitHub releases page, but that is simply a string assignment and does not trigger any download or execution during `makepkg --printsrcinfo`. All build-time actions are inside the functions, which are not invoked by this command. Therefore, executing `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No top-level execution; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution; safe to parse.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Orca IDE by Stably AI. It defines metadata (name, generic name, comment, icon, categories) and specifies the command to execute as `stably-orca %U`, which is a normal pattern for launching an application with optional URL/file arguments. There are no suspicious commands, network requests, obfuscated code, or system modifications. The file conforms to the freedesktop.org desktop entry specification and contains no signs of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard desktop entry file; no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry file; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt binary AppImage. The source is pinned to a specific GitHub release with a valid sha256sum. The `prepare()` function extracts the AppImage, and `package()` installs the extracted files into `/opt/stably-orca` and the necessary launcher scripts and icons. There are no suspicious network requests, obfuscated code, or dangerous commands (eval, curl, wget, etc.). The icon-detection loop is a routine workaround for upstream naming changes and does not introduce any security risk. No evidence of supply-chain attack or malicious injection is present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for a prebuilt AppImage; no issues.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for a prebuilt AppImage; no issues.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script for a packaged application. It sets a required `APPDIR` environment variable and launches the application with appropriate flags to disable Vulkan (to work around display issues). There is no suspicious network activity, obfuscated code, data exfiltration, or any deviation from normal packaging practices. The script is fully transparent and performs only its intended function.
</details>
<evidence>
</evidence>
<summary>Standard wrapper script, no security issues.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed stably-orca.sh. Status: SAFE -- Standard wrapper script, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file describes an AUR binary package for Stably AI Orca, an Electron-based coding IDE. It declares three sources: an AppImage from the official GitHub releases page, a shell script, and a desktop file. All sources have pinned SHA-256 checksums, and the URLs point to the upstream project&#39;s own repository. There are no obfuscated commands, no unexpected network requests, no data exfiltration, and no instructions that deviate from standard packaging metadata. The file is purely declarative and contains no executable code, thus no evidence of a supply-chain attack is present.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO with pinned checksums, no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with pinned checksums, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,458
  Completion Tokens: 2,134
  Total Tokens: 15,592
  Total Cost: $0.001613
  Execution Time: 43.83 seconds

Final Status: SAFE


No issues found.
