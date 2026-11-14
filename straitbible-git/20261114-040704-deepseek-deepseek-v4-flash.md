---
package: straitbible-git
pkgver: 6.2.r0.g0000000
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 7402
completion_tokens: 1130
total_tokens: 8532
cost: 0.00086958
execution_time: 29.16
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-14T04:07:03Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR -git PKGBUILD with no suspicious content.
---

Materializing straitbible-git from local mirror...
Cloning https://aur.archlinux.org/straitbible-git.git...
Cloned straitbible-git
Analyzing straitbible-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function declarations. No command substitutions, eval, curl, wget, or other dangerous operations are present at the global/top-level scope that would execute during `makepkg --printsrcinfo`. The `sha256sums` are set to `'SKIP'`, which is expected for VCS packages and does not pose a risk during this parsing step. The `pkgver()`, `build()`, and `package()` functions are defined but are not called at the top level, so they cannot execute during the sourcing phase. Therefore, running `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; parsing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; parsing is safe.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard metadata file for AUR packages. It declares two VCS sources (git repositories) with `sha256sums = SKIP`, which is required and expected for version-controlled sources. There are no executable commands, obfuscated content, or suspicious references. The file simply describes package metadata and dependencies. No evidence of malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This AUR PKGBUILD is a standard `-git` package for the Strait Bible application. It clones the project's own repository from `github.com/doonoo/straitbible` and a dependency from `github.com/marsupilami79/zeoslib` (a known FPC database library). Checksums are correctly `SKIP` for VCS sources. The build and packaging steps invoke upstream-provided shell scripts (`packaging/build-linux.sh` and `packaging/install-linux.sh`), which are part of the fetched source tree and are not themselves included in this PKGBUILD. There is no obfuscated code, no network requests to unexpected hosts, no dangerous command execution outside the normal build process, and no attempt to exfiltrate data or modify system files beyond the package installation scope. The use of mutable branches (default branch for the main source, a specific branch for zeoslib) is standard for VCS packages and does not indicate malice. No evidence of a supply-chain attack or genuinely malicious behavior was found.
</details>
<evidence></evidence>
<summary>Standard AUR -git PKGBUILD with no suspicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR -git PKGBUILD with no suspicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,402
  Completion Tokens: 1,130
  Total Tokens: 8,532
  Total Cost: $0.000870
  Execution Time: 29.16 seconds

Final Status: SAFE


No issues found.
