---
package: herdr-core
pkgver: 0.1.19
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8852
completion_tokens: 2358
total_tokens: 11210
cost: 0.001234688
execution_time: 21.75
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-09T16:09:01Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata-only AUR file with pinned sources and checksums.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no security issues
---

Materializing herdr-core from local mirror...
Materialized herdr-core
Analyzing herdr-core AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains static variable assignments and function definitions at the top level. There are no command substitutions, backtick executions, or any other code that would execute when the file is sourced. The `prepare()`, `build()`, `check()`, and `package()` functions are defined but not invoked during `makepkg --printsrcinfo`. All strings are static or use simple variable expansions that do not trigger execution of external commands. No suspicious top-level behavior is present.
</details>
<evidence>
</evidence>
<summary>No executable code at top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code at top-level scope.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard AUR package metadata only. It contains no executable code—just declarations of package name, version, sources, checksums, dependencies, and conflicts. The sources are pinned: herdr-core to tag v0.1.19 and ghostty to a specific commit hash, both from their respective upstream GitHub repositories, with BLAKE2 checksums provided. There are no network requests, no obfuscated content, no file operations, and no commands of any kind. The conflicts with herbstluftwm and related packages are metadata-only package manager instructions and not a security concern. The file poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Metadata-only AUR file with pinned sources and checksums.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only AUR file with pinned sources and checksums.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It fetches the upstream source and its ghostty submodule via HTTPS from GitHub with pinned checksums (b2sums), ensuring integrity. The build process uses `cargo` and `zig`, which are the standard build tools for this Rust/Zig project. No suspicious network requests, obfuscation, or dangerous commands are present. The package installs only its own binary, a symlink, and documentation files. There is no evidence of malicious or supply-chain attack code.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with no security issues</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no security issues
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,852
  Completion Tokens: 2,358
  Total Tokens: 11,210
  Total Cost: $0.001235
  Execution Time: 21.75 seconds

Final Status: SAFE


No issues found.
