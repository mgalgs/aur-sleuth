---
package: ya-claude-code
pkgver: 2.1.328
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 9979
completion_tokens: 2769
total_tokens: 12748
cost: 0.00139653
execution_time: 25.22
files_reviewed: 2
files_skipped: 1
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 3
injection_attempts: 0
date: 2026-11-19T20:07:56Z
file_verdicts:
  - file: anthropic-release-signing.key
    status: skipped
    summary: "Skipping binary file: anthropic-release-signing.key"
  - file: .SRCINFO
    status: safe
    summary: Clean metadata, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Well-audited PKGBUILD with verified signing, no malicious code.
---

Materializing ya-claude-code from local mirror...
Materialized ya-claude-code
Analyzing ya-claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD&#39;s global/top-level scope consists entirely of static variable assignments (pkgname, pkgver, pkgrel, pkgdesc, arch, url, license, depends, optdepends, provides, conflicts, options, source, sha256sums, _fpr, _rel) and two function definitions (prepare, package). There are no command substitutions (`$(…)`), backtick-executed commands, arithmetic expansions, `eval` invocations, or any other constructs that would execute code at source time. The variable expansions in `_rel` and the `source` array only expand previously defined variables into strings; they do not trigger network access or external commands. The operations that verify signatures, install files, and handle the binary all reside inside `prepare()` and `package()`, which are **not** executed by `makepkg --printsrcinfo`. Therefore sourcing this PKGBUILD poses no immediate risk.
</details>
<evidence>
</evidence>
<summary>Top-level variable declarations only, no dangerous execution</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level variable declarations only, no dangerous execution
Note: 3 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: manifest-2.1.328.json::https://downloads.claude.ai/claude-code-releases/2.1.328/manifest.json, manifest-2.1.328.json.pgpsig::https://downloads.claude.ai/claude-code-releases/2.1.328/manifest.json.sig, legal-2.1.328.md::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, anthropic-release-signing.key...
[1/3] Reviewing .SRCINFO, PKGBUILD...
! Reviewed anthropic-release-signing.key. Status: SKIPPED -- Skipping binary file: anthropic-release-signing.key
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a package metadata descriptor with no executable code. All source URLs point to official Anthropic/Claude domains (`downloads.claude.ai`, `code.claude.com`) for the claude-code binary, a signed release manifest, and related legal documentation. The binary checksum is pinned, and the release manifest is verified via a PGP signature (the signing key is also pinned). SKIP checksums on the manifest and signature files are standard practice when PGP verification is used; the SKIP on the legal document is not a security concern. There is no evidence of exfiltration, code injection, backdoors, or any behavior deviating from legitimate package distribution.
</details>
<evidence></evidence>
<summary>Clean metadata, no malicious code.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Clean metadata, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows strong supply-chain security practices for packaging a pre-built binary. The binary's SHA-256 sum is pinned, and the `prepare()` function verifies the GPG signature of a release manifest against Anthropic's official signing key, checks the version embedded in that manifest matches `$pkgver`, and confirms the manifest's checksum matches the pinned value. The `package()` function simply installs the binary and a wrapper script. The `DISABLE_UPDATES` and `DISABLE_INSTALLATION_CHECKS` environment variables set in the wrapper are standard precautions for self-updating packaged software — they prevent the upstream application from replacing pacman-owned files or displaying spurious warnings. No obfuscated code, unexpected network requests, data exfiltration, or backdoors are present.
</details>
<evidence></evidence>
<summary>Well-audited PKGBUILD with verified signing, no malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Well-audited PKGBUILD with verified signing, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: anthropic-release-signing.key)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,979
  Completion Tokens: 2,769
  Total Tokens: 12,748
  Total Cost: $0.001397
  Execution Time: 25.22 seconds

Final Status: SAFE


No issues found.


Audit Skips:

anthropic-release-signing.key: [SKIPPED] Skipping binary file: anthropic-release-signing.key
