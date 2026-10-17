---
package: butaglyph
pkgver: 0.2.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7707
completion_tokens: 1208
total_tokens: 8915
cost: 0.000921193
execution_time: 30.26
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-17T23:14:56Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: "Standard PKGBUILD: pinned source, checksummed tarball, zig build, normal install. No malicious behavior."
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with pinned source and checksum; no security issues found.
---

Materializing butaglyph from local mirror...
Materialized butaglyph
Analyzing butaglyph AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable definitions and function declarations at the top level. No command substitutions, backticks, <code>eval</code>, or any other code execution constructs appear outside of the <code>build()</code> and <code>package()</code> functions. Running <code>makepkg --printsrcinfo</code> will merely source these declarations without executing dynamic or untrusted operations. The <code>source</code> array references a standard GitHub archive with a pinned SHA256 checksum, and no global scope performs network requests, file modification, or data exfiltration. Therefore, this parsing step is safe.</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. It downloads a tagged source tarball from the project's own GitHub repository with a pinned checksum, builds it with `zig build`, and installs the resulting binary plus documentation and license files into `$pkgdir`. There are no suspicious network operations, no arbitrary code execution, no obfuscated content, and no modification of files outside the package installation scope. The use of `install -Dm755` and `install -Dm644` is normal for packaging.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD: pinned source, checksummed tarball, zig build, normal install. No malicious behavior.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD: pinned source, checksummed tarball, zig build, normal install. No malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file describes a standard AUR package for `butaglyph`, a shell prompt written in Zig. It declares a pinned release tarball from the project's own GitHub repository, with a specific version (`v0.2.1`) and a SHA-256 checksum. The metadata is consistent with normal packaging practice: architecture, license, and build/opt dependencies are all declared without any unexpected behavior.

No suspicious network requests, obfuscated commands, unauthorized file operations, or executable payloads are present. The source URL points to the package's upstream GitHub repository, and the checksum is provided rather than skipped. There is nothing in this file that deviates from standard AUR packaging or indicates a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata file with pinned source and checksum; no security issues found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with pinned source and checksum; no security issues found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,707
  Completion Tokens: 1,208
  Total Tokens: 8,915
  Total Cost: $0.000921
  Execution Time: 30.26 seconds

Final Status: SAFE


No issues found.
