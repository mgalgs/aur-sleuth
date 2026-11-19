---
package: rosemary-git
pkgver: 0.3.0.r10.gfe20d1a
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7738
completion_tokens: 1004
total_tokens: 8742
cost: 0.000886886
execution_time: 18.74
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-17T03:07:09Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS PKGBUILD with no malicious indicators.
---

Materializing rosemary-git from local mirror...
Materialized rosemary-git
Analyzing rosemary-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only variable and array definitions (pkgname, pkgver, pkgrel, depends, source, sha256sums, etc.). No command substitutions, function calls, or inline scripts are present. All potentially executable code (pkgver(), prepare(), build(), package()) is contained within functions that are **not** invoked during `makepkg --printsrcinfo`. The SKIP checksum is standard for VCS sources and does not execute any code at parse time. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No malicious top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a `.SRCINFO` metadata file for the `rosemary-git` AUR package. It declares a standard git VCS source from the project's own upstream repository (`github.com/microlift/rosemary.git`). The `sha256sums = SKIP` is normal and expected for VCS packages. No executable content, suspicious network destinations, obfuscation, or system modifications are present. The file conforms to standard AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO metadata; no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS (git) package. It clones the upstream repository from the project&#x27;s official GitHub URL, uses `S`KIP` checksum as required for VCS sources, and performs routine Rust/Cargo builds with `cargo fetch --locked` and `cargo build --frozen`. The install commands copy only the compiled binary and license file into the package directory. No obfuscated code, suspicious network requests, dangerous shell constructs, or unexpected file operations are present. The `pkgver()` function generates a version string from git metadata, which is normal for `-git` packages.
</details>
<evidence></evidence>
<summary>Standard AUR VCS PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS PKGBUILD with no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,738
  Completion Tokens: 1,004
  Total Tokens: 8,742
  Total Cost: $0.000887
  Execution Time: 18.74 seconds

Final Status: SAFE


No issues found.
