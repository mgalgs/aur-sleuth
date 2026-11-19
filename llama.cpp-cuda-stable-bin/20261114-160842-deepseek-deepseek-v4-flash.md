---
package: llama.cpp-cuda-stable-bin
pkgver: 1.0.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 8129
completion_tokens: 2051
total_tokens: 10180
cost: 0.00110079
execution_time: 11.84
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-14T16:08:42Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard binary package from official upstream with pinned checksum.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no malicious content.
---

Materializing llama.cpp-cuda-stable-bin from local mirror...
Materialized llama.cpp-cuda-stable-bin
Analyzing llama.cpp-cuda-stable-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only static variable assignments with no command substitutions, backticks, or other executable code. The source array points to an official GitHub releases URL and includes a pinned sha256 checksum. Sourcing this PKGBUILD for `makepkg --printsrcinfo` will not trigger any downloads, network requests, or execution of untrusted commands. No malicious or suspicious content is present in the top-level scope.
</details>
<evidence>
</evidence>
<summary>No malicious code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for distributing prebuilt binaries. It downloads a tarball from the official upstream GitHub releases (ggml-org/llama.cpp) with a pinned SHA256 checksum, ensuring integrity. The `package()` function only performs installation and symlink creation using standard shell commands (`install`, `cp`, `rm`, `ln`, `test`). There are no network requests beyond the declared source, no obfuscated code, no execution of untrusted scripts, and no operations that exfiltrate data or modify system files outside the package scope. The use of `compgen` is a simple glob check to verify the presence of CUDA libraries. The package is consistent with the maintainer's stated purpose and contains no supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard binary package from official upstream with pinned checksum.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package from official upstream with pinned checksum.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR metadata file describing the package llama.cpp-cuda-stable-bin. It declares the upstream URL, dependencies, and a source tarball with a pinned SHA256 checksum. The source is downloaded from the official GitHub releases of the llama.cpp project. There are no embedded scripts, obfuscated code, unexpected network requests, or any dangerous commands. The file conforms to normal packaging practices and does not contain any evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file with no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,129
  Completion Tokens: 2,051
  Total Tokens: 10,180
  Total Cost: $0.001101
  Execution Time: 11.84 seconds

Final Status: SAFE


No issues found.
