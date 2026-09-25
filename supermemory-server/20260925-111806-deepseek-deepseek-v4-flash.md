---
package: supermemory-server
pkgver: 0.0.8
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12399
completion_tokens: 2193
total_tokens: 14592
cost: 0.000822465
execution_time: 46.87
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-25T11:18:06Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content found.
  - file: supermemory-server.service
    status: safe
    summary: Standard service unit, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package with pinned checksums and no malicious content.
  - file: supermemory.install
    status: safe
    summary: Standard .install script with no security concerns.
---

Materializing supermemory-server from local mirror...
Materialized supermemory-server
Analyzing supermemory-server AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope consists only of static variable and array assignments (pkgname, pkgver, pkgrel, pkgdesc, arch, url, license, depends, makedepends, install, options, source arrays, and checksum arrays) and a function definition (`package()`). No command substitutions, external command executions, or invocations of dangerous builtins occur at the global level. The `makepkg --printsrcinfo` step sources this content without executing `package()` or any other function, so there is no risk of unintended code execution or supply-chain attack during this narrow gate.
</details>
<evidence></evidence>
<summary>No top-level code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risk.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, supermemory-server.service...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard Arch Linux package metadata file. All sources point to the official GitHub releases of the upstream project (supermemoryai/supermemory). Checksums are pinned (not SKIP), providing integrity verification. No obfuscated code, suspicious URLs, or malicious commands are present. The file only defines package metadata and sources.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content found.</summary>
</security_assessment>

[1/4] Reviewing PKGBUILD, supermemory-server.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content found.
[1/4] Reviewing PKGBUILD, supermemory-server.service, supermemory.install...
LLM auditresponse for supermemory-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This systemd service file is a standard unit for running the supermemory-server binary from the package. It includes appropriate security hardening (NoNewPrivileges, PrivateTmp, ProtectSystem=strict, ProtectHome=yes) and restricts write access only to the user&#39;s ~/.supermemory directory. There is no obfuscated code, no remote downloads, no attempt to execute arbitrary commands or exfiltrate data. The file follows normal AUR packaging practices for a service unit.
</details>
<evidence>
</evidence>
<summary>Standard service unit, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, supermemory.install...
+ Reviewed supermemory-server.service. Status: SAFE -- Standard service unit, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package for the supermemory-server application. It downloads a prebuilt binary from the official GitHub releases, verifies it with pinned SHA256 checksums, and installs it along with a systemd user service file. There is no obfuscated code, no unexpected network requests, no execution of arbitrary scripts, and no file operations outside the standard package installation directories. The use of a prebuilt binary is a common practice for Go/Rust applications; the checksums are pinned and not skipped, which provides integrity verification. No evidence of supply-chain attack or malicious behavior is present in this file.
</details>
<evidence></evidence>
<summary>Standard AUR package with pinned checksums and no malicious content.</summary>
</security_assessment>

[3/4] Reviewing supermemory.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package with pinned checksums and no malicious content.
LLM auditresponse for supermemory.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux .install script for a package providing a systemd user service. The `post_install` function prints a help message with setup instructions (storing API keys, starting/enabling the service). The `pre_remove` function stops and disables the service, which is normal cleanup for a service‑oriented package. No network requests, obfuscated code, arbitrary file operations, or commands beyond the package&#x27;s own scope appear. The script is benign and follows typical AUR packaging conventions.
</details>
<evidence>
</evidence>
<summary>Standard .install script with no security concerns.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed supermemory.install. Status: SAFE -- Standard .install script with no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,399
  Completion Tokens: 2,193
  Total Tokens: 14,592
  Total Cost: $0.000822
  Execution Time: 46.87 seconds

Final Status: SAFE


No issues found.
