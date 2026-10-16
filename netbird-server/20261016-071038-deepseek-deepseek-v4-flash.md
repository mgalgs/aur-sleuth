---
package: netbird-server
pkgbase: netbird
pkgver: 0.81.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 19320
completion_tokens: 2080
total_tokens: 21400
cost: 0.002136680
execution_time: 61.15
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T07:10:38Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no malicious content.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version checking; no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file; no security issues.
  - file: LICENSE
    status: safe
    summary: Plain license text, no security concerns.
  - file: REUSE.toml
    status: safe
    summary: Standard REUSE compliance metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no suspicious patterns found.
  - file: netbird-server.service
    status: safe
    summary: Standard systemd service unit; no malicious content.
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
Sourcing this PKGBUILD only executes top-level variable and array assignments (pkgbase, pkgname, pkgver, source, sha256sums, etc.) and defines functions such as prepare(), build(), and package_*(). There are no top-level command substitutions, external downloads, eval/base64 usage, or file-modifying operations that would run during `makepkg --printsrcinfo`. The potentially build-time operations are confined to functions that are not executed by this command, so they are out of scope for this narrow gate. No malicious behavior is present at parse/source time.
</details>
<evidence>
</evidence>
<summary>
No top-level malicious execution; printsrcinfo is safe to run.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious execution; printsrcinfo is safe to run.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .nvchecker.toml...
[0/7] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard software license (ISC-style) containing only legal text. It does not include any executable code, commands, network requests, obfuscation, or system operations. There is no evidence of malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Standard license file, no malicious content.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .nvchecker.toml, LICENSE, LICENSE...
[1/7] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no malicious content.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for nvchecker, a tool commonly used by AUR maintainers to automatically check for new upstream releases. It specifies the GitHub repository `netbirdio/netbird` with a version prefix `v` and instructs to use the latest release. There is no executable code, no network requests to unexpected hosts, and no obfuscated content. The configuration is entirely benign and standard for packaging workflows.</details>
<evidence></evidence>
<summary>Standard nvchecker config for version checking; no security issues.</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, LICENSE...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version checking; no security issues.
[2/7] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is purely metadata for the Arch User Repository package `netbird` and `netbird-server`. It declares package versions, dependencies, sources (pointing to the official GitHub repository), and checksums. No executable code, obfuscated data, suspicious network requests, or unexpected commands are present. The checksums are provided (not SKIP), and the source URL is the project's own upstream. There is no evidence of any malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file; no security issues.</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, LICENSE, PKGBUILD, REUSE.toml...
[3/7] Reviewing LICENSE, PKGBUILD, REUSE.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file; no security issues.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard permissive software license (similar to ISC) as used by Arch Linux Contributors. It contains no executable code, no network requests, no system modifications, no obfuscation, and no instructions. It is a plain text license file with no security implications.
</details>
<evidence>
</evidence>
<summary>Plain license text, no security concerns.</summary>
</security_assessment>

[4/7] Reviewing PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- Plain license text, no security concerns.
[4/7] Reviewing PKGBUILD, REUSE.toml, netbird-server.service...
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE configuration file used for software licensing compliance. It simply declares SPDX copyright and license annotations for a set of file patterns in the package. There are no executable commands, no network operations, no obfuscated content, and no system modifications. The content is purely declarative and follows standard REUSE tooling practices. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard REUSE compliance metadata file, no security issues.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, netbird-server.service...
+ Reviewed REUSE.toml. Status: SAFE -- Standard REUSE compliance metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Go-based project. The source tarball is fetched from the official Netbird GitHub repository with a pinned version tag and a SHA256 checksum, ensuring integrity. All build steps (go mod download, go build) are typical and expected. No obfuscated code, suspicious network requests, or unconventional file operations are present. The package installs binaries and support files into standard locations. There are no signs of supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no suspicious patterns found.</summary>
</security_assessment>

[6/7] Reviewing netbird-server.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no suspicious patterns found.
LLM auditresponse for netbird-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the Netbird server. It defines the execution command, restart behavior, directory permissions, and extensive sandboxing options (e.g., `ProtectHome=yes`, `ProtectSystem=yes`, `NoNewPrivileges=yes`) which are typical best practices for service hardening. There is no obfuscated code, no network requests, no unexpected file operations, and no deviation from standard packaging practices. The service simply launches the upstream binary `/usr/bin/netbird-server` with a config file.
</details>
<evidence></evidence>
<summary>Standard systemd service unit; no malicious content.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed netbird-server.service. Status: SAFE -- Standard systemd service unit; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,320
  Completion Tokens: 2,080
  Total Tokens: 21,400
  Total Cost: $0.002137
  Execution Time: 61.15 seconds

Final Status: SAFE


No issues found.
