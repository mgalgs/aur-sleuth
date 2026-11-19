---
package: tic80-pro-git
pkgver: 1.3.1.r31.g692e7b8
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7503
completion_tokens: 1198
total_tokens: 8701
cost: 0.000900809
execution_time: 28.38
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-17T11:12:24Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no malicious code detected.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
---

Materializing tic80-pro-git from local mirror...
Materialized tic80-pro-git
Analyzing tic80-pro-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function declarations at the global scope. There are no top-level command substitutions, dangerous code execution, or any operations that would run during sourcing. All potentially executable code is inside functions (pkgver(), prepare(), build(), package()), which are not invoked by `makepkg --printsrcinfo`. The source uses a standard git+https URL from the official repository, and the SKIP checksum is normal for VCS packages. No genuine malicious activity is present.
</details>
<evidence></evidence>
<summary>No malicious top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; sourcing is safe.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, .SRCINFO...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS (git) package. It clones the official TIC-80 repository from GitHub, initializes submodules, builds with CMake, and installs normally. The `sha256sums` are `SKIP`, which is required for VCS sources and not a security concern. There is no obfuscated code, no unexpected network requests, no execution of unchecked fetched content at build time (the submodule update is from the project's own declared sources). The only potential ethical note is the package description claiming to offer the "pro" version without payment, but this is an upstream policy matter, not a supply-chain attack. No evidence of exfiltration, backdoors, or malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD; no malicious code detected.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no malicious code detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains standard metadata for an AUR VCS package. The source points to the official upstream GitHub repository with a mutable branch (`main`), which is normal for `-git` packages. The description text is not malicious; it merely describes the package's intention. No suspicious operations, obfuscated code, or unexpected network destinations are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,503
  Completion Tokens: 1,198
  Total Tokens: 8,701
  Total Cost: $0.000901
  Execution Time: 28.38 seconds

Final Status: SAFE


No issues found.
