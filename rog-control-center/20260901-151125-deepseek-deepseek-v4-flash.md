---
package: rog-control-center
pkgbase: asusctl
pkgver: 6.4.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 18684
completion_tokens: 2830
total_tokens: 21514
cost: 0.0018574472
execution_time: 63.98
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: ok
upstream_files: 373
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T15:11:24Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Configuration file with only upstream git source.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no signs of malicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no security issues.
  - file: REUSE.toml
    status: safe
    summary: Standard REUSE metadata file, no security concerns.
  - file: asusctl.install
    status: safe
    summary: Standard packaging install script, no malicious content.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
---

rog-control-center is built from asusctl
Cloning https://aur.archlinux.org/asusctl.git...
Cloned rog-control-center
Analyzing rog-control-center AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only sets variables and defines functions at the global scope. No commands are executed outside of function bodies. The source is a standard tarball from the project&#x27;s official GitHub repository (github.com/OpenGamingCollective/asusctl). Downloading and extracting this tarball is normal and safe. The checksum is provided, but even if it were SKIP, that would not be grounds to mark this gate as unsafe. The `prepare()`, `build()`, and `package()` functions are not executed due to the `--nobuild` and `--noprepare` flags, so any code inside them is out of scope for this assessment. No suspicious network requests, obfuscated code, or dangerous commands are present in the global scope or `pkgver()` (which is not defined as a function, only a variable). Therefore, running the two commands is safe.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no global execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD, no global execution risk.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 7 file(s) in the AUR repository. The 373 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .nvchecker.toml...
[0/7] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC-style license text with the copyright holder "Arch Linux Contributors". It contains no code, commands, or any executable content. There is no evidence of malicious behavior, obfuscation, network requests, or system modifications. It is a routine packaging file.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
[1/7] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard nvchecker configuration that declares the upstream source for the `asusctl` component. It specifies a git source pointing to the legitimate GitHub repository `https://github.com/OpenGamingCollective/asusctl.git`. There is no obfuscation, dangerous commands, network exfiltration, or any other malicious behavior. The file is consistent with normal packaging automation and poses no security threat.
</details>
<evidence></evidence>
<summary>Configuration file with only upstream git source.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, .nvchecker.toml, LICENSE, PKGBUILD...
[2/7] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Configuration file with only upstream git source.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux packaging practices for a Rust project. The source is downloaded from the official GitHub repository with a pinned version and a valid b2sum checksum. Build steps use `cargo fetch --locked` and `make`, which are typical. Package functions install files into `$pkgdir` via Makefile targets. There are no suspicious network requests, encoded commands, or unexpected file operations. No signs of supply-chain compromise.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with no signs of malicious code.</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, LICENSE, PKGBUILD, REUSE.toml...
[3/7] Reviewing .SRCINFO, LICENSE, REUSE.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no signs of malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for the AUR packages `asusctl` and `rog-control-center`. It contains only package description, dependencies, source URL, and a b2 checksum. The source is pinned to a specific version (6.4.0) from the official GitHub repository, and the checksum is provided (not skipped). There are no commands, scripts, or encoded data that could execute malicious actions. The file follows normal AUR packaging practices and does not exhibit any signs of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO metadata, no security issues.</summary>
</security_assessment>

[4/7] Reviewing LICENSE, REUSE.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no security issues.
[4/7] Reviewing LICENSE, REUSE.toml, asusctl.install...
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a REUSE configuration file (REUSE.toml) used to declare copyright and license metadata for specified paths. It contains standard fields such as version, annotations with path patterns, SPDX-FileCopyrightText, and SPDX-License-Identifier. There are no executable commands, network requests, obfuscated content, or any operations that could compromise system security. It simply describes which files in the repository should be documented with a specific license and copyright holder. This is a normal and benign packaging metadata file.
</details>
<evidence>
</evidence>
<summary>Standard REUSE metadata file, no security concerns.</summary>
</security_assessment>

[5/7] Reviewing LICENSE, asusctl.install...
+ Reviewed REUSE.toml. Status: SAFE -- Standard REUSE metadata file, no security concerns.
LLM auditresponse for asusctl.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package installation script (`.install`) for the `asusctl` package. It contains `post_install()` and `post_upgrade()` functions that print informational messages about the `asusd` service and, on upgrade, conditionally restart the service if it is running. All actions are routine and expected for a systemd service package. The URL referenced (`https://github.com/OpenGamingCollective/asusctl#kernel-requirements`) is the genuine upstream project repository. There is no obfuscation, no network fetches, no execution of untrusted code, and no deviation from normal packaging practices. The file is safe.
</details>
<evidence>

</evidence>
<summary>Standard packaging install script, no malicious content.</summary>
</security_assessment>

[6/7] Reviewing LICENSE...
+ Reviewed asusctl.install. Status: SAFE -- Standard packaging install script, no malicious content.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC-style software license. It contains no executable code, no network requests, no file operations, and no instructions that could be interpreted as malicious. It is a simple text document granting permission to use the software, with a disclaimer of liability. There are no security issues or supply-chain attack vectors present.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,684
  Completion Tokens: 2,830
  Total Tokens: 21,514
  Total Cost: $0.001857
  Execution Time: 63.98 seconds

Final Status: SAFE


No issues found.
