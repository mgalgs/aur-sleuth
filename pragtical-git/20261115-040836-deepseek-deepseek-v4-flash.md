---
package: pragtical-git
pkgver: 3.15.0.1794701664
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 8218
completion_tokens: 1296
total_tokens: 9514
cost: 0.00097290
execution_time: 19.18
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-15T04:08:35Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR git package with no security issues.
---

Materializing pragtical-git from local mirror...
Materialized pragtical-git
Analyzing pragtical-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope consists solely of standard variable and array definitions (pkgname, pkgver, depends, source, etc.) and function declarations (pkgver, build, package). There are no command substitutions, eval, or any other code that would execute during `makepkg --printsrcinfo`. The source URL points to the official upstream repository on GitHub, and the SKIP checksum is normal for VCS packages. No dangerous operations are present in the global scope.
</details>
<evidence></evidence>
<summary>No dangerous top-level code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code found.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a .SRCINFO metadata file for the pragtical-git package. It declares the package source as a git repository from the project's own GitHub page (https://github.com/pragtical/pragtical). The sha256sums field is set to SKIP, which is standard and expected for VCS sources (git). No commands, network operations, obfuscation, or suspicious content are present. The file simply defines package metadata and dependencies, all of which are standard libraries for a code editor. There is no evidence of malicious or unsafe behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security concerns.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a VCS (git) package. The source is fetched from the project's official GitHub repository. The build uses `meson` and `arch-meson` as expected, and the package routine installs files into the package directory. There are no suspicious network requests (besides the initial git clone of the upstream repo), no obfuscated or encoded commands, and no unexpected file operations. The optional PGO profiling step runs an upstream script (`scripts/lua/pgo.lua`) only when the `PGO` environment variable is set — this is part of the application's own build process and not a supply-chain attack. No evidence of malicious behavior was found.
</details>
<evidence></evidence>
<summary>Standard AUR git package with no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR git package with no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,218
  Completion Tokens: 1,296
  Total Tokens: 9,514
  Total Cost: $0.000973
  Execution Time: 19.18 seconds

Final Status: SAFE


No issues found.
