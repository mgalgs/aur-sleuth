---
package: python-docling-core
pkgver: 2.94.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 11498
completion_tokens: 1479
total_tokens: 12977
cost: 0.00125882848
execution_time: 30.53
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-03T15:10:21Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious behavior detected.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with pinned source and checksum.
---

Materializing python-docling-core from local mirror...
Materialized python-docling-core
Analyzing python-docling-core AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable definitions, arrays, and empty function stubs in its global scope. No command substitutions, subprocess calls, or other executable logic exists outside of the `build()`, `check()`, and `package()` functions, which are not invoked during `makepkg --printsrcinfo`. All top-level lines are standard PKGBUILD metadata (package name, version, dependencies, source URL, checksum). There is no dangerous code such as `curl`, `wget`, `eval`, `base64` decoding, or exfiltration attempts. Running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence>
</evidence>
<summary>No executable code at top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code at top-level scope.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, LICENSE...
[0/3] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard BSD Zero Clause License text. It contains no executable code, no commands, no network requests, and no obfuscated content. There is no evidence of malicious behavior or supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a Python library. The source is fetched from the project&#39;s own GitHub archive at a pinned tag with a valid b2 checksum, ensuring supply-chain integrity. The build, check, and package phases use conventional tools (`python -m build`, `pytest`, `python -m installer`) without any outbound network requests, obfuscated commands, or unexpected file operations. The dependency list includes `python-requests` with a comment explaining the reason, which is normal maintenance. No signs of malicious code (exfiltration, backdoors, remote code execution) are present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious behavior detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR package metadata file for `python-docling-core`. It defines package metadata, dependencies, and a source tarball fetched from the official upstream GitHub repository at a specific version tag (`v2.94.1`). The checksum (`b2sums`) is provided and pinned to a specific hash, not skipped. There are no unusual or suspicious commands, no obfuscated content, no references to external scripts or downloads from untrusted sources, and no attempts to modify system files or exfiltrate data. All dependencies are legitimate Python packages available in the official Arch repositories. The content is entirely declarative and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with pinned source and checksum.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with pinned source and checksum.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,498
  Completion Tokens: 1,479
  Total Tokens: 12,977
  Total Cost: $0.001259
  Execution Time: 30.53 seconds

Final Status: SAFE


No issues found.
