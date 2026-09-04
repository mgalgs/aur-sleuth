---
package: linux-zencjk-headers
pkgbase: linux-zencjk
pkgver: 7.2.3.zen1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 34296
completion_tokens: 3417
total_tokens: 37713
cost: 0.003644364780
execution_time: 78.26
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 2
injection_attempts: 0
date: 2026-09-04T11:22:54Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package repository.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no security issues.
  - file: config
    status: safe
    summary: Standard kernel config file, no malicious code
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious code.
---

linux-zencjk-headers is built from linux-zencjk
Materializing linux-zencjk-headers from local mirror...
Materialized linux-zencjk-headers
Analyzing linux-zencjk-headers AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD only contains variable definitions (including the optional `Microarchitecture` fallback), source arrays with checksums, and a standard `export` of `KBUILD_BUILD_TIMESTAMP` using a `date` command substitution. No code downloads, executes untrusted payloads, or exfiltrates data at source time. The potentially suspicious operations (patching, building, installing) reside inside `prepare()`, `build()`, and `package()` functions, which are not executed by `makepkg --printsrcinfo`. Therefore, running this command is safe.
</details>
<evidence></evidence>
<summary>Top-level scope is safe; no malicious code executed during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is safe; no malicious code executed during sourcing.
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://www.kernel.org/pub/linux/kernel/v7.x/linux-7.2.3.tar.sign, https://github.com/zen-kernel/zen-kernel/releases/download/v7.2.3-zen1/linux-v7.2.3-zen1.patch.zst.sig
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in AUR package repositories. It ignores all files by default (the `*` line) and then un-ignores only the files that are necessary for the AUR package: `update.sh`, `PKGBUILD`, `.SRCINFO`, and the `.gitignore` itself. This pattern is common among AUR maintainers to keep the repository clean and only track essential packaging files. There is no malicious content, no code execution, no network requests, or any other suspicious behavior.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package repository.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, config...
[1/4] Reviewing .SRCINFO, PKGBUILD, config...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package repository.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .SRCINFO metadata file for an AUR package. It contains no executable code, only declarative fields such as package name, version, sources, checksums, and dependencies. All source URLs point to expected upstream locations (kernel.org, GitHub for zen-kernel, Arch Linux GitLab, and a GitHub repo for cjktty patches). Checksums are provided, with SKIP entries for signature files (standard practice). No obfuscation, network requests, or dangerous operations are present.
</details>
<evidence>
</evidence>
<summary>Standard package metadata, no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, config...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no security issues.
LLM auditresponse for config:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Linux kernel configuration file (.config) for the linux-zencjk-headers AUR package. It contains only typical kernel configuration options (CONFIG_* variables) such as processor features, power management, debugging options, etc. There is no executable code, no network requests, no obfuscated strings, and no instructions that could perform malicious actions. The truncated section also does not contain any suspicious patterns (curl, wget, eval, base64, exec, etc.). The file is completely benign and follows normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard kernel config file, no malicious code</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed config. Status: SAFE -- Standard kernel config file, no malicious code
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch User Repository package for a custom Linux kernel with CJK TTY patches. It sources kernel tarballs, patches, and configuration files from well-known upstream locations (kernel.org, GitHub, GitLab). The only checksums that are set to &quot;SKIP&quot; are for signature files and the Arch Linux config; this is a packaging hygiene choice, not evidence of malice. The prepare() function applies patches with `patch`, and build() runs `make` — both normal for kernel packages. The dynamic function generation using `eval` and `declare -f` is a common AUR idiom to generate package functions for multiple subpackages and is not obfuscated. There are no network requests initiated at build time beyond fetching the declared sources, no execution of downloaded code outside the standard build pipeline, and no exfiltration of local data. No reverse shells, backdoors, or dangerous commands were found.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious code.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 34,296
  Completion Tokens: 3,417
  Total Tokens: 37,713
  Total Cost: $0.003644
  Execution Time: 78.26 seconds

Final Status: SAFE


No issues found.
