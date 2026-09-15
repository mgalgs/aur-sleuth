---
package: netbird-server
pkgbase: netbird
pkgver: 0.78.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 11330
completion_tokens: 3957
total_tokens: 15287
cost: 0.001705133864
execution_time: 77.45
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-15T03:07:39Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata for netbird; pinned upstream source, no malicious behavior.
  - file: netbird-server.service
    status: safe
    summary: Standard hardened systemd unit; no malicious or suspicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned source, no malicious indicators.
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
This audit is scoped specifically to `makepkg --printsrcinfo`, which only sources the global/top-level scope of the PKGBUILD. The top-level scope in this file consists entirely of safe, standard PKGBUILD variable assignments (e.g., `pkgbase`, `pkgver`, static `source` array pointing to the project’s own GitHub release tarball, hardcoded `sha256sums`) and function definitions (`prepare()`, `build()`, `check()`, `package_netbird()`, etc.). There are no command substitutions (`$(...)`), arithmetic evaluations, or dangerous builtins (`eval`, `source`, `exec`, `curl|bash`) in the global scope that would execute during parsing. All build logic, network operations, and file installations are correctly encapsulated within functions that are **not** invoked by `--printsrcinfo`. No obfuscation, suspicious network requests, or malicious payloads are present in the executed top-level code.
</details>
<evidence>
</evidence>
<summary>Safe top-level scope, no global code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe top-level scope, no global code execution.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, netbird-server.service...
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR .SRCINFO metadata file for the netbird package. It declares a pinned upstream release version (0.78.2), fetches the source tarball from the project's official GitHub repository at a specific tag, and provides corresponding SHA-256 checksums. It also references a systemd service file and config backup paths, which are normal packaging metadata.

There is no executable code, no network requests beyond the declared upstream source, no obfuscation, no suspicious file operations, and no attempt to exfiltrate data or run untrusted commands. The file is consistent with ordinary Arch packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata for netbird; pinned upstream source, no malicious behavior.
</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, netbird-server.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata for netbird; pinned upstream source, no malicious behavior.
LLM auditresponse for netbird-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd service unit for the Netbird combined server. It launches the expected binary `/usr/bin/netbird-server` with a local configuration file, and defines normal runtime directories and restart behavior. The service contains extensive sandboxing and hardening directives (e.g. `NoNewPrivileges`, `ProtectSystem`, `PrivateTmp`, `RestrictSUIDSGID`), which are consistent with secure packaging practices.

There are no network requests, no downloads, no encoded/obfuscated commands, no file tampering, and no execution of attacker-controlled content. The service only runs the package's own declared binary with a standard config path. This is ordinary, benign systemd packaging content.
</details>
<evidence>
</evidence>
<summary>
Standard hardened systemd unit; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed netbird-server.service. Status: SAFE -- Standard hardened systemd unit; no malicious or suspicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch Linux packaging practices for a Go-based application. The source tarball is pinned to a specific upstream release (v0.78.2) from the official GitHub repository, with valid SHA256 checksums for both the tarball and the service file. Build steps use `go mod download` (normal for Go modules) and `go build` with standard flags. Package functions install binaries, configuration files, systemd units, and shell completions — all within the expected package scope. There is no obfuscation, no unexpected network activity, no execution of downloaded scripts, and no manipulation of files outside the package&#x27;s own directories. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned source, no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned source, no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,330
  Completion Tokens: 3,957
  Total Tokens: 15,287
  Total Cost: $0.001705
  Execution Time: 77.45 seconds

Final Status: SAFE


No issues found.
