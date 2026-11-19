---
package: phrased-bin
pkgver: 0.3.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9728
completion_tokens: 1397
total_tokens: 11125
cost: 0.001139502
execution_time: 21.0
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-26T19:14:17Z
file_verdicts:
  - file: phrased-bin.install
    status: safe
    summary: Standard post-install message, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package with pinned checksums and no suspicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no malicious content.
---

Materializing phrased-bin from local mirror...
Materialized phrased-bin
Analyzing phrased-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions, comments, and a `package()` function at global scope. No code that executes during sourcing (no command substitutions, backticks, `eval`, or external commands) appears anywhere in the top‑level context. `makepkg --printsrcinfo` will safely source these declarations without performing any network operations, file downloads, or system modifications.
</details>
<evidence></evidence>
<summary>No executable code at global scope; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code at global scope; safe to parse.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, phrased-bin.install...
LLM auditresponse for phrased-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `post_install()` function that prints instructions to the user on how to enable the systemd user service. No network requests, file operations, code execution, or any suspicious behavior is present. It only echoes text strings. This is normal packaging practice.
</details>
<evidence></evidence>
<summary>Standard post-install message, no malicious code.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed phrased-bin.install. Status: SAFE -- Standard post-install message, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. It downloads tarballs from the project&apos;s official GitHub releases page with pinned SHA-256 checksums. The `package()` function only installs the binary and a systemd user service file into the package directory. There are no obfuscated commands, unexpected network requests, backdoors, or any other supply-chain attack indicators. The install script `phrased-bin.install` is referenced but not provided here; based solely on the PKGBUILD content, there is no malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR binary package with pinned checksums and no suspicious code.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package with pinned checksums and no suspicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file. It declares sources from the official GitHub releases page of the upstream project (https://github.com/ericdahl-dev/phrasedeck), which is the same as the package's URL. Checksums (SHA256) are provided for both architectures, allowing integrity verification. The dependencies are standard Wayland clipboard and typing tools (wtype, wl-clipboard) with optional dependencies for other environments. There is no obfuscation, no dangerous commands, no unexpected network requests, and no behavior that deviates from normal packaging practices. The file itself is entirely declarative and contains no executable content.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,728
  Completion Tokens: 1,397
  Total Tokens: 11,125
  Total Cost: $0.001140
  Execution Time: 21.00 seconds

Final Status: SAFE


No issues found.
