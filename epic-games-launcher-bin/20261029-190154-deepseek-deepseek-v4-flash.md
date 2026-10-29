---
package: epic-games-launcher-bin
pkgver: 0.106.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9160
completion_tokens: 1099
total_tokens: 10259
cost: 0.001033578
execution_time: 25.38
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-29T19:01:52Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for official Epic Games Launcher.
---

Materializing epic-games-launcher-bin from local mirror...
Materialized epic-games-launcher-bin
Analyzing epic-games-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only standard variable definitions and array assignments (pkgname, pkgver, source, sha256sums, etc.). There are no command substitutions, backtick executions, or any executable statements that would run when the file is sourced. All operational logic is confined within the `prepare()`, `package()`, and (absent) `build()` functions, which are not executed during `makepkg --printsrcinfo`. The source URL points to Epic Games' official distribution domain, and the checksum is provided (not skipped). No malicious or suspicious activity is present in the top-level scope.
</details>
<evidence></evidence>
<summary>No risky code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No risky code in global scope.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata file for the AUR package `epic-games-launcher-bin`. It defines package dependencies, source URL, and a SHA-256 checksum. The source points to an official Epic Games content distribution domain over HTTPS, and the checksum is provided (not skipped). There are no executable commands, no obfuscated content, no suspicious network destinations, and no deviation from standard AUR packaging practices. The file contains only declarative key-value pairs and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD downloads the Epic Games Launcher AppImage from the official Epic Games CDN (`content-download-egs.distro.on.epicgames.com`), verifies it with a hardcoded SHA256 checksum, extracts it using 7zip, and installs the binary along with supporting files. The wrapper script sets `EGL_DISABLE_SELF_UPDATE=1` to prevent the launcher from self-updating (common practice for packaged applications). There are no obfuscated commands, no unexpected network requests, no execution of untrusted code, and no manipulation of system files outside the package's scope. The PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. No security issues detected.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for official Epic Games Launcher.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for official Epic Games Launcher.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,160
  Completion Tokens: 1,099
  Total Tokens: 10,259
  Total Cost: $0.001034
  Execution Time: 25.38 seconds

Final Status: SAFE


No issues found.
