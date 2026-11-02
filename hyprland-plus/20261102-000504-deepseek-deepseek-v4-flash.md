---
package: hyprland-plus
pkgver: 0.57.0.p2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8965
completion_tokens: 3311
total_tokens: 12276
cost: 0.001418417
execution_time: 27.7
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-02T00:05:04Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: No security issues found.
  - file: PKGBUILD
    status: safe
    summary: Pinned commits, standard build, no malicious code found.
---

Materializing hyprland-plus from local mirror...
Materialized hyprland-plus
Analyzing hyprland-plus AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's global scope. In this file, the global scope contains only standard variable assignments: pkgname, pkgver, pkgrel, pkgdesc, arch, url, license, dependencies, source array, and sha256sums. There are no top-level command substitutions, no network requests, no file downloads, no encoded/obfuscated commands, and no data exfiltration triggered during sourcing. The `prepare()`, `build()`, and `package()` functions are not executed by `--printsrcinfo`, so their contents are out of scope for this narrow gate.

The SKIP checksums and git-based sources are not relevant to this step because no source artifacts are downloaded or verified during `makepkg --printsrcinfo`. They may be noted in the full audit as supply-chain/hygiene considerations, but they do not make sourcing the PKGBUILD itself dangerous.
</details>
<evidence>
</evidence>
<summary>Sourcing this PKGBUILD executes only safe variable definitions; no malicious top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing this PKGBUILD executes only safe variable definitions; no malicious top-level code.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, .SRCINFO...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata descriptor generated from a PKGBUILD. It contains no executable code, no obfuscated commands, and no suspicious network requests. The two source URLs point to GitHub repositories and are pinned to specific commit hashes, which is a standard and secure practice. The checksums are set to &quot;SKIP&quot;, which is normal for VCS sources and not an indicator of malice. All dependencies appear related to the stated purpose of the package (Hyprland compositor with additional features). There is no evidence of genuinely malicious behavior such as data exfiltration, backdoors, or execution of untrusted code.
</details>
<evidence></evidence>
<summary>No security issues found.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- No security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices with no evidence of malicious code. Both git sources are pinned to specific commits, ensuring reproducibility. The prepare() function correctly initializes a submodule from the local source directory rather than fetching from an uncontrolled remote. Build and package steps use standard cmake commands and only manipulate files within the package build directory. There are no obfuscated commands, unexpected network requests, data exfiltration, or dangerous operations like eval or curl|bash. While the upstream source is a third-party fork (https://github.com/trail-b1az3r/hyprland-plus) rather than the official Hyprland repository, that is a trust consideration for the user — not an indication of injected malicious code in this file. The use of SKIP checksums is acceptable for VCS sources.
</details>
<evidence></evidence>
<summary>Pinned commits, standard build, no malicious code found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Pinned commits, standard build, no malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,965
  Completion Tokens: 3,311
  Total Tokens: 12,276
  Total Cost: $0.001418
  Execution Time: 27.70 seconds

Final Status: SAFE


No issues found.
