---
package: mindustry-server
pkgbase: mindustry
pkgver: 160.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13212
completion_tokens: 2439
total_tokens: 15651
cost: 0.00149170140
execution_time: 36.45
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-23T19:11:37Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore, no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Safe configuration file for version tracking.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with pinned upstream sources.
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
The top-level scope of this PKGBUILD contains only standard variable definitions, source array declarations, and a `for` loop that dynamically constructs function definitions using `declare -f` and `eval`. The `eval` is used solely to build function bodies from other local functions (`_package_common` and `_package_mindustry*`) that are defined in the same file; no external or untrusted input is injected. The constructed functions are not executed during `makepkg --printsrcinfo`, only defined. No network requests, downloads, file exfiltration, or execution of arbitrary code occurs when sourcing the PKGBUILD. The overall packaging is conventional for an AUR multi-split package.
</details>
<evidence></evidence>
<summary>No top-level execution risk detected.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution risk detected.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .nvchecker.toml...
[0/4] Reviewing .nvchecker.toml, .gitignore...
[0/4] Reviewing .nvchecker.toml, .gitignore, .SRCINFO...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an Arch User Repository (AUR) package repository. It ignores all files except the PKGBUILD, .SRCINFO, and the .gitignore itself. This is normal and expected behavior for an AUR package repository. There is no malicious content, no network requests, no code execution, and no obfuscation. The file is safe.
</details>
<evidence>
</evidence>
<summary>Standard AUR .gitignore, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .nvchecker.toml, .gitignore, .SRCINFO, PKGBUILD...
[1/4] Reviewing .nvchecker.toml, .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore, no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file for tracking upstream releases of the Mindustry game. It specifies the official GitHub repository (https://github.com/Anuken/Mindustry.git) and a version prefix "v", which is normal for projects that tag releases with a "v" prefix. There is no execution of arbitrary commands, obfuscated code, or unexpected network destinations. The file poses no security risk.
</details>
<evidence>
</evidence>
<summary>Safe configuration file for version tracking.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Safe configuration file for version tracking.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It fetches source code and a dependency (Arc) from the official GitHub repositories with pinned versions and SHA256 checksums. The build process uses Gradle and standard utilities (sed, ln, icns2png, install). The wrapper script in `_package_common` iterates over `/usr/lib/jvm/java-*-openjdk` to find a suitable JDK — this is typical for Java applications and does not introduce a security risk. The dynamic package function generation using `eval` and `declare -f` is a common pattern for split packages in AUR; it only reuses internally defined functions and does not process untrusted input. No network requests to unexpected hosts, obfuscated code, or suspicious operations are present. The only unusual element is the ROT13-encoded maintainer email, which is a benign spam avoidance technique. Overall, there is no evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no security issues.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a plain-text metadata file that declares package attributes, dependencies, and source URLs. It does not contain any executable code or commands. All sources point to the official upstream GitHub repositories of Mindustry and Arc, using pinned version tags (v160.5). SHA256 checksums are provided for both archives, ensuring integrity. There are no obfuscated strings, unexpected network destinations, or dangerous operations. The content conforms to standard AUR packaging practices and presents no security concerns.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with pinned upstream sources.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with pinned upstream sources.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,212
  Completion Tokens: 2,439
  Total Tokens: 15,651
  Total Cost: $0.001492
  Execution Time: 36.45 seconds

Final Status: SAFE


No issues found.
