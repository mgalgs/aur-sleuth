---
package: python-ctranslate2-cuda
pkgbase: ctranslate2-cuda
pkgver: 4.8.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10732
completion_tokens: 2067
total_tokens: 12799
cost: 0.00296772
execution_time: 73.24
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-08T11:17:41Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security concerns.
---

python-ctranslate2-cuda is built from ctranslate2-cuda
Materializing python-ctranslate2-cuda from local mirror...
Materialized python-ctranslate2-cuda
Analyzing python-ctranslate2-cuda AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its top-level scope. The top-level content here consists solely of standard variable definitions (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.), a defaulting parameter expansion for `_cuda_arch_list`, and function definitions for `prepare()`, `build()`, and the `package_*()` functions. There are no top-level command substitutions, network fetches, downloads, `eval`, `base64`, obfuscated payloads, or file-modifying commands that would execute during sourcing.

The `prepare()` function contains git/submodule operations and the `build()`/`package_*()` functions contain build and install commands, but those are only executed in later stages of the packaging process and are out of scope for this `--printsrcinfo` gate. The `SKIP` checksums are also irrelevant to this step because no sources are downloaded or verified during `--printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
Top-level scope is standard metadata and function definitions; no malicious execution during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is standard metadata and function definitions; no malicious execution during printsrcinfo.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, .SRCINFO...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a CUDA-enabled CTranslate2 library and its Python bindings. All source URLs point to official upstream repositories (OpenNMT, NVIDIA, Google, etc.) and the main source is pinned to a specific tag with a SHA256 checksum. The SKIP checksums on VCS dependencies are normal for -git-like sources. The `prepare()` function uses `git submodule` operations to redirect submodule URLs to local pre-fetched sources, avoiding unnecessary network fetches. The `build()` and package functions use standard cmake and Python wheel/installer workflows with no suspicious commands (no curl, wget, eval, base64, or data exfiltration). The sed commands relax a pinned pybind11 version and remove a non-standard RUNPATH, both innocent packaging adjustments. There is no trace of backdoors, obfuscated code, or unexpected remote access.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious indicators.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious indicators.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `python-ctranslate2-cuda` package. It contains only declarative metadata: package version, URLs, dependencies, and source references from the official OpenNMT/CTranslate2 repository and other well-known GitHub libraries. All VCS sources have `SKIP` checksums, which is normal practice for git sources. No code, scripts, or instructions are present in this file. There are no signs of malicious activity such as obfuscated code, unexpected network requests, or attempts to execute untrusted content.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no security concerns.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,732
  Completion Tokens: 2,067
  Total Tokens: 12,799
  Total Cost: $0.002968
  Execution Time: 73.24 seconds

Final Status: SAFE


No issues found.
