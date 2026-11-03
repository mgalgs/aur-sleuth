---
package: craft-anything-bin
pkgver: 0.3.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8629
completion_tokens: 3946
total_tokens: 12575
cost: 0.001503411
execution_time: 80.17
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-03T20:09:32Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard prebuilt PKGBUILD with pinned checksums.
---

Materializing craft-anything-bin from local mirror...
Materialized craft-anything-bin
Analyzing craft-anything-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable definitions (pkgname, pkgver, arrays) and a single function `package()` that is not invoked during `makepkg --printsrcinfo`. There are no command substitutions, backtick expressions, eval, curl/wget, or other dangerous constructs in the global scope. The source URLs and checksums are simple string assignments that do not execute anything at sourcing time. The function body is inert until explicitly called later. Therefore, sourcing this PKGBUILD for metadata extraction is not dangerous.
</details>
<evidence>
</evidence>
<summary>Top-level code is safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code is safe to source.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard package metadata file for the AUR. It declares the package name, version, source URLs, checksums, dependencies, and architecture-specific overrides. All source URLs point to the official GitHub releases of the `craft-anything` project under the `storytold` repository. Checksums are provided for both architectures (`x86_64` and `aarch64`), which is good hygiene. There are no embedded commands, no obfuscation, no unexpected network requests, and no behavior that deviates from normal packaging practices. The file does not contain any executable or installable scripts; it is purely declarative. No evidence of malicious content was found.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for `craft-anything-bin` follows standard practices for packaging a precompiled binary. The upstream source is clearly defined as the official GitHub repository (`https://github.com/storytold/craft-anything`). The specific tarballs for both `x86_64` and `aarch64` are pinned with hardcoded SHA256 checksums, which is a strong security practice that protects against tampering of the remote release artifacts.

The file contains only a `package()` function which installs the extracted binaries, shared data, and licenses into the standard `pkgdir` staging directory. There are no `build()` or `prepare()` functions, no execution of external scripts, no network requests beyond the standard `makepkg` source download, and no use of dangerous commands such as `eval`, `base64`, `curl`, or `wget`. The file does not attempt to write to any location outside of the build container (`$pkgdir`).
</details>
<evidence>
</evidence>
<summary>Standard prebuilt PKGBUILD with pinned checksums.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard prebuilt PKGBUILD with pinned checksums.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,629
  Completion Tokens: 3,946
  Total Tokens: 12,575
  Total Cost: $0.001503
  Execution Time: 80.17 seconds

Final Status: SAFE


No issues found.
