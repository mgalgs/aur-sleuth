---
package: mindustry-server
pkgbase: mindustry
pkgver: 160.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13299
completion_tokens: 2875
total_tokens: 16174
cost: 0.0006933836
execution_time: 50.81
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-20T11:08:50Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore, no security concerns.
  - file: .nvchecker.toml
    status: safe
    summary: Innocuous configuration file for version checking.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; pinned official sources and checksums; no suspicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious content.
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
The top-level scope of this PKGBUILD contains only standard variable definitions, array assignments, and a loop that dynamically constructs `package_*()` functions using `eval` with `declare -f` on functions defined within the same file. The `eval` input is fully controlled by the PKGBUILD itself (hardcoded strings from `pkgname` and `pkgbase`), with no external or user-controlled data. No command substitutions, network requests, file writes, or other side effects occur at source time. All potentially dangerous operations (sed, install, cd, gradlew) are inside function bodies that are not executed by `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>Top-level scope has no malicious execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope has no malicious execution.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file is standard practice for Arch User Repository (AUR) packages. It ignores all files except the essential ones (`PKGBUILD`, `.SRCINFO`, and `.gitignore` itself). There is no code, no network requests, no obfuscation, and no dangerous operations. The file is safe and conforms to normal packaging conventions.</details>
<evidence></evidence>
<summary>Standard AUR .gitignore, no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore, no security concerns.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for `nvchecker`, a tool that checks for new upstream versions. It defines a single source (`mindustry`) pointing to the official Mindustry GitHub repository via Git, with a version prefix `v`. There is no executable code, no network operations outside of the standard upstream URL, and no suspicious or obfuscated content. This is a routine packaging configuration file with no security concerns.
</details>
<evidence></evidence>
<summary>Innocuous configuration file for version checking.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Innocuous configuration file for version checking.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR packaging metadata file. It declares two package variants, `mindustry` and `mindustry-server`, both built from the upstream Anuken/Mindustry and Anuken/Arc project sources at pinned version tags (`v160.4`). The downloads come directly from the official GitHub repositories of the project, and both source tarballs have pinned SHA-256 checksums rather than `SKIP`, which is good supply-chain hygiene.

The only other content is standard packaging metadata: a GPL-3.0-only license, `java-runtime&gt;=17` and `hicolor-icon-theme` dependencies, and architecture `any`. There are no install scripts, no network hooks, no base64/obfuscated content, no dynamic fetching, and no unexpected file operations. Nothing in this file performs or enables any malicious behavior; it is simply a metadata descriptor for building the legitimate upstream Mindustry game server.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata; pinned official sources and checksums; no suspicious behavior.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; pinned official sources and checksums; no suspicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. Sources are pinned to tagged releases (`v160`) from the official upstream GitHub repository with valid sha256 checksums. The build uses Gradle as expected for a Java project. The `eval` construct is used legitimately for dynamic generation of multiple package functions, a common pattern in multi-package PKGBUILDs to avoid code duplication. The wrapper script iterates over system JVM directories to find a suitable runtime — this is a typical quality-of-life measure, not a backdoor. There is no obfuscated code, no unexpected network requests, no execution of untrusted remote content, and no exfiltration of local data. Everything is consistent with the package&#x27;s stated purpose.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,299
  Completion Tokens: 2,875
  Total Tokens: 16,174
  Total Cost: $0.000693
  Execution Time: 50.81 seconds

Final Status: SAFE


No issues found.
