---
package: obs-studio-rust-git
pkgbase: obs-rust-git
pkgver: 0.0.0.r1350.g0ce7533
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13170
completion_tokens: 2972
total_tokens: 16142
cost: 0.001739374
execution_time: 48.6
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T19:17:14Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: A benign nvchecker config with manual version tracking.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata file; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS PKGBUILD, no malicious indicators.
---

obs-studio-rust-git is built from obs-rust-git
Materializing obs-studio-rust-git from local mirror...
Materialized obs-studio-rust-git
Analyzing obs-studio-rust-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>The global scope of this PKGBUILD contains only standard variable assignments (pkgver, pkgname, source, depends, makedepends, conflicts, sha256sums, etc.) and function definitions (prepare, pkgver, build, package_*). There are no command substitutions, eval statements, obfuscated code, or network calls in the global scope that would execute when the file is sourced by `makepkg --printsrcinfo`. All potentially riskier operations (git submodule updates, patching, cargo fetch, cmake build) are strictly confined to the build and prepare functions, which are not invoked during this metadata parsing step.</details>
<evidence></evidence>
<summary>Global scope safe; no execution at source time.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope safe; no execution at source time.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for nvchecker, a tool used to track upstream version updates. The content simply sets the source type to &quot;manual&quot;, meaning version updates are handled manually by the maintainer. There are no commands, network requests, or any executable logic. This file is harmless and follows standard packaging practices.
</details>
<evidence></evidence>
<summary>A benign nvchecker config with manual version tracking.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- A benign nvchecker config with manual version tracking.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It defines two split packages (`obs-studio-rust-git` and `obs-studio-rust-plugin-browser-git`) with sources fetched from the `obs-rust` GitHub organization via git. All checksums are `SKIP`, which is normal for VCS (`-git`) packages and not inherently unsafe. There are no executable instructions, obfuscated code, unexpected network destinations, or any behavior that deviates from routine packaging practices. The file contains only declarative metadata (dependencies, sources, optdepends, etc.) and poses no supply-chain risk on its own.
</details>
<evidence></evidence>
<summary>Declarative metadata file; no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata file; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR VCS package for OBS Studio with Rust support. It clones repositories from the official GitHub project, uses SKIP checksums (normal for VCS sources), and performs typical build steps (cmake, cargo) with no obfuscation or unexpected network requests. All submodule handling redirects to local srcdir copies, a common practice to avoid redundant fetches. There is no evidence of exfiltration, code injection, or execution of untrusted remote content beyond the declared upstream sources. The file follows normal packaging conventions.
</details>
<evidence></evidence>
<summary>Standard AUR VCS PKGBUILD, no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS PKGBUILD, no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,170
  Completion Tokens: 2,972
  Total Tokens: 16,142
  Total Cost: $0.001739
  Execution Time: 48.60 seconds

Final Status: SAFE


No issues found.
