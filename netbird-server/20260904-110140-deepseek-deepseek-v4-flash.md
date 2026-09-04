---
package: netbird-server
pkgbase: netbird
pkgver: 0.78.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 11010
completion_tokens: 1167
total_tokens: 12177
cost: 0.001182358464
execution_time: 51.71
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-04T11:01:39Z
file_verdicts:
  - file: netbird-server.service
    status: safe
    summary: Standard service file with no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no suspicious content.
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
The PKGBUILD's top-level scope contains only variable assignments (pkgbase, pkgname, pkgver, etc.) and comments. No command substitutions, backticks, or function calls exist at the global level that would execute code during sourcing. All function bodies (prepare, build, check, package_*) are defined but not invoked by `makepkg --printsrcinfo`. Therefore, running this command poses no risk of executing malicious code.
</details>
<evidence></evidence>
<summary>No top-level code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risk.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, .SRCINFO...
[0/3] Reviewing PKGBUILD, .SRCINFO, netbird-server.service...
LLM auditresponse for netbird-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service file for the Netbird server daemon. It defines the service execution command, restart behavior, directory management, and a comprehensive set of security sandboxing directives (such as `ProtectSystem`, `NoNewPrivileges`, `PrivateTmp`, etc.). All paths and commands reference standard system locations and the package's own installed binary and configuration. There is no evidence of malicious or obfuscated code, network requests, or unexpected system modifications. The file follows normal packaging practices for a server daemon.
</details>
<evidence></evidence>
<summary>Standard service file with no malicious content.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, .SRCINFO...
+ Reviewed netbird-server.service. Status: SAFE -- Standard service file with no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for the AUR package `netbird`. It declares package names, version, descriptions, dependencies, source URLs (pointing to the official GitHub repository for netbird), and SHA-256 checksums. There is no executable code, no obfuscation, no unexpected network requests, and no system modifications. The file only contains declarative metadata used by AUR helpers to build the package. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch Linux packaging practices for a Go-based project. The source is fetched from the official GitHub repository with a pinned version tag and SHA256 checksum. No obfuscated code, suspicious network requests, unexpected file operations, or system modifications are present. The build process uses `go build` with standard flags, and installation steps only place binaries and configuration files into appropriate system directories. There is no evidence of malware or supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no suspicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no suspicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,010
  Completion Tokens: 1,167
  Total Tokens: 12,177
  Total Cost: $0.001182
  Execution Time: 51.71 seconds

Final Status: SAFE


No issues found.
