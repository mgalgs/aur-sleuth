---
package: trustsight
pkgver: 0.28.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 9538
completion_tokens: 1847
total_tokens: 11385
cost: 0.00119088
execution_time: 12.52
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-13T12:04:06Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned sources and no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no malicious content.
---

Materializing trustsight from local mirror...
Materialized trustsight
Analyzing trustsight AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable declarations and function definitions at the global scope. There are no command substitutions, backticks, `eval`, or any other code that would execute during `makepkg --printsrcinfo`. The source URLs point to the project's own GitHub releases and use fixed version strings. The `sha256sums` are provided (not `SKIP`). No top-level code performs network requests, file operations, or system modifications. Therefore, sourcing this PKGBUILD for metadata parsing is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code in PKGBUILD.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch Linux packaging practices for a Python-based AUR package. The source is fetched from the project's own GitHub releases with pinned checksums and a detached signature verified by a pinned PGP key. The build, check, and package steps use conventional tools (`python -m build`, `python -m installer`, `pytest`) with no obfuscation, unexpected network calls, or system-wide modifications. The `find` command in `check()` is used only to clean up any leftover package files within a temporary virtual environment, which is a routine safety measure and not malicious. No code exfiltration, backdoors, or supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned sources and no malicious behavior.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned sources and no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a static metadata file that defines package attributes, dependencies, and source retrieval information for the AUR package **trustsight**. It contains no executable code, scripts, or commands. The source tarball is fetched from the project's official GitHub releases over HTTPS, and a PGP signature verification key is provided along with SHA-256 checksums. The dependencies are standard Python packages, and there are no suspicious network destinations, obfuscated entries, or deviations from normal packaging metadata. This file presents no supply-chain security risk on its own.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata, no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,538
  Completion Tokens: 1,847
  Total Tokens: 11,385
  Total Cost: $0.001191
  Execution Time: 12.52 seconds

Final Status: SAFE


No issues found.
