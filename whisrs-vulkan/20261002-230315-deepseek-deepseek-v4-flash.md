---
package: whisrs-vulkan
pkgbase: whisrs
pkgver: 0.1.28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9891
completion_tokens: 1495
total_tokens: 11386
cost: 0.000360668
execution_time: 50.23
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-02T23:03:15Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard Rust PKGBUILD with pinned sources; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata with pinned checksums; no malicious behavior found.
---

whisrs-vulkan is built from whisrs
Materializing whisrs-vulkan from local mirror...
Materialized whisrs-vulkan
Analyzing whisrs-vulkan AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD only defines variables, arrays, and shell functions at the top level. Running `makepkg --printsrcinfo` sources the file, which executes global assignments and function definitions, but none of the functions (`prepare`, `build`, `check`, `_package`, `package_*`) are invoked during this step. There is no top-level command substitution, no `eval`, no `curl`, no `wget`, no network access, and no file modification outside normal PKGBUILD parsing. The `source=` array references the upstream GitHub tarball and a patch, both with pinned SHA-256 checksums. No malicious top-level behavior is present.
</details>
<evidence></evidence>
<summary>No top-level code executes during printsrcinfo; only variable/function definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code executes during printsrcinfo; only variable/function definitions.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, .SRCINFO...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a conventional Rust/cargo packaging script for the whisrs voice-to-text application. It downloads a pinned upstream tag tarball and a pinned patch from GitHub's patch-diff service, both with sha256 checksums. The `prepare()` and `build()` functions only apply the patch, run `cargo fetch --locked`, and compile with `cargo build --frozen --release` for the CPU, CUDA, and Vulkan variants.

The `_cuda_env()` function sources `/etc/profile.d/cuda.sh` and sets standard CUDA environment variables (`CUDA_PATH`, `PATH`, and optionally `CMAKE_CUDA_ARCHITECTURES`). This is routine build-environment setup for NVIDIA CUDA compilation, not data exfiltration or code execution from an untrusted source. Package installation copies binaries, man pages, a udev rule, a systemd user service, and a license into `$pkgdir`, all of which are normal packaging operations. There are no suspicious network requests, no obfuscated code, no eval/base64 tricks, and no unexpected system modifications.
</details>
<evidence></evidence>
<summary>Standard Rust PKGBUILD with pinned sources; no malicious behavior found.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust PKGBUILD with pinned sources; no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `whisrs-vulkan` package. It declares package metadata, dependencies, and two source tarballs with pinned SHA-256 checksums. The sources point to the project's own GitHub repository and a patch from the same project's pull request diff host, which is consistent with normal packaging practice. There is no evidence of malicious code, network exfiltration, obfuscation, or dangerous build-time behavior. The CUDA and Vulkan variants are declared as separate packages with appropriate dependencies and conflicts, which is expected for this type of multi-variant Rust package.
</details>
<evidence>
</evidence>
<summary>Standard AUR package metadata with pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata with pinned checksums; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,891
  Completion Tokens: 1,495
  Total Tokens: 11,386
  Total Cost: $0.000361
  Execution Time: 50.23 seconds

Final Status: SAFE


No issues found.
