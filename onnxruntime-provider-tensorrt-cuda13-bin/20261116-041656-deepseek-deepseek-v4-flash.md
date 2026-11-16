---
package: onnxruntime-provider-tensorrt-cuda13-bin
pkgbase: onnxruntime-split-bin
pkgver: 1.29.0
pkgrel: 6
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 18057
completion_tokens: 1471
total_tokens: 19528
cost: 0.00188991
execution_time: 53.94
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-16T04:16:56Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious content.
---

onnxruntime-provider-tensorrt-cuda13-bin is built from onnxruntime-split-bin
Materializing onnxruntime-provider-tensorrt-cuda13-bin from local mirror...
Materialized onnxruntime-provider-tensorrt-cuda13-bin
Analyzing onnxruntime-provider-tensorrt-cuda13-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable definitions (pkgbase, pkgname, pkgver, etc.) and function definitions (package_*). No command substitutions, eval, or other executable code exists in the global scope. The content is purely declarative, so sourcing it for `makepkg --printsrcinfo` poses no risk.
</details>
<evidence></evidence>
<summary>No executable code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in global scope.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, .SRCINFO...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR `-bin` package. It declares package metadata: version, dependencies, conflicts, provides, and source URLs with pinned SHA256 checksums. All sources point to the upstream project's GitHub releases, which is expected and proper for a prebuilt binary package. No executable code, no scripts, no network requests beyond normal `makepkg` source fetching, and no obfuscation or suspicious content are present. The file conforms to standard AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard metadata file, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD defines a split package for ONNX Runtime prebuilt binaries. All source archives are fetched from pinned GitHub release URLs with SHA256 sums provided (no `SKIP`), so the source integrity is verifiable. Each `package_*()` function only extracts its respective `.pkg.tar.zst` archive into `$pkgdir` and renames a license directory if present. There are no network requests outside the declared sources, no `curl`, `wget`, `eval`, `base64`, `git` operations, or execution of downloaded scripts. The file is a straightforward generated packaging script with no obfuscated or dangerous code.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,057
  Completion Tokens: 1,471
  Total Tokens: 19,528
  Total Cost: $0.001890
  Execution Time: 53.94 seconds

Final Status: SAFE


No issues found.
