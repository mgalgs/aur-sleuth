---
package: linux-zencjk-headers
pkgbase: linux-zencjk
pkgver: 7.2.2.zen1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 34527
completion_tokens: 5249
total_tokens: 39776
cost: 0.00376949300
execution_time: 431.92
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 94852
upstream_named_files: 3
unpinned_sources: 2
date: 2026-08-29T11:31:08Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package repository.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only kernel package file; no malicious behavior detected. Safe.
  - file: config
    status: safe
    summary: Standard kernel config; no malicious content detected.
  - file: PKGBUILD
    status: safe
    summary: Standard kernel PKGBUILD with cjktty patches; no evidence of injected malicious behavior.
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
The PKGBUILD does not contain any malicious top-level code that would execute during `makepkg --nobuild --nodeps --noprepare`. The global scope consists of variable assignments, exports of build environment variables, and a loop that defines package functions using `eval`. The `eval` usage is safe: it only redefines functions by copying the bodies of the existing underscore-prefixed functions, which are themselves standard packaging functions (installing kernel files, headers, etc.). No command substitution or code injection from external sources occurs. The `source` array fetches files from trusted upstream sources (kernel.org, zen-kernel GitHub, Arch Linux GitLab, and a GitHub repository for cjktty patches). All checksums are provided (with SKIP for .sig files, as expected for PGP verification). No `pkgver()` function exists that could execute arbitrary code. Therefore, running the requested commands is safe.
</details>
<evidence></evidence>
<summary>No dangerous code executes; fetching sources and parsing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code executes; fetching sources and parsing is safe.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: https://www.kernel.org/pub/linux/kernel/v7.x/linux-7.2.2.tar.sign, https://github.com/zen-kernel/zen-kernel/releases/download/v7.2.2-zen1/linux-v7.2.2-zen1.patch.zst.sig
Note: the PKGBUILD names 3 file(s) in the downloaded sources (src/linux-7.2.2/arch/x86/Makefile, src/linux-7.2.2/drivers/media/i2c/msp3400-driver.h, src/linux-7.2.2/kernel/Makefile); they are upstream content and were not reviewed.
Reviewing the 4 file(s) in the AUR repository. The 94852 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files except the essential packaging files (`PKGBUILD`, `.SRCINFO`, `update.sh`, and `.gitignore` itself). There is no executable content, no network requests, no obfuscation, and no system modifications. The file is benign and follows normal AUR repository practices.</details>
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
This `.SRCINFO` file is a standard AUR package metadata file for a custom Linux kernel build. It declares sources from the official kernel.org domain, the zen-kernel upstream GitHub repository, the Arch Linux packaging repository for `linux-zen`, and the cjktty patch project. All listed downloads are from the projects' own upstream or trusted distribution locations, and no unexpected hosts or executable-download-and-run patterns are present.

The file contains only metadata: source URLs, checksums, PGP keys, dependencies, and package descriptions. There is no shell code, no obfuscation, no network exfiltration, and no build/install logic that could execute attacker-controlled content. The `SKIP` checksums apply to `.sign` signature files, which is ordinary practice. One notable hygiene concern is that the declared kernel version `7.2.2` does not match current real Linux kernel versioning (which is 6.x), so the source URLs may be non-existent or the package may be a placeholder/experiment; however, this is a correctness/availability concern, not evidence of malicious behavior. Overall, the file does not show signs of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Metadata-only kernel package file; no malicious behavior detected. Safe.
</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, config...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only kernel package file; no malicious behavior detected. Safe.
LLM auditresponse for config:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Linux kernel configuration file (`.config`) used to define kernel build parameters. It contains thousands of lines of configuration options like `CONFIG_CC_VERSION_TEXT`, `CONFIG_LOCALVERSION`, etc. There are no executable commands, no network requests, no obfuscated code, and no signs of malicious injection. The file is purely declarative and follows normal AUR packaging practices for custom kernel builds. Even with the truncation, the head and tail show typical kernel config content, and no suspicious patterns (curl, wget, eval, base64, exec) were found in the visible portions. The file poses no supply-chain security risk.
</details>
<evidence></evidence>
<summary>Standard kernel config; no malicious content detected.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed config. Status: SAFE -- Standard kernel config; no malicious content detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch Linux kernel packaging script modeled on the official `linux-zen` package, with additional CJK TTY patches. All sources are fetched over HTTPS from expected upstream locations: kernel.org, the zen-kernel GitHub releases page, the Arch Linux GitLab packaging config, and the cjktty-patches GitHub repository. Payload files have scheduled b2sums; only `.sign` PGP signature files use `SKIP`, which is normal because their integrity is meant to be handled by PGP verification.

The `prepare()` function only applies patches already declared in the `source` array and copies the kernel config; no files outside the kernel build tree are modified. `build()` runs the kernel's own build system. The package functions install kernel modules, headers, and build files into `$pkgdir`. The `eval` block is used solely to generate the standard package functions from existing local function definitions; it does not evaluate attacker-controlled or external input.

There are no suspicious network calls, no obfuscated code, no encoded payloads, no attempts to read or exfiltrate sensitive local data, and no execution of remotely fetched scripts. The third-party cjktty patches are intentional upstream functionality for this package and are checksummed. Any minor supply-chain considerations, such as relying on community-maintained patches, are ordinary AUR packaging trade-offs and do not indicate malice.
</details>
<evidence></evidence>
<summary>Standard kernel PKGBUILD with cjktty patches; no evidence of injected malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard kernel PKGBUILD with cjktty patches; no evidence of injected malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 34,527
  Completion Tokens: 5,249
  Total Tokens: 39,776
  Total Cost: $0.003769
  Execution Time: 431.92 seconds

Final Status: SAFE


No issues found.
