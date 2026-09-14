---
package: netbird
pkgver: 0.78.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 11166
completion_tokens: 4358
total_tokens: 15524
cost: 0.00148637832
execution_time: 140.71
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-14T23:06:42Z
file_verdicts:
  - file: netbird-server.service
    status: safe
    summary: Standard systemd service file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with pinned upstream source and valid checksums; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard Go AUR package; pinned source, no malicious behavior found.
---

Materializing netbird from local mirror...
Materialized netbird
Analyzing netbird AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions (pkgname, pkgver, source, sha256sums, etc.) and function declarations (prepare, build, check, package_*) at the top level. No command substitutions, backtick executions, or other code that would execute during sourcing. The source array points to the official GitHub repository and includes proper checksums. No global scope code performs any network requests, file downloads, or system modifications. Running `makepkg --printsrcinfo` will safely source this file without executing any dangerous operations.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no global execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD with no global execution risk.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, netbird-server.service...
LLM auditresponse for netbird-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the Netbird server. It launches the `netbird-server` binary with a specified configuration file path. The extensive use of systemd sandboxing options (e.g., `ProtectSystem=yes`, `NoNewPrivileges=yes`) is a security hardening best practice, not a sign of malice. No obfuscated code, network requests, or unexpected operations are present. The unit file follows normal packaging conventions and does not contain any supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed netbird-server.service. Status: SAFE -- Standard systemd service file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` is a standard, clean Arch Linux package metadata file for the netbird project. The source tarball is pinned to a specific upstream release tag (`v0.78.2`) fetched over HTTPS from the project's own official GitHub repository (`github.com/netbirdio/netbird`), and both source entries have concrete SHA256 checksums (not `SKIP`). No suspicious network endpoints, obfuscated content, encoded commands, or dangerous shell constructs are present — in fact, `.SRCINFO` contains only declarative metadata (pkgver, arch, depends, sources, checksums) with no executable logic.

The dependency list (`glibc`, `ca-certificates`, optional `resolvconf`/`redis`), the `replaces` entries for renamed packages (wiretrustee, netbird-management, netbird-signal, netbird-relay), and the `backup` entries for configuration files (`etc/default/netbird`, `etc/netbird-server/config.yaml`) are all ordinary packaging practices. There is no evidence of injected malicious code, exfiltration, backdoors, or untrusted code execution. This file is safe.
</details>
<evidence>
</evidence>
<summary>
Standard .SRCINFO with pinned upstream source and valid checksums; no malicious behavior found.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with pinned upstream source and valid checksums; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Go-based AUR package for the netbird client and server. It downloads the upstream source from the project's official GitHub repository at a pinned release tag (`v0.78.2`) and verifies it with a concrete sha256 checksum. The `go mod download -x` call in `prepare()` fetches Go module dependencies, but this is normal for Go packaging and the dependencies are governed by the project's `go.sum`/`go.mod` files.

The `build()` function runs the upstream Go build and generates shell completions from the built binary, which is expected application behavior. The `package_*()` functions install binaries, licenses, config files, and systemd units into `$pkgdir`; these files come from the upstream source tree or the declared source array. There is no obfuscation, no encoded commands, no unexpected network destinations, no execution of fetched scripts, and no exfiltration of local data. The package follows ordinary AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard Go AUR package; pinned source, no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Go AUR package; pinned source, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,166
  Completion Tokens: 4,358
  Total Tokens: 15,524
  Total Cost: $0.001486
  Execution Time: 140.71 seconds

Final Status: SAFE


No issues found.
