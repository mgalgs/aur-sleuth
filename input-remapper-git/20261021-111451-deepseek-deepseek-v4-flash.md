---
package: input-remapper-git
pkgver: 2.2.1.r16.g54b7784b
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7604
completion_tokens: 3203
total_tokens: 10807
cost: 0.001274910
execution_time: 64.47
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-21T11:14:51Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS package, no injected malice.
---

Materializing input-remapper-git from local mirror...
Materialized input-remapper-git
Analyzing input-remapper-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments and function definitions (`pkgver()` and `package()`). No command substitutions, external network calls, or dangerous operations are present in the global scope. The `source` array and `sha256sums` are merely defined as strings and do not execute anything during `makepkg --printsrcinfo`. All potentially active code is inside functions that are not sourced during this step, so there is no risk of malicious execution.
</details>
<evidence></evidence>
<summary>No dangerous top-level code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code found.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR metadata file. It declares the package name, version, dependencies, and upstream source URL (a git repository). No executable code, network requests, or suspicious operations are present. The sha256sums field is set to SKIP, which is normal for VCS sources. There is no evidence of malicious content or supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for input-remapper-git is a standard VCS package that fetches source from the project's official GitHub repository. It does not contain any network requests, obfuscated code, unusual file operations, or potentially dangerous commands like eval, curl, wget, or base64. The only build step runs `python3 -m install --root $pkgdir`, which is likely a shorthand for `python3 -m pip install` and executes code from the upstream source, not from an external or unexpected origin. sha256sums is set to 'SKIP', which is expected for VCS sources. There is no evidence of injected malicious code, data exfiltration, or backdoors. The file follows standard AUR packaging practices for a git-based package.
</details>
<evidence>
</evidence>
<summary>Standard AUR VCS package, no injected malice.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS package, no injected malice.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,604
  Completion Tokens: 3,203
  Total Tokens: 10,807
  Total Cost: $0.001275
  Execution Time: 64.47 seconds

Final Status: SAFE


No issues found.
