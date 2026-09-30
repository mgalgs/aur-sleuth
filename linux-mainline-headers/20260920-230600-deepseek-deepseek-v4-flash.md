---
package: linux-mainline-headers
pkgbase: linux-mainline
pkgver: 7.3rc4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 38745
completion_tokens: 11506
total_tokens: 50251
cost: 0.00219607892
execution_time: 245.23
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-20T23:05:59Z
file_verdicts:
  - file: config.x86_64
    status: safe
    summary: Standard kernel config file, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard kernel package metadata, no malicious indicators.
  - file: PKGBUILD
    status: safe
    summary: Standard kernel PKGBUILD, no malicious content.
  - file: linux.install
    status: safe
    summary: Standard kernel install script, no security issues.
  - file: linux.install.pkg
    status: safe
    summary: Standard kernel install script; no security concerns.
  - file: merge-with-testing
    status: safe
    summary: Maintainer helper merging kernel config from official Arch repo.
---

linux-mainline-headers is built from linux-mainline
Materializing linux-mainline-headers from local mirror...
Materialized linux-mainline-headers
Analyzing linux-mainline-headers AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `makepkg --printsrcinfo` executes only global-scope code. That scope contains normal kernel-package metadata, `export KBUILD_*` lines, and a loop using `eval` to create split `package_*` functions.

The `date` command substitution in `KBUILD_BUILD_TIMESTAMP` is benign and standard for reproducible builds. The `eval` loop only builds function definitions from the static `pkgname` and existing `_package*` function names; it does not call the packaged build/install functions, and no top-level code downloads, decodes, or executes an untrusted payload. No exfiltration or backdoor is present in the portions that can run during `--printsrcinfo`.

Suspicious-looking operations (patching, `make`, `install`, `strip`, `rm`) are confined to `prepare()`, `build()`, and `_package*()` functions, which are not executed by `makepkg --printsrcinfo`, and therefore are out of scope for this gate.
</details>
<evidence></evidence>
<summary>No top-level malicious execution; only benign metadata and function definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious execution; only benign metadata and function definitions.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, config.x86_64...
[0/6] Reviewing .SRCINFO, config.x86_64, PKGBUILD...
LLM auditresponse for config.x86_64:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `config.x86_64` is a standard Linux kernel configuration file for the x86_64 architecture. It consists entirely of `CONFIG_*` lines setting kernel build options. No executable code, network requests, file operations, or any other dynamic behavior is present. The file is purely declarative and used as input to the kernel build system. There are no signs of obfuscation, encoded commands, or unusual constructs. The file is safe.
</details>
<evidence></evidence>
<summary>Standard kernel config file, no malicious content.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, config.x86_64, PKGBUILD, linux.install...
[1/6] Reviewing .SRCINFO, PKGBUILD, linux.install...
+ Reviewed config.x86_64. Status: SAFE -- Standard kernel config file, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.SRCINFO` metadata file for an AUR kernel package. It defines the package base and three split packages (`linux-mainline`, `linux-mainline-headers`, `linux-mainline-docs`). The source is pulled from the official Linux kernel repository (`git.kernel.org`) at a pinned tag (`v7.3-rc4`). Checksums for both the git source and a config file are provided and not set to SKIP. Three `validpgpkeys` are listed for signature verification. All dependencies, provides, and replaces entries are normal for a kernel package. There are no encoded commands, suspicious network destinations, unexpected file operations, or any other indicators of malicious behavior. This file is purely declarative metadata and follows typical AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard kernel package metadata, no malicious indicators.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD, linux.install, linux.install.pkg...
[2/6] Reviewing PKGBUILD, linux.install, linux.install.pkg...
+ Reviewed .SRCINFO. Status: SAFE -- Standard kernel package metadata, no malicious indicators.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch Linux packaging practices for a custom kernel flavor based on the official `linux` package. The source fetches from `git.kernel.org` using a pinned tag (`v7.3-rc4`), and all operations in `prepare()`, `build()`, and `package()` functions are routine kernel build/install steps. There is no downloading of external scripts, no obfuscated commands, no data exfiltration, and no unusual file modifications outside the expected installation paths. The dynamic function generation at the end using `eval` is a common Arch pattern for split packages and does not introduce any security risk. The `sha256sums` entry for the VCS source is unconventional but harmless (VCS sources ignore the checksum in makepkg). No evidence of supply-chain compromise or malicious behavior was found.
</details>
<evidence></evidence>
<summary>Standard kernel PKGBUILD, no malicious content.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, linux.install, linux.install.pkg, merge-with-testing...
[3/6] Reviewing linux.install, linux.install.pkg, merge-with-testing...
+ Reviewed PKGBUILD. Status: SAFE -- Standard kernel PKGBUILD, no malicious content.
LLM auditresponse for linux.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard kernel package install script for Arch Linux. It performs expected operations: updating kernel module dependencies with `depmod`, checking if `/boot` is a separate partition and warning if unmounted, displaying a compatibility warning when upgrading from kernel versions before 3.13, and removing fallback initramfs symlinks on removal. All commands are legitimate system utilities commonly used in package installation hooks. No network requests, obfuscated code, or unexpected file manipulations are present. The script follows normal AUR packaging practices for kernel headers.
</details>
<evidence></evidence>
<summary>Standard kernel install script, no security issues.</summary>
</security_assessment>

[4/6] Reviewing linux.install.pkg, merge-with-testing...
+ Reviewed linux.install. Status: SAFE -- Standard kernel install script, no security issues.
LLM auditresponse for linux.install.pkg:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard kernel package install script for Arch Linux. It performs expected post-installation tasks: updating kernel module dependencies with `depmod`, checking whether `/boot` is mounted and warning if it is a separate partition but not mounted, and showing a compatibility warning about AT keyboard support during early init for upgrades from kernel versions before 3.13. The `post_remove` function cleans up compat symlinks. There is no network activity, no obfuscated commands, no execution of untrusted code, and no data exfiltration. All operations are within normal packaging conventions for a Linux kernel package.
</details>
<evidence></evidence>
<summary>Standard kernel install script; no security concerns.</summary>
</security_assessment>

[5/6] Reviewing merge-with-testing...
+ Reviewed linux.install.pkg. Status: SAFE -- Standard kernel install script; no security concerns.
LLM auditresponse for merge-with-testing:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a maintainer helper that merges the kernel config file (`config.x86_64`) from the official Arch Linux packaging repository into the AUR package&#39;s master branch. It fetches from `gitlab.archlinux.org` (the official Arch GitLab) and only checks out a configuration file. It does not execute any fetched code, download or run binaries from untrusted sources, exfiltrate data, or perform any obfuscated operations. The script merely automates a routine workflow for keeping the AUR package&#39;s kernel config in sync with Arch&#39;s official release. This is standard packaging practice and not indicative of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Maintainer helper merging kernel config from official Arch repo.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed merge-with-testing. Status: SAFE -- Maintainer helper merging kernel config from official Arch repo.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 38,745
  Completion Tokens: 11,506
  Total Tokens: 50,251
  Total Cost: $0.002196
  Execution Time: 245.23 seconds

Final Status: SAFE


No issues found.
