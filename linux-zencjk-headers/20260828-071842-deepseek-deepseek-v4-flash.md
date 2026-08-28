---
package: linux-zencjk-headers
pkgbase: linux-zencjk
pkgver: 7.1.11.zen1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 34492
completion_tokens: 4123
total_tokens: 38615
cost: 0.003786843228
execution_time: 658.7
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 93712
upstream_named_files: 3
unpinned_sources: 2
date: 2026-08-28T07:18:36Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore; no executable or malicious content found.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard kernel PKGBUILD, no malicious code found.
  - file: config
    status: safe
    summary: Standard kernel config, no malicious content
---

linux-zencjk-headers is built from linux-zencjk
Cloning https://aur.archlinux.org/linux-zencjk.git...
Cloned linux-zencjk-headers
Analyzing linux-zencjk-headers AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level (global) code consists of standard variable assignments, environment exports (`KBUILD_BUILD_HOST`, `KBUILD_BUILD_USER`, `KBUILD_BUILD_TIMESTAMP`), and a dynamic function definition pattern using `eval` and `declare -f`. None of this executes any network requests, downloads, or runs external commands with untrusted arguments at sourcing time. The `source` array fetches kernel sources, patches, and configs from official or well-known upstream locations (kernel.org, GitHub, GitLab), and the extraction of archives is the intended behavior of `makepkg`. The `eval` loop at the end only defines `package_*` functions (which are not called during `--nobuild --noprepare`), using content from the same PKGBUILD—no external or attacker-controlled data is injected. No evidence of malicious code execution during the sourcing or source-fetching steps.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; source fetching is standard.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; source fetching is standard.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: https://www.kernel.org/pub/linux/kernel/v7.x/linux-7.1.11.tar.sign, https://github.com/zen-kernel/zen-kernel/releases/download/v7.1.11-zen1/linux-v7.1.11-zen1.patch.zst.sig
Note: the PKGBUILD names 3 file(s) in the downloaded sources (src/linux-7.1.11/arch/x86/Makefile, src/linux-7.1.11/drivers/media/i2c/msp3400-driver.h, src/linux-7.1.11/kernel/Makefile); they are upstream content and were not reviewed.
Reviewing the 4 file(s) in the AUR repository. The 93712 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple `.gitignore` used in an AUR git repository. It ignores all files except `update.sh`, `PKGBUILD`, `.SRCINFO`, and `.gitignore`. There is no executable code, no network activity, no obfuscation, and no file manipulation beyond standard Git ignore behavior. The presence of an `update.sh` exception is consistent with common AUR maintainer helper scripts and is not itself suspicious. No supply-chain or malicious indicators are present.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore; no executable or malicious content found.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, .gitignore, config...
[1/4] Reviewing .SRCINFO, PKGBUILD, config...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore; no executable or malicious content found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard Arch Linux package metadata file. It defines sources for the linux-zencjk kernel package, including the upstream Linux kernel tarball, zen kernel patches, configuration file, and CJK tty patches. All sources point to legitimate, expected locations (kernel.org, GitHub, and GitLab). Checksums are provided for most files, with SKIP only for detached signature files (standard practice). There are no executable commands, no obfuscated code, no network requests beyond fetching the sources themselves, and no signs of malicious injection. The file is purely declarative and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata; no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, config...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard custom kernel build for Arch Linux, adding the cjktty patch to the ZEN kernel. All sources are fetched over HTTPS from well-known, expected locations: kernel.org, the official zen-kernel GitHub releases, Arch Linux's own GitLab for the config file, and the cjktty-patches GitHub repository. Checksums are provided for all non-signature files; the `SKIP` entries are for detached `.sig` files, which is normal practice. The `prepare()` function applies patches, sets the kernel configuration, and runs `make olddefconfig` — all standard steps. The `build()` and `package_*()` functions use standard build and install commands (`make`, `install`, `cp`, `rm`, `strip`). The `eval` at the end is a common PKGBUILD pattern to dynamically define per-package functions without code duplication; it does not execute any untrusted or user-supplied content. There is no obfuscated code, no network requests beyond the declared sources, no execution of external scripts, and no exfiltration or backdoor mechanisms. The file follows standard Arch packaging practices and shows no sign of supply-chain tampering.
</details>
<evidence></evidence>
<summary>Standard kernel PKGBUILD, no malicious code found.</summary>
</security_assessment>

[3/4] Reviewing config...
+ Reviewed PKGBUILD. Status: SAFE -- Standard kernel PKGBUILD, no malicious code found.
LLM auditresponse for config:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Linux kernel configuration file (`.config`) for the `linux-zencjk-headers` package. It consists entirely of `CONFIG_*` options and section headers, all of which are typical kernel build settings. There are no executable commands, network requests, obfuscated code, or unexpected operations. The content is consistent with a normal kernel configuration and does not contain any evidence of supply-chain compromise or malicious activity.
</details>
<evidence></evidence>
<summary>Standard kernel config, no malicious content</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed config. Status: SAFE -- Standard kernel config, no malicious content
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 34,492
  Completion Tokens: 4,123
  Total Tokens: 38,615
  Total Cost: $0.003787
  Execution Time: 658.70 seconds

Final Status: SAFE


No issues found.
