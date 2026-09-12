---
package: kernelsu-dkms
pkgver: 3.3.0+7+gfde078c9
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 20959
completion_tokens: 3618
total_tokens: 24577
cost: 0.00185917830
execution_time: 112.02
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-12T15:23:48Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with no malicious content.
  - file: Makefile
    status: safe
    summary: Standard kernel module Makefile, no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR DKMS package, no malicious behavior.
  - file: 00-kernelsu.conf
    status: safe
    summary: Standard kernel module alias; no security issues.
  - file: updater.sh
    status: safe
    summary: Standard AUR helper script, no malicious behavior.
  - file: dkms.conf
    status: safe
    summary: Standard DKMS config, no security issues.
---

Materializing kernelsu-dkms from local mirror...
Materialized kernelsu-dkms
Analyzing kernelsu-dkms AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the top-level scope of this PKGBUILD. The top-level commands are limited to variable assignments, function definitions, a heredoc that writes a local `DLAGENTS` helper script, `chmod +x DLAGENTS`, and an `export` of `DLAGENTS` for use by makepkg's source downloader. None of these perform network requests, execute fetched payloads, exfiltrate data, or modify system files outside the current working directory during the printsrcinfo step.

The `DLAGENTS` script itself contains git fetch/reset logic, but it is only written and made executable at top level; it is not executed while sourcing the PKGBUILD. It would only run later if makepkg actually downloads the git source, which is outside the scope of `makepkg --printsrcinfo`. Similarly, the `pkgver()`, `build()`, and `package()` functions contain potentially noteworthy operations, but they are not executed during this narrow gate and should be reviewed in the full PKGBUILD audit.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD sourcing only writes a helper script and sets variables; no malicious execution occurs.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD sourcing only writes a helper script and sets variables; no malicious execution occurs.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, 00-kernelsu.conf...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata declaration. It describes a DKMS package (`kernelsu-dkms`) that builds a kernel module from a Git repository. The source points to an upstream fork (`supechicken/KernelSU`, branch `waydroid-experimental`) along with three static files (Makefile, dkms.conf, udev rule). All checksums are either `SKIP` (expected for VCS sources) or provided as fixed hashes. There are no embedded commands, network operations, obfuscated strings, or any executable content in this file. The only potential hygiene note is the use of an unpinned branch (VCS-typical) and one `SKIP` checksum, but neither constitutes malicious behavior. The file is safe.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with no malicious content.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .gitignore, 00-kernelsu.conf, Makefile...
[1/7] Reviewing .gitignore, 00-kernelsu.conf, Makefile...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with no malicious content.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
This Makefile is a standard kernel module build file for KernelSU DKMS. It defines kernel configuration variables, sets the kernel source directory, and provides `all` and `clean` targets using standard kernel build system commands (`make -C $(KDIR) M=$(PWD) modules`). There are no network requests, obfuscated code, dangerous commands, or unexpected operations. The content is consistent with normal packaging practices for DKMS kernel modules.
</details>
<evidence></evidence>
<summary>Standard kernel module Makefile, no malicious content.</summary>
</security_assessment>

[1/7] Reviewing .gitignore, 00-kernelsu.conf, Makefile, PKGBUILD...
[2/7] Reviewing .gitignore, 00-kernelsu.conf, PKGBUILD...
+ Reviewed Makefile. Status: SAFE -- Standard kernel module Makefile, no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an AUR package repository. It lists directories and file patterns that are typically generated during packaging (source extraction, build artifacts, editor configuration). No executable code, network requests, or suspicious data manipulation is present. The content is purely declarative and follows normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no security concerns.</summary>
</security_assessment>

[2/7] Reviewing .gitignore, 00-kernelsu.conf, PKGBUILD, dkms.conf...
[3/7] Reviewing 00-kernelsu.conf, PKGBUILD, dkms.conf...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package for the KernelSU DKMS module. It fetches source from GitHub forks (`supechicken/KernelSU` and `tiann/KernelSU`) using a custom shallow-clone download agent (`DLAGENTS`). That agent is verbose but performs only routine git operations (init, remote add, shallow fetch, reset) on the declared upstream URLs — no data exfiltration, no downloads from unexpected hosts. Build and install steps (`cargo build`, `cp`, `install`, `sed`) are typical for DKMS and kernel-module packaging. The `sha256sums` contain `SKIP` for the VCS source, which is expected. No obfuscated code, backdoors, or supply-chain injection is present.
</details>
<evidence></evidence>
<summary>Standard AUR DKMS package, no malicious behavior.</summary>
</security_assessment>

[4/7] Reviewing 00-kernelsu.conf, dkms.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR DKMS package, no malicious behavior.
[4/7] Reviewing 00-kernelsu.conf, dkms.conf, updater.sh...
LLM auditresponse for 00-kernelsu.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains a single line `alias ksu kernelsu`, which is a standard kernel module alias configuration. It maps the alias "ksu" to the module name "kernelsu". No suspicious commands, network requests, or obfuscated content is present. This is a typical packaging file for the kernelsu-dkms package.
</details>
<evidence></evidence>
<summary>Standard kernel module alias; no security issues.</summary>
</security_assessment>

[5/7] Reviewing dkms.conf, updater.sh...
+ Reviewed 00-kernelsu.conf. Status: SAFE -- Standard kernel module alias; no security issues.
LLM auditresponse for updater.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard AUR maintainer helper that automates version bumping for the kernelsu-dkms package. It fetches the latest release version from the official GitHub repository (`https://github.com/tiann/$_pkg/releases/latest`) and updates the PKGBUILD accordingly. The only network requests are to GitHub to check the latest tag, which is expected for version auto-updating. No downloaded content is executed as code; only the version string is extracted. The rest of the script runs standard packaging commands (`makepkg`, `makepkg --printsrcinfo`, `git commit`, `git push`) that are part of normal AUR maintenance. There is no obfuscation, no unexpected file operations, no exfiltration, and no downloading or executing of arbitrary code from untrusted sources. The behavior is consistent with a typical `update.sh` helper for AUR packages.
</details>
<evidence></evidence>
<summary>Standard AUR helper script, no malicious behavior.</summary>
</security_assessment>

[6/7] Reviewing dkms.conf...
+ Reviewed updater.sh. Status: SAFE -- Standard AUR helper script, no malicious behavior.
LLM auditresponse for dkms.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard DKMS configuration file for building a kernel module. It contains only expected DKMS directives: package name and version (with a placeholder substituted at build time), module name, destination, autoinstall, and a make invocation with environment variables. No suspicious commands, network requests, obfuscation, or file operations are present. This is consistent with normal kernel module packaging practices.
</details>
<evidence></evidence>
<summary>Standard DKMS config, no security issues.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed dkms.conf. Status: SAFE -- Standard DKMS config, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,959
  Completion Tokens: 3,618
  Total Tokens: 24,577
  Total Cost: $0.001859
  Execution Time: 112.02 seconds

Final Status: SAFE


No issues found.
