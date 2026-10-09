---
package: claude-code
pkgver: 2.1.296
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10349
completion_tokens: 2192
total_tokens: 12541
cost: 0.0028833775
execution_time: 29.52
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-09T23:09:18Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard version-checker config; no suspicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR packaging with pinned binary checksums and no malicious behavior.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD at global scope, but this PKGBUILD contains only static variable and array assignments at the top level. There are no top-level command substitutions, no `eval`, no `curl`/`wget`/`base64` invocations, and no executable code at global scope that would run during `makepkg --printsrcinfo`. The `package()` function contains installation logic, but it is not executed during `--printsrcinfo` and will be reviewed separately in the full audit.

The SKIP checksum for the legal/license source does not make this step unsafe, since no sources are downloaded or verified during `makepkg --printsrcinfo`. The binary sources are pinned to a specific `pkgver` and use checksums; these are metadata-only considerations at this stage.
</details>
<evidence>
</evidence>
<summary>
No top-level executable code; parsing this PKGBUILD is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code; parsing this PKGBUILD is safe.
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
This is a standard nvchecker configuration file used to track upstream releases. It fetches a URL from the project's own domain (`downloads.claude.ai`) and uses a regex to parse the latest version string. There is no code execution, no obfuscation, no unexpected network requests to external hosts, and no system modification. The file only defines how to check for new versions of the claude-code package, which is the package's intended upstream.
</details>
<evidence></evidence>
<summary>Standard version-checker config; no suspicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard version-checker config; no suspicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `claude-code` package. It describes package metadata, dependencies, and source URLs. All sources point to official Anthropic domains (`downloads.claude.ai` and `code.claude.com`). The binary sources have SHA256 checksums pinned (not `SKIP`), ensuring integrity. The only `SKIP` checksum is for a legal document, which is a benign and common practice. No scripts, commands, or code are present in this file — it is purely declarative. There is no evidence of obfuscation, unexpected network requests, data exfiltration, backdoors, or any other malicious behavior. The dependencies and optional dependencies all align with the stated purpose of the application.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for distributing a precompiled binary from an official upstream source (downloads.claude.ai). The binary checksums are pinned for both x86_64 and aarch64, providing integrity verification. The wrapper script (`/usr/bin/claude`) simply sets two environment variables (`DISABLE_UPDATES=1`, `DISABLE_INSTALLATION_CHECKS=1`) and then execs the real binary — a common pattern in AUR packages to prevent upstream self-update mechanisms from conflicting with the package manager. There is no obfuscated code, no unexpected network requests in the build or package functions, no data exfiltration, and no execution of attacker-controlled content. The `SKIP` checksum on the license source is a normal trust/hygiene choice and not malicious.
</details>
<evidence></evidence>
<summary>Standard AUR packaging with pinned binary checksums and no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR packaging with pinned binary checksums and no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,349
  Completion Tokens: 2,192
  Total Tokens: 12,541
  Total Cost: $0.002883
  Execution Time: 29.52 seconds

Final Status: SAFE


No issues found.
