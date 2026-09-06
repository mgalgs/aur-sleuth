---
package: whatly
pkgver: 7.4.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 7449
completion_tokens: 1406
total_tokens: 8855
cost: 0.00084324898
execution_time: 70.16
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-06T03:16:05Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
---

Materializing whatly from local mirror...
Materialized whatly
Analyzing whatly AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD consists solely of standard variable assignments (pkgname, pkgver, source, etc.) and function definitions. There are no command substitutions, backticks, eval statements, or any other code that would execute during sourcing. The `source` array uses `git+https://` URLs, which are just strings at this stage. Running `makepkg --printsrcinfo` will only source these definitions and print the metadata; no malicious code runs at the global scope.
</details>
<evidence></evidence>
<summary>No malicious code at top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code at top-level scope.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS-based package. It establishes two git sources (the main repository and a forked submodule dependency), both with `SKIP` checksums which is expected for git sources. The `prepare()` function correctly initializes and updates the submodule by pointing it to the local copy of the submodule source, a common pattern to avoid fetching dependencies at build time. No dangerous commands (eval, curl, wget, base64 decode) are present. The build and install phases use standard cmake commands. There is no evidence of exfiltration, backdoors, or code execution from untrusted sources beyond the declared upstream URLs. The package is safe.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard package metadata file for an AUR package. It declares the package name, version, dependencies, and two VCS sources: the main project from its official GitHub repository with a pinned tag `v7.4.0` and a library fork (`libnotify-qt`) from another GitHub user. Both sources use `sha256sums = SKIP`, which is normal for VCS sources and required by AUR guidelines for git-based sources. There is no executable code, no obfuscation, no network requests to unexpected hosts, and no commands that could perform malicious actions. The unpinned state of the second source is a reproducibility concern but not evidence of a supply-chain attack; it is the package maintainer's declared upstream dependency. No genuinely malicious behavior (data exfiltration, backdoors, or code injection) is present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,449
  Completion Tokens: 1,406
  Total Tokens: 8,855
  Total Cost: $0.000843
  Execution Time: 70.16 seconds

Final Status: SAFE


No issues found.
