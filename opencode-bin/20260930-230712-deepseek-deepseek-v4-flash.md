---
package: opencode-bin
pkgver: 1.18.34
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7604
completion_tokens: 2496
total_tokens: 10100
cost: 0.00098928984
execution_time: 124.67
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-30T23:07:11Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Simple binary PKGBUILD with pinned checksums; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums and trusted upstream; no security issues.
---

Materializing opencode-bin from local mirror...
Materialized opencode-bin
Analyzing opencode-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments: package metadata, source URLs, and sha256 checksums. No command substitutions, sub-shell execution, or global-scope side effects are present that would execute when `makepkg --printsrcinfo` sources the file.

The `package()` function is defined but not executed during `makepkg --printsrcinfo`, so its contents are out of scope for this gate. The source URLs point to the upstream GitHub project, and checksums are pinned. Nothing in the top-level scope performs downloads, runs scripts, or exfiltrates data.
</details>
<evidence></evidence>
<summary>No top-level malicious code; only variable assignments and function definition.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; only variable assignments and function definition.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, .SRCINFO...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward binary package definition. It downloads a prebuilt tarball from the project&apos;s own GitHub releases URL for the matching architecture, verifies it with a pinned SHA-256 checksum, and installs the contained `opencode` binary into `/usr/bin`. No unexpected commands, network endpoints, file operations, or post-install hooks are present.

The use of an architecture-specific source array with pinned checksums is standard packaging practice. There is no obfuscation, no execution of downloaded code during the build, no exfiltration of local data, and no tampering with system files. The only operation outside the package directory is installing the intended binary into the package destination.

The package is consistent with ordinary AUR binary packaging and contains no evidence of malicious or supply-chain behavior.
</details>
<evidence>
</evidence>
<summary>
Simple binary PKGBUILD with pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Simple binary PKGBUILD with pinned checksums; no malicious behavior found.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is purely declarative AUR metadata. It contains no build logic, no install hooks, and no executable code — only package name, version, description, dependency declarations, source URLs, and checksums.

Both architecture-specific source archives are fetched over HTTPS from the project's own GitHub releases page (`github.com/anomalyco/opencode/releases/download/v1.18.34/`), and both are pinned with explicit SHA256 checksums rather than `SKIP`. This is the expected, trustworthy pattern for an AUR binary package.

No suspicious network requests, obfuscated content, dangerous command invocations, or deviations from standard packaging practice were found. The `depends`, `provides`, and `conflicts` entries are all consistent with a normal application package.
</details>
<evidence>

</evidence>
<summary>Standard AUR metadata with pinned checksums and trusted upstream; no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums and trusted upstream; no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,604
  Completion Tokens: 2,496
  Total Tokens: 10,100
  Total Cost: $0.000989
  Execution Time: 124.67 seconds

Final Status: SAFE


No issues found.
