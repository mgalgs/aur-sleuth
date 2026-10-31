---
package: zl-limiter-vst3
pkgbase: zl-limiter
pkgver: 0.0.1
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11941
completion_tokens: 3465
total_tokens: 15406
cost: 0.001717261
execution_time: 57.02
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-31T19:11:07Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package build artifacts.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR packaging, no malicious behavior detected.
---

zl-limiter-vst3 is built from zl-limiter
Materializing zl-limiter-vst3 from local mirror...
Cloning https://aur.archlinux.org/zl-limiter.git...
Cloned zl-limiter-vst3
Analyzing zl-limiter-vst3 AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only variable assignments and function definitions. No command substitutions, `eval`, `curl`, `wget`, or any other code that would execute when the file is sourced by `makepkg --printsrcinfo`. The functions `prepare()`, `build()`, and `package_*()` are defined but not invoked during this metadata extraction step. There is no obfuscated or encoded content, and no network requests or file operations are triggered at parse time. Therefore, running `makepkg --printsrcinfo` on this file is safe.
</details>
<evidence></evidence>
<summary>No dangerous top‑level code in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top‑level code in PKGBUILD.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an AUR package repository. It lists patterns to exclude build artifacts (`pkg/`, `src/`, `*.pkg.tar.zst`, `*.zip`) from version control. This is a passive configuration file with no executable or interpretable content. There is no network activity, no obfuscation, and no system modification. The content is entirely consistent with routine AUR maintenance and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package build artifacts.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package build artifacts.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO metadata file for the AUR package `zl-limiter-vst3`. It defines package splits, dependencies, upstream sources, and SHA256 checksums. All sources point to the project's official GitHub repositories over HTTPS, and the checksums are pinned to specific hashes. There are no executable commands, no obfuscated code, no references to external hosts beyond the project's own upstream, and no indicators of supply-chain tampering. The file is parsed by AUR helpers and does not execute any logic itself.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. The source tarballs are pinned to specific versions/commits, fetched over HTTPS from the project&#39;s own GitHub repository, and validated with SHA-256 checksums. No unexpected network requests, obfuscated code, or dangerous commands (eval, curl|bash, base64 decoding, etc.) are present. The `prepare()` function only performs a routine build-time patch (replacing a bundled dependency with a system one) and restructures the source tree as expected for the build system. The `build()` function invokes cmake with `-DFETCHCONTENT_FULLY_DISCONNECTED=ON`, which explicitly prevents CMake from downloading additional content at build time – a security-conscious choice. The `package_*()` functions merely copy built artifacts into the package directory. There is no evidence of exfiltration, backdoors, or any behavior that deviates from the package&#39;s stated purpose of building a mastering limiter audio plugin.
</details>
<evidence></evidence>
<summary>Standard AUR packaging, no malicious behavior detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR packaging, no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,941
  Completion Tokens: 3,465
  Total Tokens: 15,406
  Total Cost: $0.001717
  Execution Time: 57.02 seconds

Final Status: SAFE


No issues found.
