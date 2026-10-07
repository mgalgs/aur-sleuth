---
package: github-mcp-server-bin
pkgver: 2.0.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12657
completion_tokens: 4532
total_tokens: 17189
cost: 0.00618067
execution_time: 76.12
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-07T07:07:43Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore for AUR package repo.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums from official source.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with pinned checksums, no anomalies.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no security issues.
---

Materializing github-mcp-server-bin from local mirror...
Materialized github-mcp-server-bin
Analyzing github-mcp-server-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD&#39;s top-level scope strictly contains variable and array definitions. There are no command substitutions `$(...)` or backticks, no `eval`, `curl`, `wget`, or any other executable commands. The functions `prepare`, `build`, and `package` are defined but not invoked, so they are completely out of scope for the `makepkg --printsrcinfo` parsing gate. Therefore, parsing this PKGBUILD for metadata is completely safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code execution possible.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution possible.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` configuration for an AUR package repository. It ignores all files except the essential packaging files (`PKGBUILD`, `.SRCINFO`, `.gitignore`, `.nvchecker.toml`). This is a routine and expected practice for maintaining an AUR package repository. No malicious or suspicious activity is present.
</details>
<evidence></evidence>
<summary>Standard gitignore for AUR package repo.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore for AUR package repo.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR package metadata file. It declares three source tarballs (aarch64, i686, x86_64) all downloaded from the official GitHub releases page of the `github-mcp-server` project (`https://github.com/github/github-mcp-server/releases/download/v2.0.0/...`). Each source has a pinned SHA256 checksum, ensuring integrity. No dangerous commands, obfuscation, or unexpected network destinations are present. The file contains only declarative metadata; there is no executable content. The package is verified against the upstream project with pinned hashes, so it is safe.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with pinned checksums from official source.</summary>
</security_assessment>

[2/4] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums from official source.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard packaging practices for a prebuilt binary AUR package. It downloads the official GitHub release tarballs from the project's own GitHub repository (`github/github-mcp-server`), with pinned SHA256 checksums for all three architectures. No checksums are set to SKIP. The prepare() function only sets execute permissions and creates an output directory for completions. The build() function runs the binary's own `completion` subcommand to generate shell completion files — this is expected upstream functionality, not a supply-chain attack. The package() function installs the binary, documentation, license, and completions into standard system directories. There are no obfuscated commands, no requests to unexpected hosts, no data exfiltration, no execution of untrusted code, and no deviation from normal AUR packaging workflow.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD with pinned checksums, no anomalies.</summary>
</security_assessment>

[3/4] Reviewing .nvchecker.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with pinned checksums, no anomalies.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a standard configuration for the `nvchecker` tool, used to check for new upstream releases. It specifies the GitHub repository `github/github-mcp-server` as the source, with `use_latest_release = true` and a version prefix `&quot;v&quot;`. This is a benign, read-only operation that queries the GitHub API for the latest release tag. No code execution, file downloads, or any other dangerous operations are present. The configuration is exactly what is expected for AUR package version tracking and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard nvchecker config; no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,657
  Completion Tokens: 4,532
  Total Tokens: 17,189
  Total Cost: $0.006181
  Execution Time: 76.12 seconds

Final Status: SAFE


No issues found.
