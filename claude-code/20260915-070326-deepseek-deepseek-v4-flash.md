---
package: claude-code
pkgver: 2.1.272
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10564
completion_tokens: 2451
total_tokens: 13015
cost: 0.001370380396
execution_time: 75.62
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-15T07:03:26Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Benign nvchecker configuration file.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums and official Anthropic sources; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD for claude-code with official sources and standard install.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
`makepkg --printsrcinfo` only sources the PKGBUILD's global/top-level scope. In this file, the top-level scope contains only standard metadata assignments: `pkgver`, `pkgrel`, `arch`, `url`, `license`, `depends`, `options`, `optdepends`, `source`/`source_x86_64`/`source_aarch64`, and `sha256sums` values. There are no top-level command substitutions, no network requests, no downloads, and no execution of external code during sourcing.

The `package()` function contains the actual installation logic, but it is not executed by `makepkg --printsrcinfo`, so it is out of scope for this narrow gate and will be reviewed in the full PKGBUILD audit. The `SKIP` checksum entries are also not relevant to this step, since no sources are downloaded or verified when running `--printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
No top-level malicious code; only metadata variable definitions, SAFE.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; only metadata variable definitions, SAFE.
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
This file is a configuration for nvchecker, a tool that checks for new upstream versions. It fetches content from the official Claude Code releases URL (downloads.claude.ai) and applies a regex to extract the version. The regex is overly broad, but that is a quality or packaging issue, not a security threat. There is no obfuscated code, no dangerous commands, and no data exfiltration. The file performs only its stated purpose and does not deviate from standard packaging practices.
</details>
<evidence></evidence>
<summary>Benign nvchecker configuration file.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign nvchecker configuration file.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `claude-code` package. It declares the package name, version, URL, architectures, dependencies, and source entries with checksums. The binary sources are fetched from `downloads.claude.ai`, the official Claude Code release host, and the legal document from `code.claude.com`, also an official Anthropic domain. Both binary sources (x86_64 and aarch64) are pinned with sha256 checksums, which is good practice.

The only minor hygiene note is that `cc-legal` (the legal/compliance markdown document) uses `sha256sums = SKIP`. This is acceptable for a documentation file and does not constitute malicious behavior. There is no obfuscation, no eval/base64/curl/wget constructs, no post-build execution of fetched content, and no references to unrelated hosts. Nothing in this file deviates from standard packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums and official Anthropic sources; no malicious behavior.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums and official Anthropic sources; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. Source files are downloaded from official Anthropic/Claude domains (`downloads.claude.ai` and `code.claude.com`). The `sha256sums` for both binary architectures are pinned to known hashes; the legal/license SKIP is unremarkable. The `package()` function installs the binary to `/opt/claude-code/bin/claude`, creates a thin wrapper script at `/usr/bin/claude` that sets environment variables (`DISABLE_UPDATES`, `DISABLE_INSTALLATION_CHECKS`) to suppress upstream update nudges, and installs the license file. No obfuscation, no unexpected network fetches, no system-level tampering outside the package&#8217;s own install paths. The wrapper script simply `exec`s the packaged binary with the additional environment variables set. This is consistent with normal packaging for applications that otherwise expect a non-package-managed layout.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD for claude-code with official sources and standard install.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD for claude-code with official sources and standard install.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,564
  Completion Tokens: 2,451
  Total Tokens: 13,015
  Total Cost: $0.001370
  Execution Time: 75.62 seconds

Final Status: SAFE


No issues found.
