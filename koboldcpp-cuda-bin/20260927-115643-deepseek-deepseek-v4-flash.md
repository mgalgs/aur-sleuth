---
package: koboldcpp-cuda-bin
pkgver: 1.122
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9665
completion_tokens: 1477
total_tokens: 11142
cost: 0.0005918311
execution_time: 23.17
files_reviewed: 3
files_skipped: 1
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-27T11:56:43Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no security issues found.
  - file: koboldcpp.png
    status: skipped
    summary: "Skipping binary file: koboldcpp.png"
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no malicious content.
  - file: koboldcpp.desktop
    status: safe
    summary: Standard desktop launcher file; no malicious or suspicious behavior found.
---

Materializing koboldcpp-cuda-bin from local mirror...
Materialized koboldcpp-cuda-bin
Analyzing koboldcpp-cuda-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only variable assignments (pkgname, pkgver, pkgrel, etc.) and a function definition (package()). There are no command substitutions, backticks, eval, or any other code that would execute during sourcing by `makepkg --printsrcinfo`. All values are static strings or use simple variable expansion referencing previously defined variables, which poses no risk. The source array points to the official GitHub releases page, and the sha256sums are provided. No malicious or unexpected operations are present in the global scope.</details>
<evidence></evidence>
<summary>No executable global code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable global code; safe to source.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, koboldcpp.desktop...
[0/4] Reviewing .SRCINFO, koboldcpp.desktop, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard, well-formed Arch package definition. It downloads a precompiled binary from the project&#39;s official GitHub releases page with static SHA256 checksums for verification. The package() function only installs files into the package directory using standard install commands with proper permissions. There are no suspicious network requests, no obfuscated code, no execution of untrusted content, and no operations outside of normal packaging practices. The checksums are properly pinned (not set to &#39;SKIP&#39;), which is appropriate for a binary package.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no security issues found.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, koboldcpp.desktop, PKGBUILD, koboldcpp.png...
[1/4] Reviewing .SRCINFO, koboldcpp.desktop, koboldcpp.png...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no security issues found.
[2/4] Reviewing .SRCINFO, koboldcpp.desktop...
! Reviewed koboldcpp.png. Status: SKIPPED -- Skipping binary file: koboldcpp.png
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file. It only declares package fields (`pkgver`, `source`, `sha256sums`, etc.) and contains no executable scripts – no shell commands, no network requests, no obfuscated code. The sources are all pinned with hardcoded SHA-256 checksums and point to the official upstream repository (github.com/LostRuins/koboldcpp releases), which is expected. There is no evidence of supply-chain injection or malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard package metadata, no malicious content.</summary>
</security_assessment>

[3/4] Reviewing koboldcpp.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no malicious content.
LLM auditresponse for koboldcpp.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` launcher file for the KoboldCpp application. It defines a desktop entry that launches `/usr/bin/koboldcpp` in a terminal, sets the icon and category, and enables startup notification. There are no network operations, no downloads, no obfuscated content, no file manipulation, and no execution of attacker-controlled data. The file contains only static metadata and is consistent with ordinary packaging practice for a GUI/terminal launcher.
</details>
<evidence>
</evidence>
<summary>
Standard desktop launcher file; no malicious or suspicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed koboldcpp.desktop. Status: SAFE -- Standard desktop launcher file; no malicious or suspicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: koboldcpp.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,665
  Completion Tokens: 1,477
  Total Tokens: 11,142
  Total Cost: $0.000592
  Execution Time: 23.17 seconds

Final Status: SAFE


No issues found.


Audit Skips:

koboldcpp.png: [SKIPPED] Skipping binary file: koboldcpp.png
