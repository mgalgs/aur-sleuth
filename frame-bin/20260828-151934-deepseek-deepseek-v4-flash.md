---
package: frame-bin
pkgver: 0.33.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 7481
completion_tokens: 1023
total_tokens: 8504
cost: 0.0008269436
execution_time: 60.17
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: ok
upstream_files: 28
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-28T15:19:33Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD with pinned checksum; no security issues.
---

Cloning https://aur.archlinux.org/frame-bin.git...
Cloned frame-bin
Analyzing frame-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments and a `package()` function that is **not executed** during the `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo` commands. The global/top-level scope is purely declarative (setting `pkgname`, `pkgver`, `source`, checksums, etc.). There is no `pkgver()` function, no `eval`, `curl`, `wget`, or any dynamic code in the sourced portion. The source is a fixed release tarball from the project's own GitHub releases with a non-SKIP SHA256 checksum, which will be verified upon download. No malicious behavior can execute during the requested commands.
</details>
<evidence></evidence>
<summary>No dangerous code in sourced scope; fetch is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in sourced scope; fetch is safe.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 2 file(s) in the AUR repository. The 28 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR package metadata file. It defines the package `frame-bin`, a binary release of a FFmpeg GUI media conversion utility. The source is fetched from the project's official GitHub releases page, and the SHA-256 checksum is provided (not skipped), allowing verification of the downloaded archive. No commands, scripts, or code are present in this file—it contains only declarative fields (pkgbase, pkgdesc, depends, source, etc.). There is no evidence of any malicious behavior such as obfuscation, network requests, file operations, or system modifications. The file is entirely consistent with normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for `frame-bin` follows standard AUR packaging practices for a binary release. It downloads a tarball from the official GitHub releases URL with a pinned checksum (SHA256 verified). The package() function removes bundled ffmpeg/ffprobe binaries and replaces them with symlinks to the system versions, which is an expected integration step. No suspicious network requests, obfuscated code, or malicious operations are present. The file does not contain any commands that could exfiltrate data, download and execute untrusted code, or modify system files outside the package scope.
</details>
<evidence></evidence>
<summary>Standard binary PKGBUILD with pinned checksum; no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD with pinned checksum; no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,481
  Completion Tokens: 1,023
  Total Tokens: 8,504
  Total Cost: $0.000827
  Execution Time: 60.17 seconds

Final Status: SAFE


No issues found.
