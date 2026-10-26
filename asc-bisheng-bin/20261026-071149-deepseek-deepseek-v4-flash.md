---
package: asc-bisheng-bin
pkgver: 9.2.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10250
completion_tokens: 1672
total_tokens: 11922
cost: 0.001237054
execution_time: 39.62
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-26T07:11:48Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
---

Materializing asc-bisheng-bin from local mirror...
Materialized asc-bisheng-bin
Analyzing asc-bisheng-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable definitions, array declarations, and a function definition (`_extract_run`) at the top level. No commands are executed at global scope — there are no top-level command substitutions, backticks, `eval`, `curl`, `wget`, or other potentially dangerous operations. The function `_extract_run` is defined but never called during sourcing; it is only invoked later inside `prepare()`, which is out of scope for this gate. All source URLs are plain strings and are not fetched during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file. It defines package metadata, dependencies, architecture-specific sources with pinned SHA256 checksums, and build options. The download URLs point to Huawei's official Ascend repository (obs.cn-east-2.myhuaweicloud.com), which is the legitimate upstream source for the Bisheng compiler. There is no executable code, no obfuscation, no unexpected network requests, and no deviation from normal packaging practices. The presence of checksums (not SKIP) provides integrity verification. No security issues are present.</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security concerns.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a pre‑binary package. All source downloads point to the official Huawei CANN repository (`ascend-repo.obs.cn-east-2.myhuaweicloud.com`) and are pinned with SHA‑256 checksums. The `_extract_run` helper uses `bash --noexec --extract=` which is the conventional safe method for unpacking self‑extracting installers without executing their embedded payloads. File operations in `package()` are limited to copying, symlink creation, and permission normalization — all expected for installing a closed‑source compiler toolchain. There are no dangerous commands (`eval`, `curl|bash`, base64‑decoded blobs), no obfuscated code, and no exfiltration of system data. The package does not fetch mutable content at build time beyond the pinned archive, so the supply‑chain risk is minimal and consistent with a trustworthy upstream.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,250
  Completion Tokens: 1,672
  Total Tokens: 11,922
  Total Cost: $0.001237
  Execution Time: 39.62 seconds

Final Status: SAFE


No issues found.
