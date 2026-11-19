---
package: onnxruntime-provider-openvino-bin
pkgbase: onnxruntime-split-bin
pkgver: 1.29.0
pkgrel: 6
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 18048
completion_tokens: 1198
total_tokens: 19246
cost: 0.00183996
execution_time: 55.37
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-16T08:13:52Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard split-bin PKGBUILD, no malicious indicators.
---

onnxruntime-provider-openvino-bin is built from onnxruntime-split-bin
Materializing onnxruntime-provider-openvino-bin from local mirror...
Materialized onnxruntime-provider-openvino-bin
Analyzing onnxruntime-provider-openvino-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions (pkgbase, pkgname, pkgver, pkgrel, arch, url, license, options, source, sha256sums, noextract) and package_*() function definitions. No command substitutions, backticks, eval, or other code execution occurs at the global/top-level scope. The package_*() functions are defined but not called during `makepkg --printsrcinfo`, which only sources the top-level scope. There is no malicious code that would execute during this narrow operation.
</details>
<evidence></evidence>
<summary>No top-level code execution, safe to printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution, safe to printsrcinfo.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR binary package split into multiple subpackages. It declares six prebuilt binary archives sourced from the maintainer&#39;s own GitHub releases (`github.com/rsd/omarchy-onnxruntime/releases`). All sources include explicit SHA256 checksums (none are `SKIP`). There are no executable commands, no obfuscated code, no unexpected network requests, and no references to external or untrusted hosts. The file conforms to normal AUR packaging practices for distributing prebuilt binaries.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard split-bin package that downloads prebuilt binary archives from the maintainer's own GitHub releases (`github.com/rsd/omarchy-onnxruntime`). All sources are pinned to a specific release tag (`v1.29.0-6`) with corresponding SHA-256 checksums provided. The package functions are straightforward: each extracts its respective archive using `bsdtar` and renames license directories. There is no obfuscated code, no eval/base64/curl-to-bash, no unexpected system modifications, no network requests to unrelated hosts, and no backdoor or exfiltration mechanisms. The file follows standard AUR packaging practices for distributing prebuilt binaries.
</details>
<evidence></evidence>
<summary>Standard split-bin PKGBUILD, no malicious indicators.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard split-bin PKGBUILD, no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,048
  Completion Tokens: 1,198
  Total Tokens: 19,246
  Total Cost: $0.001840
  Execution Time: 55.37 seconds

Final Status: SAFE


No issues found.
