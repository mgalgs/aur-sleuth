---
package: t3code-nightly-bin
pkgver: 0.0.45_nightly.20261002.2572
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9707
completion_tokens: 1437
total_tokens: 11144
cost: 0.000528402
execution_time: 28.47
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-02T07:15:33Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums and no malicious activity.
---

Materializing t3code-nightly-bin from local mirror...
Materialized t3code-nightly-bin
Analyzing t3code-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function declarations in its global scope. No code is executed outside of function bodies, and `makepkg --printsrcinfo` only sources the file, running top-level statements. All top-level content is static variable assignments (pkgname, pkgver, depends, source URLs, checksums, etc.) and function definitions for `prepare()` and `package()`. There are no command substitutions, backtick executions, or any other code that would cause actions during sourcing. The source array points to the official GitHub releases page, which is expected for this package. No evidence of malicious top-level execution exists.</details>
<evidence></evidence>
<summary>No dangerous top-level code detected.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code detected.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, .SRCINFO...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard Arch Linux package metadata file. It declares the package source as an AppImage and a LICENSE file, both downloaded from the project's own GitHub repository (github.com/pingdotgg/t3code). The checksums are provided and not set to SKIP, which verifies the integrity of the downloaded files. There are no commands, scripts, or any executable content in this file. No suspicious network requests, obfuscation, or unexpected file operations are present. The dependencies and options are typical for a binary package providing a desktop application.
</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for distributing a prebuilt binary (AppImage) from the project&#39;s own GitHub releases. All source URLs point to the official `pingdotgg/t3code` repository; checksums are provided and pinned (not `SKIP`). The `prepare()` runs the AppImage&#39;s `--appimage-extract` command, which is the expected mechanism to extract the payload from the AppImage itself. The `package()` function installs the extracted files into `/opt`, creates a wrapper script, and sets the `chrome-sandbox` binary as setuid (normal for Chromium-based applications). There are no obfuscated commands, unexpected network requests, data exfiltration attempts, backdoors, or any behavior that deviates from the stated purpose of packaging a nightly desktop control surface. All operations are confined to the package&#39;s own scope and upstream sources. No supply-chain injection indicators were found.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksums and no malicious activity.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums and no malicious activity.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,707
  Completion Tokens: 1,437
  Total Tokens: 11,144
  Total Cost: $0.000528
  Execution Time: 28.47 seconds

Final Status: SAFE


No issues found.
