---
package: linux-mainline-docs
pkgbase: linux-mainline
pkgver: 7.4rc3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 38809
completion_tokens: 3866
total_tokens: 42675
cost: 0.00418869
execution_time: 44.32
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-16T04:05:15Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard kernel PKGBUILD; no supply chain risk.
  - file: config.x86_64
    status: safe
    summary: Standard kernel config; no security issues.
  - file: linux.install
    status: safe
    summary: Standard kernel package install script, no malicious activity.
  - file: linux.install.pkg
    status: safe
    summary: Standard kernel install script, no malicious content.
  - file: merge-with-testing
    status: safe
    summary: Standard maintainer git workflow helper script.
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
The PKGBUILD's global scope contains only variable definitions, array assignments, exports, and a `for` loop that defines package functions via `eval` using the already-defined `_package*` functions. The only command substitution is `export KBUILD_BUILD_TIMESTAMP="$(date -Ru${SOURCE_DATE_EPOCH:+d @$SOURCE_DATE_EPOCH})"`, which invokes the standard `date` utility with a timestamp argument derived from an environment variable. This is a routine packaging pattern and does not execute untrusted or externally-supplied code. No network requests, file downloads, or other dangerous operations occur at source time. Functions (`prepare`, `build`, `package_*`) are defined but not invoked during `makepkg --printsrcinfo`, so any code within them is out of scope for this gate.
</details>
<evidence></evidence>
<summary>Sourcing the PKGBUILD for metadata is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing the PKGBUILD for metadata is safe.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, PKGBUILD...
[0/6] Reviewing .SRCINFO, PKGBUILD, config.x86_64...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for AUR package definitions. It declares package sources from `kernel.org`, lists valid PGP keys, and includes SHA256 checksums. There are no executable scripts, network fetch commands, obfuscated code, or any content that deviates from normal packaging practices. The package provides kernel documentation and headers, which is expected for a Linux kernel package. No signs of supply-chain attack or malice are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with no security issues.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, PKGBUILD, config.x86_64, linux.install...
[1/6] Reviewing PKGBUILD, config.x86_64, linux.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux packaging practices for building a custom kernel from the upstream Linux kernel git repository (kernel.org). The source is pinned to a specific tag (`v7.4-rc3`) with a valid checksum and PGP keys. There are no unexpected network requests, obfuscated code, encoded commands, or attempts to exfiltrate data. The `eval` and `declare -f` usage at the end is a common pattern in split PKGBUILDs to dynamically generate package functions; it does not introduce executable code from external input. The build process solely compiles the kernel, headers, and documentation, installing them into `$pkgdir`. No supply chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard kernel PKGBUILD; no supply chain risk.</summary>
</security_assessment>

[1/6] Reviewing PKGBUILD, config.x86_64, linux.install, linux.install.pkg...
[2/6] Reviewing config.x86_64, linux.install, linux.install.pkg...
+ Reviewed PKGBUILD. Status: SAFE -- Standard kernel PKGBUILD; no supply chain risk.
LLM auditresponse for config.x86_64:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Linux kernel configuration (`.config`) file for x86_64. It contains only `CONFIG_*` option definitions and their values, which are used to configure the kernel build. There is no executable code, no network requests, no downloads, no obfuscated strings, no system modification commands, and no deviation from normal kernel packaging practice. The truncated lines show only more of the same kernel options. No evidence of injected malicious code or supply-chain attack indicators was found.
</details>
<evidence></evidence>
<summary>Standard kernel config; no security issues.</summary>
</security_assessment>

[2/6] Reviewing config.x86_64, linux.install, linux.install.pkg, merge-with-testing...
[3/6] Reviewing linux.install, linux.install.pkg, merge-with-testing...
+ Reviewed config.x86_64. Status: SAFE -- Standard kernel config; no security issues.
LLM auditresponse for linux.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux kernel package install script. It contains post-install, post-upgrade, and post-remove hooks that perform expected operations: updating module dependencies with `depmod`, warning about an unmounted `/boot` partition, and cleaning up initramfs symlinks on removal. There is no obfuscated code, no network requests, no downloads, and no modification of files outside the kernel package's scope. All commands (`depmod`, `findmnt`, `mountpoint`, `vercmp`, `rm`) are legitimate and commonly used in kernel packaging. No evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard kernel package install script, no malicious activity.</summary>
</security_assessment>

[4/6] Reviewing linux.install.pkg, merge-with-testing...
+ Reviewed linux.install. Status: SAFE -- Standard kernel package install script, no malicious activity.
LLM auditresponse for linux.install.pkg:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script (`.install` file) for a mainline kernel package. It performs routine post-installation operations: updating kernel module dependencies with `depmod`, warning if `/boot` is an unmounted separate partition, and removing old initramfs symlinks on removal. All commands (`depmod`, `findmnt`, `mountpoint`, `rm`, `vercmp`, `echo`) are standard system utilities used in legitimate packaging workflows. There are no network requests, obfuscated code, unexpected file writes, or any behavior that deviates from normal kernel package management. The script does exactly what it advertises and contains no injected malicious code.
</details>
<evidence></evidence>
<summary>Standard kernel install script, no malicious content.</summary>
</security_assessment>

[5/6] Reviewing merge-with-testing...
+ Reviewed linux.install.pkg. Status: SAFE -- Standard kernel install script, no malicious content.
LLM auditresponse for merge-with-testing:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a maintainer helper script for the linux-mainline-docs AUR package. It automates merging configuration changes from the official Arch Linux packaging repository (gitlab.archlinux.org) into the local AUR branch. The script performs standard git operations: deleting a temporary branch, adding a remote pointing to the official Arch packaging repo, fetching from it, creating a tracking branch, extracting version info, and merging a config file. It does not download or execute arbitrary code, exfiltrate data, modify system files outside the repository, or use obfuscated commands. The only network operation is a fetch from a well-known, official Arch Linux GitLab instance, which is the expected upstream source for the package. The script advises manual review of the PKGBUILD before merging, encouraging maintainer oversight. There is no evidence of malicious or injected code.
</details>
<evidence></evidence>
<summary>Standard maintainer git workflow helper script.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed merge-with-testing. Status: SAFE -- Standard maintainer git workflow helper script.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 38,809
  Completion Tokens: 3,866
  Total Tokens: 42,675
  Total Cost: $0.004189
  Execution Time: 44.32 seconds

Final Status: SAFE


No issues found.
