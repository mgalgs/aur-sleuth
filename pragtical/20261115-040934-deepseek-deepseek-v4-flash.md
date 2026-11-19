---
package: pragtical
pkgver: 3.15.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 8080
completion_tokens: 1267
total_tokens: 9347
cost: 0.00095526
execution_time: 8.65
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-15T04:09:34Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
---

Materializing pragtical from local mirror...
Materialized pragtical
Analyzing pragtical AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only static variable assignments (pkgname, pkgver, depends, source, sha256sums, etc.) and function definitions for build() and package(). There are no command substitutions, no execution of external commands, no network requests, no dangerous operations that would execute when the file is sourced by `makepkg --printsrcinfo`. The sha256sums are provided and not SKIP, but even if they were SKIP, that would not affect safety of sourcing. The functions are only called during later build stages, which are out of scope for this narrow gate. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No malicious code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for building the pragtical editor from a pinned upstream release. The source is fetched from the official GitHub repository with a valid SHA256 checksum. The build and package functions use meson and standard installation commands. The PGO block runs an upstream script (`scripts/lua/pgo.lua`) as part of profile-guided optimization, which is expected upstream behavior. There are no suspicious network requests, obfuscated code, or dangerous operations beyond normal packaging tasks. No evidence of supply chain attack or malicious code injection.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file for the `pragtical` package. It declares the package name, version, license, dependencies, and a single source tarball from the official upstream GitHub repository (`https://github.com/pragtical/pragtical/archive/refs/tags/v3.15.0.tar.gz`) with a valid SHA-256 checksum. There are no scripts, network operations, obfuscated content, or unexpected directives. All content is conventional for AUR packaging and presents no supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,080
  Completion Tokens: 1,267
  Total Tokens: 9,347
  Total Cost: $0.000955
  Execution Time: 8.65 seconds

Final Status: SAFE


No issues found.
