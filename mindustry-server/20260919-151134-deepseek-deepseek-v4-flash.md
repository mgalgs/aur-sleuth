---
package: mindustry-server
pkgbase: mindustry
pkgver: 160.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13220
completion_tokens: 2825
total_tokens: 16045
cost: 0.00079782360
execution_time: 55.72
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-19T15:11:33Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no security concerns.
  - file: .nvchecker.toml
    status: safe
    summary: Legitimate nvchecker config; no malice.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious code.
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
The top-level code of this PKGBUILD consists only of variable assignments, source definitions, checksums, and a loop that dynamically generates package functions using eval. The eval uses only internal function definitions (`declare -f` of `_package_common` and `_package_mindustry`/`_package_mindustry-server`) to construct the concrete package functions. No external data, network requests, or dangerous operations are performed at the top-level scope. The source array points to the official GitHub release tarballs with pinned checksums. There is no malicious code that would execute during `makepkg --printsrcinfo`. The `prepare()`, `build()`, and `package()` functions contain build and install logic that will be audited separately, but they are not executed during this step.
</details>
<evidence></evidence>
<summary>Safe to source; no top-level malicious code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe to source; no top-level malicious code.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an AUR repository. It instructs Git to ignore all files (`*`) except the essential packaging files (`PKGBUILD`, `.SRCINFO`, and itself). No commands, network requests, or suspicious operations are present. This is a normal and expected file in an AUR package repository.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no security concerns.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for nvchecker, a tool used to check for new upstream versions. It defines a source named &quot;mindustry&quot; that checks the official Mindustry Git repository at `https://github.com/Anuken/Mindustry.git` and expects version tags prefixed with &quot;v&quot;. There is no dynamic code, obfuscation, network requests to unexpected hosts, or any other malicious behavior. The configuration is standard and aligns with legitimate AUR packaging practices.
</details>
<evidence></evidence>
<summary>Legitimate nvchecker config; no malice.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Legitimate nvchecker config; no malice.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard metadata for an AUR package. It defines two split packages: `mindustry` and `mindustry-server`. The sources are pinned tarballs from the official upstream repositories (Anuken/Mindustry and Anuken/Arc) with specific version tags and valid SHA-256 checksums. There are no commands, no network requests to unexpected hosts, no obfuscated code, no file operations, and no unusual encoding. The content is purely declarative and follows normal AUR packaging practices. No security issues are present.
</details>
<evidence>
</evidence>
<summary>Standard metadata file, no security concerns.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for building Mindustry from source. The source URLs point to the official GitHub repositories (Anuken/Mindustry and Anuken/Arc) with pinned SHA-256 checksums. The build process uses Gradle, a normal Java build tool. The wrapper script selects the best available Java runtime and executes the jar file, which is expected behavior. The only potentially unusual element is the use of `eval` and `declare -f` at the end to dynamically generate package functions for multiple subpackages. This is a known pattern in AUR for splitting builds and does not introduce untrusted input—the loop iterates over a hardcoded array of package names defined earlier in the same file. No obfuscation, extraneous network requests, file exfiltration, or backdoors are present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious code.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,220
  Completion Tokens: 2,825
  Total Tokens: 16,045
  Total Cost: $0.000798
  Execution Time: 55.72 seconds

Final Status: SAFE


No issues found.
