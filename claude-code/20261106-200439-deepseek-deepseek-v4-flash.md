---
package: claude-code
pkgver: 2.1.319
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10482
completion_tokens: 2115
total_tokens: 12597
cost: 0.001338792
execution_time: 32.96
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-11-06T20:04:39Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no suspicious content.
  - file: .nvchecker.toml
    status: safe
    summary: Routine nvchecker config checking official upstream URL; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Official binary package with standard wrapper; no malicious or suspicious behavior found.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD's global scope only. This PKGBUILD contains only standard variable assignments (`pkgname`, `pkgver`, `arch`, `source`, `sha256sums`, etc.) and function definitions (`package()`). There are no top-level command substitutions, backticks, `eval`, `curl`, `wget`, base64 decoding, or other executable logic that would run at parse time.

The `source` arrays reference the application's own upstream distribution hosts (`code.claude.com` and `downloads.claude.ai`), which is expected for this package. The `package()` function contains installation logic, but it is not executed during `makepkg --printsrcinfo` and is out of scope for this narrow gate. The `SKIP` checksum for the license document is a checksum/hygiene consideration, not a risk for this command.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD contains only static definitions; printsrcinfo parse is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD contains only static definitions; printsrcinfo parse is safe.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard metadata file for an AUR package. It contains only declarative entries: package name, description, version, license, dependencies, source URLs, and checksums. All source URLs point to official domains owned by Anthropic (`code.claude.com` and `downloads.claude.ai`). Both binary source entries (`linux-x64` and `linux-arm64`) have proper SHA256 checksums (not SKIP), which is good practice. The legal document source uses SKIP for checksums, but this is not malicious — it is merely a hygiene concern and does not involve fetching or executing any untrusted code. There is no executable content, no obfuscation, no network exfiltration, no backdoors, or any other supply-chain attack indicators. The file conforms to standard AUR packaging expectations.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no suspicious content.</summary>
</security_assessment>

[1/3] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no suspicious content.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an nvchecker configuration used by AUR maintainers to automatically check for new upstream releases. It defines a version check for the `claude-code` package that fetches `https://downloads.claude.ai/claude-code-releases/latest` over HTTPS and applies the regex `.+` to identify the latest version.

There is no suspicious behavior here: the URL points to the project's official distribution domain, the regex is a standard nvchecker pattern for matching version strings, and the file performs no code execution, file modification, or data exfiltration. It is a routine maintainer tool configuration.
</details>
<evidence>
</evidence>
<summary>
Routine nvchecker config checking official upstream URL; no malicious behavior found.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Routine nvchecker config checking official upstream URL; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD downloads the official Claude Code binary from Anthropic's own distribution host (`downloads.claude.ai`) and the license text from the official `code.claude.com` documentation site. The binary source is checksum-pinned for both `x86_64` and `aarch64`; only the legal/license markdown uses `SKIP`, which is a minor reproducibility/hygiene consideration but not evidence of malice.

The `package()` function performs standard installation operations: it installs the downloaded binary to `/opt/claude-code/bin/claude`, creates a small shell wrapper at `/usr/bin/claude`, and installs the license file. The wrapper only sets environment variables to disable upstream update checks and then `exec`s the installed binary with the user's arguments. There is no obfuscation, no network fetching at package time beyond the declared official sources, no execution of remotely fetched scripts, no modification of files outside the package's own scope, and no data exfiltration. This is consistent with ordinary AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Official binary package with standard wrapper; no malicious or suspicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Official binary package with standard wrapper; no malicious or suspicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,482
  Completion Tokens: 2,115
  Total Tokens: 12,597
  Total Cost: $0.001339
  Execution Time: 32.96 seconds

Final Status: SAFE


No issues found.
