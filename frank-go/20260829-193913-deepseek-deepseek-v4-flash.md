---
package: frank-go
pkgver: 0.3.14
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 8321
completion_tokens: 1171
total_tokens: 9492
cost: 0.00087777816
execution_time: 29.77
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: ok
upstream_files: 713
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-29T19:39:13Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with pinned source and standard build steps.
---

Cloning https://aur.archlinux.org/frank-go.git...
Cloned frank-go
Analyzing frank-go AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines standard packaging variables and two functions (build() and package()) that are not executed during the specified `makepkg` commands. The global scope contains no command substitutions, no network operations besides the declared source download, and no dangerous system modifications. The source is a single tarball from the project&#8217;s own GitHub releases with a hardcoded checksum. There is no `pkgver()` function or any other top-level code that could execute maliciously. Therefore, fetching the sources and sourcing the PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No malicious code; standard PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code; standard PKGBUILD.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 2 file(s) in the AUR repository. The 713 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR metadata file containing package descriptions, dependencies, and a source reference. The source tarball is fetched from the official GitHub repository using a specific version tag, and the SHA-256 checksum is pinned to a concrete hash, ensuring integrity. No obfuscated code, dangerous commands, or unusual operations are present. The dependencies (npm, nodejs, electron, and optional katago engines) are appropriate for a Go/Baduk trainer application. There is no evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. The source is fetched from the upstream GitHub repository with a pinned version and matching SHA256 checksum. The build steps use `npm ci`, `npm run bundle`, and `npm prune`—all standard for Node.js packages. The packaging steps place files into the expected directories and create a launcher script using the system electron. No obfuscation, suspicious network requests, or unexpected system modifications are present. The only external dependency is the system electron, which is declared in `depends`. The `optdepends` comments are informational. This file is safe.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD with pinned source and standard build steps.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with pinned source and standard build steps.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,321
  Completion Tokens: 1,171
  Total Tokens: 9,492
  Total Cost: $0.000878
  Execution Time: 29.77 seconds

Final Status: SAFE


No issues found.
