---
package: claude-code
pkgver: 2.1.273
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10405
completion_tokens: 2367
total_tokens: 12772
cost: 0.0011551057
execution_time: 47.84
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-15T23:01:35Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for monitoring upstream releases
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with official sources and checksums pinned.
  - file: .SRCINFO
    status: safe
    summary: Declarative AUR metadata; official upstream sources with pinned binary checksums; no malicious behavior found.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD top-level scope contains only standard metadata variable assignments, `source` array definitions, checksum assignments, and the definition of the `package()` function. No commands run at global scope during `makepkg --printsrcinfo`; the `package()` body is not executed during this step and will be audited separately. There are no top-level command substitutions, network requests, downloads, or encoded payloads that would execute while the PKGBUILD is sourced. SKIP checksums and unpinned versions are not grounds to fail this narrow gate.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD only assigns metadata; no dangerous code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD only assigns metadata; no dangerous code executes during printsrcinfo.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .nvchecker.toml...
[0/3] Reviewing .nvchecker.toml, PKGBUILD...
[0/3] Reviewing .nvchecker.toml, PKGBUILD, .SRCINFO...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration for `nvchecker`, a tool that monitors upstream releases for version bumps. It defines a single package entry (`claude-code`) using the `regex` source type, which fetches the content from `https://downloads.claude.ai/claude-code-releases/latest` and uses a regex pattern `.+` to capture the version string. The URL points to the official Claude AI downloads domain, which is the expected upstream for this package. There are no dangerous commands, no obfuscation, no exfiltration attempts, and no deviation from routine packaging practices.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for monitoring upstream releases</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, .SRCINFO...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for monitoring upstream releases
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard, well-structured Arch Linux packaging file for `claude-code`. All sources originate from official Anthropic domains (`downloads.claude.ai` and `code.claude.com`), and the binary tarballs are pinned with SHA256 checksums (not `SKIP`). The wrapper script that sets `DISABLE_UPDATES=1` and `DISABLE_INSTALLATION_CHECKS=1` is a routine packaging practice — it prevents the upstream binary from overwriting itself or nagging about the non-default install location — and does not introduce any malicious behavior. The `package()` function performs only expected operations: installing the binary into `/opt`, creating a wrapper in `/usr/bin`, and copying the license file. There is no obfuscated code, no unexpected network access, no exfiltration, and no backdoor functionality.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD with official sources and checksums pinned.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with official sources and checksums pinned.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch User Repository (AUR) `.SRCINFO` metadata file for the claude-code package. It contains only declarative package metadata (pkgver, arch, depends, optdepends, sources, checksums) and no executable code of any kind. There is no obfuscation, no scripts, no install hooks, and no logic that could perform network requests, file modification, or command execution.

The declared `source` entries point to the project's own official upstream infrastructure: `code.claude.com` for the legal/compliance documentation and `downloads.claude.ai` for the prebuilt Linux binaries. The binary for each architecture (`x86_64`, `aarch64`) has a pinned SHA-256 checksum, which is a good supply-chain hygiene practice. The legal documentation source uses a `SKIP` checksum, which is a standard and acceptable practice for documentation files and does not constitute a security issue by itself. The `optdepends` entries are all legitimate, openly-declared runtime suggestions (git, gh, ripgrep, tmux, bubblewrap, etc.).

There are no red flags: no suspicious network destinations, no eval/base64/curl-obfuscated payloads, no tampering with system files, and no unpinned executable content. The file is consistent with ordinary, well-formed AUR packaging for a vendor-published binary release.
</details>
<evidence>
</evidence>
<summary>Declarative AUR metadata; official upstream sources with pinned binary checksums; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative AUR metadata; official upstream sources with pinned binary checksums; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,405
  Completion Tokens: 2,367
  Total Tokens: 12,772
  Total Cost: $0.001155
  Execution Time: 47.84 seconds

Final Status: SAFE


No issues found.
