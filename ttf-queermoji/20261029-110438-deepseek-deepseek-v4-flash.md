---
package: ttf-queermoji
pkgbase: queermoji-font
pkgver: 0.5.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9407
completion_tokens: 1174
total_tokens: 10581
cost: 0.001069705
execution_time: 33.01
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-29T11:04:38Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata only, no suspicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksum and safe installs.
---

ttf-queermoji is built from queermoji-font
Materializing ttf-queermoji from local mirror...
Materialized ttf-queermoji
Analyzing ttf-queermoji AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of this PKGBUILD. The top-level content consists solely of variable assignments: `_name`, `pkgbase`, `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `groups`, `source`, and `sha256sums`. No command substitutions, external downloads, obfuscated code, or file-modifying commands execute at parse time.

The `package_ttf-queermoji()` and `package_woff-queermoji()` functions contain only standard installation commands targeting `$pkgdir`; they are not executed by `--printsrcinfo` and will be reviewed in the full audit. The checksum is pinned, not skipped, though checksums are irrelevant to this step anyway.
</details>
<evidence>
</evidence>
<summary>
Top-level scope is benign; only variable definitions are sourced. No risk for printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is benign; only variable definitions are sourced. No risk for printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an AUR package repository. It contains only three ignore patterns that exclude all files except the essential packaging files (`.gitignore`, `PKGBUILD`, and `.SRCINFO`). There is no executable code, no network requests, no obfuscation, and no system-level operations. This file poses no security risk.</details>
<evidence></evidence>
<summary>Standard .gitignore with no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file contains only declarative package metadata (name, version, URL, license, source URL with a fixed checksum, and subpackage definitions). There is no executable code, no network requests beyond the declared upstream source, no obfuscation, and no system-modification commands. The package source is pinned to a specific version with a SHA-256 checksum, which is a standard security practice. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Declarative metadata only, no suspicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata only, no suspicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It downloads a font archive from the project&#39;s official HTTPS site with a pinned SHA256 checksum. The package functions only copy font files (TTF, WOFF2) and a license file into the package directory using safe `install` commands. There is no obfuscation, no unexpected network requests, no execution of downloaded code, no exfiltration of data, and no system modification beyond installing font files. No evidence of malicious behavior was found.
</details>
<evidence/>
<summary>Standard PKGBUILD with pinned checksum and safe installs.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksum and safe installs.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,407
  Completion Tokens: 1,174
  Total Tokens: 10,581
  Total Cost: $0.001070
  Execution Time: 33.01 seconds

Final Status: SAFE


No issues found.
