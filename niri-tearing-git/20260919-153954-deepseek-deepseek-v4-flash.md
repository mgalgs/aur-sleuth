---
package: niri-tearing-git
pkgver: 26.04.r22.g43ce122
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8521
completion_tokens: 1661
total_tokens: 10182
cost: 0.000497406
execution_time: 50.94
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-19T15:39:54Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard git-based Rust PKGBUILD; no malicious behavior detected.
---

Materializing niri-tearing-git from local mirror...
Materialized niri-tearing-git
Analyzing niri-tearing-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable declarations and string concatenations at the global scope. There are no command substitutions, backticks, or any executable expressions that would run when the file is sourced by `makepkg --printsrcinfo`. All potentially dangerous operations (git describe, cargo fetch, build commands) are confined within `pkgver()`, `prepare()`, `build()`, and `package()` functions, which are not executed during this parsing step. Therefore, sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No malicious code executes at global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes at global scope.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard metadata for a VCS-based AUR package. The source points to the package's own upstream GitHub repository (https://github.com/urayde/niri.git), as expected for a fork. Checksums are set to SKIP, which is required for git sources and is normal practice. There are no unexpected dependencies, no executables, no network requests, and no obfuscated or dangerous content. The file only declares package attributes and does not contain any code that could perform malicious actions.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no security concerns.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch Linux package recipe for building the `niri` Wayland compositor from a git fork. The `source` array uses the package's own upstream git repository, which is expected for a `-git` package. The `b2sums=('SKIP')` entry is normal and required for VCS sources; it is a hygiene/trust choice, not evidence of malice.

The build process uses `cargo fetch --locked` and `cargo build --frozen --release`, which are standard Rust packaging steps and do not execute any untrusted scripts outside the project's normal build. The `package()` function only installs the built binary and resource files from the project's own `resources/` directory into standard system paths. There are no network calls to unrelated hosts, no obfuscated code, no encoded commands, no dangerous shell constructs, and no modification of files outside the package's own build and install directories.

The only minor note is that the git source is unpinned (tracks the upstream default branch), which is typical for a `-git` AUR package and is not a security issue by itself. Overall, no malicious or suspicious behavior was found.
</details>
<evidence>
</evidence>
<summary>
Standard git-based Rust PKGBUILD; no malicious behavior detected.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard git-based Rust PKGBUILD; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,521
  Completion Tokens: 1,661
  Total Tokens: 10,182
  Total Cost: $0.000497
  Execution Time: 50.94 seconds

Final Status: SAFE


No issues found.
