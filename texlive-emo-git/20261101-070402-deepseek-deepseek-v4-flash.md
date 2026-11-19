---
package: texlive-emo-git
pkgver: 0.4.r85.g0000000
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7555
completion_tokens: 1165
total_tokens: 8720
cost: 0.000899535
execution_time: 20.77
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-01T07:04:00Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata only; no executable content or suspicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard VCS PKGBUILD with no malicious code.
---

Materializing texlive-emo-git from local mirror...
Materialized texlive-emo-git
Analyzing texlive-emo-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable definitions (pkgname, pkgver, pkgrel, etc.) and two function definitions (pkgver() and package()). No commands, command substitutions, or function invocations exist at the global scope that would execute when the file is sourced by `makepkg --printsrcinfo`. The SHA256SUM is set to SKIP, which is expected for VCS sources and not relevant to this gate since no download occurs. The `source` array references an upstream git repository, but this is merely a definition and does not trigger any network activity during sourcing. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, .SRCINFO...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains only package metadata for the texlive-emo-git package. It declares the upstream source as a git repository from the project's official GitHub page, which is standard for VCS packages. The `sha256sums = SKIP` entry is required for git-based sources and is not a security concern. No executable code, network requests, or suspicious operations are present. This file is purely declarative and poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Metadata only; no executable content or suspicious behavior.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata only; no executable content or suspicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a VCS (git) package. It clones the upstream repository from the project&#39;s own GitHub page, runs the upstream build system (`pdftex emo.dtx`), and installs the resulting files into the appropriate texmf directories. There are no network requests outside the declared source, no obfuscated code, no use of dangerous commands like `curl` or `wget`, and no file operations outside the build or package directories. Checksum skip is expected for VCS sources. No genuinely malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard VCS PKGBUILD with no malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard VCS PKGBUILD with no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,555
  Completion Tokens: 1,165
  Total Tokens: 8,720
  Total Cost: $0.000900
  Execution Time: 20.77 seconds

Final Status: SAFE


No issues found.
