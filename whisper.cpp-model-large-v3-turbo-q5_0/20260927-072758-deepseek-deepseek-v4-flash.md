---
package: whisper.cpp-model-large-v3-turbo-q5_0
pkgver: 4
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7746
completion_tokens: 1407
total_tokens: 9153
cost: 0.0004952640
execution_time: 40.6
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-27T07:27:57Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard model package with pinned checksum and safe wrapper.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with pinned checksum, no risk.
---

Materializing whisper.cpp-model-large-v3-turbo-q5_0 from local mirror...
Materialized whisper.cpp-model-large-v3-turbo-q5_0
Analyzing whisper.cpp-model-large-v3-turbo-q5_0 AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD top-level scope. The top-level code only defines variables, a function, the `source` array with a command substitution that calls `__model_url`, and the `sha256sums` array. `__model_url` only performs string operations, `echo`, and a benign `grep` check to select a Hugging Face URL. There is no network access, no execution of downloaded content, no obfuscated code, no file system modification, and no data exfiltration at parse time. The `package()` function is not executed during `--printsrcinfo`, so its contents are out of scope for this gate. No genuinely malicious behavior is present in the top-level execution path.
</details>
<evidence></evidence>
<summary>Top-level PKGBUILD evaluation only constructs URLs and arrays; no malicious code executes.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD evaluation only constructs URLs and arrays; no malicious code executes.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads a pre-trained model file from an official Hugging Face repository (ggerganov/whisper.cpp) using a specific model variant (large-v3-turbo-q5_0). The SHA-256 checksum is pinned, ensuring integrity. The package installs the model file to `/usr/share/` and creates a small wrapper script that invokes `/usr/bin/whisper.cpp` with the model path. There are no suspicious network requests, no obfuscated code, no execution of untrusted downloaded content at build time, and no manipulation of system files outside the package's scope. The wrapper script is a simple shell command that passes arguments safely. This is standard AUR packaging for model files.
</details>
<evidence></evidence>
<summary>Standard model package with pinned checksum and safe wrapper.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard model package with pinned checksum and safe wrapper.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard AUR metadata. It declares a single source downloaded from Hugging Face (the official upstream for whisper.cpp models) with a hardcoded SHA256 checksum. There are no executable commands, no obfuscated content, no unexpected network destinations, and no system modification operations. The package is a model file (binary blob) and the .SRCINFO simply describes how to fetch and verify it. No supply-chain attack indicators present.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO with pinned checksum, no risk.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with pinned checksum, no risk.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,746
  Completion Tokens: 1,407
  Total Tokens: 9,153
  Total Cost: $0.000495
  Execution Time: 40.60 seconds

Final Status: SAFE


No issues found.
