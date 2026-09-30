---
package: ledger-live-bin
pkgver: 4.21.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10684
completion_tokens: 1586
total_tokens: 12270
cost: 0.000678944
execution_time: 28.54
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-22T15:46:02Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no issues.
  - file: PKGBUILD
    status: safe
    summary: Clean and standard AUR PKGBUILD for Ledger Live.
  - file: .nvchecker.toml
    status: safe
    summary: "Safe: standard upstream version-check configuration with no malicious behavior."
---

Materializing ledger-live-bin from local mirror...
Materialized ledger-live-bin
Analyzing ledger-live-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and function definitions in its global scope. There are no malicious command substitutions, `eval`, or other dangerous top-level code. The `prepare()` and `package()` functions are defined but not executed during `makepkg --printsrcinfo`. All source URLs are conventional and originate from the application’s official domain (`download.live.ledger.com` and `raw.githubusercontent.com/LedgerHQ`). No code is run that could exfiltrate data or download executables at parse time.
</details>
<evidence></evidence>
<summary>
No dangerous top-level code; safe to parse for metadata.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to parse for metadata.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the AUR package `ledger-live-bin`. It declares the package name, version, dependencies, and sources. The sources are both from official Ledger domains (`download.live.ledger.com` for the AppImage and `raw.githubusercontent.com/LedgerHQ` for the license file). Both sources have pinned SHA512 checksums. There is no executable code, no obfuscation, no unexpected network requests, and no supply-chain attack indicators. The file is purely declarative and follows standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no issues.</summary>
</security_assessment>

[1/3] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for distributing a prebuilt binary (AppImage) from the official upstream source, `https://download.live.ledger.com/`. The source URLs and checksums are pinned and verified. The `prepare()` function extracts the AppImage and adjusts the desktop file, which is a common approach to integrate AppImage-based software into the system. Removing `AppRun` and `app-update.yml` is a packaging choice to disable auto-update and run the binary directly; this does not constitute malicious behavior. All file operations are confined to the build directory and the intended installation paths (`/opt`, `/usr/bin`, etc.). No suspicious network requests, obfuscated commands, or exfiltration of data are present. The package is consistent with the stated purpose of maintaining Ledger devices.
</details>
<evidence></evidence>
<summary>Clean and standard AUR PKGBUILD for Ledger Live.</summary>
</security_assessment>

[2/3] Reviewing .nvchecker.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Clean and standard AUR PKGBUILD for Ledger Live.
LLM auditresponse for .nvchecker.toml:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard nvchecker configuration used to check for new upstream versions of the ledger-live-bin package. It queries the official Ledger download endpoint over HTTPS and extracts a semantic version number using a regex. No code execution, no data exfiltration, no suspicious download logic, and no obfuscation are present. The URL is the package's own trusted upstream source and the configuration is limited to version detection, which is normal AUR packaging practice.
</details>
<evidence></evidence>
<summary>Safe: standard upstream version-check configuration with no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Safe: standard upstream version-check configuration with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,684
  Completion Tokens: 1,586
  Total Tokens: 12,270
  Total Cost: $0.000679
  Execution Time: 28.54 seconds

Final Status: SAFE


No issues found.
