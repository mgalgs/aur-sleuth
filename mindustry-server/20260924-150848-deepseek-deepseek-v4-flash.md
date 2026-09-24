---
package: mindustry-server
pkgbase: mindustry
pkgver: 160.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13462
completion_tokens: 4221
total_tokens: 17683
cost: 0.00187366816
execution_time: 141.5
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-24T15:08:47Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore with no malicious or suspicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with official sources and checksums; no malicious behavior found.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; pinned upstream sources; no malicious behavior found.
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
The PKGBUILD's top-level global code consists solely of variable assignments, array definitions, function definitions, and a loop that dynamically defines split package functions using `eval` with `declare -f` of already-defined functions. No command substitutions, external downloads, file operations, or other dangerous actions are executed at top-level. The `eval` is used in a standard, safe manner to create function wrappers and does not introduce untrusted content. Therefore, sourcing this PKGBUILD for `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No top-level dangerous code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level dangerous code found.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .nvchecker.toml...
[0/4] Reviewing .SRCINFO, .nvchecker.toml, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used by an AUR package repository. It ignores all files except the PKGBUILD, .SRCINFO, and itself, which is normal practice for maintaining a minimal AUR git repository. There is no executable content, no network activity, no obfuscation, and no file operations outside the repository. No security concerns are present.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore with no malicious or suspicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .nvchecker.toml, .gitignore, PKGBUILD...
[1/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore with no malicious or suspicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `mindustry` and `mindustry-server` packages. It declares the package name, version, description, URL, dependencies, and two source tarballs fetched directly from the project's official GitHub repositories (`Anuken/Mindustry` and `Anuken/Arc`). Both sources have pinned version tags (`v160.5`) and non-SKIP SHA-256 checksums, which is consistent with legitimate packaging practice.

There are no suspicious commands, no network redirects to unexpected hosts, no encoded or obfuscated content, and no file operations or system modifications. The dependency declarations are ordinary package metadata. The `&gt;` in `java-runtime&gt;=17` is simply the standard XML-escaped form of `>=` and is not a security concern.

Overall, this file contains only declarative metadata for building and installing the upstream project. Nothing here indicates malicious behavior or a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with official sources and checksums; no malicious behavior found.</summary>
</security_assessment>

[2/4] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with official sources and checksums; no malicious behavior found.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file. It defines a source for checking new versions of the Mindustry project by monitoring the official GitHub repository's tags. There is no executable code, no network requests beyond what nvchecker itself would perform (fetching tags from the specified git remote), and no obfuscation. The use of an unpinned git source is normal for version-checking tools and does not constitute a security threat. No evidence of malicious activity.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config, no malicious content.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR build recipe for Mindustry and the Mindustry server. It downloads only the project's own upstream release archives from github.com/Anuken/Mindustry and github.com/Anuken/Arc over HTTPS, with pinned sha256 checksums. The build uses the upstream Gradle wrapper and installs jars, icons, a desktop entry, and a launcher script into `$pkgdir`. I found no suspicious network requests, no obfuscated commands, and no access to data outside the package's normal build and install scope.

The `eval` usage only constructs package functions from other shell functions defined in the same PKGBUILD, using fixed package names; it does not evaluate external or attacker-controlled input. The generated launcher script simply selects an available OpenJDK installation and runs the packaged jar with the user's arguments. This is consistent with normal packaging practice.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD; pinned upstream sources; no malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; pinned upstream sources; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,462
  Completion Tokens: 4,221
  Total Tokens: 17,683
  Total Cost: $0.001874
  Execution Time: 141.50 seconds

Final Status: SAFE


No issues found.
