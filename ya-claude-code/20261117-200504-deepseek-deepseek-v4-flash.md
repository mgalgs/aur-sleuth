---
package: ya-claude-code
pkgver: 2.1.326
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 9978
completion_tokens: 2136
total_tokens: 12114
cost: 0.00128250
execution_time: 18.8
files_reviewed: 2
files_skipped: 1
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 3
injection_attempts: 0
date: 2026-11-17T20:05:03Z
file_verdicts:
  - file: anthropic-release-signing.key
    status: skipped
    summary: "Skipping binary file: anthropic-release-signing.key"
  - file: PKGBUILD
    status: safe
    summary: Secure PKGBUILD with verified signatures and pinned checksums.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with no malicious behavior.
---

Materializing ya-claude-code from local mirror...
Materialized ya-claude-code
Analyzing ya-claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions at the top level (pkgname, pkgver, source, sha256sums, etc.). No command substitutions, backticks, eval, or any other executable constructs appear outside of the `prepare()` and `package()` functions. Since `makepkg --printsrcinfo` only sources the global scope and does not execute function bodies, there is no risk of malicious code running during this step. The `prepare()` and `package()` functions will be audited separately in the full review.
</details>
<evidence></evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
Note: 3 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: manifest-2.1.326.json::https://downloads.claude.ai/claude-code-releases/2.1.326/manifest.json, manifest-2.1.326.json.pgpsig::https://downloads.claude.ai/claude-code-releases/2.1.326/manifest.json.sig, legal-2.1.326.md::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, anthropic-release-signing.key...
[1/3] Reviewing .SRCINFO, PKGBUILD...
! Reviewed anthropic-release-signing.key. Status: SKIPPED -- Skipping binary file: anthropic-release-signing.key
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a model of secure packaging practice. It pins the SHA-256 checksum of the binary, imports a trusted Anthropic signing key, verifies the detached GPG signature on the release manifest, confirms the manifest version matches the package version, and cross-checks the binary&#39;s pinned checksum against the signed manifest. All of these steps are performed in `prepare()` and will cause the build to fail if any check is violated. The SKIP entries for the manifest, signature, and legal text are appropriate: the manifest and signature are authenticated via GPG, and the legal text is prose that may be updated in place. The wrapper script is a standard technique to prevent the binary from attempting in-place self-updates, which would conflict with pacman&#39;s file ownership. There are no unexpected network fetches, obfuscated commands, or system modifications outside the intended package scope. The file is fully consistent with secure, auditable packaging and contains no supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Secure PKGBUILD with verified signatures and pinned checksums.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Secure PKGBUILD with verified signatures and pinned checksums.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a declarative metadata file (.SRCINFO) for the ya-claude-code AUR package. It contains no executable code—only package metadata, source URLs, and checksums. All network sources point to official Anthropic domains (downloads.claude.ai and code.claude.com), which are the project&#39;s own upstream channels. The design uses GPG-signed manifest verification (manifest + .pgpsig source entries paired with an included Anthropic release signing key) to cryptographically verify the downloaded binary&#39;s authenticity—a well-structured security practice, not a red flag. The three `SKIP` checksums apply to files verified by GPG signature and a legal document, which is standard and acceptable. The only pinned hash (for the binary itself, b6b3647...) and the key hash (bd70a5e...) are correctly provided. No obfuscation, unexpected network destinations, or dangerous operations are present.</details>
<evidence></evidence>
<summary>Standard AUR metadata with no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: anthropic-release-signing.key)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,978
  Completion Tokens: 2,136
  Total Tokens: 12,114
  Total Cost: $0.001282
  Execution Time: 18.80 seconds

Final Status: SAFE


No issues found.


Audit Skips:

anthropic-release-signing.key: [SKIPPED] Skipping binary file: anthropic-release-signing.key
