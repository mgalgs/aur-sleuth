---
package: tomori-git
pkgver: 0.1.0.r8.g22a0cb5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7677
completion_tokens: 1502
total_tokens: 9179
cost: 0.000971971
execution_time: 34.62
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-08T12:08:21Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior detected.
---

Materializing tomori-git from local mirror...
Materialized tomori-git
Analyzing tomori-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable assignments (pkgname, pkgver, pkgrel, arch, depends, source, etc.). No command substitutions, evals, network requests, or other dangerous operations are present in the global scope. The functions pkgver(), build(), and package() are defined but are not executed during `makepkg --printsrcinfo`, as that command only sources the file and does not invoke those functions. Therefore, running the command poses no security risk.
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
The `.SRCINFO` file is a standard metadata descriptor for an Arch User Repository (AUR) package. It defines the package `tomori-git`, a Minecraft launcher written in Go. The source points to the project's official GitHub repository (`https://github.com/UruhaLushia/tomori.git`). The `sha256sums` is set to `SKIP`, which is normal and required for VCS (git) sources. No dangerous commands, obfuscated content, or suspicious network destinations are present. The file contains only routine package declarations and does not exhibit any signs of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package file for a VCS package. It clones the upstream repository from its official GitHub URL and builds it using a custom Go build tool (`mygo`). This tool is likely part of the upstream project's build system, not an injected backdoor. There are no suspicious network requests, obfuscated code, or dangerous commands. The `sha256sums` is `SKIP`, which is normal for VCS sources. No evidence of supply-chain attack or exfiltration is present.
</details>
<evidence/>
<summary>Standard AUR PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,677
  Completion Tokens: 1,502
  Total Tokens: 9,179
  Total Cost: $0.000972
  Execution Time: 34.62 seconds

Final Status: SAFE


No issues found.
