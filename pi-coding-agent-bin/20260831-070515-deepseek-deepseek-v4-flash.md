---
package: pi-coding-agent-bin
pkgver: 0.84.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 8453
completion_tokens: 1183
total_tokens: 9636
cost: 0.000958628314
execution_time: 33.52
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: ok
upstream_files: 215
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-31T07:05:14Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with verified upstream sources.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
---

Cloning https://aur.archlinux.org/pi-coding-agent-bin.git...
Cloned pi-coding-agent-bin
Analyzing pi-coding-agent-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard prebuilt binary package that fetches a tarball from the project's official GitHub releases. All source URLs point to `https://github.com/earendil-works/pi`, which is the stated upstream URL. There are no dangerous commands in the global scope or `pkgver()` (which is not defined). The `package()` function is not executed during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. No obfuscation, eval, or suspicious network activity is present. The SHA256 checksums are provided and not SKIP, but even if they were SKIP, that would not be a safety concern for this gate. Therefore, fetching the sources and sourcing the PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>Safe: standard PKGBUILD, no dangerous code in scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: standard PKGBUILD, no dangerous code in scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 2 file(s) in the AUR repository. The 215 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It downloads prebuilt binary archives from the project&#39;s own GitHub releases, verifies them with pinned SHA-256 checksums, and installs them under `/opt` with a symlink in `/usr/bin`. The source URLs and checksums are explicitly listed, and no commands execute untrusted or unverified content. There are no obfuscated operations, unexpected network requests, or manipulations outside the package scope. The use of `!strip`, `!debug`, and `!lto` options is a documented workaround for the prebuilt Bun binary and is not suspicious.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with verified upstream sources.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with verified upstream sources.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file contains only standard metadata for an AUR package: package name, version, description, dependencies, and source URLs with pinned SHA256 checksums. All downloads point to the project's own GitHub repository (`github.com/earendil-works/pi`) and its official release artifacts. No obfuscated code, suspicious network destinations, encoded commands, or file operations are present. The file is purely declarative and does not execute any logic at build time (that role belongs to the PKGBUILD). There are no indicators of a supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,453
  Completion Tokens: 1,183
  Total Tokens: 9,636
  Total Cost: $0.000959
  Execution Time: 33.52 seconds

Final Status: SAFE


No issues found.
