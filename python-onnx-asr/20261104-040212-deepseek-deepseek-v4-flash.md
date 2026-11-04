---
package: python-onnx-asr
pkgver: 0.12.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8810
completion_tokens: 3433
total_tokens: 12243
cost: 0.001426516
execution_time: 44.04
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-04T04:02:12Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata file with no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package with no security issues.
---

Materializing python-onnx-asr from local mirror...
Materialized python-onnx-asr
Analyzing python-onnx-asr AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable and array assignments at the top level. No command substitutions, function calls, eval, exec, or any other executable statements appear outside of the `build()`, `check()`, and `package()` function bodies. Since `makepkg --printsrcinfo` only sources the global scope and does not invoke those functions, there is no mechanism for arbitrary code execution at parse time. Standard packaging definitions (e.g., `pkgname`, `source`, `sha256sums`, dependency arrays) are all inert and safe to source.
</details>
<evidence>

</evidence>
<summary>No top-level code execution risks.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risks.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR .SRCINFO file containing package metadata for python-onnx-asr. It declares an upstream source from PyPI over HTTPS with a pinned SHA-256 checksum, lists standard build and runtime dependencies (Python packages from the official repositories), and includes no executable code, network requests, or obfuscated content. There is nothing indicative of a supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Declarative metadata file with no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata file with no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Python package. The source is fetched from pythonhosted with an explicit sha256 checksum, the build step uses `python -m build`, and the package step installs via `installer`. The check() function runs upstream tests with `HF_HUB_OFFLINE=1` to prevent network access and uses only hardcoded test code. There are no suspicious commands (curl, wget, eval, base64), no obfuscation, no unexpected filesystem modifications, and no exfiltration attempts. No evidence of supply-chain compromise exists in this file.
</details>
<evidence>
</evidence>
<summary>Standard AUR package with no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package with no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,810
  Completion Tokens: 3,433
  Total Tokens: 12,243
  Total Cost: $0.001427
  Execution Time: 44.04 seconds

Final Status: SAFE


No issues found.
