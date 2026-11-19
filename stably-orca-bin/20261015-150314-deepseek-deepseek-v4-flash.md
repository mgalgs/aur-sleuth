---
package: stably-orca-bin
pkgver: 1.4.224
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13457
completion_tokens: 1976
total_tokens: 15433
cost: 0.001584219
execution_time: 31.55
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-15T15:03:12Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security concerns.
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry file, no issues found.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with pinned sources, no malicious behavior.
  - file: stably-orca.sh
    status: safe
    summary: Clean wrapper script with no malicious content.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only variable definitions (pkgname, pkgver, pkgrel, etc.) and static arrays (depends, source, sha256sums, etc.). There are no command substitutions, backticks, eval statements, or any other executable code at the top level. All functional code (chmod, AppImage extraction, file copying, icon installation) is inside `prepare()`, `build()`, or `package()` functions, which are not executed during `makepkg --printsrcinfo`. The source URLs are standard GitHub release URLs, and no unexpected network operations or data exfiltration is triggered by simply sourcing this file.
</details>
<evidence></evidence>
<summary>No global-scope executable code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No global-scope executable code found.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains only standard package metadata: name, description, version, dependencies, and source URLs. All three source files are fetched from the official GitHub releases page (`https://github.com/stablyai/orca/releases/download/v1.4.224/orca-linux.AppImage`) and local files (`stably-orca.sh`, `stably-orca.desktop`). Valid sha256sums are provided for each source (none set to SKIP). There are no embedded scripts, obfuscated commands, or unusual network destinations. The file is a declarative metadata record with no executable content.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing PKGBUILD, stably-orca.desktop, stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security concerns.
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for an Electron-based IDE launcher. It defines metadata (name, icon, categories) and an `Exec` line that runs the `stably-orca` binary with the `%U` argument for opening URLs. There are no network requests, obfuscated commands, system file modifications, or any other suspicious behaviors. The file conforms entirely to normal packaging practices and does not contain any injected malicious code.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no issues found.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry file, no issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for distributing a prebuilt AppImage. It downloads the AppImage from the project's official GitHub releases with a pinned version and checksum, extracts it, and installs the extracted files into `/opt/stably-orca` along with a launcher script and desktop entry. There are no suspicious network requests, no obfuscated code, no attempts to exfiltrate data, and no unexpected system modifications. The icon discovery loop, while non-trivial, is a legitimate way to handle upstream naming variations and does not indicate malice. All sources are pinned and checksummed, and the build/package steps are transparent and safe.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD with pinned sources, no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with pinned sources, no malicious behavior.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This wrapper script contains no malicious code. It simply sets an environment variable (`APPDIR`) and then executes the upstream application's `AppRun` binary with a `--disable-features=Vulkan` flag. There are no network requests, obfuscated commands, or unexpected file operations. The script is consistent with standard packaging practices for launching an AppImage-based application from a fixed path.
</details>
<evidence></evidence>
<summary>Clean wrapper script with no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.sh. Status: SAFE -- Clean wrapper script with no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,457
  Completion Tokens: 1,976
  Total Tokens: 15,433
  Total Cost: $0.001584
  Execution Time: 31.55 seconds

Final Status: SAFE


No issues found.
