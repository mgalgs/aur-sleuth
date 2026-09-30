---
package: sunshine-beta-bin
pkgver: 2026.917.155537
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 13013
completion_tokens: 2863
total_tokens: 15876
cost: 0.00131173
execution_time: 37.27
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-17T19:15:42Z
file_verdicts:
  - file: sunshine-beta-bin.install
    status: safe
    summary: Simple informational install script, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Declarative package metadata; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package, no malicious code found.
  - file: sunshine-capabilities.hook
    status: safe
    summary: Safe post-install hook for legitimate capability.
---

Materializing sunshine-beta-bin from local mirror...
Materialized sunshine-beta-bin
Analyzing sunshine-beta-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the global/top-level scope of the PKGBUILD. This PKGBUILD consists entirely of variable assignments and array definitions (pkgname, pkgver, source, sha256sums, etc.) with no command substitutions, backtick commands, function calls, or other executable constructs in the global scope. There is no code that would perform any network requests, file operations, or system modifications during sourcing. The reference to an install script (install=sunshine-beta-bin.install) is merely a filename; it is not executed during `--printsrcinfo`. Therefore, there is no risk of malicious code execution at this step.
</details>
<evidence></evidence>
<summary>No global code execution risk</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No global code execution risk
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: sunshine-beta-bin-2026.917.155537.desktop::https://github.com/LizardByte/Sunshine/blob/master/packaging/linux/dev.lizardbyte.app.Sunshine.desktop
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing PKGBUILD...
[0/4] Reviewing PKGBUILD, .SRCINFO...
[0/4] Reviewing PKGBUILD, .SRCINFO, sunshine-beta-bin.install...
LLM auditresponse for sunshine-beta-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains only informational `echo` statements within `post_install()` and `post_upgrade()` hooks. It prints a note about the package being a pre-compiled binary with Qt6 support. No commands perform network requests, execute external code, modify system files, or deviate from standard packaging practices. There is no obfuscation or hidden functionality.
</details>
<evidence>
</evidence>
<summary>Simple informational install script, no security issues.</summary>
</security_assessment>

[1/4] Reviewing PKGBUILD, .SRCINFO...
+ Reviewed sunshine-beta-bin.install. Status: SAFE -- Simple informational install script, no security issues.
[1/4] Reviewing PKGBUILD, .SRCINFO, sunshine-capabilities.hook...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is metadata for the AUR package. It declares package name, version, dependencies, sources, and checksums. All sources are from the project's own GitHub repository (releases or blob). Two SHA256 sums are set to `SKIP` (the desktop file and the install script), which is standard practice for raw upstream files that are not part of a release tarball and is not inherently malicious. No dangerous commands, obfuscation, or unexpected behavior is present. No evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Declarative package metadata; no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, sunshine-capabilities.hook...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative package metadata; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for sunshine-beta-bin follows standard AUR packaging practices. All sources are fetched from the official LizardByte/Sunshine GitHub repository via HTTPS. The prebuilt binary tarball has a pinned SHA-256 checksum for integrity verification. The desktop file has a SKIP checksum, which is common for raw GitHub blob URLs and not a sign of malice. The package() function only installs the binary and data files, along with a capabilities hook; there are no obfuscated commands, no unexpected network requests at build time, and no execution of fetched code outside the declared sources. No evidence of exfiltration, backdoors, or supply-chain compromise was found.
</details>
<evidence>
</evidence>
<summary>Standard AUR package, no malicious code found.</summary>
</security_assessment>

[3/4] Reviewing sunshine-capabilities.hook...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package, no malicious code found.
LLM auditresponse for sunshine-capabilities.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This pacman hook file applies the `cap_sys_admin` capability to the `sunshine` binary after installation or upgrade. Granting this capability is a standard and expected practice for applications that need to perform Wayland KMS capture, which requires elevated privileges to access graphics hardware. The use of `setcap` is more secure than a SUID binary because it grants only the specific capability needed. There is no evidence of obfuscation, network requests, file exfiltration, or any malicious behavior. The hook operates solely within the scope of the package's own binary and its defined functionality.
</details>
<evidence></evidence>
<summary>Safe post-install hook for legitimate capability.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed sunshine-capabilities.hook. Status: SAFE -- Safe post-install hook for legitimate capability.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,013
  Completion Tokens: 2,863
  Total Tokens: 15,876
  Total Cost: $0.001312
  Execution Time: 37.27 seconds

Final Status: SAFE


No issues found.
