---
package: sftpgo
pkgver: 2.7.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 20378
completion_tokens: 2503
total_tokens: 22881
cost: 0.00112298816
execution_time: 33.99
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-19T11:36:53Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with pinned upstream source.
  - file: sftpgo.install
    status: safe
    summary: Standard .install script; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: sftpgo.sysusers
    status: safe
    summary: Standard system user definition, no malicious content.
  - file: sftpgo.json
    status: safe
    summary: Standard JSON config file, no malicious content.
---

Materializing sftpgo from local mirror...
Materialized sftpgo
Analyzing sftpgo AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and function definitions (build, package) at the top level. No command substitutions, external command executions, or other code that would execute during `makepkg --printsrcinfo`. All dangerous operations are confined to the build and package functions, which are not run during metadata parsing. The `source` and `sha256sums` arrays are standard definitions. There is no obfuscation, network requests, or data exfiltration at the global scope.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to parse.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing PKGBUILD...
[0/5] Reviewing PKGBUILD, .SRCINFO...
[0/5] Reviewing PKGBUILD, .SRCINFO, sftpgo.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the AUR package `sftpgo`. The sources point to the official upstream GitHub repository at a pinned tag (`v2.7.6`), along with two local configuration files (`sftpgo.json` and `sftpgo.sysusers`) that have explicit SHA-256 checksums. The git source has `SKIP` for its checksum, which is normal for VCS sources (even when pinned) and is not a security concern. No malicious code, obfuscation, suspicious network requests, or dangerous commands are present. The file is entirely declarative metadata with no executable content.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with pinned upstream source.</summary>
</security_assessment>

[1/5] Reviewing PKGBUILD, sftpgo.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with pinned upstream source.
[1/5] Reviewing PKGBUILD, sftpgo.install, sftpgo.json...
LLM auditresponse for sftpgo.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script for the sftpgo package. It performs two benign operations:
- Uses `setcap` to grant the sftpgo binary the `cap_net_bind_service` capability, allowing it to bind to privileged ports (e.g., port 22 for SFTP) without running as root. This is expected and documented upstream.
- In the `pre_remove` function, it stops the systemd service and prints a notice about leftover configuration/data directories, advising the user on manual cleanup.

There are no network requests, obfuscated commands, unexpected file modifications, or any deviations from normal packaging practices. The script does exactly what it advertises and is consistent with sftpgo's requirements.
</details>
<evidence>

</evidence>
<summary>Standard .install script; no malicious content.</summary>
</security_assessment>

[2/5] Reviewing PKGBUILD, sftpgo.json...
+ Reviewed sftpgo.install. Status: SAFE -- Standard .install script; no malicious content.
[2/5] Reviewing PKGBUILD, sftpgo.json, sftpgo.sysusers...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is for the sftpgo package, a legitimate SFTP/HTTP/FTP/WebDAV server from GitHub. The source is fetched via git from the official repository using a tag (`v2.7.6`), which is standard for AUR VCS packages. The `sha256sums` for the git source is `SKIP` — this is normal and required for VCS sources; it is not evidence of malice. The build process uses Go to compile the binary, generates shell completions and man pages, and installs configuration files, systemd service, and other assets into appropriate directories. There are no suspicious network requests, obfuscated code, or unexpected file operations. The use of `git describe` and `date --utc` in ldflags is standard Go packaging practice. The package creates a system user and group (uid/gid 315) for its service, which is expected. No evidence of injected malicious code or supply-chain attack is present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[3/5] Reviewing sftpgo.json, sftpgo.sysusers...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
LLM auditresponse for sftpgo.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `sysusers.d` configuration snippet for Arch Linux, used to create a system user for the SFTPGo service. It defines a user named `sftpgo` with a fixed UID (315), a description, and a home directory. There is no obfuscation, network activity, or any executable logic — it is a purely declarative text file with no security implications beyond normal system user creation. No supply-chain attack indicators present.
</details>
<evidence></evidence>
<summary>Standard system user definition, no malicious content.</summary>
</security_assessment>

[4/5] Reviewing sftpgo.json...
+ Reviewed sftpgo.sysusers. Status: SAFE -- Standard system user definition, no malicious content.
LLM auditresponse for sftpgo.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a JSON configuration file for the SFTPGo application. It contains standard settings such as server ports, authentication methods, paths, and integration options (e.g., ACME, SMTP). There are no executable commands, obfuscated strings, network fetch instructions, or any code that could execute arbitrary actions. All hook and command fields are empty or set to safe defaults. The file is entirely data-driven and does not deviate from normal packaging practices. No evidence of a supply-chain attack or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard JSON config file, no malicious content.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed sftpgo.json. Status: SAFE -- Standard JSON config file, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,378
  Completion Tokens: 2,503
  Total Tokens: 22,881
  Total Cost: $0.001123
  Execution Time: 33.99 seconds

Final Status: SAFE


No issues found.
