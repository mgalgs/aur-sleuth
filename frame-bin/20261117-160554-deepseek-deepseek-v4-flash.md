---
package: frame-bin
pkgver: 0.35.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 7404
completion_tokens: 1479
total_tokens: 8883
cost: 0.00093258
execution_time: 15.19
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-17T16:05:54Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard binary release PKGBUILD with checksum verification.
---

Materializing frame-bin from local mirror...
Materialized frame-bin
Analyzing frame-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and a function definition. No top-level command substitutions, backtick expansions, or other code execution constructs are present. Sourcing this file for `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No malicious top-level code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code found.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It declares a binary release from the project's official GitHub releases page (`https://github.com/66HEX/frame`). The source is a pinned tarball with a specified SHA256 checksum, providing integrity verification. There are no obfuscated commands, unexpected network requests, or any code execution instructions. The file simply defines package metadata (name, version, dependencies, source location, checksum) and contains no executable content. No security concerns are present.
</details>
<evidence>
</evidence>
<summary>Standard package metadata; no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a binary release. It downloads a prebuilt tarball from the official GitHub releases page, verifies the SHA256 checksum, removes bundled FFmpeg binaries, and symlinks to the system-installed FFmpeg (which is listed as a dependency). No obfuscated code, no unexpected network requests, no file exfiltration, and no execution of untrusted code. The package only installs files into standard locations and creates symlinks. There are no red flags indicating a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard binary release PKGBUILD with checksum verification.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary release PKGBUILD with checksum verification.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,404
  Completion Tokens: 1,479
  Total Tokens: 8,883
  Total Cost: $0.000933
  Execution Time: 15.19 seconds

Final Status: SAFE


No issues found.
