---
package: linux-mainline-docs
pkgbase: linux-mainline
pkgver: 7.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 39202
completion_tokens: 6465
total_tokens: 45667
cost: 0.004744012
execution_time: 51.71
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-19T07:15:50Z
file_verdicts:
  - file: config.x86_64
    status: safe
    summary: Kernel config file; no malicious or suspicious behavior found. SAFE.
  - file: linux.install
    status: safe
    summary: Standard kernel package install script; depmod and initramfs cleanup only. No malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard kernel package metadata; no malicious or dangerous behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard kernel packaging PKGBUILD; no malicious or injected behavior found.
  - file: linux.install.pkg
    status: safe
    summary: Standard kernel install scriptlet; no malicious behavior or suspicious operations found.
  - file: merge-with-testing
    status: safe
    summary: Benign maintainer helper script for merging upstream Arch Linux kernel configs.
---

linux-mainline-docs is built from linux-mainline
Materializing linux-mainline-docs from local mirror...
Materialized linux-mainline-docs
Analyzing linux-mainline-docs AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the top-level of this PKGBUILD. The top-level actions are limited to variable and array assignments, exporting build environment variables, a `date` command substitution for a build timestamp, and a `for` loop that uses `eval` to construct split-package functions from the existing `_package` templates. The `date` substitution is harmless. The `eval` is also safe in this context: it only defines the `package_linux-mainline`, `package_linux-mainline-headers`, and `package_linux-mainline-docs` functions and does not invoke them. Any build/install logic remains inside function bodies that are not executed during `--printsrcinfo`.

No network requests, encoded payloads, file exfiltration, or execution of untrusted downloaded code occurs at parse time. The source array points to the normal kernel.org repository, but downloads and checksum verification do not happen during this metadata-printing step. This is consistent with standard Arch Linux kernel packaging practice.
</details>
<evidence>
</evidence>
<summary>
Top-level scope only defines variables and functions; no malicious execution during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope only defines variables and functions; no malicious execution during printsrcinfo.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, PKGBUILD...
[0/6] Reviewing .SRCINFO, PKGBUILD, config.x86_64...
LLM auditresponse for config.x86_64:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Linux kernel build configuration (`config.x86_64`) for kernel 7.2.2-arch1. It consists entirely of `CONFIG_*` option assignments and kconfig section comments. No shell code, build hooks, network requests, downloads, obfuscated/encoded payloads, or file-manipulation logic are present in the reviewed head and tail portions, and no suspicious pattern matches were reported in the omitted region.

The kernel options themselves are consistent with an Arch Linux mainline kernel configuration, including standard debugging, tracing, virtualization, security, and hardware support options. There is nothing here that deviates from normal packaging practice or indicates an injected supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Kernel config file; no malicious or suspicious behavior found. SAFE.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed config.x86_64. Status: SAFE -- Kernel config file; no malicious or suspicious behavior found. SAFE.
[1/6] Reviewing .SRCINFO, PKGBUILD, linux.install...
LLM auditresponse for linux.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard kernel package `.install` script. It runs `depmod` to rebuild module dependencies after install/upgrade, checks whether `/boot` is an unmounted separate partition with a warning message, and removes the package's own initramfs symlinks/files on removal. The `vercmp` check is a normal version comparison, and the warning about the `keyboard` mkinitcpio hook is routine packaging guidance for older kernels.

No network requests, obfuscated code, unexpected downloads, or data exfiltration are present. The `rm -f boot/initramfs-%PKGBASE%.img` lines use relative paths, but this matches standard Arch kernel packaging behavior and only targets the package's own initramfs artifacts. There is no evidence of injected or malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard kernel package install script; depmod and initramfs cleanup only. No malicious behavior found.
</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed linux.install. Status: SAFE -- Standard kernel package install script; depmod and initramfs cleanup only. No malicious behavior found.
[2/6] Reviewing .SRCINFO, PKGBUILD, linux.install.pkg...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` is standard AUR metadata for the `linux-mainline` package, describing three subpackages including `linux-mainline-docs`. It contains only declarative packaging information: package descriptions, dependencies, options, PGP keys, checksums, and source URLs.

The source is fetched from the official kernel.org git repository (`git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git`) pinned to a specific tag, with `validpgpkeys` and `sha256sums` provided for verification. There are no scripts, no executable code, no network exfiltration, no obfuscated commands, no use of `eval`, `base64`, `curl`, or `wget`, and no unexpected file operations. The file is entirely consistent with normal AUR packaging practices for a kernel package.
</details>
<evidence>
</evidence>
<summary>
Standard kernel package metadata; no malicious or dangerous behavior found.
</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD, linux.install.pkg, merge-with-testing...
[3/6] Reviewing PKGBUILD, linux.install.pkg, merge-with-testing...
+ Reviewed .SRCINFO. Status: SAFE -- Standard kernel package metadata; no malicious or dangerous behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch Linux kernel packaging script for `linux-mainline` and its headers/docs subpackages. It fetches the kernel source from the official `git.kernel.org` repository, pinned to tag `v7.3`, and includes valid PGP keys and checksums. The `prepare()` and `build()` functions only apply patches, configure and build the kernel, and generate HTML documentation. The `_package*` functions install the kernel, modules, headers, and documentation into `$pkgdir` in the normal manner.

The only use of `eval` occurs at the bottom and is a controlled, maintainer-oriented idiom: it dynamically defines `package_*` functions by reusing already-defined `_package*` functions whose names are derived from the static `pkgname` array. No external code is executed, no data is exfiltrated, and no unexpected network downloads or obfuscated commands are present. The maintainer helper behavior is consistent with routine AUR packaging workflow. No genuinely malicious or supply-chain indicators were found.
</details>
<evidence>
</evidence>
<summary>
Standard kernel packaging PKGBUILD; no malicious or injected behavior found.
</summary>
</security_assessment>

[4/6] Reviewing linux.install.pkg, merge-with-testing...
+ Reviewed PKGBUILD. Status: SAFE -- Standard kernel packaging PKGBUILD; no malicious or injected behavior found.
LLM auditresponse for linux.install.pkg:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux kernel package install scriptlet. It performs routine post-install tasks: updating kernel module dependencies with `depmod`, warning the user if `/boot` is a separate, unmounted partition, and removing initramfs symlinks/files for the package on removal. No network access, no encoded or obfuscated payloads, and no tampering with unrelated system files is present. The hardcoded kernel version `5.4.0-mainline` and use of `vercmp` are normal for a versioned kernel package and do not indicate malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard kernel install scriptlet; no malicious behavior or suspicious operations found.
</summary>
</security_assessment>

[5/6] Reviewing merge-with-testing...
+ Reviewed linux.install.pkg. Status: SAFE -- Standard kernel install scriptlet; no malicious behavior or suspicious operations found.
LLM auditresponse for merge-with-testing:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a routine maintainer helper script for merging configuration files from the official Arch Linux packaging repository into the local mainline package repository. It performs standard git operations: deleting a local `merge` branch if present, adding the official Arch Linux Linux packaging remote, fetching it, creating a temporary `merge` branch from `arch/main`, verifying `pkgver`/`pkgrel`, and checking out the upstream `config.x86_64` file onto the current branch.

No suspicious network destinations, encoded commands, or unexpected file operations are present. The remote is the official Arch Linux packaging repository, which is directly related to the package's purpose. Fetching a mutable branch is a reproducibility concern, not evidence of malice. The script does not execute fetched code and does not exfiltrate data. It is consistent with a normal AUR maintainer workflow.
</details>
<evidence>
</evidence>
<summary>
Benign maintainer helper script for merging upstream Arch Linux kernel configs.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed merge-with-testing. Status: SAFE -- Benign maintainer helper script for merging upstream Arch Linux kernel configs.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 39,202
  Completion Tokens: 6,465
  Total Tokens: 45,667
  Total Cost: $0.004744
  Execution Time: 51.71 seconds

Final Status: SAFE


No issues found.
