---
package: linux-lqxcjk-docs
pkgbase: linux-lqxcjk
pkgver: 7.2.3.lqx2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 20074
completion_tokens: 2820
total_tokens: 22894
cost: 0.002278414684
execution_time: 105.95
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-04T11:11:20Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata, no executable code, standard AUR package.
  - file: linux-lqx.install
    status: safe
    summary: Routine post-install script, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard kernel PKGBUILD, no malicious content.
---

linux-lqxcjk-docs is built from linux-lqxcjk
Materializing linux-lqxcjk-docs from local mirror...
Materialized linux-lqxcjk-docs
Analyzing linux-lqxcjk-docs AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD global scope contains only standard variable definitions, arrays, and a `for` loop that defines split-package functions using `eval`. The `eval` pattern is a standard Arch Linux technique for generating `package_*()` functions from existing `_package*()` function bodies. It builds the function definition string from known variables (`pkgname` and function names defined elsewhere in the file) and does not introduce untrusted or dynamic code. The only command substitution at top level is `$(date ...)` for setting `KBUILD_BUILD_TIMESTAMP`, which is benign and does not perform network operations or exfiltrate data. All other activity (patching, building, installing) is inside functions that are not called during `--printsrcinfo`. There is no evidence of malicious code execution at source time.
</details>
<evidence>
</evidence>
<summary>Sourcing this PKGBUILD is safe for --printsrcinfo</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing this PKGBUILD is safe for --printsrcinfo
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.tar.sign
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, linux-lqx.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a metadata file for the AUR package `linux-lqxcjk`. It contains only declarative fields: package name, version, description, dependencies, sources with URLs, checksums, and PGP keys. There are no scripts, no executable commands, no obfuscated code, and no network requests or file operations beyond what is standard for kernel packages. The sources point to kernel.org and GitHub (the project's own patches repository). Checksums are present for most sources; the SKIP on the `.sign` file is normal for signature verification. No suspicious behavior or malicious content is present.
</details>
<evidence></evidence>
<summary>Declarative metadata, no executable code, standard AUR package.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, linux-lqx.install...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata, no executable code, standard AUR package.
LLM auditresponse for linux-lqx.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard post-install script for an AUR kernel package (linux-lqx). The `_disable_irqbalance` function checks whether `systemctl` exists, then checks if `irqbalance.service` is enabled, and disables it if so. This is a documented best practice for the Liquorix kernel, which handles IRQ distribution in-kernel and can conflict with the `irqbalance` daemon. The script performs no network requests, does not fetch or execute any external code, does not read or exfiltrate sensitive files, and does not perform any obfuscated or encoded operations. It only modifies a systemd service state, which is a routine and harmless configuration change within the package's stated purpose.</details>
<evidence></evidence>
<summary>Routine post-install script, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed linux-lqx.install. Status: SAFE -- Routine post-install script, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Linux kernel PKGBUILD for the `linux-lqxcjk` package (a custom kernel with Liquorix and CJK TTY patches). All sources are fetched via HTTPS from well-known upstream locations (kernel.org, GitHub, GitLab) and are pinned with SHA-512 checksums. The signature file (`.tar.sign`) is marked `SKIP`, which is normal for detached signatures. No obfuscated code, base64 decoding, or unexpected network requests (e.g. `curl|bash`) are present. The `eval` construct is used solely for split-package function definition, a common AUR pattern, and does not introduce untrusted input. The `prepare()` function applies patches via `patch` and configures the kernel—all routine operations. There is no exfiltration, backdoor, or tampering with system files outside the package’s scope.
</details>
<evidence></evidence>
<summary>Standard kernel PKGBUILD, no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard kernel PKGBUILD, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,074
  Completion Tokens: 2,820
  Total Tokens: 22,894
  Total Cost: $0.002278
  Execution Time: 105.95 seconds

Final Status: SAFE


No issues found.
