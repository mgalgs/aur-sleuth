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
completion_tokens: 2815
total_tokens: 16035
cost: 0.00067030600
execution_time: 79.0
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-20T15:13:01Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore file, no threats.
  - file: .nvchecker.toml
    status: safe
    summary: Benign nvchecker config for Mindustry upstream.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO file with pinned upstream sources.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned sources; no malicious activity.
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
The PKGBUILD's global scope consists only of static variable assignments (including arrays for `source` and `sha256sums`), a default-value expansion (`: ${_java_ver:=17}`), and function definitions. The final `for` loop uses `eval` to construct package functions from existing PKGBUILD-defined functions (`_package_common` and `_package_mindustry`/`_package_mindustry-server`). This does **not** execute any external code, fetch content, or run any dangerous commands at source time—it merely defines additional functions that are not invoked during `makepkg --printsrcinfo`. No top-level command substitution, downloads, or exfiltration exists. The rot13-encoded email address in a comment is a benign anti-spam measure and has no execution impact.
</details>
<evidence></evidence>
<summary>Safe: no top-level code executes malicious actions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no top-level code executes malicious actions.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an AUR git repository. It ignores all files except the essential packaging files (`PKGBUILD`, `.SRCINFO`, and itself). There is no executable code, network requests, or any other dangerous behavior. It follows normal AUR maintenance practices.
</details>
<evidence>
</evidence>
<summary>Standard AUR .gitignore file, no threats.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore file, no threats.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple configuration file for `nvchecker` (a version-checking tool). It defines a single source named "mindustry" that checks the official upstream GitHub repository (https://github.com/Anuken/Mindustry.git) for new tags with a "v" prefix. There is no executable code, no network requests to unexpected hosts, no obfuscation, and no deviation from standard packaging practices. It is a benign metadata file used in the AUR build process to track upstream releases.
</details>
<evidence></evidence>
<summary>Benign nvchecker config for Mindustry upstream.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign nvchecker config for Mindustry upstream.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It defines two package variants (`mindustry` and `mindustry-server`) with pinned version `160.4`. All sources are downloaded from the official upstream GitHub repositories (`github.com/Anuken/Mindustry` and `github.com/Anuken/Arc`) over HTTPS, with valid SHA256 checksums. There are no embedded commands, network requests beyond the declared sources, obfuscated code, or any other indicators of malicious behavior. The file conforms to normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO file with pinned upstream sources.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO file with pinned upstream sources.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for building the Mindustry game and its server. The sources are pinned to specific version tags from the official upstream GitHub repositories with accompanying SHA256 checksums, reducing the risk of unpinned supply-chain substitution. The build and install steps are typical for a Gradle-based Java project: cloning dependencies, running a build, and installing the resulting JAR along with wrappers and desktop files. The wrapper script that selects the optimal Java runtime version is a common pattern and does not exfiltrate or download any remote data. The eval-based function generation for subpackages, while unusual, only combines predefined local functions and does not introduce untrusted input or obfuscated code. No malicious behavior—such as hidden network calls, encoded commands, credential theft, or tampering with unrelated system files—was found.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned sources; no malicious activity.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned sources; no malicious activity.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,220
  Completion Tokens: 2,815
  Total Tokens: 16,035
  Total Cost: $0.000670
  Execution Time: 79.00 seconds

Final Status: SAFE


No issues found.
