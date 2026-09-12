---
package: openwhispr-vulkan
pkgver: 1.10.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 9951
completion_tokens: 1453
total_tokens: 11404
cost: 0.00084779058
execution_time: 83.1
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-12T15:19:02Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for Vulkan-accelerated dictation app.
---

Materializing openwhispr-vulkan from local mirror...
Materialized openwhispr-vulkan
Analyzing openwhispr-vulkan AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable assignments and array definitions. All potentially dangerous commands (rm, chmod, exit, etc.) are confined inside the `build()` and `package()` functions, which are **not** executed during `makepkg --printsrcinfo`. No global-level command substitutions, backticks, eval, or other code execution constructs are present. Sourcing this file to obtain metadata is therefore safe.
</details>
<evidence></evidence>
<summary>No malicious global code; only function bodies contain operations.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious global code; only function bodies contain operations.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR metadata file containing package name, version, dependencies, and source URLs. Both source URLs point to official releases on the project's GitHub repository, and both include SHA-256 checksums for integrity verification. There is no suspicious content, network requests, obfuscated code, or unexpected commands. The `!strip` and `!debug` options are unconventional but not malicious; they are a packaging choice. The file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with pinned checksums; no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD downloads the official OpenWhispr prebuilt binary from GitHub Releases and a source tarball for the Whisper.cpp Vulkan backend. Both sources are integrity-checked with SHA-256 sums. The build process compiles the Vulkan-aware whisper-server and replaces the CPU version in the packaged app. The launcher script uses `--no-sandbox`, which is a runtime security consideration (common for Electron apps on Linux) but not a supply-chain attack. No obfuscated code, unexpected network calls, data exfiltration, or backdoors are present. Everything aligns with standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for Vulkan-accelerated dictation app.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for Vulkan-accelerated dictation app.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,951
  Completion Tokens: 1,453
  Total Tokens: 11,404
  Total Cost: $0.000848
  Execution Time: 83.10 seconds

Final Status: SAFE


No issues found.
