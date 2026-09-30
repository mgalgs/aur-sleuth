---
package: netbird
pkgver: 0.79.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11088
completion_tokens: 2182
total_tokens: 13270
cost: 0.00072686208
execution_time: 71.22
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-19T07:05:20Z
file_verdicts:
  - file: netbird-server.service
    status: safe
    summary: Standard systemd service file with no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators.
---

Materializing netbird from local mirror...
Materialized netbird
Analyzing netbird AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the top-level scope of the PKGBUILD. The top-level code in this file contains only normal variable and metadata assignments: `pkgbase`, `pkgname`, `pkgver`, `pkgrel`, `url`, `arch`, `makedepends`, `source`, and `sha256sums`. There are no top-level command substitutions, `eval`, `curl`, `wget`, network requests, or file-modifying operations that would execute during sourcing.

The functions `prepare()`, `build()`, `check()`, and the `package_*()` functions are defined but not executed by `makepkg --printsrcinfo`, so their contents are out of scope for this specific gate. The `source` URL points to the project&apos;s official GitHub tag, and no suspicious remote or unpinned executable payload is referenced at parse time. No genuinely malicious code executes during this command.
</details>
<evidence></evidence>
<summary>Sourcing PKGBUILD top-level only sets metadata; no code executes.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing PKGBUILD top-level only sets metadata; no code executes.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, netbird-server.service...
[0/3] Reviewing .SRCINFO, netbird-server.service, PKGBUILD...
LLM auditresponse for netbird-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the Netbird server. It defines the service execution (`ExecStart`), restart policy, directory management, and extensive sandboxing protections (e.g., `NoNewPrivileges`, `ProtectHome`, `PrivateTmp`). There are no network requests, obfuscated commands, file exfiltration, or other malicious behaviors. The content is consistent with normal packaging practices for a server application.
</details>
<evidence>
</evidence>
<summary>Standard systemd service file with no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed netbird-server.service. Status: SAFE -- Standard systemd service file with no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains standard package metadata for the netbird AUR package. It declares two subpackages (netbird and netbird-server), lists dependencies, source tarballs from the official GitHub repository, and provides SHA-256 checksums. There are no embedded scripts, network requests, obfuscated payloads, or any dangerous operations. The content is purely declarative and follows normal AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Standard package metadata; no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Go-based project. The source tarball is fetched from the official GitHub repository of netbirdio and has a pinned SHA256 checksum, ensuring integrity. The build process uses Go modules and standard Go compilation flags without any suspicious commands. There are no obfuscated code, unexpected network requests, or attempts to exfiltrate data. The package functions install binaries, completions, and systemd service files from the upstream source. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,088
  Completion Tokens: 2,182
  Total Tokens: 13,270
  Total Cost: $0.000727
  Execution Time: 71.22 seconds

Final Status: SAFE


No issues found.
