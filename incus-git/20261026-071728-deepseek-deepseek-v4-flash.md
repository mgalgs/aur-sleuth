---
package: incus-git
pkgver: v7.5.1.r497.076c66ab8e
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 21049
completion_tokens: 2280
total_tokens: 23329
cost: 0.002330419
execution_time: 61.64
files_reviewed: 7
files_skipped: 2
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-26T07:17:28Z
file_verdicts:
  - file: incus-user.service
    status: safe
    summary: Standard systemd service file for Incus user daemon.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
  - file: incus-user.socket
    status: safe
    summary: Standard systemd socket unit for Incus user socket, no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard VCS PKGBUILD with no malicious indicators.
  - file: incus.socket
    status: safe
    summary: Standard systemd socket unit, no security issues.
  - file: keys/pgp/602F567663E593BCBD14F338C638974D64792D67.asc
    status: skipped
    summary: "Skipping binary file: 602F567663E593BCBD14F338C638974D64792D67.asc"
  - file: keys/pgp/ED1CA1E7A6F80E22E5CB2DA84ACE106615754614.asc
    status: skipped
    summary: "Skipping binary file: ED1CA1E7A6F80E22E5CB2DA84ACE106615754614.asc"
  - file: incus.sysusers
    status: safe
    summary: Standard sysusers config, no security concerns.
  - file: incus.service
    status: safe
    summary: Standard systemd service file for Incus; no security issues.
---

Materializing incus-git from local mirror...
Materialized incus-git
Analyzing incus-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard variable definitions and arrays at the top-level scope. There are no command substitutions, backticks, eval, or any executable code that would run when sourcing this file. The `source` array defines expected upstream URLs and local files. All executable code is confined to `pkgver()`, `prepare()`, `build()`, and `package()` functions, which are **not** executed during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, PKGBUILD...
[0/9] Reviewing .SRCINFO, PKGBUILD, incus-user.service...
LLM auditresponse for incus-user.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the Incus user daemon. It defines the service to start `/usr/bin/incus-user --group incus`, restart on failure, and declares dependencies on the socket unit. There are no network requests, file operations, or any other suspicious activities. The file is a normal packaging component and does not contain any malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard systemd service file for Incus user daemon.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, PKGBUILD, incus-user.service, incus-user.socket...
[1/9] Reviewing .SRCINFO, PKGBUILD, incus-user.socket...
+ Reviewed incus-user.service. Status: SAFE -- Standard systemd service file for Incus user daemon.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It describes package dependencies, sources, and checksums. The only checksum set to `SKIP` is for the VCS (`git+https`) source, which is standard practice for git-based packages. All other source files have pinned SHA-256 checksums. No executable code, network requests, obfuscation, or suspicious operations are present. The file is purely declarative metadata and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, PKGBUILD, incus-user.socket, incus.service...
[2/9] Reviewing PKGBUILD, incus-user.socket, incus.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
LLM auditresponse for incus-user.socket:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd socket unit for the Incus daemon user socket. It configures a Unix socket at /var/lib/incus/unix.socket.user owned by the incus group with mode 0660, and activates incus-user.service when connections are received. This is normal packaging practice for a service that exposes a local Unix socket.

There are no network requests, no downloads, no obfuscated code, no file modification logic, and no execution of external commands. The settings (socket path, group, mode, and service binding) are consistent with Incus's intended functionality as a local container management daemon. No evidence of supply-chain attack or malicious behavior exists.
</details>
<evidence>
</evidence>
<summary>
Standard systemd socket unit for Incus user socket, no malicious behavior found.
</summary>
</security_assessment>

[2/9] Reviewing PKGBUILD, incus-user.socket, incus.service, incus.socket...
[3/9] Reviewing PKGBUILD, incus.service, incus.socket...
+ Reviewed incus-user.socket. Status: SAFE -- Standard systemd socket unit for Incus user socket, no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch Linux packaging practices for a VCS package. The source is fetched from the official upstream GitHub repository (`github.com/lxc/incus.git`). The build uses standard Go tooling, and installation commands copy files to appropriate directories under `$pkgdir`. No suspicious network requests, obfuscated code, or unexpected file operations are present. The `SKIP` checksum for the git source is normal for VCS packages. All other actions are routine packaging tasks.
</details>
<evidence>
</evidence>
<summary>Standard VCS PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, incus.service, incus.socket, incus.sysusers...
[4/9] Reviewing incus.service, incus.socket, incus.sysusers...
+ Reviewed PKGBUILD. Status: SAFE -- Standard VCS PKGBUILD with no malicious indicators.
LLM auditresponse for incus.socket:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd socket unit file for the Incus daemon. It defines a Unix socket at `/var/lib/incus/unix.socket` with group ownership `incus-admin` and mode `0660`. The service is `incus.service`. There is no malicious or suspicious behavior — no network requests, no obfuscated code, no unexpected file operations or system modifications. The file follows expected packaging practices for a daemon socket activation unit.
</details>
<evidence></evidence>
<summary>Standard systemd socket unit, no security issues.</summary>
</security_assessment>

[5/9] Reviewing incus.service, incus.sysusers...
+ Reviewed incus.socket. Status: SAFE -- Standard systemd socket unit, no security issues.
[5/9] Reviewing incus.service, incus.sysusers, keys/pgp/602F567663E593BCBD14F338C638974D64792D67.asc...
[5/9] Reviewing incus.service, incus.sysusers, keys/pgp/602F567663E593BCBD14F338C638974D64792D67.asc, keys/pgp/ED1CA1E7A6F80E22E5CB2DA84ACE106615754614.asc...
[6/9] Reviewing incus.service, incus.sysusers, keys/pgp/ED1CA1E7A6F80E22E5CB2DA84ACE106615754614.asc...
! Reviewed keys/pgp/602F567663E593BCBD14F338C638974D64792D67.asc. Status: SKIPPED -- Skipping binary file: 602F567663E593BCBD14F338C638974D64792D67.asc
[7/9] Reviewing incus.service, incus.sysusers...
! Reviewed keys/pgp/ED1CA1E7A6F80E22E5CB2DA84ACE106615754614.asc. Status: SKIPPED -- Skipping binary file: ED1CA1E7A6F80E22E5CB2DA84ACE106615754614.asc
LLM auditresponse for incus.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd sysusers configuration file for defining system users and groups required by the incus package. It creates two groups (`incus` and `incus-admin`), a system user (`incus`) with a home directory and no login shell, and adds the user to the group. There is no executable code, no network requests, no obfuscation, and no deviation from ordinary packaging practices. The file contains only structured directives and is identical to what would be expected for incus (the community fork of LXD). No security issues are present.
</details>
<evidence>
</evidence>
<summary>Standard sysusers config, no security concerns.</summary>
</security_assessment>

[8/9] Reviewing incus.service...
+ Reviewed incus.sysusers. Status: SAFE -- Standard sysusers config, no security concerns.
LLM auditresponse for incus.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service file for the Incus container hypervisor. It defines the service startup, dependencies on network and lxcfs, and sets resource limits appropriate for a container runtime (e.g., high file descriptors, unlimited processes). All paths reference standard system locations (`/usr/bin/incusd`, `/var/log/incus/`, `/usr/share/ovmf/x64`). There are no suspicious commands, network requests, encoded content, or file operations outside the package's expected scope. The `ExecStop` and `ExecStartPost` are normal for graceful startup/shutdown. No evidence of malicious or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Standard systemd service file for Incus; no security issues.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed incus.service. Status: SAFE -- Standard systemd service file for Incus; no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 2 files: 602F567663E593BCBD14F338C638974D64792D67.asc, ED1CA1E7A6F80E22E5CB2DA84ACE106615754614.asc)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 21,049
  Completion Tokens: 2,280
  Total Tokens: 23,329
  Total Cost: $0.002330
  Execution Time: 61.64 seconds

Final Status: SAFE


No issues found.


Audit Skips:

keys/pgp/602F567663E593BCBD14F338C638974D64792D67.asc: [SKIPPED] Skipping binary file: 602F567663E593BCBD14F338C638974D64792D67.asc

keys/pgp/ED1CA1E7A6F80E22E5CB2DA84ACE106615754614.asc: [SKIPPED] Skipping binary file: ED1CA1E7A6F80E22E5CB2DA84ACE106615754614.asc
