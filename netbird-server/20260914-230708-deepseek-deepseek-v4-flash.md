---
package: netbird-server
pkgbase: netbird
pkgver: 0.78.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 11091
completion_tokens: 4047
total_tokens: 15138
cost: 0.00143427060
execution_time: 170.68
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-14T23:07:08Z
file_verdicts:
  - file: netbird-server.service
    status: safe
    summary: Standard service unit with security hardening; no suspicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Metadata file, no executable code, safe.
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
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its global/top-level scope. In this file that scope consists solely of plain variable and array assignments (`pkgbase`, `pkgname`, `pkgver`, `pkgrel`, `url`, `arch`, `makedepends`, `source`, `sha256sums`) plus the definitions of `prepare()`, `build()`, `check()`, `_completions()`, and `package_netbird()`. Function bodies are not executed during sourcing. There is no top-level command substitution, backtick evaluation, `eval`, obfuscated encoding, network fetch, or file-modifying operation that could run at this step.

The `go mod download` in `prepare()`, the `go build` in `build()`, and the `install` commands in `package_netbird()` are all inside function bodies and therefore cannot execute during `makepkg --printsrcinfo`; they are out of scope for this narrow gate and remain subject to the full PKGBUILD audit.
</details>
<evidence></evidence>
<summary>Top-level scope contains only plain assignments and function definitions; no executable code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope contains only plain assignments and function definitions; no executable code.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, netbird-server.service...
[0/3] Reviewing .SRCINFO, netbird-server.service, PKGBUILD...
LLM auditresponse for netbird-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the Netbird server. It defines the service execution path, restart behavior, and applies a comprehensive set of security hardening options (e.g., NoNewPrivileges, PrivateTmp, ProtectHome, ProtectSystem). There are no network requests, data exfiltration, obfuscated commands, or any other indicators of malicious activity. The file follows typical packaging practices and does not deviate from expected behavior.
</details>
<evidence></evidence>
<summary>Standard service unit with security hardening; no suspicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed netbird-server.service. Status: SAFE -- Standard service unit with security hardening; no suspicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch Linux package build script for the netbird-server package. It follows conventional practices: sources are fetched from the official GitHub release tarball with a SHA256 checksum, dependencies are resolved via `go mod download`, builds use standard Go flags, and installation places binaries, configuration, and systemd units in typical locations. There are no signs of obfuscated code, unexpected network requests, data exfiltration, backdoors, or any behavior deviating from the package's stated purpose. The use of an unpinned VCS source is not applicable here (it's a versioned tarball), and checksums are provided. The file is benign and consistent with legitimate AUR packaging.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious code.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is standard AUR package metadata (.SRCINFO). It defines the package structure for `netbird` and `netbird-server`, with sources pulled from the official GitHub repository (`https://github.com/netbirdio/netbird`) using a tagged release (`v0.78.2`). Checksums are provided (not SKIP). There are no executable instructions, no obfuscated content, no network requests beyond standard source fetching, and no suspicious system modifications. The file is purely declarative and poses no security risk.
</details>
<evidence>

</evidence>
<summary>Metadata file, no executable code, safe.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file, no executable code, safe.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,091
  Completion Tokens: 4,047
  Total Tokens: 15,138
  Total Cost: $0.001434
  Execution Time: 170.68 seconds

Final Status: SAFE


No issues found.
