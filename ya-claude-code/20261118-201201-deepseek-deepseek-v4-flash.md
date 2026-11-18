---
package: ya-claude-code
pkgver: 2.1.327
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 10055
completion_tokens: 4128
total_tokens: 14183
cost: 0.00164799
execution_time: 28.15
files_reviewed: 2
files_skipped: 1
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 3
injection_attempts: 0
date: 2026-11-18T20:12:00Z
file_verdicts:
  - file: anthropic-release-signing.key
    status: skipped
    summary: "Skipping binary file: anthropic-release-signing.key"
  - file: PKGBUILD
    status: safe
    summary: Legitimate, well‑verified binary package; no evidence of malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata, no malicious behavior.
---

Materializing ya-claude-code from local mirror...
Materialized ya-claude-code
Analyzing ya-claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions (pkgname, pkgver, source, sha256sums, etc.) and function definitions (prepare, package) at the top level. No command substitutions, backtick executions, or other dangerous operations occur during sourcing. The only dynamic expressions are simple variable expansions (e.g., `$_rel`, `${pkgver}`) in string assignments, which are normal for metadata definitions. Running `makepkg --printsrcinfo` would safely source this file and parse its metadata without executing any potentially malicious code.
</details>
<evidence></evidence>
<summary>No dangerous top-level execution in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level execution in PKGBUILD.
Note: 3 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: manifest-2.1.327.json::https://downloads.claude.ai/claude-code-releases/2.1.327/manifest.json, manifest-2.1.327.json.pgpsig::https://downloads.claude.ai/claude-code-releases/2.1.327/manifest.json.sig, legal-2.1.327.md::https://code.claude.com/docs/en/legal-and-compliance.md
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
This PKGBUILD follows best practices for distributing a pre-compiled binary with cryptographic supply-chain verification. The `prepare()` function imports a bundled GPG signing key, confirms its fingerprint matches Anthropic&apos;s known release key, verifies the detached GPG signature on a release manifest, checks that the manifest&apos;s version field matches `$pkgver`, and finally confirms the binary&apos;s SHA‑256 checksum (already pinned in the `sha256sums` array) matches the value inside the signed manifest. No code is downloaded and executed without verification; all network sources (`downloads.claude.ai`, `code.claude.com`) belong to Anthropic, the upstream project. The `package()` function installs the binary and creates a standard wrapper that disables self‑update logic, which is expected for a packaged installation. There is no obfuscation, no unexpected data exfiltration, no execution of attacker‑controlled code, and no tampering with files outside the package&apos;s own scope.
</details>
<evidence></evidence>
<summary>Legitimate, well‑verified binary package; no evidence of malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate, well‑verified binary package; no evidence of malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR metadata file that declaratively lists sources and checksums. All source URLs point to Anthropic's official domains (downloads.claude.ai and code.claude.com), which is expected for the Claude Code package. The primary binary has a pinned SHA‑256 checksum, and the package includes a locally‑provided PGP signing key (checksum pinned) along with a signed manifest to verify the binary at build time—a security‑conscious design. There is no obfuscated code, no executable content, no unauthorized network destinations, and no unexpected system modifications. The use of SKIP checksums for the manifest, signature, and legal document is a common AUR practice and does not indicate malicious intent.
</details>
<evidence></evidence>
<summary>Declarative metadata, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: anthropic-release-signing.key)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,055
  Completion Tokens: 4,128
  Total Tokens: 14,183
  Total Cost: $0.001648
  Execution Time: 28.15 seconds

Final Status: SAFE


No issues found.


Audit Skips:

anthropic-release-signing.key: [SKIPPED] Skipping binary file: anthropic-release-signing.key
