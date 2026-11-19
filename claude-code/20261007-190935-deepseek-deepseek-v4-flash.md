---
package: claude-code
pkgver: 2.1.293
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10314
completion_tokens: 1944
total_tokens: 12258
cost: 0.00279774
execution_time: 64.68
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-07T19:09:34Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Legitimate PKGBUILD with pinned checksums, no malicious behavior.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for official releases; no threats.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable definitions: metadata fields, source URLs with proper naming, dependency lists, and checksum arrays. There are no command substitutions, backtick expressions, `eval` calls, or any other executable code in the global scope that could run when the file is sourced by `makepkg --printsrcinfo`. The `package()` function, which performs file installation and wrapper script creation, is defined but never executed during this metadata-printing step. No dangerous behavior is present in the sourced portion of the file.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code in global scope.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .nvchecker.toml...
[0/3] Reviewing .nvchecker.toml, .SRCINFO...
[0/3] Reviewing .nvchecker.toml, .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard Arch User Repository metadata file for the `claude-code` package. It declares the package name, version, architecture, dependencies, and source files. The binary sources are downloaded from the official `downloads.claude.ai` domain and have pinned SHA-256 checksums, which is normal and secure practice. The legal documentation source also points to the official `code.claude.com` domain; its checksum is `SKIP`, which is a trust/hygiene choice but not evidence of malice, especially since it is only a documentation file.

There is no build(), prepare(), or install() code in this file, no network requests beyond fetching the package's declared upstream sources, no obfuscation, no execution of downloaded code, and no exfiltration or system modification. The file contains only standard package metadata and does not deviate from ordinary AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[1/3] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD downloads the official Claude Code binary from the legitimate Anthropic download server (`downloads.claude.ai`) with pinned SHA256 checksums for both architectures. The `package()` function installs the binary to `/opt/claude-code/bin/claude`, creates a trivial wrapper that disables upstream update checks (standard for package-managed installations), and installs the license file. No obfuscated code, unexpected network requests, dangerous commands, or data exfiltration is present. The `SKIP` checksum on the legal document source is not malicious—it&#x27;s a hygiene choice and unremarkable in this context.

All operations are routine AUR packaging practices: installing a prebuilt binary, creating a wrapper script that sets environment variables, and copying a license file. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Legitimate PKGBUILD with pinned checksums, no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing .nvchecker.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate PKGBUILD with pinned checksums, no malicious behavior.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a configuration file for `nvchecker`, a tool that checks for new upstream releases. It defines a regex-based source that polls `https://downloads.claude.ai/claude-code-releases/latest` and uses the pattern `.+` to match the version string. The URL points to the official `downloads.claude.ai` domain, which is the legitimate distribution host for Claude Code. There is no obfuscation, no dangerous commands, no network requests to unexpected hosts, and no indication of malicious intent. This is a standard and benign version-checking configuration.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for official releases; no threats.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for official releases; no threats.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,314
  Completion Tokens: 1,944
  Total Tokens: 12,258
  Total Cost: $0.002798
  Execution Time: 64.68 seconds

Final Status: SAFE


No issues found.
