---
package: mcpp-bin
pkgver: 2026.9.14.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10773
completion_tokens: 2017
total_tokens: 12790
cost: 0.00070066724
execution_time: 102.14
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-13T19:23:58Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard prebuilt-binary PKGBUILD; no malicious code or dangerous behavior found.
  - file: .SRCINFO
    status: safe
    summary: SRCINFO references official GitHub release with pinned checksums; no malicious behavior found.
  - file: mcpp.sh
    status: safe
    summary: Standard launcher wrapper, no security issues.
---

Materializing mcpp-bin from local mirror...
Materialized mcpp-bin
Analyzing mcpp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions and function definitions in its global scope. No command substitutions, backtick executions, or other code that would run during `makepkg --printsrcinfo` is present. The only evaluated expressions are simple variable interpolations used to construct strings (e.g., URLs and filenames), which are standard and not dangerous. All potentially harmful operations are confined to the `package()` function, which is not executed during this step.
</details>
<evidence></evidence>
<summary>No dangerous top-level code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code found.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, mcpp.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows normal AUR packaging practices for a prebuilt binary release. It downloads the package's own upstream GitHub release artifacts with pinned checksums for both architectures, installs the static binaries into `/opt/mcpp`, and installs a launcher script plus license/documentation files. The only `SKIP` checksum applies to the small local `mcpp.sh` launcher file, while the actual downloaded binaries have explicit SHA-256 checksums; this is not malicious behavior.

No suspicious network endpoints, obfuscated commands, dangerous shell evaluation, or unexpected file modifications are present. The package() function only performs standard `install` operations into `$pkgdir`. The conflicts/depends entries and comments are consistent with the stated purpose of the package.
</details>
<evidence>
</evidence>
<summary>
Standard prebuilt-binary PKGBUILD; no malicious code or dangerous behavior found.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, mcpp.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard prebuilt-binary PKGBUILD; no malicious code or dangerous behavior found.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is an AUR `.SRCINFO` metadata file for `mcpp-bin`, a prebuilt binary package of the `mcpp` project. It contains only package metadata: package name, version, architecture, license, dependencies, conflicts, source URLs, and checksums. There is no executable code, no build logic, no network calls, no file manipulation, and no obfuscated content in this file.

The binary tarballs are fetched from the project's official GitHub releases (`https://github.com/mcpp-community/mcpp/releases/...`) and have pinned, non-SKIP SHA-256 checksums. The `mcpp.sh` entry has `sha256sums = SKIP`; while that means the AUR script is not integrity-checked, SKIP on a local packaging helper is common AUR practice and is not evidence of malice by itself. Overall, this file shows no signs of a supply-chain attack.
</details>
<evidence></evidence>
<summary>
SRCINFO references official GitHub release with pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing mcpp.sh...
+ Reviewed .SRCINFO. Status: SAFE -- SRCINFO references official GitHub release with pinned checksums; no malicious behavior found.
LLM auditresponse for mcpp.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard launcher wrapper that sets environment variables (`MCPP_HOME` and `MCPP_VENDORED_XLINGS`) to appropriate default values, then executes the main binary under `/opt/mcpp/bin/mcpp`. There are no network accesses, no obfuscation, no unexpected file operations, no execution of untrusted content, and no deviance from standard packaging practices for a self-contained binary installed in `/opt`. The comments clearly explain why the wrapper is needed (binary resolves `MCPP_HOME` from its real path, so a symlink would break writability). This is benign and typical for AUR packages that bundle precompiled binaries.
</details>
<evidence>
</evidence>
<summary>Standard launcher wrapper, no security issues.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed mcpp.sh. Status: SAFE -- Standard launcher wrapper, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,773
  Completion Tokens: 2,017
  Total Tokens: 12,790
  Total Cost: $0.000701
  Execution Time: 102.14 seconds

Final Status: SAFE


No issues found.
