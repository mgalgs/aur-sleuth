---
package: soh
pkgver: 9.2.3
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 15843
completion_tokens: 1646
total_tokens: 17489
cost: 0.00128319310
execution_time: 60.9
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-12T03:13:48Z
file_verdicts:
  - file: soh.desktop
    status: safe
    summary: Standard desktop entry file, no security concerns.
  - file: soh.install
    status: safe
    summary: Safe - only prints informational message.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned sources, no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata; no security issues found.
---

Materializing soh from local mirror...
Materialized soh
Analyzing soh AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and function definitions at the global scope. No command substitutions, backticks, evals, or other code that would execute when sourcing the file are present. All potentially dangerous operations (file copying, compilation, installation) are confined to the `prepare()`, `build()`, and `package_*()` functions, which are not executed by `makepkg --printsrcinfo`. Therefore, running this command is safe.
</details>
<evidence></evidence>
<summary>No malicious top-level code in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code in PKGBUILD.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, soh.desktop...
LLM auditresponse for soh.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Ship of Harkinian application. It contains only static metadata (name, comment, executable, categories) and no executable code, network requests, or obfuscation. There is no evidence of malicious behavior or supply-chain attack indicators. The file follows the typical format for launching a desktop application and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, soh.desktop, soh.install...
[1/4] Reviewing .SRCINFO, PKGBUILD, soh.install...
+ Reviewed soh.desktop. Status: SAFE -- Standard desktop entry file, no security concerns.
LLM auditresponse for soh.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `soh.install` contains only a function that prints an informational message to the user during post-install and post-upgrade. There are no network requests, no encoded or obfuscated commands, no file operations, and no execution of external code. The script simply displays a notice about the package being unofficial and provides guidance on OTR files. This is standard packaging practice and contains no malicious behavior.
</details>
<evidence></evidence>
<summary>Safe - only prints informational message.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed soh.install. Status: SAFE -- Safe - only prints informational message.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package for "soh" (Ship of Harkinian), an unofficial port of The Legend of Zelda: Ocarina of Time. It downloads source tarballs from the project's official GitHub repositories (HarbourMasters and Kenix3) with pinned commits and SHA256 checksums provided for all sources. There is no obfuscated code, no unexpected network requests, no dangerous commands like eval/curl|bash, and no system modifications outside the expected packaging scope. The `__generate_headers` variable, if enabled, copies ROM files from the user's build directory—this is a user-initiated step for asset generation and is not automatic or malicious. All other operations (cmake, install, symlinks, copying docs) are standard and non-threatening.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned sources, no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned sources, no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for the AUR package `soh`. It contains no executable code, no obfuscated strings, no network requests, and no unexpected file operations. All source URIs point to legitimate GitHub repositories (HarbourMasters, Kenix3) associated with the Ship of Harkinian project. Each source tarball has a pinned SHA256 checksum, allowing integrity verification. There is no evidence of supply chain injection or malicious intent. The file simply declares package configuration, dependencies, and source details.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata; no security issues found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata; no security issues found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,843
  Completion Tokens: 1,646
  Total Tokens: 17,489
  Total Cost: $0.001283
  Execution Time: 60.90 seconds

Final Status: SAFE


No issues found.
