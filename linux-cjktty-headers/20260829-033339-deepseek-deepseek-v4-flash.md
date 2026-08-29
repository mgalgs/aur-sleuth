---
package: linux-cjktty-headers
pkgbase: linux-cjktty
pkgver: 7.1.11.arch1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 37331
completion_tokens: 2852
total_tokens: 40183
cost: 0.00368723880
execution_time: 304.76
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: ok
upstream_files: 93712
upstream_named_files: 3
unpinned_sources: 2
date: 2026-08-29T03:33:29Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: A standard .gitignore file with no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only .SRCINFO; sources match package purpose; no malicious behavior found.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no issues.
  - file: config
    status: safe
    summary: Standard kernel config, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard kernel PKGBUILD, no malicious content.
---

linux-cjktty-headers is built from linux-cjktty
Cloning https://aur.archlinux.org/linux-cjktty.git...
Cloned linux-cjktty-headers
Analyzing linux-cjktty-headers AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines standard variables, source URLs from known upstream locations (kernel.org, Arch GitLab, GitHub raw for cjktty patches), and checksums (some SKIP). Global scope contains only variable assignments, function definitions (which are not invoked during sourcing), and benign `export` commands that run `date`. No network requests, code execution, or data exfiltration occurs at the top level or via `pkgver()` (which is absent). The `for` loop at the end defines `package_*` functions via `eval`, but this is a legitimate pattern to create split package functions; it does not execute any untrusted payload. Therefore, running `makepkg --nobuild --nodeps --noprepare` and `--printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No malicious code in global scope or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope or pkgver().
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.11.tar.sign, https://github.com/archlinux/linux/releases/download/v7.1.11-arch1/linux-v7.1.11-arch1.patch.zst.sig
Note: the PKGBUILD names 3 file(s) in the downloaded sources (src/linux-7.1.11/arch/x86/Makefile, src/linux-7.1.11/drivers/media/i2c/msp3400-driver.h, src/linux-7.1.11/kernel/Makefile); they are upstream content and were not reviewed.
Reviewing the 5 file(s) in the AUR repository. The 93712 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file that lists common build artifacts and source directories to be ignored by version control. It contains no executable code, no network requests, no obfuscation, and no system modifications. The patterns `*.patch.*`, `*.patch`, `*.tar.*`, `src/`, and `pkg/` are all expected entries for a package build environment (e.g., AUR packages using `makepkg`). There is no evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>A standard .gitignore file with no security concerns.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/5] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- A standard .gitignore file with no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a `.SRCINFO` metadata file for the `linux-cjktty-headers` AUR package. It contains only package metadata: descriptions, dependencies, source URLs, PGP key IDs, and checksums. There is no executable code, no build logic, and no opportunity for runtime code execution within this file itself.

The source URLs are consistent with the package's stated purpose: the upstream Linux kernel tarball and signature from kernel.org, the official Arch Linux patch from GitHub, the Arch Linux package config from gitlab.archlinux.org, and the cjktty patches from the `bigshans/cjktty-patches` GitHub repository. All of these are directly related to building a Linux kernel with CJK TTY patches.

Some hygiene considerations exist: the `.sig` file checksums are `SKIP`, and the cjktty patches are fetched from a `master` branch without a pinned commit. These are reproducibility/trust concerns, not evidence of malicious behavior. No obfuscated code, suspicious network endpoints, dangerous commands, or unexpected file operations appear in this file.
</details>
<evidence>

</evidence>
<summary>
Metadata-only .SRCINFO; sources match package purpose; no malicious behavior found.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, config...
[2/5] Reviewing .nvchecker.toml, PKGBUILD, config...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only .SRCINFO; sources match package purpose; no malicious behavior found.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for `nvchecker`, a tool used to check for new upstream releases. It defines a source named &quot;linux&quot; that monitors the GitHub repository `archlinux/linux` for new tags matching the pattern `v\d+(\.\d+)*-arch\d+`. It also specifies a pattern replacement to convert hyphens before letters to dots, and sets a version prefix of &quot;v&quot;. There is no executable code, network requests outside of what `nvchecker` normally does, obfuscation, or any other malicious behavior. The file is a standard packaging helper configuration and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config, no issues.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, config...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no issues.
LLM auditresponse for config:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Linux kernel configuration file (`config`), automatically generated for the `linux-cjktty-headers` package. It contains only kernel build options (e.g., `CONFIG_*` entries) and no executable code, network requests, obfuscation, or file operations. There is no evidence of supply-chain attack or malicious behavior. The file's content is consistent with a typical Arch Linux kernel `.config` and does not deviate from expected packaging practices.
</details>
<evidence></evidence>
<summary>Standard kernel config, no malicious content.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed config. Status: SAFE -- Standard kernel config, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux kernel packaging practices. It fetches the upstream kernel source from kernel.org, the official Arch Linux kernel patches from GitHub (archlinux/linux), and CJK TTY patches from a GitHub repository (bigshans/cjktty-patches). All sources are verified with checksums where provided, and the maintainer has included valid PGP keys for the kernel developers. The build and package functions are typical for kernel packages, with no evidence of obfuscation, unauthorized network requests, or malicious commands. The only unusual aspect is the use of mutable references (master branch) for the patch sources, but this is mitigated by the inclusion of checksums, which pin the exact content. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard kernel PKGBUILD, no malicious content.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard kernel PKGBUILD, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 37,331
  Completion Tokens: 2,852
  Total Tokens: 40,183
  Total Cost: $0.003687
  Execution Time: 304.76 seconds

Final Status: SAFE


No issues found.
