---
package: netbird-server
pkgbase: netbird
pkgver: 0.79.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11092
completion_tokens: 2140
total_tokens: 13232
cost: 0.00072740304
execution_time: 74.93
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-19T07:03:51Z
file_verdicts:
  - file: netbird-server.service
    status: safe
    summary: Standard systemd service file with no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Safe package with no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: Standard declarative AUR metadata; pinned checksums, official upstream source, no malicious behavior.
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
The PKGBUILD's top-level scope contains only static variable definitions and array assignments. There are no command substitutions, function calls, or dangerous operations at the global level that would execute during sourcing. All code that performs downloads, builds, or file operations resides within `prepare()`, `build()`, `check()`, and `package_*()` functions, which are not executed by `makepkg --printsrcinfo`. The `source` array uses a standard GitHub tarball URL and a local service file; the `sha256sums` are provided and non-SKIP. No obfuscation, network exfiltration, or malicious payloads are present at the top level. Therefore, running this command is safe.
</details>
<evidence></evidence>
<summary>No top-level dangerous code; static definitions only.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level dangerous code; static definitions only.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, netbird-server.service...
LLM auditresponse for netbird-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the netbird-server application. It defines the service runtime behavior (executable path, restart policy, directories) and includes a comprehensive set of sandboxing directives (e.g., `ProtectSystem=yes`, `PrivateTmp=yes`, `NoNewPrivileges=yes`, etc.) which are typical security hardening practices for systemd services. There are no network requests, downloads, obfuscated commands, or unexpected file operations. The file does not contain any executable or script content beyond the service definition. No evidence of malicious or supply-chain attack behavior.
</details>
<evidence>
</evidence>
<summary>Standard systemd service file with no malicious code.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed netbird-server.service. Status: SAFE -- Standard systemd service file with no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux packaging practices for a Go-based application. The source tarball is fetched from the official upstream GitHub repository with a pinned sha256 checksum. The build process uses `go mod download` and `go build` with standard flags. Installation steps copy binaries, completions, configuration, and systemd service files to appropriate locations under `$pkgdir`. There is no evidence of obfuscated code, unexpected network requests, or attempts to exfiltrate data. No dangerous commands like `curl|bash` or `eval` are present. The systemd service file is also pinned with a checksum. Overall, the file is consistent with a safe, legitimate AUR package.
</details>
<evidence></evidence>
<summary>Safe package with no malicious indicators.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Safe package with no malicious indicators.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file contains only declarative package metadata for the netbird AUR package (client and server subpackages). It contains no executable code, no scripts, no network calls, and no file operations. The content is limited to standard fields: package name, version, URL, architectures, dependencies, source URLs, and checksums.

The source tarball is fetched from the official upstream project repository (`https://github.com/netbirdio/netbird/archive/refs/tags/v0.79.0.tar.gz`), which matches the package's declared purpose and URL. Both source files have pinned SHA-256 checksums, which is good supply-chain hygiene; there are no `SKIP` checksums and no mutable/unpinned sources in this file.

The dependencies (`glibc`, `ca-certificates`), optional dependencies (`redis`), and backup file declarations are all normal packaging metadata for a WireGuard-based overlay network server. There is no obfuscation, no suspicious download (only the package's own declared upstream tarball), no credential access, and no behavior that could exfiltrate data or execute remote code. This is a benign, well-formed AUR metadata file.
</details>
<evidence>
</evidence>
<summary>
Standard declarative AUR metadata; pinned checksums, official upstream source, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard declarative AUR metadata; pinned checksums, official upstream source, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,092
  Completion Tokens: 2,140
  Total Tokens: 13,232
  Total Cost: $0.000727
  Execution Time: 74.93 seconds

Final Status: SAFE


No issues found.
