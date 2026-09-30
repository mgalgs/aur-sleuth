---
package: opencode-beta
pkgver: 2.0.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 12115
completion_tokens: 1581
total_tokens: 13696
cost: 0.001353633862
execution_time: 29.88
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-18T07:04:36Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard MIT license with no executable content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned sources; no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: opencode2
    status: safe
    summary: Wrapper script invokes local binary only.
---

Materializing opencode-beta from local mirror...
Materialized opencode-beta
Analyzing opencode-beta AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions and a `package()` function definition. No top-level command substitutions, `eval`, `curl`, `wget`, or other dangerous operations exist. Running `makepkg --printsrcinfo` will merely source these assignments and function declarations, with no risk of code execution beyond standard variable handling. The `package()` function is not invoked during this step.
</details>
<evidence></evidence>
<summary>No dangerous top-level code present.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code present.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, LICENSE...
[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains only a standard MIT License text. It has no executable code, no network requests, no file operations, and no system modifications. There is no evidence of malicious behavior or supply-chain attack. It is a simple static license file.
</details>
<evidence>
</evidence>
<summary>Standard MIT license with no executable content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD, opencode2...
[1/4] Reviewing .SRCINFO, PKGBUILD, opencode2...
+ Reviewed LICENSE. Status: SAFE -- Standard MIT license with no executable content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for `opencode-beta` follows standard AUR packaging practices. It fetches prebuilt binaries from the official npm registry (`registry.npmjs.org`) under the `@opencode` scope, which matches the upstream project on GitHub (anomalyco/opencode). The tarballs are pinned with sha256sums, providing integrity verification. The `package()` function only installs the binary, a secondary wrapper (`opencode2`), and the license file into the package directory using standard `install` commands. There are no dangerous commands, obfuscation, unexpected network requests, or any code that deviates from legitimate packaging behavior. The file does not contain any evidence of a supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned sources; no malicious content.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, opencode2...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned sources; no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file used by Arch Linux's makepkg to build the `opencode-beta` package. It declares package metadata, dependencies, and source URLs with corresponding SHA-256 checksums. All source URLs point to the official npm registry (`registry.npmjs.org`), which is the expected and legitimate distribution channel for this package. No executable code, obfuscated strings, suspicious network requests, or deviating practices are present. The file only contains declarative data and poses no security threat.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[3/4] Reviewing opencode2...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for opencode2:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple shell wrapper that executes the `opencode` binary located in the same directory, forwarding all arguments. There are no network requests, obfuscated code, file operations beyond the intended execution, or any other signs of malicious activity. It follows standard packaging patterns for launching an application binary.
</details>
<evidence></evidence>
<summary>Wrapper script invokes local binary only.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed opencode2. Status: SAFE -- Wrapper script invokes local binary only.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,115
  Completion Tokens: 1,581
  Total Tokens: 13,696
  Total Cost: $0.001354
  Execution Time: 29.88 seconds

Final Status: SAFE


No issues found.
