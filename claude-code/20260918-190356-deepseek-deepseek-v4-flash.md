---
package: claude-code
pkgver: 2.1.277
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10244
completion_tokens: 1928
total_tokens: 12172
cost: 0.00069484800
execution_time: 73.15
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-18T19:03:55Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Benign nvchecker config, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious behavior detected.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata file; no executable or malicious content.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope consists entirely of static variable assignments (pkgver, arch, source arrays, checksums, etc.) and a function definition for `package()`. There is no command substitution, no `eval`, no `curl|bash` or any other code execution at the top level. The `source()` and `sha256sums()` arrays are defined with simple string literals; no dynamic commands or unsafe expansions occur when sourcing the PKGBUILD. The `package()` function contains `install`, `cat`, and `chmod` commands, but those are inside the function body and will NOT execute during `makepkg --printsrcinfo`.

No dangerous top-level code is present. The PKGBUILD is safe to source for metadata parsing.<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD has no top-level code beyond standard variable definitions. All dangerous commands (`install`, `cat`, `chmod`) are inside the `package()` function, which does **not** execute during `makepkg --printsrcinfo`. No command substitutions, `eval`, `curl`, `wget`, or any other executable statements exist in the global scope. The source array and checksum arrays are defined with simple string literals and variable expansions of `pkgver`, which is already defined. No obfuscation, hidden payloads, or external network calls can trigger at this stage.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source.
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
This is a configuration file for nvchecker, a tool used to monitor upstream version changes. It defines a regex-based version check for the `claude-code` package, fetching content from `https://downloads.claude.ai/claude-code-releases/latest`. The URL points to the official upstream (claude.ai), and the regex &quot;.+&quot; simply matches any content, which is a normal pattern for detecting page changes. There is no malicious code, no obfuscation, no network requests to unexpected hosts, and no execution of dangerous commands.
</details>
<evidence></evidence>
<summary>Benign nvchecker config, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign nvchecker config, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging conventions for a binary application. The `source` arrays point to official Anthropic domains (`downloads.claude.ai`, `code.claude.com`), and the binary checksums are pinned to fixed values for integrity. The `package()` function simply installs the binary to `/opt/claude-code/bin/claude`, creates a harmless wrapper script that sets environment variables to suppress upstream update checks (a common practice for AUR packages), and installs the license file. There are no obfuscated commands, no unexpected network fetches, no encoded payloads, no modifications to unrelated system files, and no exfiltration of data. The only SKIP checksum is for a documentation file from the official website, which is neither a safety nor a malicious concern.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious behavior detected.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious behavior detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a metadata descriptor for the `claude-code` AUR package. It defines package metadata, dependencies, and two binary source tarballs (for x86_64 and aarch64) from the official Anthropic domain (`downloads.claude.ai`). Each binary source has a pinned SHA-256 checksum, ensuring integrity at build time. The only `SKIP` checksum is on a legal/compliance document from `code.claude.com`, which is a static informational file and does not introduce a supply-chain risk. There are no executable instructions, obfuscated code, unexpected network destinations, or any behavior beyond standard AUR packaging. The file is entirely declarative and poses no security threat.
</details>
<evidence></evidence>
<summary>Declarative metadata file; no executable or malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata file; no executable or malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,244
  Completion Tokens: 1,928
  Total Tokens: 12,172
  Total Cost: $0.000695
  Execution Time: 73.15 seconds

Final Status: SAFE


No issues found.
