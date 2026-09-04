---
package: netbird-server
pkgbase: netbird
pkgver: 0.78.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10992
completion_tokens: 1366
total_tokens: 12358
cost: 0.00108941112
execution_time: 177.12
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-03T23:07:19Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious indicators.
  - file: netbird-server.service
    status: safe
    summary: Standard systemd service unit, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata with verified sources.
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
The PKGBUILD contains only standard variable definitions at global scope (pkgbase, pkgname, pkgver, etc.), all using simple string assignments or array definitions. There are no command substitutions, backticks, eval calls, or any executable code outside of function bodies (prepare, build, check, package). The source URL points to the official netbirdio GitHub repository, which is expected. Since `makepkg --printsrcinfo` only sources the global/top-level scope, no malicious code can execute during this step.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, netbird-server.service...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a Go-based application. It downloads the upstream source from the official GitHub repository with a pinned version tag and checksums verified. The build process uses `go build` with standard flags and installs binaries, completions, and configuration files into standard locations. No suspicious network requests, obfuscation, data exfiltration, or backdoors are present. The only potential hygiene note is that the source pinning is on a tag (which is common and acceptable); there are no signs of supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious indicators.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, netbird-server.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious indicators.
LLM auditresponse for netbird-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the Netbird server application. It defines the service execution, restart policy, directory management, and extensive sandboxing options. None of the directives are suspicious or indicate malicious behavior. The service runs a legitimate binary from `/usr/bin/netbird-server` with a configuration file from `/etc/netbird-server/config.yaml`. The sandboxing settings (e.g., `ProtectHome=yes`, `NoNewPrivileges=yes`, `PrivateTmp=yes`) are best practices for security hardening, not indicators of an attack. There is no code execution, obfuscation, or unexpected network activity.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no security issues.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed netbird-server.service. Status: SAFE -- Standard systemd service unit, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains standard package metadata for the netbird AUR package. It defines two subpackages (netbird and netbird-server) with their descriptions, dependencies, and source files. All source URLs point to the official GitHub repository (github.com/netbirdio/netbird) with pinned version tags and provided SHA256 checksums. There is no obfuscation, suspicious network requests, or dangerous commands. The file is consistent with normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard AUR package metadata with verified sources.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata with verified sources.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,992
  Completion Tokens: 1,366
  Total Tokens: 12,358
  Total Cost: $0.001089
  Execution Time: 177.12 seconds

Final Status: SAFE


No issues found.
