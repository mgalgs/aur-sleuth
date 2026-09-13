---
package: mindustry-server
pkgbase: mindustry
pkgver: 160.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 13366
completion_tokens: 12110
total_tokens: 25476
cost: 0.00182066584
execution_time: 280.56
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-13T15:08:44Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config file for version checking.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore with no malicious content.
  - file: .SRCINFO
    status: safe
    summary: AUR metadata only; pinned sources with checksums, no suspicious behavior.
  - file: PKGBUILD
    status: safe
    summary: "Safe: standard split-package build from pinned upstream sources; no malicious behavior found."
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
The PKGBUILD does not contain any global-level code that executes dangerous operations. All top-level statements are standard variable assignments, a default parameter expansion (`: ${_java_ver:=17}`), and a loop that uses `eval` and `declare -f` to dynamically define package functions. The `eval` in the loop receives the output of `declare -f` on pre-defined helper functions (`_package_common`, `_package_mindustry`, `_package_mindustry-server`), which are themselves benign (they only contain packaging commands like `install`, `cd`, and heredocs). The `eval` only defines new functions; it does not execute the body of those functions. No command substitution, network requests, or file exfiltration occurs during sourcing. The `makepkg --printsrcinfo` command is safe to run.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe for printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe for printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard configuration file for `nvchecker`, a tool used by AUR maintainers to automatically check for new upstream releases. It defines a source named `mindustry` that checks the official GitHub repository (`https://github.com/Anuken/Mindustry.git`) for new tags prefixed with `v`. There is no code execution, no obfuscation, no network request to an unexpected host, and no dangerous operations like `eval`, `curl`, or `wget`. The file is purely declarative and follows normal packaging automation practices.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config file for version checking.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config file for version checking.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files except for the PKGBUILD, .SRCINFO, and itself. There is no executable code, network requests, or any suspicious behavior. It follows normal practice for maintaining minimal tracked files in a VCS repository.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore with no malicious content.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore with no malicious content.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file. It declares the package name, description, version, URL, dependencies, and two source tarballs from the project's official upstream GitHub repositories (Anuken/Mindustry and Anuken/Arc), each pinned to a specific tag (`v160.2`) with a concrete SHA-256 checksum.

There are no build functions, scripts, shell commands, downloads from unexpected hosts, encoded data, or file operations present. The contents are limited to packaging metadata and contain no evidence of malicious or injected behavior.
</details>
<evidence>
</evidence>
<summary>
AUR metadata only; pinned sources with checksums, no suspicious behavior.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- AUR metadata only; pinned sources with checksums, no suspicious behavior.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD builds Mindustry and Mindustry-server from the project's official upstream GitHub release archives with pinned SHA-256 checksums. The Gradle build, icon conversion, package installation, and desktop/launcher file creation are all normal packaging operations for this application.

The generated Java launcher script selects an installed OpenJDK and then executes the packaged jar with `$JAVA_HOME/bin/java`. No code is fetched from unexpected hosts, no data is exfiltrated, and no system files outside the package are modified.

The `eval` loop used to construct the `package_*()` functions is unconventional, but it is a split-package convenience pattern. The values interpolated into `eval` come from the maintainer's own hardcoded `pkgname` array and the maintainer's own function definitions via `declare -f`; it does not execute attacker-controlled or obfuscated content. The rot13 contributor address is standard email obfuscation, not malicious command obfuscation. Overall, this is a legitimate packaging file.
</details>
<evidence></evidence>
<summary>
Safe: standard split-package build from pinned upstream sources; no malicious behavior found.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Safe: standard split-package build from pinned upstream sources; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,366
  Completion Tokens: 12,110
  Total Tokens: 25,476
  Total Cost: $0.001821
  Execution Time: 280.56 seconds

Final Status: SAFE


No issues found.
