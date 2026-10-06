---
package: claude-code
pkgver: 2.1.291
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10395
completion_tokens: 2485
total_tokens: 12880
cost: 0.0032234195
execution_time: 37.97
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-06T07:01:32Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard declarative AUR metadata with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package, no malicious code.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines global variables (`pkgname`, `pkgver`, `arch`, `source`, etc.) and a `package()` function. No command substitutions, backticks, `eval`, `curl`, `wget`, or other executable statements appear in the global/top-level scope. The only variable expansions are inside double-quoted strings used to construct source URLs, which is standard bash variable substitution and does not invoke any commands. The `package()` function definition is not executed during `makepkg --printsrcinfo` — only its contents are parsed. Therefore, sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No malicious top-level code present.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code present.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file used to check for new upstream versions of `claude-code`. It defines a regex source that fetches the latest release URL from `https://downloads.claude.ai/claude-code-releases/latest`, which is the official and expected domain for the package. The regex &quot;.+&quot; will match any non-empty line from that page to extract the version. There is no obfuscation, no code execution, no network request to an unexpected host, and no suspicious operations. The file is a normal part of AUR maintainer tooling and contains no supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard nvchecker config, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the `claude-code` AUR package. It declares the package name, version, description, dependencies, and download sources. All binary downloads point to the official Anthropic/Claude domain (`downloads.claude.ai`) and include pinned SHA256 checksums for integrity verification. The only source with a `SKIP` checksum is the legal/license documentation file (`cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md`), which is standard and acceptable per AUR packaging practices. The file contains no executable code, no obfuscation, no unexpected network operations, and no instructions that deviate from legitimate packaging metadata.
</details>
<evidence></evidence>
<summary>Standard declarative AUR metadata with no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard declarative AUR metadata with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward binary package for claude-code. All source URLs point to the official `downloads.claude.ai` and `code.claude.com` domains, which are the legitimate upstream for the Anthropic project. The `sha256sums` for the main source is `SKIP` (expected for a simple static legal document), but the binary sources have explicit pinned checksums, ensuring integrity.  

The `package()` function installs the pre-built binary into `/opt/claude-code/bin/`, creates a wrapper script that sets `DISABLE_UPDATES=1` and `DISABLE_INSTALLATION_CHECKS=1` (a routine practice to avoid upstream auto-updates conflicting with the package manager), and installs the license file. No network requests, obfuscated commands, or unusual system modifications occur. The `!strip` option is appropriate because the binary is a self-contained Bun executable.  

There are no signs of injected malicious code, exfiltration, or backdoors. The file adheres to standard AUR packaging practices for a binary application with upstream checksums.
</details>
<evidence></evidence>
<summary>Standard AUR binary package, no malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,395
  Completion Tokens: 2,485
  Total Tokens: 12,880
  Total Cost: $0.003223
  Execution Time: 37.97 seconds

Final Status: SAFE


No issues found.
