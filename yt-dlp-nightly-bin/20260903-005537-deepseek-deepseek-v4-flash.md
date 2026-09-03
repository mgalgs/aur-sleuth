---
package: yt-dlp-nightly-bin
pkgver: 2026.08.30.232658
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 1d6b5f000e2ff2cbdfdf4e324a3e5ac914955c8a
prompt_tokens: 8979
completion_tokens: 1065
total_tokens: 10044
cost: 0.000984324054
execution_time: 22.58
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-03T00:55:36Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums; no malicious code.
---

Cloning https://aur.archlinux.org/yt-dlp-nightly-bin.git...
Cloned yt-dlp-nightly-bin
Analyzing yt-dlp-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and a `package()` function. No code in the global scope (the only scope executed by `makepkg --printsrcinfo`) performs any command substitution, network requests, file operations, or other dangerous actions. The `source` array and `sha256sums` are plain string assignments with no execution. The `package()` function is not executed during this step. Therefore, running `makepkg --printsrcinfo` on this file is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard metadata file for the AUR package `yt-dlp-nightly-bin`. It declares sources from the official yt-dlp nightly builds repository on GitHub and includes SHA256 checksums for both the binary and source tarball. There are no embedded commands, obfuscated content, or unexpected network destinations. All source URLs point to the project's own GitHub releases. No malicious or suspicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues found.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package file for distributing a nightly binary build of yt-dlp. It downloads the binary and a source tarball from the official GitHub releases of the `yt-dlp/yt-dlp-nightly-builds` repository, which is the expected upstream. Both sources have pinned SHA-256 checksums (not `SKIP`), ensuring integrity. The `package()` function only installs the binary and shell completions into the package directory using standard `install` commands. There are no suspicious network requests, obfuscated code, dangerous commands (like `eval`, `curl`, `wget`), or any operations that deviate from normal packaging practices. No evidence of malicious or supply-chain attack behavior was found.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksums; no malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums; no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,979
  Completion Tokens: 1,065
  Total Tokens: 10,044
  Total Cost: $0.000984
  Execution Time: 22.58 seconds

Final Status: SAFE


No issues found.
