---
package: monado-doc
pkgbase: monado
pkgver: 25.1.0
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: bf65c6be33eadea3455007f8db36db9ddf76ab3c
prompt_tokens: 11973
completion_tokens: 1362
total_tokens: 13335
cost: 0.001302242382
execution_time: 34.7
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
upstream_files: 1674
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-26T07:19:00Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security issues.
  - file: monado.install
    status: safe
    summary: Routine post-install message, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious content.
---

monado-doc is built from monado
Cloning https://aur.archlinux.org/monado.git...
Cloned monado-doc
Analyzing monado-doc AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and array definitions at the top level. No `pkgver()` function exists; `pkgver` is a static string. There are no command substitutions, `eval`, `curl`, `wget`, or any other dangerous operations in the global scope that could execute during sourcing. The `source` entry points to the official upstream GitLab tarball with a valid SHA-256 checksum. The `build()`, `check()`, and `package_*()` functions are only defined, not executed during the narrow gate (`makepkg --nobuild --nodeps --noprepare` does not call them). This file exhibits no signs of malicious code.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sourcing is safe.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 3 file(s) in the AUR repository. The 1674 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, monado.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard Arch Linux package metadata file. It defines the package source, dependencies, and checksums. The source URL points to the official Monado project repository on GitLab (freedesktop.org), and a SHA-256 checksum is provided. There are no embedded commands, network requests, obfuscated content, or any other suspicious elements. The file simply describes the package and its dependencies; it does not execute any code. This is a normal, safe AUR metadata file.
</details>
<evidence>
</evidence>
<summary>Standard metadata file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, monado.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security issues.
LLM auditresponse for monado.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux `.install` script that prints informational messages to the user after package installation. It contains only `printf` statements that display instructions on how to configure Monado as the default OpenXR runtime. There are no commands that execute external programs, no network requests, no file writes, no obfuscated code, and no deviation from normal packaging practices. The content is entirely benign and serves only to guide the user.
</details>
<evidence>

</evidence>
<summary>Routine post-install message, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed monado.install. Status: SAFE -- Routine post-install message, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch Linux packaging practices. The source tarball is fetched from the official upstream repository (gitlab.freedesktop.org) with a proper SHA-256 checksum pinned. The build and install steps use cmake and make, with no unusual or dangerous commands. No obfuscated code, hidden network requests, or data exfiltration is present. The package simply builds the monado OpenXR runtime and its documentation. There are no supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD with no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,973
  Completion Tokens: 1,362
  Total Tokens: 13,335
  Total Cost: $0.001302
  Execution Time: 34.70 seconds

Final Status: SAFE


No issues found.
