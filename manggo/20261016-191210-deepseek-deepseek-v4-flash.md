---
package: manggo
pkgver: 1.1.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9722
completion_tokens: 1198
total_tokens: 10920
cost: 0.001102738
execution_time: 24.71
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T19:12:10Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Routine binary repackaging PKGBUILD with pinned checksums; no malicious behavior found.
---

Materializing manggo from local mirror...
Materialized manggo
Analyzing manggo AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable and array assignments, including standard metadata, dependencies, source URLs, and checksums. No top-level command substitutions, function calls, downloads, or execution of untrusted payloads occur when the file is sourced. The `package()` function contains file operations and patchelf usage, but it is not executed by `makepkg --printsrcinfo`. There is no evidence of malicious code in the global scope.
</details>
<evidence></evidence>
<summary>No top-level malicious code; printsrcinfo only sources safe variable assignments.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; printsrcinfo only sources safe variable assignments.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a metadata-only `.SRCINFO` file for the AUR package `manggo`. It declares a desktop translation and screenshot OCR application, lists standard runtime dependencies, and specifies architecture-specific prebuilt `.deb` sources downloaded from the project's official release host (`gitcode.com/Pylogmon/Manggo`). Both source files have pinned SHA-256 checksums, so the download integrity is verifiable.

No suspicious commands, network endpoints unrelated to the project, obfuscated content, or unexpected file operations are present. The file contains only standard packaging metadata and contains no executable code. The use of prebuilt binaries and proprietary licensing is a packaging/hygiene consideration, not evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums; no malicious behavior found.
</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward binary package build for the Manggo desktop translation and OCR assistant. It downloads prebuilt `.deb` artifacts from the project&#39;s own upstream release location (gitcode.com/Pylogmon/Manggo) with pinned SHA-256 checksums for both `x86_64` and `aarch64`. The `package()` function only extracts the packaged data, adjusts the rpath of a bundled shared library with `patchelf`, creates a symlink for the executable, and installs license files into the package directory.

No malicious behavior is present: there is no obfuscated code, no unexpected network requests, no execution of downloaded scripts, no data exfiltration, and no modification of files outside `$pkgdir`. The use of `bsdtar`, `patchelf`, `install`, and `ln -s` is normal packaging practice for repackaging upstream binary artifacts. All sources are checksum-verified, and the operations are consistent with the package&#39;s stated purpose.
</details>
<evidence>
</evidence>
<summary>
Routine binary repackaging PKGBUILD with pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Routine binary repackaging PKGBUILD with pinned checksums; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,722
  Completion Tokens: 1,198
  Total Tokens: 10,920
  Total Cost: $0.001103
  Execution Time: 24.71 seconds

Final Status: SAFE


No issues found.
