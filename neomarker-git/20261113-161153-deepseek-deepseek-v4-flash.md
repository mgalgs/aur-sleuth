---
package: neomarker-git
pkgver: v2026.11.16.r0.g464d187
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 8378
completion_tokens: 1257
total_tokens: 9635
cost: 0.00098028
execution_time: 14.27
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-13T16:11:52Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS package with no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security issues.
---

Materializing neomarker-git from local mirror...
Materialized neomarker-git
Analyzing neomarker-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and array definitions in its global/top-level scope. There are no command substitutions (`$()` or backticks), no function calls, and no invocations of dangerous commands (curl, wget, eval, base64, etc.) that would execute when the file is sourced. All code that could be considered suspicious (git submodule operations, build commands) resides inside `pkgver()`, `prepare()`, `build()`, and `package()` functions, which are **not** executed by `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD for metadata parsing is safe.
</details>
<evidence></evidence>
<summary>No executable code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in global scope.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, .SRCINFO...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a VCS package. It clones the project's own upstream repository and its dependencies (scidown, charter, tinyexpr) from their respective official GitHub sources. The `prepare()` function properly configures git submodules to point to the pre-fetched local copies in `$srcdir`, which is a normal and recommended technique for AUR packages with submodules. The build uses the upstream Meson build system, and the package stage installs artifacts into `$pkgdir` with no unusual destinations. There are no obfuscated commands, suspicious network requests, file exfiltration attempts, or unexpected code execution. All SKIP checksums are expected for VCS sources. This is a clean, conventional AUR PKGBUILD with no evidence of supply-chain compromise.
</details>
<evidence></evidence>
<summary>Standard AUR VCS package with no malicious indicators.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS package with no malicious indicators.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file contains only package metadata: name, version, description, dependencies, and source URLs pointing to the legitimate upstream repositories (`github.com/alfonsodg/NeoMarker`, `github.com/Mandarancio/scidown`, etc.). All checksums are `SKIP`, which is standard for VCS packages and not a security concern. There are no embedded scripts, network requests to unexpected hosts, obfuscated content, or any instructions that could execute code. The file is purely declarative and follows normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard metadata file, no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,378
  Completion Tokens: 1,257
  Total Tokens: 9,635
  Total Cost: $0.000980
  Execution Time: 14.27 seconds

Final Status: SAFE


No issues found.
