---
package: opencode-bin
pkgver: 1.18.32
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7347
completion_tokens: 1009
total_tokens: 8356
cost: 0.00051919560
execution_time: 31.91
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-21T23:09:49Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD with pinned checksums, no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; safe.
---

Materializing opencode-bin from local mirror...
Materialized opencode-bin
Analyzing opencode-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard variable assignments and function definitions. No code is executed at the global scope beyond these assignments. The source URLs point to the legitimate upstream GitHub repository with pinned checksums. The `package()` function is not run during `makepkg --printsrcinfo`. There is no command substitution, curl, wget, eval, or any other dangerous construct at the top level.
</details>
<evidence></evidence>
<summary>No malicious code executed during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executed during sourcing.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard binary package from the AUR. It downloads a prebuilt release tarball from the official GitHub repository of the opencode project (anomalyco/opencode) using pinned SHA256 checksums. The `package()` function simply installs the single binary to `/usr/bin/opencode`. No suspicious network requests, obfuscated code, file operations outside the expected scope, or supply-chain attack indicators are present.</details>
<evidence></evidence>
<summary>Standard binary PKGBUILD with pinned checksums, no malicious behavior.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD with pinned checksums, no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It declares the package name, version, description, upstream URL, dependencies, and source tarballs with SHA256 checksums. All source URLs point to the official GitHub releases (`github.com/anomalyco/opencode`), which is the package's own upstream. No executable code, obfuscation, unexpected network requests, or suspicious file operations are present. The file is purely declarative and follows normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; safe.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; safe.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,347
  Completion Tokens: 1,009
  Total Tokens: 8,356
  Total Cost: $0.000519
  Execution Time: 31.91 seconds

Final Status: SAFE


No issues found.
