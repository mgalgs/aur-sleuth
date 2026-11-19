---
package: andbible-dev-bin
pkgver: 6.0.1257
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11076
completion_tokens: 1635
total_tokens: 12711
cost: 0.001305486
execution_time: 36.03
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-08T08:07:12Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore file; contains no executable or dangerous content.
  - file: .SRCINFO
    status: safe
    summary: Safe metadata file with pinned upstream source and checksum only.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators.
---

Materializing andbible-dev-bin from local mirror...
Materialized andbible-dev-bin
Analyzing andbible-dev-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains top-level variable definitions (pkgname, depends, source, sha256sums, etc.) and a function definition for package(). No command substitutions, eval calls, or other code that would execute when the file is sourced by `makepkg --printsrcinfo`. The package() function body is defined but not invoked during this step. The source URL uses template variables but is not fetched or evaluated during sourcing. No malicious top-level behavior is present.
</details>
<evidence></evidence>
<summary>No malicious top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code execution.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in AUR git repositories. It ignores all files except `PKGBUILD`, `.SRCINFO`, and itself—a routine practice for VCS-based AUR packages that regenerate metadata from the PKGBUILD. The file contains no commands, no network operations, no obfuscation, and no system modifications. It is purely a listing of git ignore patterns and presents no security concerns.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore file; contains no executable or dangerous content.
</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore file; contains no executable or dangerous content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file contains only package metadata for `andbible-dev-bin`: package description, version, dependencies, and a single source entry. The source is a `.deb` binary downloaded from the project's official GitHub releases URL (`https://github.com/AndBible/and-bible/releases/download/beta-1257/...`), which is the expected upstream distribution location for this package. The corresponding `sha256sums` value is a concrete checksum rather than `SKIP`, so the downloaded artifact is pinned and verified. There are no install scripts, network operations, encoded commands, file manipulations, or any other executable content in this file. No deviations from normal AUR packaging practices are present.
</details>
<evidence>
</evidence>
<summary>
Safe metadata file with pinned upstream source and checksum only.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Safe metadata file with pinned upstream source and checksum only.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. It downloads a `.deb` from the official AndBible GitHub releases, which is the expected upstream source. The SHA256 checksum is pinned, providing integrity verification. The `package()` function performs routine operations: extracting the archive, installing a desktop entry and icon (with proper path adjustments), removing duplicate documentation, and creating a symlink. No suspicious commands (eval, curl|bash, obfuscated code, unexpected network requests, or file exfiltration) are present. The only removed content is the bundled `.desktop` file (replaced with a corrected version) and the `share` directory (containing only the GPL license, already provided by the `licenses` package). This is standard housekeeping, not malicious.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,076
  Completion Tokens: 1,635
  Total Tokens: 12,711
  Total Cost: $0.001305
  Execution Time: 36.03 seconds

Final Status: SAFE


No issues found.
