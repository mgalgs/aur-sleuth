---
package: opencode-beta
pkgver: 2.2.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12187
completion_tokens: 2338
total_tokens: 14525
cost: 0.00166145
execution_time: 68.63
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-27T11:02:32Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file with no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums, no suspicious activity.
  - file: opencode2
    status: safe
    summary: Standard wrapper script, no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums, no security issues.
---

Materializing opencode-beta from local mirror...
Materialized opencode-beta
Analyzing opencode-beta AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable and array assignments with static strings. There are no command substitutions, backticks, evals, or other executable statements that would run during `makepkg --printsrcinfo`. The `package()` function is defined but not invoked during the source step. Therefore sourcing this file poses no risk.
</details>
<evidence>
</evidence>
<summary>Sourcing PKGBUILD is safe; no malicious top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing PKGBUILD is safe; no malicious top-level code.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, LICENSE...
[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text, which is a common open-source license. It contains no executable code, no instructions, no network requests, no file operations, and no suspicious content. It is purely a legal notice and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file with no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD, opencode2...
[1/4] Reviewing .SRCINFO, PKGBUILD, opencode2...
+ Reviewed LICENSE. Status: SAFE -- Standard license file with no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. It downloads the upstream binary from the official npm registry (registry.npmjs.org) with pinned sha256sums. The `package()` function installs the binary, a wrapper script, and the license file using standard `install` commands. No obfuscated code, suspicious network requests, or unexpected system modifications are present. The package provides both `opencode` and `opencode2` commands, consistent with its upstream. There are no indicators of a supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksums, no suspicious activity.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, opencode2...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums, no suspicious activity.
LLM auditresponse for opencode2:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `opencode2` is a minimal shell wrapper that executes the `opencode` script located in the same directory, passing along all arguments. It contains no network requests, no obfuscated code, no system modifications outside the package directory, and performs no operations beyond delegating to the adjacent script. This is a standard pattern for launching a proper binary or script from a known location and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard wrapper script, no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed opencode2. Status: SAFE -- Standard wrapper script, no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file contains standard package metadata with pinned checksums for all sources. The tarball URLs point to the official npm registry under the `@opencode` scope, matching the package's upstream project (GitHub). The included `opencode2` source file has a checksum and is likely a prebuilt binary or script from the upstream; no evidence of injected malicious behavior is present. This file is purely declarative metadata and does not execute any code or perform any network operations beyond what a typical AUR package would.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with pinned checksums, no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,187
  Completion Tokens: 2,338
  Total Tokens: 14,525
  Total Cost: $0.001661
  Execution Time: 68.63 seconds

Final Status: SAFE


No issues found.
