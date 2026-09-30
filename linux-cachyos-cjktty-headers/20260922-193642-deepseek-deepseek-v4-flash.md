---
package: linux-cachyos-cjktty-headers
pkgbase: linux-cachyos-cjktty
pkgver: 7.2.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 57519
completion_tokens: 4140
total_tokens: 61659
cost: 0.003224151
execution_time: 66.3
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-22T19:36:41Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard gitignore with no security concerns.
  - file: LICENSE
    status: safe
    summary: License file only; no executable or suspicious content. Safe.
  - file: REUSE.toml
    status: safe
    summary: Standard REUSE license metadata file, no security issues.
  - file: LICENSE
    status: safe
    summary: Standard ISC license text only; no executable or suspicious content.
  - file: config
    status: safe
    summary: Kernel config file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard kernel PKGBUILD, no malicious behavior found.
---

linux-cachyos-cjktty-headers is built from linux-cachyos-cjktty
Materializing linux-cachyos-cjktty-headers from local mirror...
Materialized linux-cachyos-cjktty-headers
Analyzing linux-cachyos-cjktty-headers AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only executes code in the PKGBUILD's top-level scope. The top-level consists of variable assignments (parameter expansions), conditional additions to `source` and `makedepends` arrays, function definitions (`_is_lto_kernel`, `_is_ci_build`, `_die`), and an `export` command with a `date` command substitution (`KBUILD_BUILD_TIMESTAMP`). The `date` call is standard and benign. The `eval` loop at the end defines split‑package functions by expanding the PKGBUILD's own internal function names; it does not inject external or untrusted content. No remote downloads, obfuscated payloads, or dangerous system operations occur during sourcing. All potentially suspicious activity (downloading patches, building modules, running make) lies inside `prepare()`, `build()`, or `package()` functions, which are **not executed** by `--printsrcinfo`. Therefore, sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level execution found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level execution found.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard package metadata file for an AUR package. It lists sources, checksums, dependencies, and split packages. All source URLs point to legitimate GitHub repositories (CachyOS/linux, cachyos/kernel-patches, Capricornus007/cjktty-patches). Checksums (b2sums) are provided and non-SKIP, verifying the downloaded content. There is no executable code, no network requests for hidden purposes, and no obfuscation. While some patches are fetched from a mutable branch (master) rather than a pinned commit, the use of checksums mitigates the supply-chain risk during the build. This is normal AUR practice and not evidence of malice.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/7] Reviewing .gitignore, LICENSE...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
[1/7] Reviewing .gitignore, LICENSE, LICENSE...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for a git repository, used to exclude all files except those explicitly allowed for tracking (PKGBUILD, keys, .SRCINFO, etc.). This is common practice in AUR packages to maintain a clean repository. No malicious content, network requests, or obfuscated code is present.
</details>
<evidence>
</evidence>
<summary>Standard gitignore with no security concerns.</summary>
</security_assessment>

[2/7] Reviewing LICENSE, LICENSE...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore with no security concerns.
[2/7] Reviewing LICENSE, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain license text (an ISC-style license attributed to Arch Linux Contributors). It contains no executable code, no network operations, no file system modifications, no obfuscated content, and no instructions beyond the standard license grant and disclaimer. There is no evidence of malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>
License file only; no executable or suspicious content. Safe.</summary>
</security_assessment>

[2/7] Reviewing LICENSE, LICENSE, PKGBUILD, REUSE.toml...
[3/7] Reviewing LICENSE, PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- License file only; no executable or suspicious content. Safe.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE configuration file (REUSE.toml) that declares copyright and license information for specific files in the repository. It contains no executable code, no network operations, no system modifications, and no obfuscated content. It is a standard metadata file used for license compliance.
</details>
<evidence>
</evidence>
<summary>Standard REUSE license metadata file, no security issues.</summary>
</security_assessment>

[3/7] Reviewing LICENSE, PKGBUILD, REUSE.toml, config...
[4/7] Reviewing LICENSE, PKGBUILD, config...
+ Reviewed REUSE.toml. Status: SAFE -- Standard REUSE license metadata file, no security issues.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an ISC-style permissive software license (the standard text used by Arch Linux Contributors for their packaging work). It contains only legal boilerplate text: a permission grant, a warranty disclaimer, and a liability limitation. There is no executable code, no network access, no file operations, no obfuscation, and no embedded instructions or resources of any kind. Nothing in this file could exfiltrate data, download or execute code, modify system files, or otherwise deviate from standard packaging practices. It is purely a license document and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard ISC license text only; no executable or suspicious content.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, config...
+ Reviewed LICENSE. Status: SAFE -- Standard ISC license text only; no executable or suspicious content.
LLM auditresponse for config:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Linux kernel configuration file (`.config`) from the linux-cachyos-cjktty-headers package. It contains only `CONFIG_*` options that control kernel compilation. No executable code, network requests, obfuscation, or system modification commands are present. The file is generated by kernel build tools and follows normal packaging practices. No evidence of malicious or dangerous behavior was found.
</details>
<evidence></evidence>
<summary>Kernel config file, no malicious content.</summary>
</security_assessment>

[6/7] Reviewing PKGBUILD...
+ Reviewed config. Status: SAFE -- Kernel config file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD builds a custom Linux kernel with the CachyOS patches and additional CJK TTY font patches. All sources originate from the expected upstream locations: the CachyOS kernel releases on GitHub, the CachyOS kernel-patches repository, and the cjktty-patches repository maintained by one of the package maintainers. No unexpected network destinations are targeted. The build process applies patches, configures kernel options, compiles the kernel and optional external modules (ZFS, NVIDIA open, r8125), and packages the results using standard Arch packaging practices (install, make, etc.). The only notable hygiene concern is that some patch sources are pulled from mutable branches on raw.githubusercontent.com rather than pinned commits, but this is a common AUR practice (especially for patch series that track upstream kernel releases) and does not constitute a supply-chain attack. There are no obfuscated scripts, no encoded commands, no data exfiltration, no backdoors, and no execution of untrusted code outside of the package's normal build process. The file is consistent with standard AUR kernel packaging.
</details>
<evidence></evidence>
<summary>Standard kernel PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard kernel PKGBUILD, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 57,519
  Completion Tokens: 4,140
  Total Tokens: 61,659
  Total Cost: $0.003224
  Execution Time: 66.30 seconds

Final Status: SAFE


No issues found.
