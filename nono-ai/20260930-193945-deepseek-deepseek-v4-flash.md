---
package: nono-ai
pkgver: 0.79.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8017
completion_tokens: 1006
total_tokens: 9023
cost: 0.00078767766
execution_time: 41.8
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-30T19:39:45Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard Rust PKGBUILD, no signs of malicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata; no suspicious or malicious content found.
---

Materializing nono-ai from local mirror...
Materialized nono-ai
Analyzing nono-ai AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable definitions (pkgname, source, sha256sums, etc.) with no command substitutions, function calls, or other executable statements in the global scope. All actual build logic (prepare, build, check, package) is confined to functions, which are not executed during `makepkg --printsrcinfo`. There is no obfuscated code, network requests at source time, or other malicious patterns. The source URL uses HTTPS and has a pinned checksum, which is normal. Running `makepkg --printsrcinfo` on this PKGBUILD does not pose any security risk.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for Rust-based projects. It fetches a tagged release tarball from the official GitHub repository with a pinned SHA-256 checksum, ensuring the source integrity. The build process uses `cargo fetch --locked` and `cargo build --frozen`, which enforces the lockfile and prevents unexpected dependency changes. No suspicious network requests, obfuscated code, or dangerous commands are present. The optional `find` command in `package()` only installs files from the project's own `data` directory, which is normal for shipping bundled data. There are no indications of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard Rust PKGBUILD, no signs of malicious code.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust PKGBUILD, no signs of malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file contains only standard package metadata for the nono-ai AUR package. It declares the package source as a tagged tarball from the project's own upstream GitHub repository, with a pinned version and a specific sha256 checksum. The dependency list (cargo, gcc-libs, glibc) and optional dependencies are consistent with building a Rust-based security sandbox tool. There is no obfuscated code, no suspicious network behavior, no unexpected file operations, and no attempt to execute or download additional content. The file is a normal Arch package manifest and contains no evidence of malicious or supply-chain behavior.

The pinned sha256 checksum and upstream source URL are standard packaging practice. No deviations from expected AUR metadata are present.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata; no suspicious or malicious content found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata; no suspicious or malicious content found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,017
  Completion Tokens: 1,006
  Total Tokens: 9,023
  Total Cost: $0.000788
  Execution Time: 41.80 seconds

Final Status: SAFE


No issues found.
