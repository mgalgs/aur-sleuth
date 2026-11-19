---
package: elevenlabs-web-cli-bin
pkgver: 0.1.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7554
completion_tokens: 874
total_tokens: 8428
cost: 0.000846482
execution_time: 26.49
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-29T19:01:52Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums and no malicious code.
---

Materializing elevenlabs-web-cli-bin from local mirror...
Materialized elevenlabs-web-cli-bin
Analyzing elevenlabs-web-cli-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments (package metadata, source URLs, checksums) and a `package()` function definition. There are no top-level command substitutions, function calls, or dangerous operations (e.g., `eval`, `curl`, `wget`, `base64`). Running `makepkg --printsrcinfo` will only source these definitions; no code outside the `package()` function is executed. The file is consistent with standard AUR packaging practices for a prebuilt binary package.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to source.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR metadata file. It declares package information, two source archives (one for aarch64 and one for x86_64) with pinned versions and SHA256 checksums. All sources point to the official GitHub releases of the upstream project (`https://github.com/Microck/elevenlabs-web-cli/releases/download/...`). There are no dangerous commands, obfuscated code, unexpected network destinations, or system modifications encoded in this file. It is a straightforward, conventional packaging file with no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It downloads pre-built binaries from the project's official GitHub releases page, verifies them with hardcoded SHA256 checksums, and installs only the binary and license file. There is no obfuscated code, no unexpected network requests, and no dangerous commands (eval, curl|bash, etc.). The only dependencies are `ca-certificates` (normal for HTTPS downloads). No evidence of supply-chain attack or malicious behavior was found.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksums and no malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums and no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,554
  Completion Tokens: 874
  Total Tokens: 8,428
  Total Cost: $0.000846
  Execution Time: 26.49 seconds

Final Status: SAFE


No issues found.
