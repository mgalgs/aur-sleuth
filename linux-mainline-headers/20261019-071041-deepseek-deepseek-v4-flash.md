---
package: linux-mainline-headers
pkgbase: linux-mainline
pkgver: 7.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 39202
completion_tokens: 7392
total_tokens: 46594
cost: 0.004912726
execution_time: 72.7
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-19T07:10:40Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard kernel package metadata; no malicious content or suspicious behavior found.
  - file: config.x86_64
    status: safe
    summary: Standard Linux kernel configuration file; no malicious or suspicious content found.
  - file: PKGBUILD
    status: safe
    summary: Standard mainline kernel PKGBUILD; no malicious behavior found.
  - file: linux.install
    status: safe
    summary: "Standard kernel install hooks: depmod, /boot warning, initramfs cleanup. No malicious behavior found."
  - file: linux.install.pkg
    status: safe
    summary: Standard kernel install script; no malicious or suspicious behavior found.
  - file: merge-with-testing
    status: safe
    summary: Routine Git helper for merging official Arch Linux packaging configs; no malicious behavior.
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
Running `makepkg --printsrcinfo` only sources the PKGBUILD's top-level code. In this file, the top-level scope contains normal package metadata definitions, exports, a `source` array, checksums, function definitions, and a `for` loop that uses `eval` with `declare -f` to generate split-package wrapper functions. The `eval` is not loading or executing external data; it interpolates function bodies already defined in this same PKGBUILD and only defines new `package_*` functions. `makepkg --printsrcinfo` does not call `prepare()`, `build()`, or the generated `package_*` functions, so their bodies are not executed during this command.

The only top-level command substitution is `$(date -Ru${SOURCE_DATE_EPOCH:+d @$SOURCE_DATE_EPOCH})`, which is a benign timestamp generation used for reproducible kernel builds. There is no top-level network access, no download-and-execute behavior, no data exfiltration, and no obfuscated or encoded payload. The git source is fetched later by makepkg, not during `--printsrcinfo`. The use of `eval` is slightly unusual but serves a legitimate packaging purpose and is not evidence of malice.
</details>
<evidence></evidence>
<summary>Top-level code is benign; eval only defines package functions. Safe for printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code is benign; eval only defines package functions. Safe for printsrcinfo.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, PKGBUILD...
[0/6] Reviewing .SRCINFO, PKGBUILD, config.x86_64...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO describes a standard Arch Linux kernel package (`linux-mainline`) with three subpackages: kernel, headers, and docs. The source is the official Linux kernel repository at `git.kernel.org`, pinned to a tag, plus a `config.x86_64` file. Checksums are present for both sources, and PGP signing keys are listed. All dependency and package metadata are consistent with normal kernel packaging practice.

There is no evidence of malicious behavior: no network fetches beyond the package's declared upstream source, no obfuscated commands, no suspicious file operations, and no execution of untrusted code. The file contains only declarative packaging metadata. Nothing here deviates from standard AUR packaging.
</details>
<evidence>
</evidence>
<summary>
Standard kernel package metadata; no malicious content or suspicious behavior found.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, PKGBUILD, config.x86_64, linux.install...
[1/6] Reviewing PKGBUILD, config.x86_64, linux.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard kernel package metadata; no malicious content or suspicious behavior found.
LLM auditresponse for config.x86_64:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Linux kernel configuration file (`config.x86_64`) for the `linux-mainline-headers` AUR package. It consists entirely of `CONFIG_*` kernel build options in the normal Kconfig format, with no executable code, network operations, encoded payloads, or file-manipulation logic. The visible head and tail sections contain only routine kernel settings (CPU, power management, memory, tracing, debugging, library options). No suspicious patterns (curl, wget, eval, base64, exec) appear, and the omitted region is consistent with standard boilerplate kernel configuration. A kernel config file is expected to be large and highly technical; none of its contents deviate from ordinary packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard Linux kernel configuration file; no malicious or suspicious content found.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, linux.install...
+ Reviewed config.x86_64. Status: SAFE -- Standard Linux kernel configuration file; no malicious or suspicious content found.
[2/6] Reviewing PKGBUILD, linux.install, linux.install.pkg...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR PKGBUILD for building the Linux mainline kernel. The source is fetched from the official kernel.org git repository at a fixed tag (`v7.3`), and the config file is provided locally. No unexpected network hosts, `curl|bash`, obfuscated payloads, or data-exfiltration patterns are present.

The `eval` usage near the end is a routine pattern to generate split-package functions from the hardcoded `pkgname` array and the maintainer-defined `_package*` functions. The strings evaluated come from the PKGBUILD itself, not from user or network-controlled input, so it is not obfuscation or injection.

All operations (patching, `olddefconfig`, `make`, installing files into `$pkgdir`) are normal kernel packaging workflow. No unchecked `git pull`, `fetch`, or execution of downloaded scripts occurs at build time. The package is consistent with legitimate Arch kernel packaging practices.
</details>
<evidence></evidence>
<summary>Standard mainline kernel PKGBUILD; no malicious behavior found.</summary>
</security_assessment>

[3/6] Reviewing linux.install, linux.install.pkg...
+ Reviewed PKGBUILD. Status: SAFE -- Standard mainline kernel PKGBUILD; no malicious behavior found.
[3/6] Reviewing linux.install, linux.install.pkg, merge-with-testing...
LLM auditresponse for linux.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux kernel package install script. The `post_install` and `post_upgrade` hooks run `depmod` to rebuild kernel module dependencies for the installed kernel version, which is expected packaging behavior. The `post_upgrade` hook also checks whether `/boot` is a separate unmounted partition and warns during upgrades, and uses `vercmp` to issue legacy upgrade warnings — all normal for kernel packages. The `post_remove` hook removes the package's own initramfs symlinks under `boot/`, consistent with standard kernel cleanup. No network access, obfuscated code, suspicious downloads, credential access, or tampering with unrelated system files is present. The file is a routine package install hook and is safe.
</details>
<evidence>
</evidence>
<summary>
Standard kernel install hooks: depmod, /boot warning, initramfs cleanup. No malicious behavior found.
</summary>
</security_assessment>

[4/6] Reviewing linux.install.pkg, merge-with-testing...
+ Reviewed linux.install. Status: SAFE -- Standard kernel install hooks: depmod, /boot warning, initramfs cleanup. No malicious behavior found.
LLM auditresponse for linux.install.pkg:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux kernel package install script. It performs routine post-install actions: running `depmod` for the specific kernel version, warning if `/boot` is a separate unmounted partition, checking kernel version compatibility for an initramfs hook, and removing initramfs symlinks during removal. There are no network operations, no encoded or obfuscated commands, no unexpected file writes, and no execution of downloaded content. The `rm -f boot/...` lines match the conventional Arch kernel install script behavior for removing the package&#39;s own initramfs images. No supply-chain attack indicators were found.
</details>
<evidence>
</evidence>
<summary>
Standard kernel install script; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[5/6] Reviewing merge-with-testing...
+ Reviewed linux.install.pkg. Status: SAFE -- Standard kernel install script; no malicious or suspicious behavior found.
LLM auditresponse for merge-with-testing:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a maintainer helper script for merging configuration files from the Arch Linux packaging repository. It adds an official Arch Linux GitLab remote, fetches the `main` branch, creates a local `merge` branch, and copies `config.x86_64` from the upstream packaging repo into the local branch. This is routine upstream synchronization behavior, not a supply-chain attack.

The script does perform a destructive `git branch -D merge` if a local branch named `merge` exists, but this is consistent with the script's stated purpose of creating a fresh merge branch. It does not download or execute external code, exfiltrate data, use obfuscation, or modify system files outside the Git repository. The network destination is the official Arch Linux packaging repository, which is directly related to the package's purpose.
</details>
<evidence>
</evidence>
<summary>
Routine Git helper for merging official Arch Linux packaging configs; no malicious behavior.
</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed merge-with-testing. Status: SAFE -- Routine Git helper for merging official Arch Linux packaging configs; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 39,202
  Completion Tokens: 7,392
  Total Tokens: 46,594
  Total Cost: $0.004913
  Execution Time: 72.70 seconds

Final Status: SAFE


No issues found.
