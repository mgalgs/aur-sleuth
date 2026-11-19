---
package: leshade-git
pkgver: 2.5.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7549
completion_tokens: 2576
total_tokens: 10125
cost: 0.00352375
execution_time: 30.18
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-07T11:14:40Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
---

Materializing leshade-git from local mirror...
Materialized leshade-git
Analyzing leshade-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and function definitions at the top level. There are no command substitutions, no dangerous shell constructs like `eval` or `curl|bash`, no obfuscated code, and no network requests outside of normal source array declarations. The `source` array uses a standard `git+https://` URL for the package's own upstream repository. Running `makepkg --printsrcinfo` will only source the top-level code, which is entirely benign and consistent with normal AUR packaging practices. No unsafe behavior can execute during this step.
</details>
<evidence></evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>The PKGBUILD is a standard VCS package that clones the official LeShade repository from GitHub, builds it with meson, and installs the output. No obfuscated code, unexpected network requests, or exfiltration of data is present. The source URL points to the project's own GitHub page, and all build/package steps are typical for a meson-based application. There are no dangerous commands such as `eval`, `curl`, or `wget`. The `sha256sums` are set to SKIP, which is normal for VCS sources and explicitly stated to not be a safety concern.</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no security issues.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR metadata file containing package metadata, source location, and dependencies. There are no executable instructions, network requests, obfuscated code, or dangerous operations. The `sha256sums = SKIP` is expected for VCS (git) sources and is not a security concern. All dependencies (`python`, `pyside6`, `wine`, `winetricks`, etc.) are appropriate for the stated purpose of a ReShade manager for Linux. No evidence of supply-chain attack or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,549
  Completion Tokens: 2,576
  Total Tokens: 10,125
  Total Cost: $0.003524
  Execution Time: 30.18 seconds

Final Status: SAFE


No issues found.
