---
package: adwaita-qt5
pkgbase: adwaita-qt
pkgver: 1.4.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9736
completion_tokens: 1359
total_tokens: 11095
cost: 0.000523068
execution_time: 38.8
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-02T07:12:34Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned source and checksum.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore with no security-relevant content or behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned upstream source and checksum; no malicious behavior found.
---

adwaita-qt5 is built from adwaita-qt
Materializing adwaita-qt5 from local mirror...
Materialized adwaita-qt5
Analyzing adwaita-qt5 AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function definitions in its global scope. There are no command substitutions, dangerous invocations (curl, wget, eval, etc.), or any code that would execute when sourced by `makepkg --printsrcinfo`. The `build()` and `package_*()` functions are defined but not executed during the printsrcinfo phase. The source URL points to the official FedoraQt GitHub repository, which is the expected upstream. No suspicious content is present at the global scope.
</details>
<evidence></evidence>
<summary>PKGBUILD global scope is standard and safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- PKGBUILD global scope is standard and safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file. It declares two subpackages (`adwaita-qt5` and `adwaita-qt6`) sourced from the official FedoraQt GitHub repository, with a pinned version (`1.4.2`) and a valid SHA-256 checksum. There is no obfuscated code, no network requests, no dangerous commands, and no deviation from normal packaging practices. The content is entirely declarative and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata with pinned source and checksum.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned source and checksum.
LLM auditresponse for .gitignore:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .gitignore file used in AUR package repositories. It ignores all files by default (`*`) and then explicitly whitelists the three files that should be tracked in an AUR git repository: `.gitignore`, `PKGBUILD`, and `.SRCINFO`. This is conventional AUR workflow — the PKGBUILD is the build recipe and .SRCINFO is the generated package metadata. There is no network activity, no command execution, no file manipulation beyond the git ignore patterns themselves, and no obfuscated or encoded content. The file contains no security-relevant behavior of any kind.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore with no security-relevant content or behavior.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore with no security-relevant content or behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard packaging file for the `adwaita-qt5` and `adwaita-qt6` packages. It downloads a release tarball from the project&apos;s official GitHub repository, pins a specific version (`1.4.2`), and provides a SHA-256 checksum for integrity verification. No checksums are skipped, and no unexpected or mutable sources are used.

The build and package functions only run `cmake` configure/build/install steps against the downloaded source. There are no suspicious network requests, no encoded or obfuscated commands, no use of `eval`, `curl`, `wget`, or shell redirection to execute remote content, and no modifications outside the standard build and install directories. The package functions install only into `$pkgdir`, which is normal packaging practice.

This file contains no indicators of a supply-chain attack or malicious behavior. It is consistent with routine AUR packaging.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD with pinned upstream source and checksum; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned upstream source and checksum; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,736
  Completion Tokens: 1,359
  Total Tokens: 11,095
  Total Cost: $0.000523
  Execution Time: 38.80 seconds

Final Status: SAFE


No issues found.
