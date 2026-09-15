---
package: netbird-server
pkgbase: netbird
pkgver: 0.78.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 11012
completion_tokens: 1314
total_tokens: 12326
cost: 0.001208585840
execution_time: 66.01
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-15T07:15:44Z
file_verdicts:
  - file: netbird-server.service
    status: safe
    summary: Standard service unit with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no signs of malicious activity.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
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
The PKGBUILD contains only standard variable definitions, array assignments, and function definitions at the global/top-level scope. No commands that execute external code or exfiltrate data are present outside of the function bodies (`prepare()`, `build()`, `check()`, `_completions()`, `package_*()`). Since `makepkg --printsrcinfo` only sources the PKGBUILD and does not execute any of the function bodies, there is no risk of malicious code execution during this step.
</details>
<evidence></evidence>
<summary>No dangerous top-level code during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code during sourcing.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, netbird-server.service...
[0/3] Reviewing .SRCINFO, netbird-server.service, PKGBUILD...
LLM auditresponse for netbird-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the netbird-server application. It defines a service that executes the `/usr/bin/netbird-server` binary with a configuration file at `/etc/netbird-server/config.yaml`. The file includes numerous security hardening directives (e.g., `NoNewPrivileges`, `ProtectSystem`, `PrivateTmp`) which are recommended best practices for service isolation. There are no network requests, downloads, code execution, or obfuscated commands present. No deviations from expected packaging practices are observed. The file does not exhibit any signs of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard service unit with no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed netbird-server.service. Status: SAFE -- Standard service unit with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Go-based project. The source is fetched from the official GitHub repository with a SHA256 checksum pinned, ensuring integrity. The build process uses `go mod download` to fetch dependencies and `go build` to compile the binaries. No obfuscated code, suspicious network requests, dangerous commands, or attempts to exfiltrate data are present. The installation steps place binaries, systemd services, completions, and configuration files in expected locations. There is no evidence of supply-chain attack or malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD, no signs of malicious activity.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no signs of malicious activity.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is standard package metadata used by AUR helpers. It defines two packages (netbird and netbird-server) sourced from the official upstream GitHub repository at a tagged release (v0.78.2) with provided SHA-256 checksums. No malicious instructions, obfuscated content, or suspicious network destinations are present. The file is purely declarative and contains no executable code. All practices observed are normal for AUR packaging.</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,012
  Completion Tokens: 1,314
  Total Tokens: 12,326
  Total Cost: $0.001209
  Execution Time: 66.01 seconds

Final Status: SAFE


No issues found.
