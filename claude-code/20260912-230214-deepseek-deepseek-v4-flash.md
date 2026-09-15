---
package: claude-code
pkgver: 2.1.270
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10326
completion_tokens: 1606
total_tokens: 11932
cost: 0.00088890508
execution_time: 91.27
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-12T23:02:14Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version checking.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no malicious behavior detected.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's global/top-level scope. In this PKGBUILD, the top-level scope contains only standard variable assignments (`pkgname`, `pkgver`, `source`, `sha256sums`, `options`, etc.) and function definitions. There are no command substitutions, no downloads, no `curl`/`wget`/`eval`, no encoded payloads, and no top-level side effects that would execute during sourcing. The `package()` function is not run by `makepkg --printsrcinfo`, so its contents are out of scope for this narrow gate.

The `sha256sums` entry of `SKIP` for the legal/license source is not relevant to this gate, as no source downloads or verification occur during `--printsrcinfo`. The downstream binary sources have pinned checksums. Nothing in the file indicates that sourcing the PKGBUILD itself would execute malicious code.
</details>
<evidence>
</evidence>
<summary>
Top-level scope contains only variables; no executable risk during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope contains only variables; no executable risk during printsrcinfo.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for `nvchecker`, a tool used to check for new upstream versions of software. It defines a single source `[claude-code]` that uses the `regex` method to scrape a version string from the official `downloads.claude.ai` domain (owned by Anthropic, the creator of Claude). The URL is the project's own release page, and `.nvchecker.toml` is a standard configuration file in AUR packaging for automated version bumping. There is no code or command execution, no obfuscation, no data exfiltration, and no deviation from normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for version checking.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version checking.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` file for an AUR package that downloads prebuilt binaries from the official Anthropic/Claude download server (`downloads.claude.ai`). The checksums for the binary sources are pinned (not SKIP), which provides integrity verification. The legal document source uses SKIP, which is acceptable for a documentation file. No obfuscation, suspicious network destinations, dangerous commands, or file-manipulation logic is present — the file is purely declarative metadata. There is no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR PKGBUILD for distributing the `claude-code` binary from Anthropic. The binary is fetched from the official downloads domain (`downloads.claude.ai`) with pinned checksums (`sha256sums` for both x86_64 and aarch64 are hardcoded, not `SKIP`). The `SKIP` entry applies only to a documentation source (the license file from `code.claude.com`), which is a normative practice for non-build-critical text files.

The `package()` function does nothing beyond installing the binary into `/opt/claude-code/bin/` and creating a wrapper script at `/usr/bin/claude` that sets environment variables to disable upstream self-update checks. All file operations are confined to `$pkgdir`. There is no obfuscated code, no network requests at build time outside of the declared `source` array, no execution of untrusted fetched content, and no exfiltration of data. The behavior is consistent with ordinary packaging practices and contains no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD; no malicious behavior detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,326
  Completion Tokens: 1,606
  Total Tokens: 11,932
  Total Cost: $0.000889
  Execution Time: 91.27 seconds

Final Status: SAFE


No issues found.
