---
package: epic-games-launcher-bin
pkgver: 0.100.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9179
completion_tokens: 1142
total_tokens: 10321
cost: 0.001043133
execution_time: 20.05
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-21T23:03:12Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no signs of malice.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned upstream source, no malicious content.
---

Materializing epic-games-launcher-bin from local mirror...
Materialized epic-games-launcher-bin
Analyzing epic-games-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only variable and array assignments (pkgname, pkgver, depends, source, sha256sums, etc.) and function definitions (prepare, package). There are no command substitutions, backticks, or immediate executions that would run during sourcing for `makepkg --printsrcinfo`. All potentially hazardous operations are confined to the `prepare()` and `package()` functions, which are not executed by the `--printsrcinfo` command. Therefore, sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous global scope code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous global scope code; sourcing is safe.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file describes a standard AUR package for the official Epic Games Launcher (preview). It declares a source URL pointing to the legitimate Epic Games CDN, with a pinned SHA256 checksum (not skipped). All dependencies are typical for a GTK/webkit application. No malicious, obfuscated, or unexpected operations are present. The file conforms to normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no signs of malice.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no signs of malice.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package that downloads the official Epic Games Launcher AppImage from Epic's own CDN (`content-download-egs.distro.on.epicgames.com`). The source tarball is pinned with a specific SHA256 checksum, and no "SKIP" is used. The package follows normal Arch packaging conventions: extracting the AppImage with `7z`, installing binaries, libraries, desktop files, and icons, and creating a wrapper script that disables self-updates (a common practice to avoid out-of-package-manager modifications). There are no network requests beyond the declared source, no obfuscated code, no dangerous commands (`eval`, `curl`, `wget`, etc.), and no attempts to exfiltrate data or modify system files outside the package's scope. The `EGL_DISABLE_SELF_UPDATE` environment variable is a standard upstream-supported toggle. All operations are consistent with legitimate packaging and serve the application's stated purpose.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned upstream source, no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned upstream source, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,179
  Completion Tokens: 1,142
  Total Tokens: 10,321
  Total Cost: $0.001043
  Execution Time: 20.05 seconds

Final Status: SAFE


No issues found.
