---
package: opencode2-bin
pkgver: 0.0.0_beta_19151
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 8142
completion_tokens: 1239
total_tokens: 9381
cost: 0.00089654040
execution_time: 24.38
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-05T15:14:37Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with pinned upstream sources.
  - file: PKGBUILD
    status: safe
    summary: Standard pinned binary PKGBUILD from official npm registry; no malicious behavior.
---

Materializing opencode2-bin from local mirror...
Materialized opencode2-bin
Analyzing opencode2-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the top-level scope of this PKGBUILD. The top-level content consists solely of standard variable definitions, metadata fields, source URL definitions pointing to the official npm registry, and sha512 checksum arrays. No top-level command substitution, download-and-execute behavior, data exfiltration, or obfuscated code is present. The `package()` function is not executed during `makepkg --printsrcinfo` and contains only a normal installation step, so it is out of scope for this gate.

The source URLs use registry.npmjs.org, which is the package's stated upstream distribution host. No suspicious network destinations or unexpected system modifications are visible at parse time. This file is safe to source for metadata printing.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD is benign; only metadata and source arrays execute.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD is benign; only metadata and source arrays execute.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file defining package sources, checksums, and dependencies. All source URLs point to the official npm registry (registry.npmjs.org) for the @opencode-ai packages, which is the expected upstream for this application. Checksums (sha512sums) are provided and pinned, ensuring source integrity. There is no obfuscated code, no dangerous commands, no exfiltration, and no deviation from standard packaging practices. This file poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO with pinned upstream sources.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with pinned upstream sources.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward binary packaging recipe. It downloads platform-specific tarballs for `@opencode-ai/cli-linux-x64` and `@opencode-ai/cli-linux-arm64` from the official npm registry (`registry.npmjs.org`), which is the package's declared upstream distribution source. Both architectures have pinned sha512 checksums, so the downloaded archives are verified before use.

The `package()` function only installs the expected `opencode2` binary from inside the tarball into `/usr/bin`. There are no network operations outside the declared sources, no encoded or obfuscated commands, no shell hooks, and no writes outside the package directory. The comment about a GitHub Actions workflow is informational only and is not part of the build. No supply-chain red flags are present.
</details>
<evidence>
</evidence>
<summary>
Standard pinned binary PKGBUILD from official npm registry; no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard pinned binary PKGBUILD from official npm registry; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,142
  Completion Tokens: 1,239
  Total Tokens: 9,381
  Total Cost: $0.000897
  Execution Time: 24.38 seconds

Final Status: SAFE


No issues found.
