---
package: ttf-kreativekorp-apple2-bload
pkgbase: ttf-kreativekorp-apple2
pkgver: 2020.04
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11927
completion_tokens: 3586
total_tokens: 15513
cost: 0.001738009
execution_time: 61.49
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-21T11:14:49Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign AUR .gitignore; no malicious behavior present.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only .SRCINFO; pinned upstream sources, no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: "Safe PKGBUILD: pinned HTTPS sources, standard font installation, no malicious behavior found."
---

ttf-kreativekorp-apple2-bload is built from ttf-kreativekorp-apple2
Materializing ttf-kreativekorp-apple2-bload from local mirror...
Materialized ttf-kreativekorp-apple2-bload
Analyzing ttf-kreativekorp-apple2-bload AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable assignments (`pkgbase`, `pkgname`, `source`, `sha256sums`, etc.) and function definitions (`package_*`). There are no command substitutions (`$()` or backticks), arithmetic evaluations (`$((...))`), or dangerous commands (`eval`, `curl`, `wget`, `exec`) that execute at the top level when the file is sourced. The `package_*` functions are not executed by `makepkg --printsrcinfo`, and the source array uses single quotes ensuring no unexpected expansion. No obfuscated or encoded payload exists in the global scope.
</details>
<evidence></evidence>
<summary>No malicious code executes at top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes at top-level scope.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository. It ignores all files except `.gitignore`, `PKGBUILD`, and `.SRCINFO`, which is normal practice for AUR git repositories. There is no code execution, no network activity, no obfuscation, and no file manipulation outside standard version-control ignore behavior. No security concerns are present.
</details>
<evidence>
</evidence>
<summary>
Benign AUR .gitignore; no malicious behavior present.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Benign AUR .gitignore; no malicious behavior present.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a metadata-only .SRCINFO file for an AUR font package. It declares four upstream zip archives from the project's official domain (kreativekorp.com), each with a pinned sha256sum, and lists wget only as a makedepend. There are no scripts, no network redirections, no encoded payloads, and no build or install commands in this file. The sources and checksums are consistent with standard packaging practice. The PKGBUILD itself would need separate review, but this file contains no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Metadata-only .SRCINFO; pinned upstream sources, no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only .SRCINFO; pinned upstream sources, no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward font packaging script. It defines four subpackages, each installing specific TTF fonts from downloaded archives and a license file into `$pkgdir`. All four source archives are fetched over HTTPS from the project's official upstream domain (`kreativekorp.com`), and each has a pinned SHA-256 checksum. No unexpected network destinations, no executing of downloaded scripts, no obfuscated commands, and no file operations outside the normal font-installation scope are present.

The custom `DLAGENTS` entry simply forces `wget` as the HTTPS download agent, which is a packaging convenience rather than a security concern. The `find`/`install` loops only operate on downloaded font archives within `$srcdir` and write to `$pkgdir`, which is standard packaging behavior. There is no evidence of malicious intent or supply-chain injection.
</details>
<evidence>
</evidence>
<summary>
Safe PKGBUILD: pinned HTTPS sources, standard font installation, no malicious behavior found.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Safe PKGBUILD: pinned HTTPS sources, standard font installation, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,927
  Completion Tokens: 3,586
  Total Tokens: 15,513
  Total Cost: $0.001738
  Execution Time: 61.49 seconds

Final Status: SAFE


No issues found.
