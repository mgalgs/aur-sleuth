---
package: ue4ss-experimental-zdev
pkgver: 3.0.1_1131_ga8ab88e1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 15701
completion_tokens: 2600
total_tokens: 18301
cost: 0.00180835452
execution_time: 45.06
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-11T15:11:11Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR packaging.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security concerns.
  - file: ue4ss-install
    status: safe
    summary: No malicious code; standard deployment helper.
---

Materializing ue4ss-experimental-zdev from local mirror...
Materialized ue4ss-experimental-zdev
Analyzing ue4ss-experimental-zdev AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments (pkgname, pkgver, pkgrel, source, sha256sums, etc.) and function definitions (latestver, package) at the top level. No top-level command substitutions, backtick executions, or function invocations are present. The `_verstr` variable uses safe parameter expansion (`${pkgver//_/-}`). Since `makepkg --printsrcinfo` only sources the PKGBUILD (executing top-level code) without running pkgver(), prepare(), build(), or package(), there is no risk of executing any external commands or downloading/payload code during this step.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to parse.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .gitignore...
[0/4] Reviewing .gitignore, PKGBUILD...
[0/4] Reviewing .gitignore, PKGBUILD, .SRCINFO...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR Git repository. It ignores all files by default and then whitelists only the essential packaging files (`.gitignore`, `.SRCINFO`, `PKGBUILD`, `ue4ss-install`, `*.install`, `*.patch`, `*.diff`). There is no executable code, no network requests, no obfuscation, and no deviation from normal packaging practices. The file is benign.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR packaging.</summary>
</security_assessment>

[1/4] Reviewing PKGBUILD, .SRCINFO...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR packaging.
[1/4] Reviewing PKGBUILD, .SRCINFO, ue4ss-install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging conventions. It fetches a pinned, checksummed asset from the project's official GitHub releases (UE4SS-RE/RE-UE4SS) over HTTPS. All file operations in `package()` are routine: copying files into `$pkgdir`, setting permissions, removing documentation files (which is normal packaging hygiene), and installing the `ue4ss-install` helper script. There are no network calls, encoded commands, eval statements, or any other suspicious activity. The `latestver()` function uses `gh` API but is never called during build—it is a maintainer helper for version updates. No evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, ue4ss-install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file for the `ue4ss-experimental-zdev` package. It declares sources (a GitHub release zip and a local helper script `ue4ss-install`), checksums (both pinned), dependencies, and other packaging metadata. There is no executable code, obfuscation, or suspicious network requests embedded in this file. The use of `!strip` and `!debug` options is normal for debug/dev packages. The file conforms to routine AUR packaging practices and contains no evidence of malicious activity.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no security concerns.</summary>
</security_assessment>

[3/4] Reviewing ue4ss-install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security concerns.
LLM auditresponse for ue4ss-install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `ue4ss-install` is a helper script for deploying the UE4SS payload (installed by the package into `/usr/share/ue4ss`) into a game&apos;s `Binaries/Win64` directory. It supports copying, symlinking, force-overwriting configs, and uninstalling.  

No malicious behavior was found: there are no network requests (no curl/wget), no obfuscation, no eval/exec of unknown code, no file operations outside the specified target directory, and no attempts to exfiltrate data. All operations are confined to files owned by the package and the user&apos;s chosen game folder. The script follows standard packaging practices and is clearly intended to simplify manual UE4SS installation, especially under Wine/Proton.
</details>
<evidence></evidence>
<summary>No malicious code; standard deployment helper.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed ue4ss-install. Status: SAFE -- No malicious code; standard deployment helper.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,701
  Completion Tokens: 2,600
  Total Tokens: 18,301
  Total Cost: $0.001808
  Execution Time: 45.06 seconds

Final Status: SAFE


No issues found.
