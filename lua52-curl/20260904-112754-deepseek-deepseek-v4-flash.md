---
package: lua52-curl
pkgbase: lua-curl
pkgver: 0.3.13
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 7758
completion_tokens: 1547
total_tokens: 9305
cost: 0.000961552312
execution_time: 43.59
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-04T11:27:53Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, pinned upstream tarball with SHA256 checksum; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no security issues.
---

lua52-curl is built from lua-curl
Materializing lua52-curl from local mirror...
Materialized lua52-curl
Analyzing lua52-curl AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and four package functions. At the global scope, there are no commands, no command substitutions, no external downloads, no data exfiltration, and no dangerous operations. The source is fetched from the official GitHub repository with a provided SHA-256 checksum. Running `makepkg --printsrcinfo` will only source these definitions and does not execute any malicious code. The package functions are only executed during the packaging phase, which is out of scope for this gate.
</details>
<evidence></evidence>
<summary>No malicious code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the `lua-curl` package family (Lua bindings to libcurl). The source is a pinned upstream tarball (`v0.3.13`) fetched from the project's official GitHub repository, with a valid-looking SHA256 checksum (`aba40511...bb2db`) rather than `SKIP`. There are no network requests beyond the declared upstream source, no commands, no file operations, no encoded or obfuscated content, and no unexpected hosts or executables referenced. The package contents are simply four conventional split packages (`lua-curl`, `lua51-curl`, `lua52-curl`, `lua53-curl`) providing Lua bindings for different Lua versions.

The only minor note is that the `lua-curl` pkgdesc says "Lua 5.4 binding" while `makedepends` lists lua/lua51/lua52/lua53, and the `arch` is limited to `x86_64`; these are ordinary packaging details and not security concerns. Nothing here deviates from standard AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard .SRCINFO metadata, pinned upstream tarball with SHA256 checksum; no malicious behavior found.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, pinned upstream tarball with SHA256 checksum; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard split package for Lua bindings to libcurl. It downloads a pinned version tarball from the official GitHub repository with a valid SHA256 checksum. The build and install steps are limited to `make clean` and `make install` with the appropriate Lua implementation variable. There are no suspicious network requests, obfuscated code, dangerous commands, or deviations from normal packaging practices. No security concerns.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,758
  Completion Tokens: 1,547
  Total Tokens: 9,305
  Total Cost: $0.000962
  Execution Time: 43.59 seconds

Final Status: SAFE


No issues found.
