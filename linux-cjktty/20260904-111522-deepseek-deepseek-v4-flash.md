---
package: linux-cjktty
pkgver: 7.2.3.arch1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 37274
completion_tokens: 3154
total_tokens: 40428
cost: 0.003861626692
execution_time: 43.66
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 2
injection_attempts: 0
date: 2026-09-04T11:15:21Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign .gitignore with standard AUR build artifact patterns.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no malicious behavior or security concerns found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR kernel PKGBUILD, no security issues.
  - file: config
    status: safe
    summary: Standard kernel config file; no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR kernel metadata, safe.
---

Materializing linux-cjktty from local mirror...
Materialized linux-cjktty
Analyzing linux-cjktty AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level code of this PKGBUILD consists of standard variable definitions, an export statement with a harmless `date` command substitution, function definitions, and a loop that uses `eval` and `declare -f` to define subpackage functions — a common Arch packaging pattern. No network requests, file writes, or dangerous commands execute at global scope. The `date` call is benign and used for reproducible build timestamps. The `eval` only defines functions and does not execute untrusted code. Therefore, running `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No malicious code at top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code at top-level scope.
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.3.tar.sign, https://github.com/archlinux/linux/releases/download/v7.2.3-arch1/linux-v7.2.3-arch1.patch.zst.sig
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in an Arch User Repository (AUR) package repository. It ignores patch files (`*.patch.*`, `*.patch`), source archives (`*.tar.*`), and the typical `src/` and `pkg/` build directories created by `makepkg`. There are no commands, network operations, obfuscated content, or references to external systems. The content is entirely consistent with routine packaging practices and contains no security concerns.
</details>
<evidence>
</evidence>
<summary>
Benign .gitignore with standard AUR build artifact patterns.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore with standard AUR build artifact patterns.
[1/5] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard [nvchecker](https://github.com/voidelf/nvchecker) configuration used by AUR maintainers to track upstream releases. It reads the latest tag from the official `archlinux/linux` GitHub repository and applies regex transformations to derive a package version. No network requests to unexpected hosts, no code execution, no obfuscation, and no file operations are present. The configuration is consistent with normal packaging automation.
</details>
<evidence>
</evidence>
<summary>
Standard nvchecker config; no malicious behavior or security concerns found.</summary>
</security_assessment>

[2/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no malicious behavior or security concerns found.
[2/5] Reviewing .SRCINFO, PKGBUILD, config...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch Linux packaging practices for a custom kernel with additional patches. All source files (kernel tarball, config, and patches) are fetched from expected origins (kernel.org, Arch Linux GitLab, and the maintainer&apos;s GitHub repository for the cjktty patches). Checksums are provided for most sources, and PGP keys are specified for kernel tarball signatures. The build and install steps are typical for the linux package family. There is no obfuscated code, no unexpected network requests, no exfiltration, and no execution of downloaded scripts. The use of a personal GitHub repository for patches is normal for forked or patched kernel packages in the AUR.
</details>
<evidence></evidence>
<summary>Standard AUR kernel PKGBUILD, no security issues.</summary>
</security_assessment>

[3/5] Reviewing .SRCINFO, config...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR kernel PKGBUILD, no security issues.
LLM auditresponse for config:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a Linux kernel configuration file (`.config`) used to build the kernel. It contains only standard kernel configuration options (`CONFIG_*`) and comments. There are no executable scripts, network requests, obfuscated code, or any commands (curl, wget, eval, base64, exec, etc.) present. The content is entirely normal for a kernel build configuration. No evidence of supply-chain attack or malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>Standard kernel config file; no malicious content.</summary>
</security_assessment>

[4/5] Reviewing .SRCINFO...
+ Reviewed config. Status: SAFE -- Standard kernel config file; no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an Arch User Repository package that provides a custom Linux kernel with CJK TTY patches. It declares package metadata, upstream sources (kernel.org, Arch Linux release assets, GitLab, and a GitHub repository for the cjktty-patches), and checksum entries (some set to `SKIP`, which is normal for signature files and VCS sources). No executable code, network requests, obfuscated data, or unexpected system modifications are present. The file follows normal AUR packaging conventions and does not indicate any malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR kernel metadata, safe.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR kernel metadata, safe.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 37,274
  Completion Tokens: 3,154
  Total Tokens: 40,428
  Total Cost: $0.003862
  Execution Time: 43.66 seconds

Final Status: SAFE


No issues found.
