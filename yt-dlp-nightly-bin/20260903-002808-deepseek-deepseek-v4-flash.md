---
package: yt-dlp-nightly-bin
pkgver: 2026.08.30.232658
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e1aa01f19251c0ab5d086ae2b4a1ce353c3f844d
prompt_tokens: 9125
completion_tokens: 1121
total_tokens: 10246
cost: 0.001007184402
execution_time: 32.73
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: ok
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-03T00:28:07Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned checksums and no suspicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard packaging metadata, no malicious content.
---

Cloning https://aur.archlinux.org/yt-dlp-nightly-bin.git...
Cloned yt-dlp-nightly-bin
Analyzing yt-dlp-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no global-level code or `pkgver()` function that executes untrusted commands. The `source` array defines two tarballs from the official yt-dlp-nightly-builds GitHub releases, both pinned to a specific version with SHA256 checksums provided (no SKIP). No obfuscated code, no dynamic command execution, no network requests to unexpected hosts. The `package()` function only installs the binary and completions into `$pkgdir` and is not executed by `makepkg --verifysource` or `--printsrcinfo`. Running the requested commands is safe.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no dangerous global or pkgver code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD with no dangerous global or pkgver code.
Downloading sources...
makepkg --verifysource --nodeps successful
Reviewing the 2 file(s) in the AUR repository. The 0 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for `yt-dlp-nightly-bin` follows standard packaging practices for a prebuilt binary from an official GitHub release. The source URLs point to the project's own repository (`github.com/yt-dlp/yt-dlp-nightly-builds`) with pinned version-specific tags. Both sources have valid SHA256 checksums. The `package()` function only installs the binary and shell completions using standard `install` commands. There are no obfuscated commands, no unexpected network requests, no system modifications beyond the intended installation path, and no execution of untrusted code at build time. No red flags are present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned checksums and no suspicious code.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned checksums and no suspicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR .SRCINFO metadata file for yt-dlp-nightly-bin. It contains package description, version, dependencies, source URLs pointing to the official yt-dlp nightly builds GitHub repository, and SHA256 checksums (not SKIP). There is no executable code, no obfuscation, no unusual network requests, and no deviations from standard packaging practices. All sources are from the expected upstream, and the checksums are pinned. No security issues found.
</details>
<evidence></evidence>
<summary>Standard packaging metadata, no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard packaging metadata, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,125
  Completion Tokens: 1,121
  Total Tokens: 10,246
  Total Cost: $0.001007
  Execution Time: 32.73 seconds

Final Status: SAFE


No issues found.
