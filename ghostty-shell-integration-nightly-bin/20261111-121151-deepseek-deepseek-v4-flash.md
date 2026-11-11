---
package: ghostty-shell-integration-nightly-bin
pkgbase: ghostty-nightly-bin
pkgver: 20261111.r18803.ga622196
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 11131
completion_tokens: 1423
total_tokens: 12554
cost: 0.00125793
execution_time: 24.13
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-11T12:11:50Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard ISC license file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with verified downloads; no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Metadata file; no malicious content.
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
The PKGBUILD only contains variable definitions and function declarations at the top level. No command substitutions, eval, network requests, or other executable code is present in the global scope. Running `makepkg --printsrcinfo` will safely parse these assignments without executing any malicious operations.
</details>
<evidence></evidence>
<summary>No top-level executable code; safe to source for metadata.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code; safe to source for metadata.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, LICENSE...
[0/3] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC license text. It contains no code, no commands, no network requests, and no system modifications. It is purely a legal document and poses no security risk.
</details>
<evidence>

</evidence>
<summary>Standard ISC license file, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard ISC license file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a `-bin` package. It downloads prebuilt tarballs from a third-party GitHub release (jpenilla/ghostty-nightly-bin) using HTTPS, with pinned sha256 checksums verifying integrity. The only operation in each package function is `bsdtar` extraction into `$pkgdir`, which is routine. There are no network requests beyond the declared sources, no obfuscated or encoded commands, no file operations outside the package directory, and no dangerous commands like `eval`, `curl`, `wget`, or `base64`. The use of a third-party provider (jpenilla) rather than the official upstream is typical for AUR `-bin` packages and not inherently malicious. No signs of supply-chain attack or malicious intent.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with verified downloads; no malicious code.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with verified downloads; no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for the `ghostty-shell-integration-nightly-bin` AUR package. It contains only package definitions, dependency declarations, source URLs, and SHA-256 checksums. There is no executable code, no obfuscation, no instructions to download or execute arbitrary content, and no attempt to exfiltrate data. The source URLs point to a GitHub releases page under the `jpenilla` account, which is a known AUR maintainer for this nightly binary package. The checksums are pinned (not SKIP), providing a degree of integrity verification. The file itself performs no actions and contains no directives that could be considered malicious. The nature of the file is purely descriptive and declarative, making it safe.
</details>
<evidence></evidence>
<summary>Metadata file; no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,131
  Completion Tokens: 1,423
  Total Tokens: 12,554
  Total Cost: $0.001258
  Execution Time: 24.13 seconds

Final Status: SAFE


No issues found.
