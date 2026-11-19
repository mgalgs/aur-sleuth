---
package: onnxruntime-provider-tensorrt-cuda13
pkgbase: onnxruntime-split
pkgver: 1.29.0
pkgrel: 5
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 84792
completion_tokens: 2856
total_tokens: 87648
cost: 0.00814536
execution_time: 60.57
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-15T16:03:43Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard complex PKGBUILD; no malicious code found.
---

onnxruntime-provider-tensorrt-cuda13 is built from onnxruntime-split
Materializing onnxruntime-provider-tensorrt-cuda13 from local mirror...
Cloning https://aur.archlinux.org/onnxruntime-split.git...
Cloned onnxruntime-provider-tensorrt-cuda13
Analyzing onnxruntime-provider-tensorrt-cuda13 AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global scope of this PKGBUILD executes only pure‑bash functions and reads a single local file (/opt/cuda/include/cuda.h) to determine the CUDA major version. It performs no network requests, no command execution beyond bash built‑ins, and no writes to the filesystem. All command substitutions call only the locally defined helpers (_ortf_cuda_suffix, _ortf_cuda_header_major, _ortf_pkgnames) which are plain string processing. No obfuscation, base‑64, eval, curl, wget, or other dangerous construct appears at the top level. The source array, function bodies, and install logic are never reached by `makepkg --printsrcinfo`, which merely parses metadata. There is no risk of malicious code executing during the sourcing step.
</details>
<evidence></evidence>
<summary>No malicious top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; sourcing is safe.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.SRCINFO` metadata file for an AUR package. It declares package metadata, dependencies, source URLs, and checksums. All source URLs point to well-known upstream repositories (github.com/microsoft, abseil, google, pytorch, NVIDIA, etc.) with specific tags or commit hashes. Checksums (b2sums) are provided for all source archives. There are no executable instructions, no obfuscated code, no network exfiltration, no backdoors, and no deviation from normal AUR packaging practices. The file is purely declarative and contains no malicious content.
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
This PKGBUILD is a comprehensive, well-documented build recipe for ONNX Runtime with multiple execution providers. All source URLs point to official upstream repositories (GitHub/microsoft, other trusted projects). Checksums are provided for all non-git sources. The git source is pinned to a specific commit. No suspicious network requests, obfuscated code, or commands like `curl|bash`/`wget` are present. The `eval` statements are used for dynamic package function naming based on safe internal variables (CUDA major/architecture), not user-controlled input. All file operations are restricted to the build directory and package installation prefix. The library dependency checks and RUNPATH modifications are standard build practices for complex packages with external dependencies. There is no evidence of data exfiltration, backdoors, or any behavior outside the package's stated purpose.
</details>
<evidence></evidence>
<summary>Standard complex PKGBUILD; no malicious code found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard complex PKGBUILD; no malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 84,792
  Completion Tokens: 2,856
  Total Tokens: 87,648
  Total Cost: $0.008145
  Execution Time: 60.57 seconds

Final Status: SAFE


No issues found.
