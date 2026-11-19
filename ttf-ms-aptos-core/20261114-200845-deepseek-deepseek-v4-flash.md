---
package: ttf-ms-aptos-core
pkgver: 20260812
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 7754
completion_tokens: 1043
total_tokens: 8797
cost: 0.00088560
execution_time: 19.23
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-14T20:08:45Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard font package with pinned checksums and no suspicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums.
---

Materializing ttf-ms-aptos-core from local mirror...
Materialized ttf-ms-aptos-core
Analyzing ttf-ms-aptos-core AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments (pkgname, pkgver, source, sha256sums, etc.) and function definitions for prepare() and package(). There are no top-level command substitutions, eval statements, backtick executions, or any other executable code that would run when the file is sourced by `makepkg --printsrcinfo`. The source array uses static HTTPS URLs with pinned checksums. No malicious behavior is present in the global scope; therefore running `makepkg --printsrcinfo` is safe.
</details>
<evidence>
</evidence>
<summary>No executable code in global scope; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in global scope; safe to parse.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads fonts from official Microsoft and freedesktop.org sources with pinned checksums. The `prepare()` function extracts TrueType fonts from `.exe` files using `cabextract`, which is standard for Microsoft font packages. The `package()` function installs the fonts and license files into the package directory. There are no suspicious network requests, obfuscated code, or unexpected system modifications. The file follows standard AUR packaging practices and contains no malicious behavior.
</details>
<evidence></evidence>
<summary>Standard font package with pinned checksums and no suspicious code.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard font package with pinned checksums and no suspicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR .SRCINFO metadata file. It declares two source URLs pointing to official Microsoft and freedesktop.org servers, both with pinned SHA256 checksums. No commands, scripts, obfuscation, or suspicious operations are present. The content aligns with normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with pinned checksums.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,754
  Completion Tokens: 1,043
  Total Tokens: 8,797
  Total Cost: $0.000886
  Execution Time: 19.23 seconds

Final Status: SAFE


No issues found.
