---
package: claude-code
pkgver: 2.1.304
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10324
completion_tokens: 2382
total_tokens: 12706
cost: 0.001373008
execution_time: 41.82
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-19T23:01:52Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Benign version checker config for claude-code.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; no malicious behavior detected.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD consists only of variable assignments (package metadata, source URLs, checksums, dependency lists) and a function definition for `package()`. No command substitutions, external program calls, or other executable statements appear outside of function bodies. Since `makepkg --printsrcinfo` sources the file but does not execute `pkgver()`, `prepare()`, `build()`, or `package()`, no dangerous code can execute during this step.
</details>
<evidence></evidence>
<summary>Top-level scope has no executable code; safe to source for metadata.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope has no executable code; safe to source for metadata.
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
This is a standard nvchecker configuration file for tracking upstream releases of `claude-code`. It defines a version check using a regex source against the official Claude download URL. The regex pattern `.+` is broad but not malicious—it simply extracts the version string from the page content. No code execution, obfuscation, or data exfiltration is present. The file performs only declarative version monitoring, which is a routine AUR maintainer practice.
</details>
<evidence></evidence>
<summary>Benign version checker config for claude-code.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign version checker config for claude-code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard Arch Linux package metadata file for the `claude-code` package from Anthropic. It defines the package name, version, dependencies, and source URLs. All binary sources (`claude` executables for x86_64 and aarch64) are fetched from the official `downloads.claude.ai` domain and have pinned SHA256 checksums, which is a secure practice. The legal/compliance document source uses `sha256sums = SKIP`, but since that is a documentation file with no execution path, this is acceptable and not evidence of malice. There are no obfuscated commands, no network requests to unexpected hosts, no file operations, and no embedded code execution. The file is purely declarative and follows normal packaging practices.
</details>
<evidence></evidence>
<summary>Declarative metadata, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. It fetches the precompiled binary from the official Anthropic downloads domain (`downloads.claude.ai`) with pinned SHA256 checksums for both architectures, and fetches a legal document from the official `code.claude.com` domain (with a SKIP checksum, which is acceptable).

The `package()` function installs the binary to `/opt/claude-code/bin/claude` and creates a straightforward wrapper at `/usr/bin/claude` that sets two environment variables (`DISABLE_UPDATES=1` and `DISABLE_INSTALLATION_CHECKS=1`) to prevent upstream self-update behavior and a health-check warning — a standard practice for distribution-packaged software that would otherwise conflict with the package manager. No obfuscated code, unexpected network requests, file exfiltration, backdoors, or system modifications outside the package's own installation paths are present. The licensing file is also installed properly.</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD; no malicious behavior detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,324
  Completion Tokens: 2,382
  Total Tokens: 12,706
  Total Cost: $0.001373
  Execution Time: 41.82 seconds

Final Status: SAFE


No issues found.
