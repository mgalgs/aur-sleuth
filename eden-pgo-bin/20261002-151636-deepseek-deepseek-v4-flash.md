---
package: eden-pgo-bin
pkgver: 0.2.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 20099
completion_tokens: 1675
total_tokens: 21774
cost: 0.000656572
execution_time: 28.31
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-02T15:16:35Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no malicious content.
  - file: LICENSE
    status: safe
    summary: Standard GPL-3.0 license file, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned HTTPS sources and checksums.
  - file: PKGBUILD
    status: safe
    summary: Safe, standard AppImage PKGBUILD with no malicious behavior.
---

Materializing eden-pgo-bin from local mirror...
Materialized eden-pgo-bin
Analyzing eden-pgo-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope consists entirely of static variable assignments (strings and arrays) and does not contain any command substitutions, function calls, or other executable constructs. No `eval`, `curl`, `wget`, or similar dangerous commands appear outside the function bodies. Since `makepkg --printsrcinfo` only sources the global scope and does not execute `prepare()`, `build()`, or `package()`, there is no risk of malicious code execution during this step. The `source` URLs point to the project's own upstream domain (stable.eden-emu.dev and git.eden-emu.dev), which is normal packaging practice. No evidence of data exfiltration or backdoor injection is present in the global scope.
</details>
<evidence></evidence>
<summary>Global scope safe, no execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope safe, no execution risk.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file is a standard Git configuration file that instructs Git to ignore all files except those explicitly listed (`.gitignore`, `PKGBUILD`, `.SRCINFO`, `LICENSE`). This is a common and expected pattern in AUR package repositories to ensure only necessary packaging files are tracked. There is no code execution, no network activity, no obfuscation, and no deviation from normal packaging practices. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard gitignore file, no malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, LICENSE, PKGBUILD...
[1/4] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no malicious content.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the standard GNU General Public License version 3 text. It contains no executable code, no network requests, no obfuscated content, and no system manipulation commands. It is a standard license file distributed with many open-source packages. There are no security concerns.
</details>
<evidence></evidence>
<summary>Standard GPL-3.0 license file, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard GPL-3.0 license file, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata descriptor for the AUR package `eden-pgo-bin`. It defines package information, dependencies, source URLs, and checksums. All source URLs point to the project's own domain (`eden-emu.dev`) over HTTPS, and all checksums are explicitly provided (not skipped). There is no executable code, no obfuscation, no network requests aside from declaring the sources, and no deviation from standard packaging practices. No evidence of malicious behavior was found.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with pinned HTTPS sources and checksums.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned HTTPS sources and checksums.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AppImage packaging practices. It downloads the emulator binary and a MIME XML file from the project's own HTTPS domains (stable.eden-emu.dev and git.eden-emu.dev) with fixed checksums—no SKIP or suspicious sources. The `prepare()` extracts the AppImage (normal), and `package()` installs the binary, desktop file, icon, MIME type, and a symlink—all expected operations. The `post_*` functions run routine system cache updates (update-mime-database, update-desktop-database, gtk-update-icon-cache) which are typical for desktop applications. No obfuscation, no dangerous commands, no unexpected network requests, no data exfiltration, and no backdoors. The code is consistent with safe, ordinary AUR packaging.
</details>
<evidence></evidence>
<summary>Safe, standard AppImage PKGBUILD with no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Safe, standard AppImage PKGBUILD with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,099
  Completion Tokens: 1,675
  Total Tokens: 21,774
  Total Cost: $0.000657
  Execution Time: 28.31 seconds

Final Status: SAFE


No issues found.
