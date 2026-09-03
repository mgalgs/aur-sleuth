---
package: claude-code
pkgver: 2.1.259
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: c6a5a9f6b0e70545bff9fff8802c361e476b0a86
prompt_tokens: 10489
completion_tokens: 1950
total_tokens: 12439
cost: 0.00112003976
execution_time: 33.27
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 2
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-02T23:03:33Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; official Anthropic sources with pinned checksums; no malicious behavior detected.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for upstream version monitoring.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned checksums, no malicious indicators.
---

Cloning https://aur.archlinux.org/claude-code.git...
Cloned claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable declarations and a `package()` function that is not executed during `makepkg --nobuild --nodeps --noprepare`. No top-level command substitutions, `eval`, `curl|bash`, or other dangerous patterns are present. The `source` array fetches from official domains (downloads.claude.ai, code.claude.com) using HTTPS. There is no `pkgver()` function that could execute code during sourcing. The SKIP checksum on the legal file is acceptable at this gate (sources are fetched for auditing, not executed). No code runs that could exfiltrate data, download unexpected payloads, or modify the system.
</details>
<evidence></evidence>
<summary>PKGBUILD safe for source fetch and parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- PKGBUILD safe for source fetch and parsing.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing the 3 file(s) in the AUR repository. The 2 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata for the `claude-code` package. It declares two upstream sources: a legal documentation page from `code.claude.com` (checksum SKIP, which is a hygiene choice but not malicious) and the official prebuilt binary from `downloads.claude.ai` for both x86_64 and aarch64, each with pinned SHA-256 checksums. All download hosts are the project's own official upstream domains.

There is no obfuscated code, no build logic, no network requests beyond fetching the declared sources, no file operations, and no execution of downloaded content outside the normal `makepkg` workflow. The file contains only package metadata and is consistent with ordinary, safe AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata; official Anthropic sources with pinned checksums; no malicious behavior detected.</summary>
</security_assessment>

[1/3] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; official Anthropic sources with pinned checksums; no malicious behavior detected.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for `nvchecker`, a tool that monitors upstream release URLs for version bumps. It points to the official Claude Code release page (`downloads.claude.ai`) and uses a regex to capture version information. There is no code execution, no network requests to unexpected hosts, no obfuscation, and no file operations beyond what `nvchecker` itself performs. The file is benign and follows standard AUR update-configuration conventions.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for upstream version monitoring.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for upstream version monitoring.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging conventions with no evidence of malicious behavior:

- **Sources**: All fetch content from official Claude/Antropic domains (`code.claude.com` and `downloads.claude.ai`) — these are the project's own upstream servers.
- **Checksums**: Binary checksums are pinned with explicit SHA256 hashes for both `x86_64` and `aarch64`. The license document uses `SKIP`, which is acceptable for a plain-text resource from the official site and is not a security concern.
- **Build/Install**: The `package()` function simply installs the prebuilt binary and creates a wrapper script that sets two benign environment variables (`DISABLE_UPDATES=1`, `DISABLE_INSTALLATION_CHECKS=1`) to suppress upstream update nudges — a common and expected AUR packaging practice. It then executes the installed binary.
- **No suspicious operations**: No encoded/obfuscated commands, no `curl|bash`, no fetching of code from untrusted origins, no exfiltration of local data, no backdoors, and no modification of files outside the package's own installation path.

There are no red flags indicating a supply-chain attack. The wrapper script's `DISABLE_*` environment variables are explicitly documented in the inline comment and serve a legitimate packaging purpose (avoiding warnings from the upstream application when installed outside its default `~/.local/bin` path).
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned checksums, no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned checksums, no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,489
  Completion Tokens: 1,950
  Total Tokens: 12,439
  Total Cost: $0.001120
  Execution Time: 33.27 seconds

Final Status: SAFE


No issues found.
