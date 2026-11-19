---
package: onair-dra
pkgver: 0.2.9
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8472
completion_tokens: 1871
total_tokens: 10343
cost: 0.001111474
execution_time: 56.78
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-22T00:11:36Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Static metadata file with no executable content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned sources, no malicious behavior.
---

Materializing onair-dra from local mirror...
Materialized onair-dra
Analyzing onair-dra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions and top-level metadata in its global scope. There are no command substitutions, eval statements, or any other code that would execute during sourcing. The `source` array uses pinned commit hashes with valid SHA256 checksums. Since `makepkg --printsrcinfo` only sources global declarations and does not run any functions, there is no risk of executing malicious code at this step.</details>
<evidence></evidence>
<summary>No global execution risk; only variable definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No global execution risk; only variable definitions.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a static metadata file for the AUR package. It contains no executable code, no obfuscated strings, no network requests, and no instructions of any kind. It simply declares package name, version, dependencies, and three source URLs with pinned SHA-256 checksums. All sources originate from GitHub (the project’s own repository and a separate repository that provides patches and license files). The presence of patches from an external GitHub source is not unusual for a codec add-on and does not constitute a supply-chain attack on its own. The file adheres to standard AUR packaging conventions. No signs of malicious or suspicious behavior are present.
</details>
<evidence>
</evidence>
<summary>Static metadata file with no executable content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Static metadata file with no executable content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD file is a standard AUR packaging script for building a DRA/DRA+ audio decoder add-on for the OnAir application. All source URLs point to the project's official GitHub repository (`adswill/OnAir`) and to a well-known external contributor (`maliwen2015`) for the decoder patch. Each source has a pinned SHA-256 checksum, so the integrity of the downloaded files is verifiable. The build process runs a Python extraction script (provided in the upstream tarball) with a local patche file, then uses cmake to compile the decoder. Installation copies the built shared library and license file into the package directory. There are no obfuscated commands, no unexpected network requests (e.g., `curl|bash`), no attempts to exfiltrate data, and no modifications to system files beyond the package's own paths. The only potential hygiene note is the use of `raw.githubusercontent.com` (which is common for AUR patches and license files), but this is mitigated by pinned commit identifiers and checksums. The file shows no signs of injected malicious code or supply-chain attack patterns.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned sources, no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned sources, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,472
  Completion Tokens: 1,871
  Total Tokens: 10,343
  Total Cost: $0.001111
  Execution Time: 56.78 seconds

Final Status: SAFE


No issues found.
