---
package: netbird
pkgver: 0.81.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 19462
completion_tokens: 2712
total_tokens: 22174
cost: 0.002264626
execution_time: 67.37
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T15:26:32Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata with pinned upstream sources; no security issues found.
  - file: .nvchecker.toml
    status: safe
    summary: Standard version checker configuration, no security issues.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: netbird-server.service
    status: safe
    summary: Standard systemd service unit; no malicious behavior detected.
  - file: REUSE.toml
    status: safe
    summary: Benign REUSE configuration file with no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned source; no malicious behavior.
---

Materializing netbird from local mirror...
Materialized netbird
Analyzing netbird AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD only defines static variables and arrays: `pkgbase`, `pkgname`, `pkgver`, `pkgrel`, `url`, `arch`, `makedepends`, `source`, and `sha256sums`. There are no command substitutions, external command invocations, network requests, or file-modifying operations that would execute while the PKGBUILD is sourced by `makepkg --printsrcinfo`.

The `prepare()`, `build()`, `check()`, and `package_*()` functions contain the actual build/install logic, but `makepkg --printsrcinfo` does not execute those functions, so they are out of scope for this narrow gate. The source URL points to the project's official GitHub repository, and checksums are pinned rather than skipped. No top-level malicious behavior was found.
</details>
<evidence></evidence>
<summary>
Top-level PKGBUILD scope has no executable malicious code; printsrcinfo is safe.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope has no executable malicious code; printsrcinfo is safe.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, LICENSE...
[0/7] Reviewing .SRCINFO, LICENSE, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file describes the netbird and netbird-server packages from the upstream netbirdio/netbird GitHub repository. The sources are the project's own tagged release tarball and a bundled systemd service unit. Both sources have pinned SHA-256 checksums, which is good packaging practice. There are no suspicious commands, network operations, encoded payloads, or unexpected file modifications in this file. The content is limited to standard package metadata: dependencies, architectures, descriptions, licenses, and backup file declarations. No evidence of malicious or injected behavior was found.
</details>
<evidence>
</evidence>
<summary>
Standard package metadata with pinned upstream sources; no security issues found.
</summary>
</security_assessment>

[1/7] Reviewing LICENSE, .nvchecker.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata with pinned upstream sources; no security issues found.
[1/7] Reviewing LICENSE, .nvchecker.toml, LICENSE...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for `nvchecker`, a tool used to check for new versions of software. It simply points to the upstream GitHub repository (`netbirdio/netbird`) and specifies that the latest release should be used. There is no executable code, no network requests beyond what the tool itself would perform, and no suspicious or obfuscated content. This is standard packaging practice for automated version tracking.
</details>
<evidence>
</evidence>
<summary>Standard version checker configuration, no security issues.</summary>
</security_assessment>

[1/7] Reviewing LICENSE, .nvchecker.toml, LICENSE, PKGBUILD...
[2/7] Reviewing LICENSE, LICENSE, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard version checker configuration, no security issues.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard open-source license (ISC-style) attributed to Arch Linux Contributors. It contains only legal text with no executable code, network requests, obfuscation, or system-modifying commands. There is no evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[3/7] Reviewing LICENSE, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
[3/7] Reviewing LICENSE, PKGBUILD, REUSE.toml...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC license text attributed to Arch Linux Contributors. It contains no executable code, network requests, obfuscated content, or any commands. It is purely a descriptive text file with no security implications.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[3/7] Reviewing LICENSE, PKGBUILD, REUSE.toml, netbird-server.service...
[4/7] Reviewing PKGBUILD, REUSE.toml, netbird-server.service...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for netbird-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit for the Netbird server. It launches the package's own binary `/usr/bin/netbird-server` with a configuration from `/etc/netbird-server/config.yaml`, and applies reasonable service sandboxing options (ProtectSystem, ProtectHome, PrivateTmp, NoNewPrivileges, RestrictNamespaces, etc.). No network downloads, encoded commands, file exfiltration, or unexpected system modifications are present. The service correctly uses the declared configuration and runtime directories, which is consistent with normal packaging and service deployment practices.
</details>
<evidence>
</evidence>
<summary>
Standard systemd service unit; no malicious behavior detected.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, REUSE.toml...
+ Reviewed netbird-server.service. Status: SAFE -- Standard systemd service unit; no malicious behavior detected.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `REUSE.toml` is a standard REUSE configuration file used to declare copyright and license information for files in the repository. It contains only path annotations and SPDX identifiers (e.g., `SPDX-FileCopyrightText` and `SPDX-License-Identifier`). There is no executable code, no network requests, no file operations, and no obfuscated content. This file poses no security risk.
</details>
<evidence></evidence>
<summary>Benign REUSE configuration file with no security concerns.</summary>
</security_assessment>

[6/7] Reviewing PKGBUILD...
+ Reviewed REUSE.toml. Status: SAFE -- Benign REUSE configuration file with no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for netbird follows standard Arch packaging practices. The source tarball is fetched from the official GitHub repository with a pinned version and a valid SHA-256 checksum. The build process uses `go mod download` to fetch Go dependencies, which is standard for Go packages. No suspicious commands such as `curl`, `wget`, `eval`, base64 decoding, or obfuscated code are present. The package functions install files only within `$pkgdir` and do not modify system files outside the intended scope. There is no evidence of data exfiltration, backdoors, or execution of untrusted code beyond the expected upstream build system.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned source; no malicious behavior.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned source; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,462
  Completion Tokens: 2,712
  Total Tokens: 22,174
  Total Cost: $0.002265
  Execution Time: 67.37 seconds

Final Status: SAFE


No issues found.
