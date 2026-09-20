---
package: ghostty-shell-integration-nightly-bin
pkgbase: ghostty-nightly-bin
pkgver: 20260920.r17894.g27e8b3f
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11224
completion_tokens: 1902
total_tokens: 13126
cost: 0.0005470192
execution_time: 48.33
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-20T11:55:52Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: License file; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard -bin PKGBUILD with pinned checksums; no malicious behavior found.
---

ghostty-shell-integration-nightly-bin is built from ghostty-nightly-bin
Materializing ghostty-shell-integration-nightly-bin from local mirror...
Materialized ghostty-shell-integration-nightly-bin
Analyzing ghostty-shell-integration-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD and executes top-level code. The top-level scope here contains only variable assignments, dependency arrays, source URL declarations, and checksum arrays. No top-level command substitutions, `eval`, `curl`, `wget`, base64 decoding, or other code execution is present. The `package_*` functions that invoke `bsdtar` are only executed during packaging, not during `--printsrcinfo`, so they are out of scope for this gate. The source URLs point to the package's declared GitHub release host and are not fetched during metadata generation.
</details>
<evidence></evidence>
<summary>Top-level scope only defines variables; no malicious parse-time code executes.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope only defines variables; no malicious parse-time code executes.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, LICENSE...
[0/3] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC license text. It contains no code, no executable instructions, no network requests, no obfuscation, and no system modifications. It is entirely passive and consistent with ordinary packaging practice for distributing license information. No security issues are present.
</details>
<evidence>
</evidence>
<summary>License file; no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- License file; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR metadata file. It defines the package ghostty-nightly-bin and its subpackages, listing dependencies, sources (pointing to the project's own GitHub releases), and SHA-256 checksums. There is no executable code, no obfuscated content, no unexpected network requests, and no instructions that could lead to a supply-chain attack. The file adheres to normal packaging practices for a prebuilt binary package. No security concerns are present.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR binary package that downloads pre-built tarballs from a GitHub release (jpenilla/ghostty-nightly-bin) and extracts them into the package directory. All source URLs point to the same fork used for nightly builds, sha256sums are pinned (not SKIP), and no commands beyond `bsdtar -xf` are executed in the package functions. There is no evidence of obfuscated code, unexpected network requests, backdoors, or data exfiltration. The use of a third-party fork is a trust consideration but not a supply-chain attack—the source is transparent and checksummed.
</details>
<evidence></evidence>
<summary>Standard -bin PKGBUILD with pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard -bin PKGBUILD with pinned checksums; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,224
  Completion Tokens: 1,902
  Total Tokens: 13,126
  Total Cost: $0.000547
  Execution Time: 48.33 seconds

Final Status: SAFE


No issues found.
