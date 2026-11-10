---
package: artcraft-launcher
pkgver: 0.17.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 9828
completion_tokens: 1916
total_tokens: 11744
cost: 0.001243060
execution_time: 29.41
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-10T08:04:00Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust project PKGBUILD with no supply-chain risk.
---

Materializing artcraft-launcher from local mirror...
Cloning https://aur.archlinux.org/artcraft-launcher.git...
Cloned artcraft-launcher
Analyzing artcraft-launcher AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments and function definitions. No command substitutions, backticks, or other executable statements exist in the global scope. The `prepare()`, `build()`, and `package()` functions are only defined, not invoked during sourcing. Therefore, running `makepkg --printsrcinfo` will not execute any potentially dangerous code.
</details>
<evidence></evidence>
<summary>No executable code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in global scope.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata descriptor for an AUR package. It specifies the package name, version, dependencies, and a single source tarball from the project's own GitHub repository at a tagged release (`v0.17.0`). The source has a sha256 checksum pinned. No executable code, network requests, obfuscation, or suspicious operations are present. This file is purely declarative and conforms to standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard package metadata, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard nvchecker configuration used to monitor upstream releases. It specifies a git source for the project `https://github.com/storytold/craft-launcher.git` and a tag prefix `v`. There is no malicious code, no network requests beyond declaring the upstream URL, and no execution of commands. This is a routine packaging support file and does not pose any security risk.
</details>
<evidence></evidence>
<summary>Standard nvchecker config; no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Rust project. The source is a pinned release tarball from the project's official GitHub repository, with a hardcoded SHA-256 checksum verifying integrity. Build commands (`cargo fetch`, `cargo build`) operate on locked dependencies fetched from the upstream. No obfuscation, unexpected network operations, or system file modifications are present. All file installation is confined to package-owned directories under `$pkgdir`. There is no evidence of malicious or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Standard Rust project PKGBUILD with no supply-chain risk.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust project PKGBUILD with no supply-chain risk.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,828
  Completion Tokens: 1,916
  Total Tokens: 11,744
  Total Cost: $0.001243
  Execution Time: 29.41 seconds

Final Status: SAFE


No issues found.
