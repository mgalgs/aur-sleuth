---
package: pdfcraft-bin
pkgver: 0.18.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7956
completion_tokens: 1258
total_tokens: 9214
cost: 0.000952952
execution_time: 27.36
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-03T08:03:44Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with upstream GitHub release sources and pinned checksums.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned upstream GitHub release binaries; no malicious behavior.
---

Materializing pdfcraft-bin from local mirror...
Materialized pdfcraft-bin
Analyzing pdfcraft-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only variable assignments and an array definition for sources. There are no command substitutions, function calls, or any executable statements that would run during sourcing. The `package()` function is defined but not invoked by `makepkg --printsrcinfo`. Therefore, no malicious code executes when the PKGBUILD is sourced.
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
This is a standard `.SRCINFO` metadata file auto-generated from a PKGBUILD for a prebuilt-binary package. It contains only declarative fields: package description, version, URL, architectures, licenses, dependencies, provides/conflicts, and two architecture-specific source entries.

Both sources point to the project's own upstream GitHub release page (`https://github.com/storytold/pdfcraft/releases/download/v0.18.0/...`), which matches the `url` field, and both are accompanied by pinned SHA-256 checksums (not `SKIP`). There are no shell commands, no `eval`/base64 obfuscation, no network operations beyond the declared release downloads, and no file/system modifications. `options = !strip` is the normal choice for a prebuilt binary and is not a security concern.

No evidence of injected malicious behavior; this file is consistent with ordinary AUR packaging.
</details>
<evidence>

</evidence>
<summary>Standard .SRCINFO with upstream GitHub release sources and pinned checksums.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with upstream GitHub release sources and pinned checksums.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward prebuilt-binary package. It downloads release tarballs from the project's own declared upstream (`https://github.com/storytold/pdfcraft/releases/download/v$pkgver/...`), which is expected and consistent with the package's stated purpose. Both architecture-specific archives are pinned with real SHA-256 checksums (not `SKIP`), giving integrity verification for the downloaded binaries.

The `package()` function performs only routine packaging operations: installing the two executables into `$pkgdir/usr/bin`, copying the bundled `share` tree, and installing the Apache/MIT license files. There are no network requests beyond the declared sources, no `curl`/`wget` piping to a shell, no `eval`/base64/obfuscated blobs, no file operations outside `$pkgdir`, and no post-install hooks or system modifications. Nothing deviates from standard AUR packaging practice.

Note: the package ships third-party prebuilt binaries, so trust ultimately rests on the upstream vendor and the pinned checksums; this is a normal packaging consideration, not a supply-chain indicator here.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned upstream GitHub release binaries; no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned upstream GitHub release binaries; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,956
  Completion Tokens: 1,258
  Total Tokens: 9,214
  Total Cost: $0.000953
  Execution Time: 27.36 seconds

Final Status: SAFE


No issues found.
