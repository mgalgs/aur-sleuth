---
package: yt-dlp-nightly-bin
pkgver: 2026.08.30.232658
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: c6a5a9f6b0e70545bff9fff8802c361e476b0a86
prompt_tokens: 9159
completion_tokens: 1417
total_tokens: 10576
cost: 0.00093353512
execution_time: 171.23
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: ok
upstream_files: 2238
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-02T23:44:20Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with verified sources, no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Metadata file, no code, safe.
---

Cloning https://aur.archlinux.org/yt-dlp-nightly-bin.git...
Cloned yt-dlp-nightly-bin
Analyzing yt-dlp-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard nightly binary package for yt-dlp. The `source` array downloads from the official GitHub releases page via HTTPS, with provided SHA-256 checksums (not SKIP). There is no `pkgver()` function or any top-level code that executes commands. The only functions defined are `package()`, which is not run during the specified `--nobuild --nodeps --noprepare` commands. No dangerous or obfuscated operations, network exfiltration, or unexpected downloads are present. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD, no dangerous top-level code.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 2 file(s) in the AUR repository. The 2238 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD fetches a prebuilt binary and a tarball of auxiliary files (completions) from the official yt-dlp-nightly-builds GitHub releases. Both sources are pinned to a specific version and have hardcoded SHA256 checksums (not SKIP), providing integrity verification. The `package()` function only installs the binary to `/usr/bin/yt-dlp` and copies shell completion files from the extracted tarball to the appropriate directories. There are no obfuscated commands, no network requests outside the declared upstream, no execution of untrusted code at build time (other than the normal `install` commands), and no attempts to exfiltrate data or modify system files outside the package's scope. The dependency list is standard for yt-dlp. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with verified sources, no malicious code.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with verified sources, no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata descriptor for the AUR package. It contains no executable code, only declarations of package metadata, dependencies, and source URLs with associated checksums. Both source archives are fetched from the official yt-dlp nightly builds GitHub repository (github.com/yt-dlp/yt-dlp-nightly-builds) and have SHA256 checksums provided (not set to SKIP). There are no obfuscated strings, no suspicious network destinations, no unexpected file operations, and no signs of malicious intent. This file is a standard, safe packaging artifact.
</details>
<evidence>
</evidence>
<summary>Metadata file, no code, safe.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file, no code, safe.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,159
  Completion Tokens: 1,417
  Total Tokens: 10,576
  Total Cost: $0.000934
  Execution Time: 171.23 seconds

Final Status: SAFE


No issues found.
