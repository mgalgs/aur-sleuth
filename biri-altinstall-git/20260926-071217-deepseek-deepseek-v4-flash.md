---
package: biri-altinstall-git
pkgver: 26.04.r517.g7ba4192
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11267
completion_tokens: 1698
total_tokens: 12965
cost: 0.00068974752
execution_time: 31.08
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-26T07:12:16Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO metadata; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no supply-chain attack indicators.
---

Materializing biri-altinstall-git from local mirror...
Materialized biri-altinstall-git
Analyzing biri-altinstall-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only variable definitions (pkgname, pkgver, etc.), array assignments (depends, makedepends, source, etc.), and a conditional that adds sccache to makedepends if the environment variable `_sccache` is set. There is no command substitution, no eval, no network retrieval, and no file manipulation at global scope. The functions `pkgver()`, `prepare()`, `build()`, and `package()` are defined but are not executed by `makepkg --printsrcinfo`, so any potentially complex or network-dependent code in them is out of scope for this gate. Therefore, sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>Top-level code is benign, only variable definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code is benign, only variable definitions.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file contains only standard AUR package metadata for a VCS package (biri-altinstall-git). It declares the upstream source from a GitHub repository, lists typical build and runtime dependencies for a Wayland compositor, and uses `b2sums = SKIP` (standard practice for VCS packages). No scripts, commands, or suspicious operations are present. There is no evidence of malicious code, backdoors, or unexpected behavior.
</details>
<evidence></evidence>
<summary>Standard AUR .SRCINFO metadata; no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO metadata; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS-based package. The source points to the official GitHub repository of the project&#39;s own fork (`barrulus/biri`), and the `SKIP` checksum is normal for a `-git` package. The `pkgver()` function fetches reference tags from the upstream `niri-wm/niri` repository to compute a version string; this is a legitimate and documented packaging convenience, not an exfiltration or injection vector. The `prepare()` stage performs static `sed` substitutions to rename user-visible identifiers from `niri` to `biri`, followed by `grep` assertions that verify the changes took effect — a best practice that also prevents silent substitution drifts. The `build()` and `package()` stages run standard Cargo builds and install renamed resources. No obfuscated code, unexpected network requests, dangerous command injections, or backdoor-like patterns are present. The only dependency outside the package&#39;s own repository is the tag fetch from the canonical upstream, which is benign and scoped to version description only.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no supply-chain attack indicators.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no supply-chain attack indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,267
  Completion Tokens: 1,698
  Total Tokens: 12,965
  Total Cost: $0.000690
  Execution Time: 31.08 seconds

Final Status: SAFE


No issues found.
