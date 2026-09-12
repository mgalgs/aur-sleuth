---
package: claude-code
pkgver: 2.1.263
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10262
completion_tokens: 1880
total_tokens: 12142
cost: 0.00114447564
execution_time: 28.55
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-06T07:01:21Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with verified sources from the official project domain.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD; no evidence of malicious code.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version checking; no malicious content.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD&#39;s global scope contains only standard variable definitions (pkgname, pkgver, source arrays, checksums, etc.) with no command substitutions, backtick executions, or function calls that would execute at source time. All meaningful operations (file installations, wrapper script creation) are inside the `package()` function, which is **not** executed by `makepkg --printsrcinfo`. There is no dangerous code in the top-level scope, so sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No top-level dangerous code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level dangerous code; sourcing is safe.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, .nvchecker.toml...
[0/3] Reviewing PKGBUILD, .nvchecker.toml, .SRCINFO...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR metadata descriptor. It defines package dependencies, architectures, and sources. All download URLs point to the legitimate Anthropic/Claude AI domains (`code.claude.com` and `downloads.claude.ai`). The binary sources have pinned SHA256 checksums, ensuring integrity verification. The only `SKIP` checksum is on a legal document reference (`cc-legal`), which is not an executable and poses no threat. No obfuscation, suspicious commands, or unauthorized external hosts are present. The file contains only declarative packaging metadata with no executable logic.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with verified sources from the official project domain.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, .nvchecker.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with verified sources from the official project domain.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD fetches the official claude-code binary from Anthropic's own `downloads.claude.ai` domain with pinned SHA-256 checksums for both `x86_64` and `aarch64`. The build process only installs the binary, creates a wrapper script (that simply sets `DISABLE_UPDATES` and `DISABLE_INSTALLATION_CHECKS` environment variables and `exec`s the real binary), and installs the license file. There is no obfuscated code, no unexpected network requests, no use of `eval`/`curl`/`bash` in dangerous contexts, and no exfiltration or backdoor mechanisms. The wrapper script's environment variables are a standard practice to prevent upstream updates that would conflict with pacman-managed files.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD; no evidence of malicious code.</summary>
</security_assessment>

[2/3] Reviewing .nvchecker.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD; no evidence of malicious code.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for `nvchecker`, a tool used to automate version checking for AUR packages. It defines a single rule to check for new releases of `claude-code` by fetching the latest release page from `https://downloads.claude.ai/claude-code-releases/latest` and applying a regex pattern. The URL is the legitimate upstream source for Claude Code releases, owned by Anthropic. There is no code execution, no obfuscation, no network requests to unexpected hosts, and no file operations. The file is entirely benign and serves a standard packaging purpose.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config for version checking; no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version checking; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,262
  Completion Tokens: 1,880
  Total Tokens: 12,142
  Total Cost: $0.001144
  Execution Time: 28.55 seconds

Final Status: SAFE


No issues found.
