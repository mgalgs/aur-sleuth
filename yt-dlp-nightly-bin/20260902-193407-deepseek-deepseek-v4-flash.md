---
package: yt-dlp-nightly-bin
pkgver: 2026.08.30.232658
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: c6a5a9f6b0e70545bff9fff8802c361e476b0a86
prompt_tokens: 9159
completion_tokens: 1191
total_tokens: 10350
cost: 0.00095167086
execution_time: 70.99
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: ok
upstream_files: 2238
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-02T19:34:07Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums; no malicious content.
---

Cloning https://aur.archlinux.org/yt-dlp-nightly-bin.git...
Cloned yt-dlp-nightly-bin
Analyzing yt-dlp-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments (pkgver, source, sha256sums, etc.) and a `package()` function. The source array references tarballs and binary files from the official yt-dlp-nightly-builds GitHub releases repository over HTTPS. Checksums are pinned and provided. There is no `pkgver()` function or any code executing at global scope beyond variable definitions. No obfuscation, dangerous commands, or unexpected network destinations are present. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will simply fetch the verified sources and parse variable definitions, with no risk of executing malicious code.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned sources</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD with pinned sources
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 2 file(s) in the AUR repository. The 2238 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an Arch User Repository package. It contains only package metadata: description, version, dependencies, source URLs, and checksums. All sources point to the official `yt-dlp/yt-dlp-nightly-builds` GitHub releases, and SHA256 checksums are provided for verification. No executable code, obfuscated content, suspicious network requests, or file operations are present. The file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard metadata file, no security concerns.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch package definition for `yt-dlp-nightly-bin`. It downloads the binary and source tarball from the official GitHub releases of the `yt-dlp-nightly-builds` repository, with pinned checksums provided (not SKIP). The `package()` function only installs the binary and shell completions using standard `install` commands. There are no dangerous commands, obfuscated code, or unexpected network requests. The file follows normal packaging practices and does not exhibit any signs of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksums; no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,159
  Completion Tokens: 1,191
  Total Tokens: 10,350
  Total Cost: $0.000952
  Execution Time: 70.99 seconds

Final Status: SAFE


No issues found.
