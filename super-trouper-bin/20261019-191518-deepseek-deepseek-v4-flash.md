---
package: super-trouper-bin
pkgver: 0.5.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7720
completion_tokens: 917
total_tokens: 8637
cost: 0.000869414
execution_time: 14.1
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-19T19:15:16Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums from official upstream releases. No security issues found.
  - file: PKGBUILD
    status: safe
    summary: Benign PKGBUILD; pinned checksums, official upstream releases, and standard install only.
---

Materializing super-trouper-bin from local mirror...
Materialized super-trouper-bin
Analyzing super-trouper-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments and function definitions at the global scope. No command substitutions or external commands are executed during sourcing. The functions `latestver()` and `package()` are defined but not invoked during `makepkg --printsrcinfo`. There is no code that runs when the PKGBUILD is sourced that could download, execute, or exfiltrate data. Therefore, running `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>Safe - no top-level execution of untrusted code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe - no top-level execution of untrusted code.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file describes a standard AUR binary package for `super-trouper`, an MCP server for Frida. It declares two upstream release tarballs from the project's official GitHub releases page, each with a pinned version and a concrete SHA-256 checksum. There are no suspicious commands, no network requests beyond the declared upstream sources, no encoded or obfuscated content, and no file operations. The package metadata is consistent with normal AUR packaging practices.

The use of architecture-specific source entries and checksums is ordinary and good practice. No evidence of injected malicious code, exfiltration, or unexpected behavior was found.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums from official upstream releases. No security issues found.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums from official upstream releases. No security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. It downloads official release tarballs from the project&apos;s own GitHub repository (crissyfield/super-trouper), pins checksums for both architectures, and installs only the binary and license into the package directory. No suspicious network requests, obfuscated code, eval/base64 usage, or unexpected file operations are present.

The `latestver()` function is a maintainer convenience helper that queries the upstream GitHub API for the latest release tag; it is not invoked during package build or install, and it only fetches version metadata, not executable content. The source URLs use HTTPS and point to the project&apos;s official releases, which is expected behavior. There is no evidence of injected malicious code or supply-chain tampering.
</details>
<evidence>
</evidence>
<summary>
Benign PKGBUILD; pinned checksums, official upstream releases, and standard install only.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Benign PKGBUILD; pinned checksums, official upstream releases, and standard install only.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,720
  Completion Tokens: 917
  Total Tokens: 8,637
  Total Cost: $0.000869
  Execution Time: 14.10 seconds

Final Status: SAFE


No issues found.
