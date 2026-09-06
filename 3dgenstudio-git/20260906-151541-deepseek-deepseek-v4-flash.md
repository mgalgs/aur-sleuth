---
package: 3dgenstudio-git
pkgver: re2350b8
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 9297
completion_tokens: 2766
total_tokens: 12063
cost: 0.00118958238
execution_time: 39.14
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-06T15:15:40Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO for VCS package, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with benign launcher script.
---

Materializing 3dgenstudio-git from local mirror...
Materialized 3dgenstudio-git
Analyzing 3dgenstudio-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains top-level variable definitions and function declarations (pkgver, build, package). No code in the global scope executes commands, network requests, or data exfiltration. The base64 decoding seen in the `package()` function is not invoked during `makepkg --printsrcinfo` (it only runs the global scope). All other content is standard AUR packaging syntax. Therefore, sourcing this file to print its metadata is safe.
</details>
<evidence></evidence>
<summary>Only global definitions; no top-level execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Only global definitions; no top-level execution risk.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, .SRCINFO...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard metadata descriptor for an AUR VCS package. It defines the package source as a git repository from the project's own GitHub page (visualbruno/3DGenStudio), which is expected and benign. The checksum is set to SKIP, which is normal for VCS packages and not a security issue. There are no suspicious network requests, dangerous commands, obfuscated code, or any other indicators of malicious supply-chain activity. The file solely contains package metadata and does not execute any code.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO for VCS package, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO for VCS package, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package for an AI image-to-3D model generation studio. It clones the upstream repository from GitHub, performs a production build using npm, and installs the application. The launcher script embedded as base64 decodes to a benign shell script that starts the Node.js server on localhost and opens the browser. There are no suspicious network requests, data exfiltration, obfuscated commands, or execution of untrusted code. The use of base64 is a packaging convenience, not an obfuscation attack. The package follows normal AUR practices for VCS packages.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with benign launcher script.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with benign launcher script.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,297
  Completion Tokens: 2,766
  Total Tokens: 12,063
  Total Cost: $0.001190
  Execution Time: 39.14 seconds

Final Status: SAFE


No issues found.
