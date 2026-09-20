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
completion_tokens: 3774
total_tokens: 17073
cost: 0.00074131932
execution_time: 103.4
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-20T19:17:57Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore, no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Benign configuration file for version checking.
  - file: .SRCINFO
    status: safe
    summary: Clean metadata; pinned upstream GitHub tarballs with checksums; no suspicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no supply-chain risk
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
The PKGBUILD's global/top-level scope consists entirely of standard variable definitions, source URLs pointing to the official upstream GitHub repositories, and a loop that constructs package functions using `eval` with `declare -f` output derived from other functions defined within the same file. No external data or commands are executed during sourcing; no network requests, file downloads, or system-modifying operations occur at the global level. The `eval` usage is a common AUR pattern for generating multiple package functions and does not bring in untrusted input. Therefore, running `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No top-level malicious code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; sourcing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file is a standard configuration file used by Git to ignore certain files in a repository. The content shown is typical for AUR package repositories, where the maintainer only wants to track the essential files (`PKGBUILD`, `.SRCINFO`, and the `.gitignore` itself). It contains no executable code, no network operations, no obfuscation, and no references to external resources. There is no evidence of malicious intent or supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore, no security issues.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore, no security issues.
[1/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for nvchecker, a tool that checks for new upstream versions. It simply defines a source pointing to the official Mindustry GitHub repository (`https://github.com/Anuken/Mindustry.git`) and specifies a version prefix (`v`). There is no executable code, no network requests to unexpected hosts, no obfuscation, and no deviation from standard packaging practices. It is a benign and expected file for a package that uses nvchecker to monitor upstream releases.
</details>
<evidence>
</evidence>
<summary>Benign configuration file for version checking.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign configuration file for version checking.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` contains only standard package metadata for the `mindustry` AUR package. It declares two subpackages (`mindustry` and `mindustry-server`), lists `java-runtime&gt;=17` and `hicolor-icon-theme` as dependencies, and uses the upstream GitHub repository (Anuken/Mindustry, Anuken/Arc) as the source for versioned tarballs (v160.4). Both tarballs have pinned SHA-256 checksums.

There are no code-executing directives in this file: no `eval`, `base64`, `curl`, `wget`, or shell snippets; no post-install hooks; no local data access; no URLs pointing at non-upstream hosts; and no obfuscated strings. The `&gt;` in the dependency string is just the standard XML-style escaping of `>` used in `.SRCINFO` files and is not suspicious.

The only behavior that goes beyond pure metadata is fetching the package's own declared upstream sources over HTTPS with checksums — which is normal packaging practice, not evidence of malice. Based on this file alone, there is nothing to indicate a supply-chain attack.
</details>
<evidence></evidence>
<summary>Clean metadata; pinned upstream GitHub tarballs with checksums; no suspicious behavior.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Clean metadata; pinned upstream GitHub tarballs with checksums; no suspicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard and expected AUR packaging practices. Source tarballs are fetched from the official GitHub repositories (Anuken/Mindustry and Anuken/Arc) with pinned versions and SHA-256 checksums. The build process uses Gradle, the project's standard build tool, and file operations are limited to normal installation steps (desktop entry, wrapper script, icon files, and JAR placement). There is no obfuscated code, no suspicious network requests (no curl|bash or wget to unknown hosts), and no exfiltration or tampering with system files outside the application scope. The dynamic function generation using `eval` and `declare -f` is a common AUR pattern for splitting packages and does not introduce risk. The wrapper script that selects a Java runtime is also standard and benign.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD; no supply-chain risk</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no supply-chain risk
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,299
  Completion Tokens: 3,774
  Total Tokens: 17,073
  Total Cost: $0.000741
  Execution Time: 103.40 seconds

Final Status: SAFE


No issues found.
