---
package: cursor-bin
pkgver: 3.20.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 12985
completion_tokens: 2332
total_tokens: 15317
cost: 0.001563807294
execution_time: 41.37
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-10T11:01:32Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with pinned sources and standard packaging.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with build artifact exclusions.
  - file: rg.sh
    status: safe
    summary: Simple wrapper script for rg, no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file; no security concerns.
---

Materializing cursor-bin from local mirror...
Materialized cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only variable definitions (string assignments, arrays, hashes) and the definition of the `package()` function. There are no command substitutions, backticks, `eval`, `exec`, or any other code execution in the top-level scope. The source URLs use string interpolation (`${_commit}` and `${pkgver}`) but these are simple variable expansions, not command execution. The `sha512sums` array is reassigned, but that is also a normal assignment. Since `makepkg --printsrcinfo` only sources the PKGBUILD and does not execute function bodies, there is no risk of executing malicious code at this step.
</details>
<evidence></evidence>
<summary>No dangerous global code in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous global code in PKGBUILD.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a binary package. The source tarball is downloaded from the official Cursor domain (downloads.cursor.com) with a pinned SHA‑512 checksum. Helper scripts (code.sh, code.mjs, rg.sh) are fetched from the official Arch Linux packaging repository for the `code` package and also pinned. The package() function only extracts the .deb, installs files, creates symlinks, and patches the startup scripts to use the system electron and nodejs – all of which are expected operations for a binary Electron application. There is no obfuscated code, no unexpected network requests, and no execution of untrusted content. The PKGBUILD contains no malicious behavior.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD with pinned sources and standard packaging.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with pinned sources and standard packaging.
[1/4] Reviewing .SRCINFO, .gitignore, rg.sh...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains only a list of file paths and patterns that should be ignored by Git when tracking changes. These paths correspond to build artifacts generated during the packaging process of the `cursor-bin` AUR package, such as an AppImage binary, a compressed package archive, and other intermediate files under the `pkg/` and `src/` directories. There is no executable code, no network requests, no obfuscated content, and no system modification commands. This file is a standard part of any version-controlled project to prevent committing temporary or generated files. No security issues are present.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore file with build artifact exclusions.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, rg.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with build artifact exclusions.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a simple wrapper that transforms the `--cursor-ignore` argument into `--ignore-file` when calling ripgrep (`/usr/bin/rg`). It uses `exec` to replace the shell process, which is a standard practice. There is no obfuscation, no network activity, no file manipulation beyond the intended call, and no deviation from normal packaging. This is a harmless utility script for the Cursor editor integration.
</details>
<evidence></evidence>
<summary>Simple wrapper script for rg, no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed rg.sh. Status: SAFE -- Simple wrapper script for rg, no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata descriptor for the AUR package. It contains package name, version, dependencies, source URLs, and checksums. All source URLs point to official and expected locations: the official Cursor downloads server and the Arch Linux packaging repository. Checksums are provided for all sources, and there are no skipped checksums. There is no obfuscated code, no dangerous commands, and no network requests or system modifications defined in this file. The file is purely declarative and does not execute any actions. No evidence of malicious behavior is present.
</details>
<evidence>

</evidence>
<summary>Standard metadata file; no security concerns.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file; no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,985
  Completion Tokens: 2,332
  Total Tokens: 15,317
  Total Cost: $0.001564
  Execution Time: 41.37 seconds

Final Status: SAFE


No issues found.
