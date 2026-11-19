---
package: butterflypack-rocm
pkgver: 5.0.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 11885
completion_tokens: 2643
total_tokens: 14528
cost: 0.00154539
execution_time: 15.16
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-19T20:11:57Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard declarative metadata, no security concerns.
  - file: magma-offset-precisions.patch
    status: safe
    summary: Legitimate Magma library precision patch; no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no security concerns found.
---

Materializing butterflypack-rocm from local mirror...
Materialized butterflypack-rocm
Analyzing butterflypack-rocm AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable definitions (e.g., pkgname, source, sha256sums) and function definitions (prepare, build, package). There are no command substitutions, backticks, or any executable code in the global/top-level scope. The source array points to the upstream GitHub release and a patch file, both with hardcoded checksums. Since `makepkg --printsrcinfo` only sources the top-level scope, no unsafe operations occur during this step.
</details>
<evidence></evidence>
<summary>No dangerous code executed at top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code executed at top-level scope.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, magma-offset-precisions.patch...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a declarative metadata file used by the Arch User Repository. It contains package name, version, dependencies, source URLs, and checksums. The sources are pulled from the official upstream GitHub repository (`https://github.com/liuyangzhuan/ButterflyPACK`) and a local patch file. All checksums are provided and non-SKIP. No executable code, network commands, obfuscation, or unusual operations are present. The file adheres to standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard declarative metadata, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, magma-offset-precisions.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard declarative metadata, no security concerns.
LLM auditresponse for magma-offset-precisions.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a patch file for the Magma library (matrix algebra on GPU and multicore architectures). It adds conditional compilation branches for different data types (double, magmaDoubleComplex, magmaFloatComplex, float) using preprocessor conditions on the `DAT` macro. The code consists entirely of pointer arithmetic functions that compute offsets into arrays based on linear algebra indexing conventions. There is no network activity, obfuscation, file system manipulation, or any behavior outside standard library development. This is a routine supply patch for adding precision variants to existing functions.
</details>
<evidence>
</evidence>
<summary>Legitimate Magma library precision patch; no malicious code.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed magma-offset-precisions.patch. Status: SAFE -- Legitimate Magma library precision patch; no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard packaging practices. All source tarballs and patches are fetched from the project's official GitHub repository under a pinned tag, and their integrity is verified via SHA-256 checksums. The `prepare()` function applies minor patching to adjust installation paths and correct a naming inconsistency (`sizeof_float` → `sizeof_real`); these are normal upstream portability fixes, not malicious modifications. The `build()` function invokes CMake with libraries from system and ROCm directories, and `package()` installs built artifacts and compiles Python bytecode. There are no network operations outside the declared source downloads, no obfuscated code, no execution of unchecked content, and no exfiltration commands. The use of `sed` and `grep` in `prepare()` is limited to the unpacked source tree and serves only to adapt the build to the Arch Linux environment. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD; no security concerns found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no security concerns found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,885
  Completion Tokens: 2,643
  Total Tokens: 14,528
  Total Cost: $0.001545
  Execution Time: 15.16 seconds

Final Status: SAFE


No issues found.
