---
package: lingxi-ai-bin
pkgver: 1.4.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10267
completion_tokens: 3534
total_tokens: 13801
cost: 0.0047535008
execution_time: 52.61
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-04T23:03:01Z
file_verdicts:
  - file: lingxi-ai-bin.install
    status: safe
    summary: AUR install script is safe; standard packaging operations only.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package with pinned checksum.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksum and upstream source; no malicious indicators.
---

Materializing lingxi-ai-bin from local mirror...
Materialized lingxi-ai-bin
Analyzing lingxi-ai-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and a `package()` function. There are no top-level command substitutions, no `eval`, `curl`, `wget`, or other dangerous operations that could execute when the file is sourced for `makepkg --printsrcinfo`. The `install` variable references a `.install` file, but that file is not sourced during this step. All code that could be risky is inside `package()`, which is not executed by `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD is safe at this narrow gate.
</details>
<evidence></evidence>
<summary>No top-level code execution risk detected.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risk detected.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, lingxi-ai-bin.install...
[0/3] Reviewing .SRCINFO, lingxi-ai-bin.install, PKGBUILD...
LLM auditresponse for lingxi-ai-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install script performs routine packaging tasks: setting up a systemd user service unit, adapting an upstream script (via sed) to avoid systemctl --user calls that would fail during a system-wide install, and cleaning up on removal. All file operations are confined to the package's own directory (`/opt/lingxi-ai`) and `/etc/systemd/user`. No network requests, obfuscation, data exfiltration, or execution of externally fetched code are present. The modifications to the upstream script are a practical workaround for the installation context, not an injected supply-chain attack.
</details>
<evidence></evidence>
<summary>AUR install script is safe; standard packaging operations only.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed lingxi-ai-bin.install. Status: SAFE -- AUR install script is safe; standard packaging operations only.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a binary package. The source tarball is downloaded from an Alibaba Cloud OSS bucket belonging to the project&apos;s upstream domain (wps-ai.llteac.cn), with a pinned SHA256 checksum ensuring integrity. The `package()` function only copies the extracted files to `/opt/lingxi-ai` and sets execute permissions on expected scripts and binaries. There is no obfuscated code, no unexpected network requests, no dangerous command execution (curl|bash, eval, base64 decode, etc.), and no manipulation of system files outside the package&apos;s own directory. The optional dependency on wps-office or wps-office-cn is appropriate for the package&apos;s stated purpose as a WPS Office plugin. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR binary package with pinned checksum.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package with pinned checksum.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file contains only standard AUR package metadata for lingxi-ai-bin. The source is a pinned version (1.4.7) fetched over HTTPS from an Aliyun OSS bucket (llteac-file.oss-cn-hangzhou.aliyuncs.com), which matches the package's own upstream domain (wps-ai.llteac.cn / llteac.cn), so the download destination is the project's declared upstream infrastructure. The sha256 checksum is fixed and present (not SKIP), which is good supply-chain hygiene.

There is no executable code, no obfuscated content, no suspicious network behavior, and no unexpected file operations in this file. The dependencies (bash, rsync) and `!strip` option are plausible for a prebuilt binary installer package. `license = unknown` is a minor packaging hygiene issue but not a security concern. No evidence of malicious or injected code was found.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksum and upstream source; no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksum and upstream source; no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,267
  Completion Tokens: 3,534
  Total Tokens: 13,801
  Total Cost: $0.004754
  Execution Time: 52.61 seconds

Final Status: SAFE


No issues found.
