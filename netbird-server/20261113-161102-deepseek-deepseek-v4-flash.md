---
package: netbird-server
pkgbase: netbird
pkgver: 0.83.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 19318
completion_tokens: 2663
total_tokens: 21981
cost: 0.00221796
execution_time: 46.84
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-13T16:11:01Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker configuration; no security issues.
  - file: LICENSE
    status: safe
    summary: Standard license file with no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard packaging metadata, no malicious content.
  - file: LICENSE
    status: safe
    summary: Standard license file with no security concerns.
  - file: REUSE.toml
    status: safe
    summary: Standard REUSE metadata file; no threats.
  - file: netbird-server.service
    status: safe
    summary: "Safe: standard service unit with proper sandboxing"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned source and no malicious content.
---

netbird-server is built from netbird
Materializing netbird-server from local mirror...
Materialized netbird-server
Analyzing netbird-server AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and function definitions at the top level. No command substitutions, backticks, or direct executions occur during sourcing. The `source` array uses variable expansion to construct URLs, which is standard and harmless during `makepkg --printsrcinfo`. All potentially dangerous operations (e.g., `go mod download -x` in `prepare()`) are confined to functions that are not executed by the `--printsrcinfo` command.
</details>
<evidence></evidence>
<summary>No top-level code execution; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution; safe to source.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, LICENSE...
[0/7] Reviewing .SRCINFO, LICENSE, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration for `nvchecker`, a tool used to check for latest software releases. It specifies the GitHub repository `netbirdio/netbird` and uses the latest release tag with a `v` prefix. There is no executable code, no network requests initiated from within this file itself (it is only a declarative configuration), and no evidence of malicious behavior. The file follows normal packaging practices for automated version tracking.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker configuration; no security issues.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, LICENSE, .nvchecker.toml, LICENSE...
[1/7] Reviewing .SRCINFO, LICENSE, LICENSE...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker configuration; no security issues.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC-style software license. It contains no executable code, no network requests, no obfuscation, and no system modification commands. It is a plain text legal notice and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file with no security concerns.</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, LICENSE...
+ Reviewed LICENSE. Status: SAFE -- Standard license file with no security concerns.
[2/7] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard Arch package metadata file. It declares the package `netbird` and `netbird-server` with sources from the official GitHub release tarball (`https://github.com/netbirdio/netbird/archive/refs/tags/v0.83.1.tar.gz`) and a local service file. Both sources have SHA-256 checksums, which are pinned and verified. There are no network requests, obfuscated code, dangerous commands, or unexpected file operations. The file does not contain any executable content; it is purely declarative metadata. No evidence of a supply-chain attack or malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard packaging metadata, no malicious content.</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, LICENSE, PKGBUILD, REUSE.toml...
[3/7] Reviewing LICENSE, PKGBUILD, REUSE.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard packaging metadata, no malicious content.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC-style software license. It contains only legal text granting permission to use, copy, modify, and distribute the software. There is no executable code, no commands, no network requests, no obfuscation, and no system modifications. This file poses no security threat.
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
This file is a REUSE configuration file (REUSE.toml) that defines copyright and license annotations for specific file paths. It assigns the SPDX-FileCopyrightText to "Arch Linux contributors" and the SPDX-License-Identifier to "0BSD" for a set of common packaging files (PKGBUILD, README, service files, etc.). There is no executable code, no network requests, no obfuscation, and no system modification commands. It is purely metadata used to comply with the REUSE specification for software licensing. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard REUSE metadata file; no threats.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, netbird-server.service...
+ Reviewed REUSE.toml. Status: SAFE -- Standard REUSE metadata file; no threats.
LLM auditresponse for netbird-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit for the netbird-server process. It includes reasonable sandboxing features (ProtectHome, ProtectSystem, NoNewPrivileges, etc.) and does not contain any suspicious commands or operations. There is no network fetching, obfuscated code, or unexpected file operations. The service runs a known binary with a configuration file, which is standard packaging practice.
</details>
<evidence>
</evidence>
<summary>Safe: standard service unit with proper sandboxing</summary>
</security_assessment>

[6/7] Reviewing PKGBUILD...
+ Reviewed netbird-server.service. Status: SAFE -- Safe: standard service unit with proper sandboxing
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices. It downloads the upstream source tarball from the official GitHub repository (`github.com/netbirdio/netbird`) with a pinned version and a valid SHA256 checksum. The build process uses standard `go build` commands with typical hardening flags (`-buildmode=pie -trimpath`). There are no suspicious network requests, no obfuscated code, no use of dangerous commands like `eval`, `curl`, or `wget` outside of the expected source download. The package splits into two subpackages (client and server) with normal file installations. The systemd service file is sourced from the upstream repository and installed without modification. No evidence of exfiltration, backdoors, or unexpected system modifications.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned source and no malicious content.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned source and no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,318
  Completion Tokens: 2,663
  Total Tokens: 21,981
  Total Cost: $0.002218
  Execution Time: 46.84 seconds

Final Status: SAFE


No issues found.
