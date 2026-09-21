---
package: mindustry-server
pkgbase: mindustry
pkgver: 160.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13291
completion_tokens: 12677
total_tokens: 25968
cost: 0.00214247880
execution_time: 498.24
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-21T23:20:55Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR packaging metadata; no malicious behavior.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: No malicious code found; official pinned sources with standard packaging steps.
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
The PKGBUILD's top-level scope consists only of variable assignments, array definitions, and a `for` loop that uses `eval` to construct package functions by concatenating built-in function bodies from the same file. No commands that download, execute, or exfiltrate data are present. The `eval` only combines existing function definitions (`_package_common`, `_package_mindustry`, etc.) — no external input is used. Since `makepkg --printsrcinfo` does not execute `prepare()`, `build()`, or `package()` functions, there is no risk of malicious code running during this step.
</details>
<evidence></evidence>
<summary>No execution risk when sourcing PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No execution risk when sourcing PKGBUILD.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used in AUR git repositories to track only packaging metadata (PKGBUILD, .SRCINFO, .gitignore) and ignore all other files. It contains no commands, network calls, or executable content. This is consistent with normal AUR maintenance practices and poses no security risk.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore for AUR packaging metadata; no malicious behavior.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR packaging metadata; no malicious behavior.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for nvchecker, a tool used to automatically detect new upstream releases. It defines a single rule: check the official Mindustry Git repository for tags prefixed with &quot;v&quot;. There is no executable code, no network requests beyond the specified legitimate URL, no obfuscation, and no data exfiltration. The configuration is standard and safe.
</details>
<evidence></evidence>
<summary>Standard nvchecker config; no malicious content.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is metadata describing the mindustry and mindustry-server AUR packages. It declares the package name, version, description, URL, license, dependencies, and two source tarballs from the official upstream GitHub repositories (Anuken/Mindustry and Anuken/Arc). Both tarballs have explicit SHA256 checksums provided. There is no executable code, no network requests beyond declaring the upstream sources, no obfuscation, no manipulation of system files, and no deviation from standard AUR packaging practices. The file is purely declarative and does not contain any malicious instructions.
</details>
<evidence>

</evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows normal AUR packaging practices for a split Java package. It downloads the official Mindustry and Arc sources from the upstream GitHub repositories with pinned sha256 checksums, runs the Gradle build, and installs jars, icons, desktop entries, and a generated launcher into the package directory. There is no exfiltration, no unexpected remote host, no backdoor, and no tampering with unrelated system files.

The dynamic `eval` loop used to construct the split-package functions is unconventional, but it only composes `package_*()` functions from existing local `_package_common()` and `_package_*()` definitions in this same PKGBUILD. The input is not attacker-controlled, and there is no obfuscated code, no `curl|bash`, and no fetching of unchecked mutable content at build time. I found no evidence of injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>
No malicious code found; official pinned sources with standard packaging steps.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious code found; official pinned sources with standard packaging steps.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,291
  Completion Tokens: 12,677
  Total Tokens: 25,968
  Total Cost: $0.002142
  Execution Time: 498.24 seconds

Final Status: SAFE


No issues found.
