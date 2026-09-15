---
package: calcure
pkgver: 3.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 7175
completion_tokens: 1127
total_tokens: 8302
cost: 0.00046730124
execution_time: 17.43
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-13T07:17:51Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for PyPI package with pinned checksum.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
---

Materializing calcure from local mirror...
Materialized calcure
Analyzing calcure AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope only contains standard variable definitions and function declarations. No command substitutions, backtick executions, `eval`, or any other code that would execute during sourcing are present. The `source` array uses a valid Python-hosted URL generated via safe parameter expansion, and all other assignments are static strings or arrays. The `sha256sums` is provided (not SKIP). There is no code that could exfiltrate data, download payloads, or otherwise perform malicious actions when the file is sourced by `makepkg --printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>Global scope is benign, no execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope is benign, no execution risk.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard, well-structured build recipe for a Python package distributed via PyPI. The source tarball is fetched from the official Python Package Index (`files.pythonhosted.org`) and its integrity is verified by a fixed SHA-256 checksum. The `build()` and `package()` functions use only conventional Python tooling (`python -m build`, `python -m installer`) and install a license file. There are no suspicious network requests, no obfuscated code, no attempts to execute unchecked content, and no deviation from normal packaging practices. No evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for PyPI package with pinned checksum.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for PyPI package with pinned checksum.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard .SRCINFO metadata file for the calcure package. It contains only package metadata: name, version, description, dependencies, source URL, and checksums. The source URL points to the official Python Package Index (pythonhosted.org), and the SHA256 checksum is provided (not SKIP). No scripts, commands, or executable content are present. There is no evidence of malicious behavior; the file follows standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,175
  Completion Tokens: 1,127
  Total Tokens: 8,302
  Total Cost: $0.000467
  Execution Time: 17.43 seconds

Final Status: SAFE


No issues found.
