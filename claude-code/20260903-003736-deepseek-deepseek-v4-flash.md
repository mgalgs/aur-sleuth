---
package: claude-code
pkgver: 2.1.259
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 1d6b5f000e2ff2cbdfdf4e324a3e5ac914955c8a
prompt_tokens: 10230
completion_tokens: 1741
total_tokens: 11971
cost: 0.001214965472
execution_time: 28.23
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-03T00:37:35Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for official upstream.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata, signed checksums, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package with no malicious indicators.
---

Cloning https://aur.archlinux.org/claude-code.git...
Cloned claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level global scope of this PKGBUILD consists only of standard variable definitions, comments, and array assignments with string literals. There are no command substitutions, backtick executions, `eval`, or other code that would execute at source time. The `package()` function is defined but not invoked during `makepkg --printsrcinfo`. No dangerous operations occur during sourcing.
</details>
<evidence></evidence>
<summary>No dangerous top-level code in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code in PKGBUILD.
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
This is a configuration file for nvchecker, a tool used to automatically check for new upstream releases. It points to the official Anthropic downloads domain (downloads.claude.ai) for the claude-code package. The source type is `regex`, meaning it fetches the URL and applies a regex to extract the version. There is no obfuscation, encoded commands, or any other suspicious content. This file is entirely benign and follows standard packaging practices for version monitoring.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for official upstream.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for official upstream.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is purely declarative metadata for the claude-code AUR package. It defines package version, architecture support, dependencies, and source URLs with pinned SHA-256 checksums for the binary downloads. The sources are fetched from `downloads.claude.ai`, which is an official domain under Anthropic (the project's upstream). The only checksum set to `SKIP` is for the `cc-legal` documentation file — this is a trust/hygiene choice and not a supply-chain threat. There are no executable instructions, no obfuscated content, no network requests beyond standard `makepkg` source fetching, and no signs of injection or backdoor behavior. The file conforms to standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Declarative metadata, signed checksums, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata, signed checksums, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a proprietary binary distribution. It downloads the `claude` binary from the official Anthropic/Claude downloads domain (`downloads.claude.ai`), verifies it with a pinned SHA-256 checksum (except for the license file, which uses `SKIP` – a normal practice for non-executable assets), and installs it to `/opt/claude-code/bin`. A wrapper script in `/usr/bin/claude` sets two environment variables (`DISABLE_UPDATES` and `DISABLE_INSTALLATION_CHECKS`) to suppress upstream self-update logic and native-installation warnings – this is a benign packaging choice, not a supply-chain attack. There is no obfuscation, no unexpected network requests, no data exfiltration, and no backdoor behavior. All operations are confined to the package's own installation paths.
</details>
<evidence></evidence>
<summary>Standard AUR binary package with no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package with no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,230
  Completion Tokens: 1,741
  Total Tokens: 11,971
  Total Cost: $0.001215
  Execution Time: 28.23 seconds

Final Status: SAFE


No issues found.
