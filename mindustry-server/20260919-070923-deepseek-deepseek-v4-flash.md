---
package: mindustry-server
pkgbase: mindustry
pkgver: 160.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13378
completion_tokens: 2184
total_tokens: 15562
cost: 0.00083477184
execution_time: 35.64
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-19T07:09:23Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore; no suspicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious code found.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config pointing to the official upstream repository. No malicious behavior found.
---

mindustry-server is built from mindustry
Materializing mindustry-server from local mirror...
Materialized mindustry-server
Analyzing mindustry-server AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level code in this PKGBUILD consists entirely of static variable definitions, a default parameter expansion (`: ${_java_ver:=17}`), and function definitions. The only dynamic execution is a for loop that uses `eval` to construct package functions by concatenating function bodies extracted via `$(declare -f ...)`. This is a standard AUR pattern for defining multiple split package functions and does not involve external commands, network access, file I/O beyond reading its own functions, or any other dangerous operations. No code that could execute during `makepkg --printsrcinfo` (which sources the file) performs downloads, exfiltration, or system modifications.
</details>
<evidence></evidence>
<summary>Global scope contains only safe variable/function definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope contains only safe variable/function definitions.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .nvchecker.toml...
[0/4] Reviewing .SRCINFO, .nvchecker.toml, .gitignore...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` file for the `mindustry` and `mindustry-server` AUR packages. It declares source archives from the official upstream repositories (`github.com/Anuken/Mindustry` and `github.com/Anuken/Arc`) pinned to version v160.4 with valid sha256 checksums. No suspicious network requests, obfuscation, or dangerous commands are present. All dependencies and metadata are normal for a game server package. No signs of supply-chain compromise.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .nvchecker.toml, .gitignore, PKGBUILD...
[1/4] Reviewing .nvchecker.toml, .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for .gitignore:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository. It uses a deny-all pattern (`*`) followed by explicit exceptions for `PKGBUILD`, `.SRCINFO`, and `.gitignore` itself. This is a common and expected pattern for AUR git repositories, which generally should only track packaging metadata rather than build artifacts or unrelated files.

There is no executable code, no network activity, no file manipulation, and no reference to any external host. The file contains no obfuscation, encoded data, or commands of any kind. It is entirely consistent with benign packaging practices and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore; no suspicious content.</summary>
</security_assessment>

[2/4] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore; no suspicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a split package. It fetches source code from the official upstream GitHub repository (Anuken/Mindustry and Anuken/Arc) with pinned SHA256 checksums. The build process uses Gradle, a standard Java build tool. The `eval` construct is used legitimately to generate package functions for the two split packages (`mindustry` and `mindustry-server`) using existing function definitions (`_package_common`, `_package_mindustry`, `_package_mindustry-server`). The launcher script writes a standard wrapper that selects a suitable Java runtime. There are no network requests beyond the declared sources, no obfuscated code, no file operations outside expected paths, and no signs of data exfiltration or backdoors. The maintainer email is lightly obfuscated with rot13, a common anti-spam technique, not a supply-chain attack indicator.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious code found.</summary>
</security_assessment>

[3/4] Reviewing .nvchecker.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious code found.
LLM auditresponse for .nvchecker.toml:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard [nvchecker](https://github.com/void-linux/nvchecker) configuration used by AUR maintainers to check for new upstream versions. It specifies a single source named `mindustry` that tracks the Git repository `https://github.com/Anuken/Mindustry.git` and expects version tags to have a `v` prefix.

There is no malicious content. The file contains no network requests other than the declared upstream Git repository URL, no code execution, no obfuscation, no file manipulation, and no exfiltration of data. Tracking an upstream GitHub repository with nvchecker is a normal and expected packaging practice for an AUR package like `mindustry-server`. The source being an unpinned Git repository is standard for this type of version-checking configuration and is not a security concern by itself.
</details>
<evidence>
</evidence>
<summary>
Standard nvchecker config pointing to the official upstream repository. No malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config pointing to the official upstream repository. No malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,378
  Completion Tokens: 2,184
  Total Tokens: 15,562
  Total Cost: $0.000835
  Execution Time: 35.64 seconds

Final Status: SAFE


No issues found.
