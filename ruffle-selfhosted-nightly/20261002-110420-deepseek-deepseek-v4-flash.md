---
package: ruffle-selfhosted-nightly
pkgbase: ruffle-nightly
pkgver: 0.7.0+nightly+20261002
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14813
completion_tokens: 4900
total_tokens: 19713
cost: 0.001033746
execution_time: 101.15
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-02T11:04:20Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR packaging; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no suspicious content.
---

ruffle-selfhosted-nightly is built from ruffle-nightly
Materializing ruffle-selfhosted-nightly from local mirror...
Materialized ruffle-selfhosted-nightly
Analyzing ruffle-selfhosted-nightly AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only variable assignments, array definitions, and an `if` conditional that appends a string to the `makedepends` array. There are no command substitutions (no `$()` or backticks), no calls to `eval`, `curl`, `wget`, or any other potentially dangerous commands. The `pkgver` uses shell parameter expansion (`${_date//-}`) which is safe. All function definitions (`prepare`, `build`, `check`, `package_*`) are only defined and not executed during `makepkg --printsrcinfo`. Therefore, sourcing this file poses no risk of executing malicious code at parse time.
</details>
<evidence></evidence>
<summary>No dangerous global code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous global code; safe to parse.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package for the nightly build of Ruffle (a Flash Player emulator). It fetches the source from the official GitHub repository using a tag. All build steps use standard tools (cargo, npm, jq) and only interact with official registries (crates.io, npmjs.org, GitHub). There is no obfuscated code, no unexpected network requests, no data exfiltration, and no system modifications outside of the package directory. The minor issue of a duplicate `source` array assignment (the first one including a key file is overwritten) is a packaging error, not a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious content.
LLM auditresponse for .gitignore:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used by an AUR package repository. Each entry is a benign git ignore pattern: `src` and `pkg` correspond to the standard makepkg build/package staging directories, `*.pkg.tar.*` ignores built package archives, `*.log` ignores log files, and `/ruffle/` ignores a local directory (likely a build artifact or cloned source for the ruffle project itself).

No security issues are present. The file contains no commands, no network operations, no obfuscated content, no file operations outside normal version-control semantics, and no mechanism to execute or otherwise act on anything. A `.gitignore` file only affects which paths `git` treats as untracked; it cannot perform any runtime action or trigger code execution. Nothing in this file deviates from ordinary packaging practice or constitutes a supply-chain risk.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore for AUR packaging; no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR packaging; no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.SRCINFO` is a package metadata file for the Ruffle flash player emulator (nightly build). It contains only declarative fields: package name, version, description, dependencies, source URL, and checksums. There is no executable code, no script blocks, and no instructions that would cause network requests, file modifications, or code execution at build time beyond typical build tools (cargo, cmake, npm, etc.). The source is explicitly pinned to the project's official GitHub repository with a specific tag and a SHA-256 checksum, providing integrity verification. All makedepends are standard build utilities for a Rust/WebAssembly project. No obfuscation, suspicious URLs, backdoors, or dangerous commands are present. The content is consistent with legitimate AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO metadata, no suspicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no suspicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,813
  Completion Tokens: 4,900
  Total Tokens: 19,713
  Total Cost: $0.001034
  Execution Time: 101.15 seconds

Final Status: SAFE


No issues found.
