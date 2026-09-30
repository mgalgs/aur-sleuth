---
package: ampcode
pkgver: 0.0.1790598051_g7ace76
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9812
completion_tokens: 1540
total_tokens: 11352
cost: 0.0010017084
execution_time: 73.07
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-28T15:23:08Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Safe metadata file with no executable content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore whitelist pattern for AUR packaging; no security concerns found.
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD with pinned checksums; no malicious behavior.
---

Materializing ampcode from local mirror...
Materialized ampcode
Analyzing ampcode AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `makepkg --printsrcinfo` executes only top-level variable assignments and function definitions. The `latestver` function uses `curl`, but it is defined, not called, during this step. The `package()` function also contains no top-level call. No dangerous command substitutions or global operations are present. Therefore, this step is safe.
</details>
<evidence></evidence>
<summary>Top-level code is safe; dangerous parts are inside uncalled functions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code is safe; dangerous parts are inside uncalled functions.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file. It declares package metadata, dependencies, and two binary source downloads from the project's own domain (`static.ampcode.com`) with pinned SHA-256 checksums. There is no executable code, no obfuscation, no network requests performed by this file itself, and no deviation from standard AUR packaging practices. The URLs point to the upstream project's official binary distribution server, and the presence of checksums provides integrity verification. No security issues are present.
</details>
<evidence></evidence>
<summary>Safe metadata file with no executable content.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Safe metadata file with no executable content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` configuration for an AUR git repository. It uses the common "ignore everything, then whitelist" pattern to ensure only essential packaging files (PKGBUILD, .SRCINFO, install scripts, patches, service files, etc.) are tracked in the repository while ignoring build artifacts and other generated files. There are no network requests, no obfuscated code, no dangerous commands, no file system modifications, and no attempts to exfiltrate data. The file content is entirely consistent with ordinary AUR packaging practices and contains no evidence of malicious or suspicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore whitelist pattern for AUR packaging; no security concerns found.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore whitelist pattern for AUR packaging; no security concerns found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads a prebuilt binary from the official Sourcegraph/ampcode domain over HTTPS, provides pinned SHA-256 checksums, and installs it to `/usr/bin/amp`. No obfuscated code, no unexpected network requests, no dangerous command execution (the `latestver()` function is defined but never invoked in build/package stages). The package follows standard AUR practices for proprietary binary packages. The only minor concern is that the binary is not GPG-signed, but checksums are provided, and this is not a supply-chain attack indicator.
</details>
<evidence>
</evidence>
<summary>Standard binary PKGBUILD with pinned checksums; no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD with pinned checksums; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,812
  Completion Tokens: 1,540
  Total Tokens: 11,352
  Total Cost: $0.001002
  Execution Time: 73.07 seconds

Final Status: SAFE


No issues found.
