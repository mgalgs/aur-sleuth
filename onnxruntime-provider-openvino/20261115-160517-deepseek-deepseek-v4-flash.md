---
package: onnxruntime-provider-openvino
pkgbase: onnxruntime-split
pkgver: 1.29.0
pkgrel: 5
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 84862
completion_tokens: 6983
total_tokens: 91845
cost: 0.00889452
execution_time: 65.51
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-15T16:05:16Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: No malicious code detected; safe package build.
---

onnxruntime-provider-openvino is built from onnxruntime-split
Materializing onnxruntime-provider-openvino from local mirror...
Cloning https://aur.archlinux.org/onnxruntime-split.git...
Cloned onnxruntime-provider-openvino
Analyzing onnxruntime-provider-openvino AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level code that executes during `makepkg --printsrcinfo` sourcing is limited to variable assignments, function definitions, and three function calls: `_ortf_cuda_suffix`, `_ortf_cuda_header_major`, and `_ortf_pkgnames`. All are pure bash operations—string processing and reading a local system header file (`/opt/cuda/include/cuda.h`) via built-in `read`. There are no network requests, no execution of external fetched code, no base64/hex obfuscation, no eval of untrusted blobs, and no data exfiltration. The file is a legitimate, albeit complex, PKGBUILD for a split ONNX Runtime package. Sourcing this file is safe.
</details>
<evidence></evidence>
<summary>No top-level malicious code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; sourcing is safe.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, .SRCINFO...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is purely metadata describing package sources, dependencies, and split subpackages. It contains no executable code, no obfuscated commands, and no suspicious network destinations. All sources are fetched from official upstream GitHub repositories over HTTPS, and all source archives have pinned BLAKE2b checksums (none are skipped). The file adheres to standard AUR packaging conventions and presents no supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard metadata file, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a well-architected recipe for splitting ONNX Runtime into multiple packages. It follows supply-chain security best practices: the upstream git source is pinned to a specific commit, every dependency archive has a BLAKE2 checksum, and the build inputs are recorded for reproducibility. Network fetches are limited to the project's own upstream (microsoft/onnxruntime) and the known dependency repositories (github.com/abseil, google/re2, protocolbuffers, nlohmann/json, etc.) listed in the `source` array; no data is exfiltrated to an unexpected host. There is no obfuscated code, no `curl|bash` pattern, no backdoor, and no system modification beyond standard package installation paths. The one `eval` is used solely to construct valid Bash function names incorporating the CUDA major version and architecture suffix; the variables injected are tightly validated (numeric major version, space/hyphen-separated architecture list) and cannot execute arbitrary code. Throughout the file, careful checks verify that each library's `DT_NEEDED` entries map to declared dependencies, that the built packages match the recorded build inputs, and that no files from un-pinned sources are executed.
</details>
<evidence></evidence>
<summary>No malicious code detected; safe package build.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious code detected; safe package build.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 84,862
  Completion Tokens: 6,983
  Total Tokens: 91,845
  Total Cost: $0.008895
  Execution Time: 65.51 seconds

Final Status: SAFE


No issues found.
