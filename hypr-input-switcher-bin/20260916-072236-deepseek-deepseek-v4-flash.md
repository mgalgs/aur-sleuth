---
package: hypr-input-switcher-bin
pkgver: 0.5.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 8125
completion_tokens: 1637
total_tokens: 9762
cost: 0.001010019794
execution_time: 35.58
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-16T07:22:36Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: "Safe: standard pinned binary package with no malicious code."
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no suspicious content.
---

Materializing hypr-input-switcher-bin from local mirror...
Materialized hypr-input-switcher-bin
Analyzing hypr-input-switcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains static variable assignments (pkgname, pkgver, etc., source and checksum arrays) and a function definition (`package()`). No top-level command substitutions, backticks, or executable code that would run during `makepkg --printsrcinfo`. The `package()` function is not executed at this stage. There is no risk of malicious code execution when sourcing this file.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code present.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code present.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, .SRCINFO...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard binary package for hypr-input-switcher from the AUR. Sources are pinned to specific GitHub release tarballs with valid SHA256 checksums. The `package()` function only installs the binary, a default config file, license, and documentation into the package directory. There are no suspicious commands, encoded payloads, unexpected network requests, or file operations beyond normal packaging. No red flags for supply-chain attacks are present.
</details>
<evidence></evidence>
<summary>Safe: standard pinned binary package with no malicious code.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Safe: standard pinned binary package with no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR .SRCINFO metadata file describing a `hypr-input-switcher-bin` package. It contains no executable code, shell commands, or obfuscated content. The sources are pinned to the upstream project's official GitHub release tarballs with valid SHA256 checksums, and no unexpected or suspicious destinations are referenced. Nothing in this file indicates a supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard metadata file, no suspicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no suspicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,125
  Completion Tokens: 1,637
  Total Tokens: 9,762
  Total Cost: $0.001010
  Execution Time: 35.58 seconds

Final Status: SAFE


No issues found.
