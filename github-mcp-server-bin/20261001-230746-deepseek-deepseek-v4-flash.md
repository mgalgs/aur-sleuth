---
package: github-mcp-server-bin
pkgver: 1.13.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12667
completion_tokens: 2049
total_tokens: 14716
cost: 0.00070178290
execution_time: 31.98
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-01T23:07:45Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums.
  - file: .nvchecker.toml
    status: safe
    summary: Innocuous nvchecker config, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard binary package with pinned checksums, no injected malice.
---

Materializing github-mcp-server-bin from local mirror...
Materialized github-mcp-server-bin
Analyzing github-mcp-server-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and function definitions at the top level. There are no command substitutions, backtick expansions, `eval`, or any other code that would execute during sourcing. The `prepare()`, `build()`, and `package()` functions are defined but are not invoked by `makepkg --printsrcinfo`. All string expansions (e.g., `${_pkgname}`) are simple variable references that pose no execution risk. No malicious top‑level code is present.
</details>
<evidence></evidence>
<summary>No dangerous top‑level code found; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top‑level code found; sourcing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an AUR Git repository. It ignores all files by default and then un-ignores only the essential packaging files: `PKGBUILD`, `.SRCINFO`, `.gitignore`, and `.nvchecker.toml`. There is no executable code, no network requests, no obfuscation, and no attempt to modify system files or exfiltrate data. This is a routine configuration file with no security concerns.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no malicious content.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no malicious content.
[1/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file for `github-mcp-server-bin` is standard AUR metadata. It declares sources from the official GitHub releases page (github.com/github/github-mcp-server) with pinned version `v1.13.0` and provides SHA256 checksums for all architectures. No suspicious URLs, obfuscated content, or unusual commands are present. The file simply describes the package sources, dependencies, and integrity hashes in the expected format. There is no evidence of supply-chain tampering or malicious intent.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with pinned checksums.</summary>
</security_assessment>

[2/4] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard configuration file for nvchecker, a tool that checks for new upstream releases. It simply specifies that the source is GitHub, the repository is `github/github-mcp-server`, and to use the latest release with a `v` prefix. There are no commands, network requests, obfuscated code, or any other suspicious content. This file poses no security risk.
</details>
<evidence></evidence>
<summary>Innocuous nvchecker config, no malicious content.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Innocuous nvchecker config, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR binary package best practices. Sources are fetched directly from the official GitHub releases of `github/github-mcp-server` with pinned SHA256 checksums for all three architectures. The build step runs the downloaded binary solely to generate shell completions—a normal and expected operation for CLI tools. The package step installs the binary, documentation, license, and completions. There is no obfuscation, no unexpected network requests, no exfiltration of data, and no execution of code from untrusted sources beyond the pinned upstream tarballs. Any risk would stem from the upstream binary itself, not from the packaging scripts.
</details>
<evidence></evidence>
<summary>Standard binary package with pinned checksums, no injected malice.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package with pinned checksums, no injected malice.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,667
  Completion Tokens: 2,049
  Total Tokens: 14,716
  Total Cost: $0.000702
  Execution Time: 31.98 seconds

Final Status: SAFE


No issues found.
