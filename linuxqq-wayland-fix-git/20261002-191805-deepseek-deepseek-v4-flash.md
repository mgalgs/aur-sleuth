---
package: linuxqq-wayland-fix-git
pkgver: r57.106395f
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7538
completion_tokens: 1159
total_tokens: 8697
cost: 0.000275968
execution_time: 32.32
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-02T19:18:05Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR -git package, no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO, no malicious content.
---

Materializing linuxqq-wayland-fix-git from local mirror...
Materialized linuxqq-wayland-fix-git
Analyzing linuxqq-wayland-fix-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `makepkg --printsrcinfo` executes only top-level variable/array assignments. The `source` array uses a standard `git+` VCS URL and `sha256sums=(&apos;SKIP&apos;)`, which are normal for a `-git` package. The `pkgver()`, `build()`, and `package()` functions are defined but not invoked during `--printsrcinfo`, so their contents are out of scope for this gate. There is no top-level command substitution, network fetch, downloaded payload execution, or data exfiltration.
</details>
<evidence>
</evidence>
<summary>No top-level code execution risk; only safe variable definitions during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risk; only safe variable definitions during printsrcinfo.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR VCS packaging practices. It clones the upstream GitHub repository, extracts a version from git, builds with `make`, and installs with `make install` into `$pkgdir`. There are no obfuscated commands, unexpected network requests (beyond the declared git source), or dangerous file operations. The SKIP checksum is expected for VCS sources. No evidence of supply chain injection or malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard AUR -git package, no malicious code.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR -git package, no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` file for an AUR VCS package (`linuxqq-wayland-fix-git`). It defines metadata, dependencies, and a single VCS source from the package's own upstream GitHub repository. Checksums are set to `SKIP`, which is expected and required for `git` sources. No malicious content (obfuscated code, network requests, file modifications, or backdoors) is present. The file simply describes the package build recipe and does not contain any executable logic.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO, no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,538
  Completion Tokens: 1,159
  Total Tokens: 8,697
  Total Cost: $0.000276
  Execution Time: 32.32 seconds

Final Status: SAFE


No issues found.
