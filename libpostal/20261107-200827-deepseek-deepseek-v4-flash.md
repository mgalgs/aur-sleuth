---
package: libpostal
pkgver: 1.1.4
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9450
completion_tokens: 2818
total_tokens: 12268
cost: 0.001372826
execution_time: 34.3
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-07T20:08:27Z
file_verdicts:
  - file: libpostal.install
    status: safe
    summary: Legitimate install script with only informational messages.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with verified source URL and checksums.
---

Materializing libpostal from local mirror...
Materialized libpostal
Analyzing libpostal AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and function definitions at the top level. There are no command substitutions, backtick expressions, or any other code that would execute during the sourcing step of `makepkg --printsrcinfo`. The source URL points to the official GitHub repository for the package, and no malicious payloads or data exfiltration attempts are present in the global scope. The file is a typical Arch User Repository package definition and poses no risk for the narrow operation of `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>No malicious top-level code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code found.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, libpostal.install...
LLM auditresponse for libpostal.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.install` script used by Arch Linux packages. It contains only `echo` statements that display informational messages to the user during package installation, upgrade, and removal. There are no dangerous commands, no network requests, no file modifications, no obfuscated code, and no execution of untrusted content. The messages are purely advisory, reminding the user to download the required trained data manually using the package's own `libpostal_data` tool.
</details>
<evidence></evidence>
<summary>Legitimate install script with only informational messages.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed libpostal.install. Status: SAFE -- Legitimate install script with only informational messages.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch Linux packaging file for the libpostal library.  
- The source is fetched from the official GitHub repository with a pinned version tag and a valid BLAKE2 checksum.  
- No obfuscation, network requests outside the declared source, dangerous commands (`eval`, `curl`, `wget`, etc.), or exfiltration attempts are present.  
- The build disables data downloads (`--disable-data-download`), which is a safe and expected practice for offline or controlled builds.  
- All operations (bootstrap, configure, make, install) are standard packaging steps.  

No evidence of supply‑chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious content.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR .SRCINFO metadata file. It provides package metadata such as name, description, version, license, and the source download URL. The source points to the official libpostal GitHub repository at a specific tagged release (v1.1.4) and includes a hardcoded BLAKE2b checksum (b2sums) for integrity verification. No shell commands, obfuscated code, suspicious network destinations, or other indicators of malicious behavior are present. The content is consistent with legitimate AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with verified source URL and checksums.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with verified source URL and checksums.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,450
  Completion Tokens: 2,818
  Total Tokens: 12,268
  Total Cost: $0.001373
  Execution Time: 34.30 seconds

Final Status: SAFE


No issues found.
