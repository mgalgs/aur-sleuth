---
package: mindustry-server
pkgbase: mindustry
pkgver: 160.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 13299
completion_tokens: 5229
total_tokens: 18528
cost: 0.001164093
execution_time: 131.03
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-18T19:11:35Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no threats.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package.
  - file: PKGBUILD
    status: safe
    summary: "Standard AUR PKGBUILD: pinned upstream sources, checksums, no malicious behavior."
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
The PKGBUILD's top-level code consists only of variable assignments and a loop that constructs split-package functions using `eval` with controlled input from `declare -f` on functions defined within the same file. No commands execute external resources, no network requests, no dangerous command substitutions in the global scope. The `eval` is safe because it builds function bodies from known, trusted function definitions. Running `makepkg --printsrcinfo` will only source this code and will not trigger downloads, obfuscated execution, or data exfiltration.
</details>
<evidence></evidence>
<summary>Top-level code is benign; only variable definitions and safe eval for split packages.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code is benign; only variable definitions and safe eval for split packages.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .nvchecker.toml...
[0/4] Reviewing .SRCINFO, .nvchecker.toml, .gitignore...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR .SRCINFO metadata file. It declares the package name, version, license, dependencies, and source URLs. All sources point to the official upstream GitHub repositories (Anuken/Mindustry and Anuken/Arc) with pinned version tags and checksums provided. There is no executable code, no suspicious network requests, no obfuscation, and no deviation from normal packaging practices. The file contains only declarative information used by the AUR helper to build the package.
</details>
<evidence>
</evidence>
<summary>Standard metadata file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .nvchecker.toml, .gitignore, PKGBUILD...
[1/4] Reviewing .nvchecker.toml, .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration file for `nvchecker`, a tool that checks for new versions of software. It specifies the software name "mindustry", source type "git", the upstream GitHub repository URL, and a version prefix "v". There are no commands, network requests outside the declared source, obfuscation, or any other potentially dangerous operations. It is a normal packaging utility file with no security issues.
</details>
<evidence></evidence>
<summary>Standard nvchecker config; no threats.</summary>
</security_assessment>

[2/4] Reviewing .gitignore, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no threats.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in AUR package repositories. It ignores all files except the essential ones for packaging (`PKGBUILD`, `.SRCINFO`, and the `.gitignore` itself). There is no code, no network activity, no obfuscation, and no deviation from normal packaging practices. No security issues are present.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore for AUR package.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR packaging script. It downloads the package's source tarballs from the official Anuken/Mindustry and Anuken/Arc GitHub repositories at a pinned version (`v160.1`) with sha256 checksums, builds using the upstream Gradle wrapper, and installs the resulting jars, launcher script, icons, and desktop entry into `$pkgdir`. There is no use of curl/wget/base64, no obfuscated code, no data exfiltration, and no writes outside the package/build directories.

The `eval` block is used to synthesize split-package functions from maintainer-defined `_package_common`, `_package_mindustry`, and `_package_mindustry-server` functions; the interpolated values are hardcoded local names, not attacker-controlled input. The rot13-encoded contributor email is a normal anti-spam measure. Build-time Gradle and dependency resolution is inherent to the upstream build system and not evidence of a supply-chain attack. No genuinely malicious behavior was found.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD: pinned upstream sources, checksums, no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD: pinned upstream sources, checksums, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,299
  Completion Tokens: 5,229
  Total Tokens: 18,528
  Total Cost: $0.001164
  Execution Time: 131.03 seconds

Final Status: SAFE


No issues found.
