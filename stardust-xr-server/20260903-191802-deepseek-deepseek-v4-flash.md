---
package: stardust-xr-server
pkgver: 0.51.1
pkgrel: 0
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 7410
completion_tokens: 891
total_tokens: 8301
cost: 0.00072966096
execution_time: 30.72
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-03T19:18:01Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust PKGBUILD, no security issues.
---

Materializing stardust-xr-server from local mirror...
Materialized stardust-xr-server
Analyzing stardust-xr-server AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable and array assignments at the global scope. There are no command substitutions, backtick executions, or other active code that would run when the file is sourced by `makepkg --printsrcinfo`. The `prepare()`, `build()`, and `package()` functions are defined but not invoked during this step. Therefore, executing `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No top-level code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risk.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, .SRCINFO...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file for the `stardust-xr-server` package. It declares a git source with a pinned tag (`0.51.1`), standard dependencies for a display server (Vulkan, Mesa, X11, etc.), and build options. The `sha256sums = SKIP` is expected for VCS sources. No executable code, network requests, obfuscation, or any indication of a supply-chain attack is present. The content is purely declarative and follows normal packaging conventions.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Rust-based project. It fetches the source from the official GitHub repository using a pinned tag (`$pkgver`), uses `cargo fetch` to lock dependencies, and builds with `cargo build`. The only source is the upstream git repo, and no unexpected network requests, obfuscated code, or dangerous commands (eval, curl, wget, etc.) are present. The SKIP checksum is normal for VCS sources and does not indicate malice. The file performs routine install operations for the binary, license, and documentation. No evidence of supply-chain attack or malicious behavior was found.
</details>
<evidence></evidence>
<summary>Standard Rust PKGBUILD, no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust PKGBUILD, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,410
  Completion Tokens: 891
  Total Tokens: 8,301
  Total Cost: $0.000730
  Execution Time: 30.72 seconds

Final Status: SAFE


No issues found.
