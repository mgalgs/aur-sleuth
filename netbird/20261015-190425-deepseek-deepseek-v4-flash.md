---
package: netbird
pkgver: 0.81.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 19307
completion_tokens: 2375
total_tokens: 21682
cost: 0.002189187
execution_time: 47.7
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-15T19:04:24Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file with no security concerns.
  - file: .nvchecker.toml
    status: safe
    summary: Safe nvchecker config for netbird
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no security issues.
  - file: LICENSE
    status: safe
    summary: Standard license file with no security concerns.
  - file: REUSE.toml
    status: safe
    summary: Standard REUSE config file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned source and no malicious behavior.
  - file: netbird-server.service
    status: safe
    summary: Standard systemd service with security hardening.
---

Materializing netbird from local mirror...
Materialized netbird
Analyzing netbird AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD only evaluates top-level variable and array assignments: `pkgbase`, `pkgname`, `pkgver`, `pkgrel`, `url`, `arch`, `makedepends`, `source`, and `sha256sums`. There are no top-level command substitutions, external downloads, `eval`, `curl`, `wget`, base64 decoding, or file modifications that would execute while `makepkg --printsrcinfo` sources the file.

The `prepare()`, `build()`, `check()`, and `package_*()` functions contain normal build/install operations, but those are not executed during `makepkg --printsrcinfo`. The source URL points to the project's official GitHub repository and checksums are pinned, though checksums are not relevant to this narrow gate. No genuinely malicious global-scope behavior is present.
</details>
<evidence>
</evidence>
<summary>
No dangerous top-level code; parsing is safe for makepkg --printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; parsing is safe for makepkg --printsrcinfo.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .nvchecker.toml...
[0/7] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text license file (ISC-style) attributed to "Arch Linux Contributors". It contains no executable code, no network requests, no obfuscation, no file operations, and no system modifications. It is a standard software license and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file with no security concerns.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed LICENSE. Status: SAFE -- Standard license file with no security concerns.
[1/7] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file that defines how to check for new versions of the netbird package on GitHub. It specifies the source type (`github`), the repository (`netbirdio/netbird`), a version prefix (`v`), and instructs the tool to use the latest release. No executable code, obfuscation, network requests, or system modifications are present. This file is purely declarative and serves a routine packaging automation purpose. No security concerns.
</details>
<evidence></evidence>
<summary>Safe nvchecker config for netbird</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, LICENSE...
+ Reviewed .nvchecker.toml. Status: SAFE -- Safe nvchecker config for netbird
[2/7] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` file for the `netbird` package. It declares the package metadata, dependencies, and two source files: the upstream tarball from GitHub (`https://github.com/netbirdio/netbird/archive/refs/tags/v0.81.0.tar.gz`) and a systemd service file. Both sources have valid SHA256 checksums (not `SKIP`). There is no obfuscated code, no network requests to unexpected hosts, no dangerous commands, and no evidence of supply-chain injection. The file simply defines build information for the Arch package manager.
</details>
<evidence></evidence>
<summary>Standard package metadata, no security issues.</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, LICENSE, PKGBUILD, REUSE.toml...
[3/7] Reviewing LICENSE, PKGBUILD, REUSE.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no security issues.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC-style license commonly used for open source software. It contains no executable code, no network requests, no file operations, no obfuscation, and no system modifications. It is purely a legal text file granting permissions to use, copy, modify, and distribute the software. There is no evidence of any malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard license file with no security concerns.</summary>
</security_assessment>

[3/7] Reviewing LICENSE, PKGBUILD, REUSE.toml, netbird-server.service...
[4/7] Reviewing PKGBUILD, REUSE.toml, netbird-server.service...
+ Reviewed LICENSE. Status: SAFE -- Standard license file with no security concerns.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a REUSE.toml configuration used to declare SPDX license and copyright information for packaging files. It contains only metadata (path patterns, copyright statements, and license identifiers). There is no executable code, no network requests, no obfuscation, and no file operations. It is a standard compliance tool configuration and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard REUSE config file, no security issues.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, netbird-server.service...
+ Reviewed REUSE.toml. Status: SAFE -- Standard REUSE config file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Go-based project. It downloads the upstream source from the official GitHub repository with a pinned version tag, uses a provided SHA-256 checksum, builds with standard Go flags, and installs binaries and configuration files to expected locations. There is no obfuscated code, no unexpected network requests, no exfiltration of data, and no tampering with system files outside the application&#x27;s scope. All operations are consistent with legitimate packaging of the netbird overlay network tool.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with pinned source and no malicious behavior.</summary>
</security_assessment>

[6/7] Reviewing netbird-server.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned source and no malicious behavior.
LLM auditresponse for netbird-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the Netbird combined server. It invokes `/usr/bin/netbird-server` with a configuration file at `/etc/netbird-server/config.yaml`. The service includes extensive hardening/sandboxing directives (e.g., `ProtectSystem=yes`, `NoNewPrivileges=yes`, `MemoryDenyWriteExecute=yes`, `PrivateTmp=yes`), which follow security best practices. There are no network requests, obfuscated commands, unusual file operations, or any other indicators of malicious or dangerous behavior. The file is consistent with normal AUR packaging for a server application.
</details>
<evidence></evidence>
<summary>Standard systemd service with security hardening.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed netbird-server.service. Status: SAFE -- Standard systemd service with security hardening.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,307
  Completion Tokens: 2,375
  Total Tokens: 21,682
  Total Cost: $0.002189
  Execution Time: 47.70 seconds

Final Status: SAFE


No issues found.
