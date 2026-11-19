---
package: ttyper-git
pkgver: 1.6.0.r15.ge218bad
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 9867
completion_tokens: 1481
total_tokens: 11348
cost: 0.00115461
execution_time: 15.81
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-19T04:10:25Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Metadata file with no executable content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for Rust project, no malicious code.
---

Materializing ttyper-git from local mirror...
Materialized ttyper-git
Analyzing ttyper-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function declarations at the top level. No command substitutions, function calls, or other executable code is present outside of function bodies. The `source` array defines a git URL as a string, and `sha256sums` is set to `'SKIP'` (expected for VCS packages). Since `makepkg --printsrcinfo` only sources the global scope, no malicious actions occur. The code inside `pkgver()`, `prepare()`, `build()`, `check()`, and `package()` is not executed during this step.
</details>
<evidence>
</evidence>
<summary>No top-level execution risk; only safe static definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution risk; only safe static definitions.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used in AUR Git repositories. It ignores all files except for the PKGBUILD, .SRCINFO, and .gitignore itself. This is a normal packaging practice and contains no executable code, network requests, or any suspicious operations.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is purely metadata used to describe the AUR package. It contains no executable instructions, build steps, or post-install hooks. The source points to the official upstream repository (https://github.com/max-niederman/ttyper.git), which is expected for a VCS package. The sha256sums are set to SKIP, which is standard for `-git` packages and not indicative of malice. No network requests, obfuscated code, or file operations are present.
</details>
<evidence></evidence>
<summary>Metadata file with no executable content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file with no executable content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Rust (`cargo`) project from an official GitHub repository. It uses a VCS source (`git+${url}.git`) with `SKIP` checksum, which is typical for `-git` packages. All build steps (`cargo fetch --locked`, `cargo build --frozen`, `cargo test --frozen`) are standard and secure. The package function installs only the compiled binary, README, and license into the expected system paths. No suspicious network requests, obfuscated code, or unexpected file operations are present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for Rust project, no malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for Rust project, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,867
  Completion Tokens: 1,481
  Total Tokens: 11,348
  Total Cost: $0.001155
  Execution Time: 15.81 seconds

Final Status: SAFE


No issues found.
