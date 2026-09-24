---
package: mindustry-server
pkgbase: mindustry
pkgver: 160.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13383
completion_tokens: 9552
total_tokens: 22935
cost: 0.002878543122
execution_time: 210.54
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-24T11:10:50Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for upstream version checking.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO metadata; pinned checksummed upstream sources, no security issues.
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior found. Pinned sources, standard build/install, benign eval.
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
The PKGBUILD's top-level scope (sourced by `makepkg --printsrcinfo`) contains only variable definitions, array declarations, and a loop that dynamically defines package functions using `eval` and `declare -f`. No command substitution or external command execution occurs during sourcing. The `eval` is used solely to define function bodies from text output by `declare -f`; no invocation of those functions happens at this stage. All URLs reference the official upstream GitHub repositories. No obfuscation, base64, downloads, or data exfiltration is present in top-level code.
</details>
<evidence></evidence>
<summary>Top-level code is benign; no dangerous commands executed.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code is benign; no dangerous commands executed.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a configuration for the nvchecker tool, which is used to monitor upstream releases. It specifies the Mindustry GitHub repository as the source for version checking. There are no commands, no network requests to unexpected hosts, no obfuscation, and no signs of malicious behavior. This is a standard packaging tool configuration.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for upstream version checking.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for upstream version checking.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an AUR package repository. It ignores all files except the essential packaging files (`PKGBUILD`, `.SRCINFO`, and itself). There is no executable code, no network requests, no obfuscation, and no references to external resources. This is a routine, non‑malicious configuration file.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the AUR `mindustry` / `mindustry-server` package. It contains only declarative packaging metadata: package name, version, license, dependencies, and two pinned source tarballs fetched from the project's official upstream GitHub repositories (Anuken/Mindustry and Anuken/Arc). Both sources are pinned to version tag `v160.5` and include non-SKIP sha256 checksums, which is good supply-chain hygiene. The `&gt;=` is simply the escaped `>=` in dependency constraints.

The file contains no executable code, no network calls beyond the declared upstream sources, no obfuscation, no file operations, and no system modifications. Declaring two packages (`mindustry` and `mindustry-server`) is normal for this project, since Mindustry ships both a client and a headless server build. There is nothing here that deviates from standard AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .SRCINFO metadata; pinned checksummed upstream sources, no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO metadata; pinned checksummed upstream sources, no security issues.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD fetches two pinned release tarballs from the official Anuken GitHub repositories (Mindustry and Arc) with fixed sha256 checksums. It then builds with the project's Gradle wrapper and installs the resulting jars, icons, a desktop entry, and a Java launcher into the package directory. The generated launcher only selects an installed OpenJDK and runs the packaged jar. No network requests, credential access, or filesystem tampering occurs outside normal build/install behavior.

The only unusual construct is the `eval` loop used to synthesize split-package functions. It embeds the bodies of local `_package_*` functions from the same script so that `package_mindustry` and `package_mindustry-server` can share common packaging logic. This is not obfuscation; the interpolated values come from the maintainer-controlled `_pkgname` and `pkgname`, not from external input. There is no curl-bash execution, no base64/hex encoding, no unexpected remote host, and no modification of files outside `$pkgdir`.
</details>
<evidence></evidence>
<summary>No malicious behavior found. Pinned sources, standard build/install, benign eval.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior found. Pinned sources, standard build/install, benign eval.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,383
  Completion Tokens: 9,552
  Total Tokens: 22,935
  Total Cost: $0.002879
  Execution Time: 210.54 seconds

Final Status: SAFE


No issues found.
