---
package: t3code-nightly-bin
pkgver: 0.0.43_nightly.20260924.2223
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9871
completion_tokens: 4750
total_tokens: 14621
cost: 0.000949179
execution_time: 84.77
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-24T23:08:07Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums from official upstream sources. No security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AppImage packaging from official GitHub release.
---

Materializing t3code-nightly-bin from local mirror...
Materialized t3code-nightly-bin
Analyzing t3code-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard packaging variable assignments (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.) and function definitions (`prepare()`, `package()`) at the top level.  `makepkg --printsrcinfo` sources the file, which executes only the top-level code.  There are no top-level command substitutions (`$(...)` or backticks), no dangerous variable expansions that of themselves execute code, and no immediate calls to external programs.  The function bodies are **not** executed during this step.  Therefore, parsing this PKGBUILD with `makepkg --printsrcinfo` presents no supply-chain security risk.
</details>
<evidence></evidence>
<summary>Safe to parse; no top-level execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe to parse; no top-level execution.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata for a prebuilt binary nightly release (`t3code-nightly-bin`). It declares dependencies, options, and two sources: the AppImage from the project's official GitHub releases page (`github.com/pingdotgg/t3code`) and the upstream LICENSE file from the same project. Both sources point to the project's own upstream repository, and both have explicit SHA-256 checksums, so there is no unpinned or unverified download.

No build functions, install scripts, network commands, obfuscated content, or post-install hooks are present in this file. The `options = !debug` and `options = !strip` entries are normal packaging choices. There is nothing here that downloads from unexpected hosts, executes fetched code, or manipulates data outside the package's scope. This is a benign, conventional AUR metadata file.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums from official upstream sources. No security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums from official upstream sources. No security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard packaging practices for an AppImage-based AUR package. It downloads the AppImage and license from the project's official GitHub repository (pingdotgg/t3code), both with pinned checksums. The extract-and-install workflow is typical and does not introduce any unexpected network requests, obfuscated code, or exfiltration. The setuid bit on chrome-sandbox is a known requirement for Chromium sandbox functionality, not a malicious modification. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard AppImage packaging from official GitHub release.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AppImage packaging from official GitHub release.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,871
  Completion Tokens: 4,750
  Total Tokens: 14,621
  Total Cost: $0.000949
  Execution Time: 84.77 seconds

Final Status: SAFE


No issues found.
