---
package: t3code-nightly-bin
pkgver: 0.1.11_nightly.20261118.4877
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 10133
completion_tokens: 2487
total_tokens: 12620
cost: 0.00135963
execution_time: 20.79
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-18T12:06:31Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard binary packaging with no malice found.
---

Materializing t3code-nightly-bin from local mirror...
Materialized t3code-nightly-bin
Analyzing t3code-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and array definitions at its top-level scope. No command substitutions, function calls, or executed commands (such as `curl`, `wget`, `eval`, or `source`) are present. The `prepare()` and `package()` functions are declared but not called during `makepkg --printsrcinfo`, so they cannot execute at this stage. Therefore, sourcing this PKGBUILD to print source info poses no risk.
</details>
<evidence></evidence>
<summary>No executable top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable top-level code; safe to source.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata. It defines the package `t3code-nightly-bin`, its dependencies, and two source downloads from the project's own GitHub releases (an AppImage and a license file). The `sha256sums` are provided and pinned — no `SKIP` or missing checksums. There are no executable commands, network requests hidden in the metadata, or any obfuscated content. All URLs point to the package's official upstream repository (`github.com/pingdotgg/t3code`). No signs of supply-chain tampering or malicious behavior are present.</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD packages the upstream T3 Code nightly AppImage from a pinned GitHub release with a SHA-256 checksum, then extracts it into `/opt/t3code-nightly-bin/` and installs a thin wrapper launcher, icons, a `.desktop` file, and the license. Everything is transparent and consistent with standard AUR packaging practices for a prebuilt binary (``-bin``) package.

The `prepare()` function extracts the AppImage and validates that the expected payload files exist. The `package()` function copies the extracted contents, sets appropriate ownership/permissions (including the required setuid on `chrome-sandbox`, which is normal for Chromium‑based sandboxing), and installs helper files generated entirely within the PKGBUILD itself. No obfuscated commands, unexpected network calls, eval, base64 decoding, or data exfiltration are present. The remote sources (GitHub release asset and LICENSE) are on the project&#8217;s own upstream URL and are pinned with checksums. There is no evidence of injected malicious code.
</details>
<evidence></evidence>
<summary>Standard binary packaging with no malice found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary packaging with no malice found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,133
  Completion Tokens: 2,487
  Total Tokens: 12,620
  Total Cost: $0.001360
  Execution Time: 20.79 seconds

Final Status: SAFE


No issues found.
