---
package: stably-orca-bin
pkgver: 1.4.258
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 13546
completion_tokens: 2045
total_tokens: 15591
cost: 0.00158724
execution_time: 35.0
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-13T08:12:23Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry file, no security concerns.
  - file: stably-orca.sh
    status: safe
    summary: Safe wrapper; no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata file; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Legitimate PKGBUILD; no supply-chain attack indicators.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function definitions. There are no command substitutions, backticks, or other code executions at the global/top-level scope. All potentially dangerous operations (chmod, install, cp, loops) are inside `prepare()` and `package()` functions, which are not executed by `makepkg --printsrcinfo`. The source array uses simple variable interpolation which is normal. No malicious top-level code exists.
</details>
<evidence>
</evidence>
<summary>No malicious top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to parse.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file (`.desktop`). It contains no executable code, network requests, obfuscation, or file operations. The `Exec` line simply launches the `stably-orca` binary with the `%U` argument for file handling. The categories and other fields are typical for an IDE application. There is no evidence of malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>Standard desktop entry file, no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry file, no security concerns.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard wrapper script that sets the `APPDIR` environment variable and launches the upstream AppRun binary with a flag to disable Vulkan (a known workaround for NVIDIA rendering issues). It contains no network requests, obfuscation, file writes, or any logic that deviates from launching the packaged application. The code is transparent and consistent with ordinary AppImage packaging practices.
</details>
<evidence></evidence>
<summary>Safe wrapper; no malicious behavior.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed stably-orca.sh. Status: SAFE -- Safe wrapper; no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata descriptor for the AUR package. It declares the package name, version, dependencies, sources, and checksums. All sources point to the project&#39;s official GitHub releases (https://github.com/stablyai/orca/releases/). Checksums are provided and non-SKIP. No executable code, no suspicious network destinations, no obfuscation, and no deviation from standard packaging practices. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard package metadata file; no security concerns.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata file; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for an Electron/AppImage-based application. The source is fetched directly from the official GitHub releases page of the upstream project (stablyai/orca) with a pinned version and checksums. The extraction of the AppImage and installation of its contents into `/opt/stably-orca` is the normal method for packaging AppImages in Arch Linux. There is no obfuscated code, no unexpected network requests, no data exfiltration, and no execution of untrusted external code beyond the upstream binary itself. The icon installation logic, while somewhat elaborate, is a legitimate workaround for upstream icon naming variability and does not introduce any malicious behavior.
</details>
<evidence></evidence>
<summary>Legitimate PKGBUILD; no supply-chain attack indicators.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate PKGBUILD; no supply-chain attack indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,546
  Completion Tokens: 2,045
  Total Tokens: 15,591
  Total Cost: $0.001587
  Execution Time: 35.00 seconds

Final Status: SAFE


No issues found.
