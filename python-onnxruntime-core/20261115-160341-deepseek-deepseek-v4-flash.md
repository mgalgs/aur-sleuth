---
package: python-onnxruntime-core
pkgbase: onnxruntime-split
pkgver: 1.29.0
pkgrel: 5
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 84853
completion_tokens: 5872
total_tokens: 90725
cost: 0.00869373
execution_time: 57.07
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-15T16:03:41Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata; no security issues.
  - file: PKGBUILD
    status: safe
    summary: No evidence of malicious behavior found.
---

python-onnxruntime-core is built from onnxruntime-split
Materializing python-onnxruntime-core from local mirror...
Cloning https://aur.archlinux.org/onnxruntime-split.git...
Cloned python-onnxruntime-core
Analyzing python-onnxruntime-core AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only function definitions, variable assignments, and conditional array appends at the top level. The command substitutions that execute when it is sourced are limited to pure bash string processing (`_ortf_cuda_suffix`, `_ortf_pkgnames`) and reading a local header file (`_ortf_cuda_header_major`), which is a normal packaging step. No network requests, dangerous commands (`curl`, `wget`, `eval` on untrusted input, base64 decode, pipe to shell), or file modifications occur during sourcing. The `eval` used to define provider package functions is controlled by sanitized values (a numeric CUDA major and a validated architecture suffix) and defines a function rather than executing arbitrary code. No code in `pkgver()`, `prepare()`, `build()`, or `package_*()` is executed by `makepkg --printsrcinfo`. Overall, sourcing this PKGBUILD is not dangerous.
</details>
<evidence></evidence>
<summary>No malicious code runs at source time</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code runs at source time
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard Arch Linux package metadata file describing the `onnxruntime-split` package group. It contains no executable code, obfuscated strings, or suspicious network destinations. All source URLs point to legitimate GitHub repositories belonging to the project itself or well-known dependencies (Google, Microsoft, NVIDIA, etc.). Checksums (b2sums) are provided for all sources, indicating verification is possible. There is no evidence of exfiltration, backdoors, or malicious injection. The file adheres to normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard package metadata; no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a well-documented, carefully crafted build definition for ONNX Runtime. It pins the upstream source to a specific commit (2e2543fbe9fae542f921d47a72d21d5a4ef0b710) and provides actual BLAKE2b checksums for all downloaded dependency archives, which are fetched only from standard GitHub repositories of the respective projects (Microsoft, Google, NVIDIA, etc.). There are no `git pull`, `git fetch`, `curl`, `wget`, or similar commands that fetch unverified content at build time; `prepare()` runs only `git clean` and sets up a local dependency mirror from the pre-downloaded, checksummed archives. The two `eval` statements dynamically create package function names based on the CUDA major version and architecture suffix — a common pattern for split packages — and the function bodies are hardcoded, not constructed from external input. No obfuscation, data exfiltration, backdoors, reverse shells, credential theft, or unexpected system modifications are present. The file is consistent with legitimate, high-quality AUR packaging.
</details>
<evidence>

</evidence>
<summary>No evidence of malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No evidence of malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 84,853
  Completion Tokens: 5,872
  Total Tokens: 90,725
  Total Cost: $0.008694
  Execution Time: 57.07 seconds

Final Status: SAFE


No issues found.
