---
package: onnxruntime-provider-cuda13-rtx
pkgbase: onnxruntime-split
pkgver: 1.29.0
pkgrel: 5
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 84792
completion_tokens: 5232
total_tokens: 90024
cost: 0.00857304
execution_time: 60.43
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-15T16:06:43Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Clean metadata file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: No malicious code; well-documented, standard AUR package.
---

onnxruntime-provider-cuda13-rtx is built from onnxruntime-split
Materializing onnxruntime-provider-cuda13-rtx from local mirror...
Cloning https://aur.archlinux.org/onnxruntime-split.git...
Cloned onnxruntime-provider-cuda13-rtx
Analyzing onnxruntime-provider-cuda13-rtx AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level code executed when `makepkg --printsrcinfo` sources this PKGBUILD consists only of variable assignments, array definitions, function definitions (which are not executed), and three function calls: `_ortf_cuda_suffix`, `_ortf_cuda_header_major`, and `_ortf_pkgnames`.  
- `_ortf_cuda_suffix` performs pure string processing on the `ORTF_CUDA_ARCHS` environment variable (or its default).  
- `_ortf_cuda_header_major` reads `/opt/cuda/include/cuda.h` (if it exists) to extract the CUDA major version; this is a read-only file access that yields only a number.  
- `_ortf_pkgnames` combines previously computed values into package name strings; no side effects.  

No network operations, no downloads, no obfuscated code, no system modifications, and no execution of fetched content occur at the global scope. The `eval` statements that define the per-provider package functions only create function names with controlled variables; the function bodies are not executed during parsing.  
All dangerous-looking operations (build, prepare, package, etc.) are confined to functions that are **not** called by `makepkg --printsrcinfo`.  

Therefore, running this command is safe.
</details>
<evidence></evidence>
<summary>No malicious code at top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code at top-level scope.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR package metadata file. All sources are fetched from official GitHub repositories (microsoft, abseil, google, eigen-mirror, NVIDIA, etc.) using pinned tags or commit hashes. Checksums (b2sums) are provided for all source archives, confirming integrity verification. No suspicious URLs, obfuscated commands, or unexpected network destinations are present. The file does not execute any code or perform any system modifications; it only declares package metadata. No evidence of malicious behavior is found.
</details>
<evidence>
</evidence>
<summary>Clean metadata file, no security concerns.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Clean metadata file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is an exceptionally well-documented, legitimate packaging script for ONNX Runtime. No evidence of supply-chain attack or malicious behavior was found.

Key observations:
- All source URLs point to the project's own official GitHub repositories (microsoft/onnxruntime, abseil-cpp, google/re2, etc.) and are pinned with both a tag and a commit hash check in `prepare()`. The git source is verified against a fixed commit (`_ortf_commit`).
- All non-git sources have `b2sums` provided (no `SKIP`). The dependency archives are checked against the SHA-1 listed in ONNX Runtime's `cmake/deps.txt` during `prepare()`.
- No obfuscated code, base64, eval of user input, `curl|bash`, or unexpected network requests. Network access is used only to fetch declared sources in the `source` array; the build itself uses a local mirror and has no network dependency.
- The `eval` used to define package functions for CUDA/TensorRT packages is a necessary technique to embed variable values into function names (the CUDA major and architecture suffix). The generated code is fully transparent and documented.
- `prepare()` refuses `-march=native` and verifies all inputs. `build()` uses standard CMake/Ninja. The only runtime path manipulation is setting the TensorRT library's `RUNPATH` for library loading purposes, which is a legitimate packaging requirement.
- No exfiltration, backdoors, credential theft, or system modification outside the package's own install destinations (`$pkgdir`).
- Configuration files and system settings are not modified; only the package's own libraries, headers, and Python module are installed.

The file is a model of thorough, safe packaging with many validity checks (NEEDED entry verification, version bounds, soname consistency, etc.). All behavior is consistent with the stated purpose of building and packaging ONNX Runtime.
</details>
<evidence></evidence>
<summary>No malicious code; well-documented, standard AUR package.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious code; well-documented, standard AUR package.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 84,792
  Completion Tokens: 5,232
  Total Tokens: 90,024
  Total Cost: $0.008573
  Execution Time: 60.43 seconds

Final Status: SAFE


No issues found.
