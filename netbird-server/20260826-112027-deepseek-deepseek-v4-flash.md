---
package: netbird-server
pkgbase: netbird
pkgver: 0.77.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: bf65c6be33eadea3455007f8db36db9ddf76ab3c
prompt_tokens: 11187
completion_tokens: 1566
total_tokens: 12753
cost: 0.0011827494
execution_time: 120.02
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
upstream_files: 2635
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-26T11:20:27Z
file_verdicts:
  - file: netbird-server.service
    status: safe
    summary: Standard systemd service file with security hardening.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR packaging, no malicious code.
---

netbird-server is built from netbird
Cloning https://aur.archlinux.org/netbird.git...
Cloned netbird-server
Analyzing netbird-server AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD sources are two standard artifacts: a tarball from the official NetBird GitHub releases (https://github.com/netbirdio/netbird/archive/refs/tags/v0.77.1.tar.gz) and a systemd service file. Both have valid SHA256 checksums. No top-level code besides variable assignments and array definitions exists, so sourcing the PKGBUILD does not execute any commands. No `pkgver()` function is defined (`pkgver` is a literal string). There are no obfuscated commands, suspicious network requests, or unexpected file operations in the global scope. Fetching and extracting these sources as part of `makepkg --nobuild --nodeps --noprepare` is entirely safe.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious code in scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD, no malicious code in scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/netbird-0.77.1/combined/config.yaml.example); they are upstream content and were not reviewed.
Reviewing the 3 file(s) in the AUR repository. The 2635 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, netbird-server.service...
LLM auditresponse for netbird-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd unit file for the Netbird server. It defines a service that runs the `/usr/bin/netbird-server` binary with a configuration file from `/etc/netbird-server/config.yaml`. The file includes comprehensive sandboxing options (e.g., `ProtectHome=yes`, `ProtectSystem=yes`, `NoNewPrivileges=yes`, etc.) which are best practices for service hardening. There is no obfuscation, no network requests, no file downloads, no encoded commands, and no unexpected system modifications. The service follows normal packaging conventions for a server daemon.
</details>
<evidence></evidence>
<summary>Standard systemd service file with security hardening.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed netbird-server.service. Status: SAFE -- Standard systemd service file with security hardening.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file. It contains only package descriptions, dependencies, and source URLs. The source is fetched from the official GitHub repository using a specific version tag (v0.77.1) over HTTPS. Both source files have SHA-256 checksums provided, ensuring integrity. There are no executable commands, obfuscated code, suspicious network operations, or any indicators of a supply-chain attack. The file conforms to normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Go-based application. It downloads the source tarball from the official GitHub repository (`github.com/netbirdio/netbird`) with a valid SHA-256 checksum, builds with `go build` using typical hardening flags, and installs the resulting binaries, completion scripts, systemd service files, and default configurations. No obfuscated code, suspicious network requests, data exfiltration, or unexpected system modifications are present. The file is straightforward and contains no evidence of supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Standard AUR packaging, no malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR packaging, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,187
  Completion Tokens: 1,566
  Total Tokens: 12,753
  Total Cost: $0.001183
  Execution Time: 120.02 seconds

Final Status: SAFE


No issues found.
