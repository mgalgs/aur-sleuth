---
package: hypr-input-switcher-bin
pkgver: 0.5.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7964
completion_tokens: 1012
total_tokens: 8976
cost: 0.00036635984
execution_time: 22.94
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-20T07:18:48Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned checksums; no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned upstream sources.
---

Materializing hypr-input-switcher-bin from local mirror...
Materialized hypr-input-switcher-bin
Analyzing hypr-input-switcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and a `package()` function. No top-level command substitutions, external downloads, or obfuscated code are present that would execute during `makepkg --printsrcinfo`. The source array uses fixed URLs from the project's official GitHub releases, and all strings are static or expanded from previously defined variables. There is nothing in the global scope that could be considered malicious.
</details>
<evidence></evidence>
<summary>No dangerous code at top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code at top-level scope.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. It downloads the tarball from the official GitHub releases of the project (`github.com/icyleaf/hypr-input-switcher`), verifies it with pinned SHA256 checksums (not SKIP), and installs only the binary, config file, license, and documentation into the package directory. There are no network requests outside the declared upstream source, no execution of fetched code at build time (no `curl|bash`, no `git pull`, no `eval`/`base64`), and no modifications to system files outside the package scope. The package function is minimal and uses only `install` with `-D` flags. No obfuscation or hidden commands were found. The file is consistent with a legitimate, automatically generated PKGBUILD from GoReleaser.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned checksums; no malicious indicators.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned checksums; no malicious indicators.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is purely metadata describing the package – its name, version, dependencies, and source URLs with SHA-256 checksums. All source URLs point to the official upstream GitHub releases of `hypr-input-switcher`. The checksums are pinned to specific hashes. No executable code, no obfuscated content, no unexpected network requests, and no deviations from standard AUR packaging practices are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with pinned upstream sources.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned upstream sources.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,964
  Completion Tokens: 1,012
  Total Tokens: 8,976
  Total Cost: $0.000366
  Execution Time: 22.94 seconds

Final Status: SAFE


No issues found.
