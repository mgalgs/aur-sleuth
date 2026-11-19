---
package: curseforge
pkgver: 1.323.0_40840
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 19153
completion_tokens: 2167
total_tokens: 21320
cost: 0.002137317
execution_time: 21.21
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T15:14:39Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package repo, no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version tracking; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with legitimate sources and checksums.
  - file: LICENSE
    status: safe
    summary: Plain text license file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksum, no malicious content.
---

Materializing curseforge from local mirror...
Materialized curseforge
Analyzing curseforge AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only standard variable assignments (pkgname, pkgver, pkgrel, etc.), dependency arrays, source array with a URL, and checksums. No commands are executed at the top level — there are no command substitutions, no calls to external executables like curl, wget, eval, or any other dangerous operations. The package() function contains install commands, but those are not executed during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD for metadata extraction presents no risk.
</details>
<evidence></evidence>
<summary>Global scope only has variable definitions; no dangerous execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope only has variable definitions; no dangerous execution.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository. It ignores all files by default (`*`) and then exempts the necessary packaging files: `PKGBUILD`, `.SRCINFO`, `.gitignore`, `.nvchecker.toml`, and `LICENSE`. This pattern is typical for AUR maintainers to keep the repo clean and only track relevant packaging artifacts. There is no executable code, no network requests, no obfuscation, and no deviation from normal packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore for AUR package repo, no security issues.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package repo, no security issues.
[1/5] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration file for `nvchecker`, a tool used to monitor upstream releases. The `url` points to the official CurseForge/Overwolf update metadata endpoint (`latest-linux.yml`), which is the expected source for version tracking. The `regex` and `from_pattern`/`to_pattern` entries perform simple string transformation to convert the version format. There is no obfuscation, no executable code, no network redirection to unexpected hosts, and no data exfiltration or backdoor. The configuration is consistent with normal, non-malicious packaging practices.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for version tracking; no security concerns.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, .nvchecker.toml, LICENSE, PKGBUILD...
[2/5] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version tracking; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR .SRCINFO file for the curseforge package. It defines metadata such as version, dependencies, and source URLs. The primary source is a `.deb` file fetched from the official CurseForge/Overwolf domain (`curseforge.overwolf.com`), which is expected for this package. Both source entries have non-SKIP SHA256 checksums, providing integrity verification. No executable code, obfuscation, or suspicious network destinations are present. The file contains only declarative packaging information and poses no supply-chain risk.
</details>
<evidence>
</evidence>
<summary>
Standard .SRCINFO with legitimate sources and checksums.
</summary>
</security_assessment>

[3/5] Reviewing LICENSE, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with legitimate sources and checksums.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains the Overwolf Terms of Use — a standard legal document included as part of the package distribution. It contains no executable code, no scripts, no commands, and no instructions that could perform any action on the system. There is nothing suspicious, obfuscated, or dangerous in this file. It is purely informational text.
</details>
<evidence></evidence>
<summary>Plain text license file, no security concerns.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Plain text license file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch Linux package definition for the CurseForge desktop client. It downloads a prebuilt Debian package from the official CurseForge domain (curseforge.overwolf.com) with a pinned SHA256 checksum, extracts it, and performs routine installation steps (renaming directories, creating symlinks, installing licenses). No code execution from untrusted sources, no obfuscated or encoded commands, no unexpected network requests, and no file manipulation outside the package's own scope. All operations are consistent with normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksum, no malicious content.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksum, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,153
  Completion Tokens: 2,167
  Total Tokens: 21,320
  Total Cost: $0.002137
  Execution Time: 21.21 seconds

Final Status: SAFE


No issues found.
