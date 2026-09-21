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
completion_tokens: 11828
total_tokens: 25119
cost: 0.003273725882
execution_time: 327.72
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-21T11:08:31Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign gitignore file for AUR package.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no security issues.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata file; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Builds from pinned official sources; no malicious behavior found.
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
The PKGBUILD's global/top-level scope contains only standard variable definitions, arrays, and function declarations. The only potentially unusual construct is the `eval` loop that dynamically generates package functions. However, this `eval` only defines new functions by concatenating the bodies of existing helper functions using `declare -f` and `tail`. No external commands, network operations, or code execution beyond function definition occurs during sourcing. There is no dangerous code that would execute when `makepkg --printsrcinfo` sources the file.
</details>
<evidence></evidence>
<summary>Global scope contains no malicious code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope contains no malicious code; safe to source.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
Standard AUR `.gitignore` file that only keeps the essential packaging files (PKGBUILD, .SRCINFO, itself) and ignores everything else. No malicious or suspicious content.
</details>
<evidence>
</evidence>
<summary>Benign gitignore file for AUR package.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Benign gitignore file for AUR package.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for nvchecker, a common tool to check for new upstream releases. It defines a source as a git repository (the official Mindustry repo on GitHub) and specifies a version prefix. There are no executable commands, no network requests to unexpected hosts, no obfuscation, and no operations beyond standard version tracking. This is a normal and innocuous helper file with no security concerns.
</details>
<evidence></evidence>
<summary>Standard nvchecker config; no security issues.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.SRCINFO` is a standard AUR metadata file for the `mindustry` and `mindustry-server` packages. It contains only declarative information: package name, version, description, dependencies, upstream source URLs (pointing to legitimate GitHub repositories), and SHA-256 checksums. No executable code, obfuscation, suspicious network requests, or system modifications are present. The use of escaped HTML entities (`&gt;=`) for dependency version constraints is normal. All sources are pinned to specific tagged releases, and the checksums are provided (not skipped). There are no indicators of malicious activity or supply-chain compromise.
</details>
<evidence>
</evidence>
<summary>Declarative metadata file; no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata file; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD builds Mindustry from the official Anuken/Mindustry and Anuken/Arc GitHub release tarballs with pinned SHA-256 checksums. The build process is normal Java/Gradle packaging: it runs the Gradle wrapper, extracts an icon, installs the built jars, a desktop entry, and a Java launcher script. The launcher script simply selects an OpenJDK installation and runs `java -jar` on the packaged jar. No obfuscated content, no suspicious downloads, and no exfiltration of local data are present.

The `eval` block is dynamic code generation, but it is used only to construct the split-package functions from `_package_common` and the maintainer-defined per-package helper functions. All values interpolated into the `eval` are constants declared in the PKGBUILD itself, so this is a routine packaging idiom rather than an injection point. The unusual `sed` line in `prepare()` is syntactically questionable but does not introduce a security threat; it operates only on `gradle.properties` in the checked-out source.

Overall, the package matches normal AUR packaging practices for a Java game and shows no evidence of injected malicious behavior.
</details>
<evidence></evidence>
<summary>Builds from pinned official sources; no malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Builds from pinned official sources; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,291
  Completion Tokens: 11,828
  Total Tokens: 25,119
  Total Cost: $0.003274
  Execution Time: 327.72 seconds

Final Status: SAFE


No issues found.
