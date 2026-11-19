---
package: ttf-kreativekorp-apple2-berkeliumii
pkgbase: ttf-kreativekorp-apple2
pkgver: 2020.04
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11939
completion_tokens: 3237
total_tokens: 15176
cost: 0.001675583
execution_time: 43.15
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-21T11:15:55Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore; no malicious or suspicious content found.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO, no security issues.
  - file: PKGBUILD
    status: safe
    summary: "Safe font packaging: pinned checksums, official upstream sources, and install-only functions."
---

ttf-kreativekorp-apple2-berkeliumii is built from ttf-kreativekorp-apple2
Materializing ttf-kreativekorp-apple2-berkeliumii from local mirror...
Materialized ttf-kreativekorp-apple2-berkeliumii
Analyzing ttf-kreativekorp-apple2-berkeliumii AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD at global scope only. All statements at the top level of this PKGBUILD are simple variable/array assignments (`pkgbase`, `pkgname`, `pkgver`, `source`, `sha256sums`, `DLAGENTS`, etc.) and function definitions for the `package_*()` functions. There are no top-level command substitutions, no network calls, no `eval`/`curl`/`wget` invocations, and no file operations that would run while the PKGBUILD is sourced. The functions containing `find`/`install` only execute during the packaging stage, which `makepkg --printsrcinfo` does not run.

The custom `DLAGENTS` entry using `/usr/bin/wget` is a download agent configuration, but it only affects later source fetching during `makepkg` and is not executed during `--printsrcinfo`. The checksums are all pinned; even if they were `SKIP`, that would not affect this narrow gate. No evidence of malicious or dangerous top-level behavior exists.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD only defines variables and functions; no code executes maliciously during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD only defines variables and functions; no code executes maliciously during printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR Git repository. It ignores all files except the maintainer-facing packaging files (`PKGBUILD` and `.SRCINFO`). This is consistent with normal AUR packaging practice and contains no executable code, no network operations, no obfuscation, and no system-modifying behavior.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore; no malicious or suspicious content found.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore; no malicious or suspicious content found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
Standard AUR .SRCINFO metadata file for a font package.  Contains only declarative fields: version, URLs, dependencies, source lists with integrity checksums, and split package names.  There is no executable code, no network requests outside the expected upstream site, no obfuscation, and no suspicious commands.  Sources are fetched over HTTPS from the project's own site, and all four archives have pinned SHA-256 checksums, ensuring integrity.  This is a typical AUR split package for fonts; there is no evidence of supply-chain compromise or malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD builds four font packages from the project's own upstream URLs on kreativekorp.com. All four zip archives have pinned sha256 checksums, and the package functions only create directories and copy matching .ttf files and the license into `$pkgdir`. There is no build() or prepare() step, no execution of downloaded code, no encoded/obfuscated commands, and no operations outside the font install path.

The custom `DLAGENTS` entry simply replaces the download agent with wget for https sources; wget is declared in makedepends and the destination hosts are the same official upstream, so this is a standard packaging convenience rather than a red flag. The unquoted `$(find ...)` loops are a minor style issue only and do not introduce malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Safe font packaging: pinned checksums, official upstream sources, and install-only functions.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Safe font packaging: pinned checksums, official upstream sources, and install-only functions.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,939
  Completion Tokens: 3,237
  Total Tokens: 15,176
  Total Cost: $0.001676
  Execution Time: 43.15 seconds

Final Status: SAFE


No issues found.
