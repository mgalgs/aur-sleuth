---
package: linux-cachyos-bore-headers
pkgbase: linux-cachyos-bore
pkgver: 7.2.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 47237
completion_tokens: 5354
total_tokens: 52591
cost: 0.0050296260
execution_time: 97.14
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 94913
upstream_named_files: 4
unpinned_sources: 1
date: 2026-08-28T15:07:19Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR kernel metadata; no malicious behavior. Unpinned patch branch noted as hygiene only.
  - file: PKGBUILD
    status: safe
    summary: Standard kernel PKGBUILD, no malicious code.
  - file: config
    status: safe
    summary: Kernel config file with no suspicious content.
---

linux-cachyos-bore-headers is built from linux-cachyos-bore
Cloning https://aur.archlinux.org/linux-cachyos-bore.git...
Cloned linux-cachyos-bore-headers
Analyzing linux-cachyos-bore-headers AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
For the narrow `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` gate, this PKGBUILD does not execute genuinely malicious code. The default source set contains the CachyOS kernel tarball, its `.asc` signature, a local `config` file, and one scheduler patch fetched from `raw.githubusercontent.com/cachyos/kernel-patches`. These are ordinary upstream project sources for a kernel package; fetching and extracting them does not execute them. No `curl | bash`, no hidden binary downloads, and no exfiltration is present in the top-level scope.
</details>
<details>
The top-level code defines helper functions, sets variables, conditionally appends sources, exports build metadata with a `date` command substitution, and uses an `eval` to define per-package functions from already-defined local functions. While `eval` is worth noting for the later full review, it does not source or execute any untrusted downloaded content. The `prepare()`, `build()`, and `package()` functions are not run during this gate because of `--noprepare` and `--nobuild`. The SKIP checksum on the `.asc` file is a trust/hygiene matter, not grounds to fail this gate; unverified archives are fetched here specifically so they can be audited.
</details>
<evidence>
</evidence>
<summary>
Safe: source fetching and top-level PKGBUILD code show no malicious behavior.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: source fetching and top-level PKGBUILD code show no malicious behavior.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: https://github.com/CachyOS/linux/releases/download/cachyos-7.2.2-1/cachyos-7.2.2-1.tar.gz.asc
Note: the PKGBUILD names 4 file(s) in the downloaded sources (src/cachyos-7.2.2-1/arch/x86/Makefile, src/cachyos-7.2.2-1/drivers/media/i2c/msp3400-driver.h, src/cachyos-7.2.2-1/kernel/Makefile and 1 more); they are upstream content and were not reviewed.
Reviewing the 3 file(s) in the AUR repository. The 94913 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, config...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata for the `linux-cachyos-bore` kernel package. It declares sources from the CachyOS GitHub repositories (release tarball, OpenPGP signature, kernel patches), a local `config` file, and a patch fetched from the CachyOS kernel-patches repository. No executable code, network exfiltration, obfuscation, or unusual system modification is present.

The `b2sums = SKIP` entry applies only to the `.asc` OpenPGP signature file, which is normal because signature files are not independently hashed in this pattern. The patch source points to a mutable `master` branch, which is an unpinned-supply-chain hygiene concern but not malicious. Valid PGP keys are provided for the release tarball signature, and all other checksums are pinned. This file contains no evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard AUR kernel metadata; no malicious behavior. Unpinned patch branch noted as hygiene only.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, config...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR kernel metadata; no malicious behavior. Unpinned patch branch noted as hygiene only.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard kernel package from the CachyOS project. It downloads the kernel source from the official CachyOS GitHub releases, patches from the cachyos/kernel-patches repository, and optional NVIDIA/r8125 modules from their respective official sources. All build steps are typical for a custom kernel: applying patches, configuring, compiling, installing modules and headers. There is no obfuscated code, no unexpected network requests to unknown hosts, no data exfiltration, no execution of untrusted scripts, and no backdoors. The use of SKIP for the .asc checksum is normal as the PGP signature verification replaces the need for a checksum. The unpinned VCS source for r8125 is a common practice. No malicious behavior is evident.
</details>
<evidence>
</evidence>
<summary>Standard kernel PKGBUILD, no malicious code.</summary>
</security_assessment>

[2/3] Reviewing config...
+ Reviewed PKGBUILD. Status: SAFE -- Standard kernel PKGBUILD, no malicious code.
LLM auditresponse for config:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Linux kernel configuration file (`.config`) generated by the kernel build system. It contains only `CONFIG_*` kernel option definitions, comments, and section headers. There are no executable scripts, network requests, obfuscated code, or any commands that deviate from normal kernel packaging. No `curl`, `wget`, `eval`, `base64`, or other suspicious patterns were found in the provided content. The file is typical for a custom kernel package such as `linux-cachyos-bore-headers` and does not exhibit any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Kernel config file with no suspicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed config. Status: SAFE -- Kernel config file with no suspicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 47,237
  Completion Tokens: 5,354
  Total Tokens: 52,591
  Total Cost: $0.005030
  Execution Time: 97.14 seconds

Final Status: SAFE


No issues found.
