---
package: sherpa-onnx-piper-voice-ru-dmitri
pkgver: 20251202
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9155
completion_tokens: 1161
total_tokens: 10316
cost: 0.001044407
execution_time: 28.93
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-13T23:07:36Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO; no malicious code.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard voice model package with pinned checksum; no malicious indicators.
---

Materializing sherpa-onnx-piper-voice-ru-dmitri from local mirror...
Materialized sherpa-onnx-piper-voice-ru-dmitri
Analyzing sherpa-onnx-piper-voice-ru-dmitri AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions (pkgname, pkgver, etc.) and a single function `package()`. There are no top-level command substitutions, no calls to `eval`, `curl`, `wget`, or any other network or execution commands outside of a function scope. The `source` array and `sha256sums` are simple variable assignments; they do not trigger downloads or execution during `makepkg --printsrcinfo`. All code that could potentially perform dangerous actions is confined to the `package()` function, which is not executed by the `--printsrcinfo` command. Running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code found; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code found; safe to parse.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO file for an AUR package providing a pre-built voice model for sherpa-onnx. The source is fetched from the official GitHub releases page of the k2-fsa/sherpa-onnx project, which is the legitimate upstream. A valid SHA-256 checksum is provided, so the source is pinned. No dangerous commands, obfuscated code, or network requests to unexpected hosts are present. The file contains only metadata about the package. It poses no security threat.
</details>
<evidence>

</evidence>
<summary>Standard .SRCINFO; no malicious code.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO; no malicious code.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used in AUR package maintenance. It ignores all files by default and then explicitly un-ignores only the essential packaging files (`PKGBUILD`, `*.install`, `.SRCINFO`). No malicious or suspicious patterns are present. This is a routine configuration file and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard voice model package for the sherpa-onnx TTS engine. It downloads a tarball from the official k2-fsa/sherpa-onnx GitHub releases using a pinned SHA-256 checksum. The package() function only copies model files and a license into the package directory. There are no suspicious network requests, obfuscated code, dangerous commands (eval, curl, wget, base64, git pull/reset), or any operations outside the scope of packaging an upstream voice model. No evidence of malicious or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Standard voice model package with pinned checksum; no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard voice model package with pinned checksum; no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,155
  Completion Tokens: 1,161
  Total Tokens: 10,316
  Total Cost: $0.001044
  Execution Time: 28.93 seconds

Final Status: SAFE


No issues found.
