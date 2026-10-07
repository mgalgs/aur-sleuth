---
package: mindustry-server
pkgbase: mindustry
pkgver: 160.5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13234
completion_tokens: 2441
total_tokens: 15675
cost: 0.00352150
execution_time: 34.2
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-07T23:09:12Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious code.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no security concerns.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR repository.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious behavior.
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
The top-level code in this PKGBUILD contains only variable assignments, array definitions, and function definitions. The `eval` in the `for` loop at the bottom is used to construct package functions from already-defined helper functions; it does not execute any commands outside the function definitions and involves no command substitution or dynamic code execution from untrusted input. There are no top-level `$(...)`, backtick command substitutions, `curl`, `wget`, or other network operations. Therefore, sourcing this PKGBUILD for `makepkg --printsrcinfo` poses no immediate risk.
</details>
<evidence></evidence>
<summary>No top-level dangerous commands; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level dangerous commands; sourcing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.SRCINFO` metadata file used in Arch Linux AUR packages. It contains only declarative information: package name, version, description, upstream URL, dependencies, and source references. The sources point to official GitHub repositories of the Mindustry project (Anuken/Mindustry and Anuken/Arc) with pinned release tags and corresponding SHA256 checksums. No executable code, obfuscation, network calls, or system-modifying instructions are present. The file follows normal AUR packaging practices and shows no evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard metadata file, no malicious code.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/4] Reviewing .gitignore, .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious code.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for `nvchecker`, a tool that automates version checking for packaging purposes. It specifies the upstream git repository for the Mindustry project and a regex pattern to match version tags. There is no executable code, no obfuscation, and no network requests beyond the expected upstream source. The content is entirely benign and follows standard packaging tooling practices.
</details>
<evidence></evidence>
<summary>Standard nvchecker config; no security concerns.</summary>
</security_assessment>

[2/4] Reviewing .gitignore, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no security concerns.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` file for an AUR package repository. It ignores all files except `PKGBUILD`, `.SRCINFO`, and `.gitignore` itself—a common and expected practice to keep the repository clean. There are no network requests, obfuscated code, dangerous commands, or any behavior that deviates from normal packaging operations.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR repository.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR repository.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Java-based game. All sources are fetched from the official GitHub repositories of the upstream project (Anuken/Mindustry and Anuken/Arc) with pinned SHA-256 checksums. The `prepare()` and `build()` functions perform routine build setup and invoke Gradle, which is the expected upstream build system. The `_package_common()` function creates a wrapper script and `.desktop` file; the wrapper script scans for an appropriate Java runtime under `/usr/lib/jvm/` and launches the jar – this is a standard pattern for Java applications and does not introduce any network or system-modification risks. The `eval`-based dynamic package function generation uses hardcoded package names derived from the `pkgbase` and known suffixes; there is no injection vector or external influence on the function names or bodies. No obfuscated code, unexpected network requests, or dangerous command usage is present. The file is consistent with legitimate packaging and contains no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,234
  Completion Tokens: 2,441
  Total Tokens: 15,675
  Total Cost: $0.003522
  Execution Time: 34.20 seconds

Final Status: SAFE


No issues found.
