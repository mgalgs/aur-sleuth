---
package: onnxruntime-core
pkgbase: onnxruntime-split
pkgver: 1.29.0
pkgrel: 5
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 84771
completion_tokens: 3024
total_tokens: 87795
cost: 0.00817371
execution_time: 52.91
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-15T16:06:39Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Legitimate, well-audited PKGBUILD; no security issues found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with no malicious content.
---

onnxruntime-core is built from onnxruntime-split
Materializing onnxruntime-core from local mirror...
Cloning https://aur.archlinux.org/onnxruntime-split.git...
Cloned onnxruntime-core
Analyzing onnxruntime-core AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level code that runs when `makepkg --printsrcinfo` sources this PKGBUILD consists only of variable assignments, function definitions, and calls to helper functions that perform pure string manipulation or read a system header file (`/opt/cuda/include/cuda.h`) to determine the CUDA major version. No external commands (curl, wget, eval, base64, etc.) are executed at global scope. All functions that could perform network access or file downloads are defined but only invoked inside `prepare()`, `build()`, or `package()`, which are not executed during `--printsrcinfo`. The package follows standard AUR packaging practices and contains no obfuscated or suspicious code in the global scope.
</details>
<evidence></evidence>
<summary>No malicious code executes during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during sourcing.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is an exceptionally well-documented, carefully crafted packaging recipe for ONNX Runtime. It does not contain any obfuscated code, backdoors, data exfiltration mechanisms, or unexpected network requests. All source archives are pinned with BLAKE2b checksums, and the git source is checked against a hardcoded commit (`_ortf_commit`) in `prepare()` to ensure the upstream tag hasn't moved. Build inputs are validated and recorded to `ortf.conf`, and package functions verify their names match the recorded inputs — preventing environment-mismatch attacks. Network destinations are all the official Microsoft ONNX Runtime repository on GitHub or standard upstream archive hosts (GitHub releases of pinned dependency versions). There is no `eval`, `base64`, `curl|bash`, or any concealed code execution. The `patchelf` command sets a RUNPATH for finding TensorRT libraries, which is standard practice for packages that link vendor libraries outside `/usr/lib`. The file exemplifies robust, supply-chain-aware packaging.
</details>
<evidence></evidence>
<summary>Legitimate, well-audited PKGBUILD; no security issues found.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate, well-audited PKGBUILD; no security issues found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR .SRCINFO metadata file describing the `onnxruntime-split` package. It contains only declarative key-value pairs: package names, version, license, dependencies, source URLs, and checksums. There is no executable code, no obfuscation, no embedded scripts, and no commands like `eval`, `curl`, or `wget` that could perform dangerous actions. All source URLs point to well-known, official GitHub repositories (Microsoft, Google, NVIDIA, etc.) using pinned tags or commits. Checksums (b2sums) are provided for all tarball sources. The only potential minor hygiene note is that some dependencies are fetched via mutable tags rather than pinned commits, but this is a common practice in AUR packages and not indicative of malice. No supply-chain attack indicators, unexpected external connections, or attempts to modify system files are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 84,771
  Completion Tokens: 3,024
  Total Tokens: 87,795
  Total Cost: $0.008174
  Execution Time: 52.91 seconds

Final Status: SAFE


No issues found.
