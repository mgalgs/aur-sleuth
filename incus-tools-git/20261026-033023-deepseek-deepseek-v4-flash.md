---
package: incus-tools-git
pkgbase: incus-git
pkgver: v7.5.1.r497.076c66ab8e
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 21539
completion_tokens: 5693
total_tokens: 27232
cost: 0.002996175
execution_time: 89.07
files_reviewed: 7
files_skipped: 2
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-26T03:30:23Z
file_verdicts:
  - file: incus-user.service
    status: safe
    summary: Standard systemd service unit, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content found.
  - file: incus-user.socket
    status: safe
    summary: No security issues; standard socket unit file.
  - file: incus.socket
    status: safe
    summary: Standard systemd socket unit for Incus.
  - file: incus.service
    status: safe
    summary: Legitimate service unit for Incus container hypervisor.
  - file: keys/pgp/602F567663E593BCBD14F338C638974D64792D67.asc
    status: skipped
    summary: "Skipping binary file: 602F567663E593BCBD14F338C638974D64792D67.asc"
  - file: keys/pgp/ED1CA1E7A6F80E22E5CB2DA84ACE106615754614.asc
    status: skipped
    summary: "Skipping binary file: ED1CA1E7A6F80E22E5CB2DA84ACE106615754614.asc"
  - file: incus.sysusers
    status: safe
    summary: Standard sysusers configuration for incus service.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; no evidence of malicious behavior.
---

incus-tools-git is built from incus-git
Materializing incus-tools-git from local mirror...
Materialized incus-tools-git
Analyzing incus-tools-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function declarations at the top level. There are no command substitutions, backticks, `eval` calls, or any other code that would execute when the file is sourced by `makepkg --printsrcinfo`. The `pkgver()`, `prepare()`, `build()`, and `package_*()` functions are defined but not called at the top level, so they cannot execute during this step. All top-level content is safe for sourcing.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, PKGBUILD...
[0/9] Reviewing .SRCINFO, PKGBUILD, incus-user.service...
LLM auditresponse for incus-user.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd service unit for the Incus container runtime. It launches the `incus-user` daemon with the `--group incus` flag after the `incus-user.socket` and `incus.service` are active. There are no network requests, obfuscated code, dangerous commands (eval, base64, curl, wget), or unexpected file operations. The service definition follows normal packaging practices and does not contain any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no security issues.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, PKGBUILD, incus-user.service, incus-user.socket...
[1/9] Reviewing .SRCINFO, PKGBUILD, incus-user.socket...
+ Reviewed incus-user.service. Status: SAFE -- Standard systemd service unit, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .SRCINFO metadata file for an AUR split package. It defines the package base and names, dependencies, sources (the primary being `git+https://github.com/lxc/incus.git`, a recognized upstream), and checksums for local files (with `SKIP` for the VCS source as expected). There are no network requests beyond normal use, no obfuscated code, no dangerous commands, and no attempts to exfiltrate data or execute untrusted code. This file shows no evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no malicious content found.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, PKGBUILD, incus-user.socket, incus.service...
[2/9] Reviewing PKGBUILD, incus-user.socket, incus.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content found.
LLM auditresponse for incus-user.socket:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd socket unit file for the Incus daemon, defining a Unix socket at `/var/lib/incus/unix.socket.user` with appropriate group ownership and permissions. There is no obfuscation, network activity, or unexpected commands. The configuration follows normal packaging practices for services that need group-accessible Unix sockets.
</details>
<evidence></evidence>
<summary>No security issues; standard socket unit file.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, incus.service...
+ Reviewed incus-user.socket. Status: SAFE -- No security issues; standard socket unit file.
[3/9] Reviewing PKGBUILD, incus.service, incus.socket...
LLM auditresponse for incus.socket:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd socket unit file for the Incus container manager. It defines a Unix socket at `/var/lib/incus/unix.socket` with group ownership set to `incus-admin` and permissions `0660`, which are appropriate for access control via the dedicated group. There are no network requests, downloads, obfuscated commands, file operations, or any other indicators of malicious activity. The content is entirely benign and follows normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard systemd socket unit for Incus.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, incus.service, incus.socket, incus.sysusers...
[4/9] Reviewing PKGBUILD, incus.service, incus.sysusers...
+ Reviewed incus.socket. Status: SAFE -- Standard systemd socket unit for Incus.
LLM auditresponse for incus.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd service unit for the Incus container hypervisor. It declares normal dependencies (network-online.target, lxcfs.service, incus.socket), starts the `incusd` daemon, and sets resource limits appropriate for a container runtime (Delegate=yes, high LimitsNOFILE/NPROC/CORE/TasksMax). There are no network fetches, obfuscated commands, file exfiltration, or unexpected system modifications. The configuration is consistent with the package's stated purpose and does not exhibit any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Legitimate service unit for Incus container hypervisor.</summary>
</security_assessment>

[5/9] Reviewing PKGBUILD, incus.sysusers...
+ Reviewed incus.service. Status: SAFE -- Legitimate service unit for Incus container hypervisor.
[5/9] Reviewing PKGBUILD, incus.sysusers, keys/pgp/602F567663E593BCBD14F338C638974D64792D67.asc...
[5/9] Reviewing PKGBUILD, incus.sysusers, keys/pgp/602F567663E593BCBD14F338C638974D64792D67.asc, keys/pgp/ED1CA1E7A6F80E22E5CB2DA84ACE106615754614.asc...
[6/9] Reviewing PKGBUILD, incus.sysusers, keys/pgp/ED1CA1E7A6F80E22E5CB2DA84ACE106615754614.asc...
! Reviewed keys/pgp/602F567663E593BCBD14F338C638974D64792D67.asc. Status: SKIPPED -- Skipping binary file: 602F567663E593BCBD14F338C638974D64792D67.asc
[7/9] Reviewing PKGBUILD, incus.sysusers...
! Reviewed keys/pgp/ED1CA1E7A6F80E22E5CB2DA84ACE106615754614.asc. Status: SKIPPED -- Skipping binary file: ED1CA1E7A6F80E22E5CB2DA84ACE106615754614.asc
LLM auditresponse for incus.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd-sysusers configuration file that creates system groups (`incus`, `incus-admin`) and a system user (`incus`) with a dedicated home directory and nologin shell. It follows normal packaging practices for service users. No malicious code, network requests, obfuscation, or suspicious operations are present.
</details>
<evidence>
</evidence>
<summary>Standard sysusers configuration for incus service.</summary>
</security_assessment>

[8/9] Reviewing PKGBUILD...
+ Reviewed incus.sysusers. Status: SAFE -- Standard sysusers configuration for incus service.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR packaging file for the Incus system container manager. It follows normal packaging conventions:

- **Source**: Fetches from the legitimate upstream GitHub repository (`github.com/lxc/incus.git`). No download of pre-built binaries or execution of fetched scripts from unexpected hosts.
- **Build**: Standard Go build process (`go build`) with expected build flags and tags. No embedded payloads, obfuscated commands, or arbitrary shell injection.
- **Packaging**: Installs binaries, documentation, systemd units, and shell completions into `$pkgdir` using standard `install` and `cp` commands. The execution of `./bin/incus completion` is a standard practice for tools that generate their own shell completions; it runs the freshly-built upstream binary, not an injected script.
- **Configuration**: Ships typical systemd service/socket units and a sysusers config, all expected for this type of system service.
- **Exfiltration / Backdoors**: No network connections, file reads, or data streams that deviate from the expected build and install workflow. No `eval`, `base64`, `curl`/`wget` usage for fetching code.

There is no evidence of malicious or dangerous behavior. The code is entirely consistent with the stated purpose of packaging the upstream incus project.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD; no evidence of malicious behavior.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; no evidence of malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 2 files: 602F567663E593BCBD14F338C638974D64792D67.asc, ED1CA1E7A6F80E22E5CB2DA84ACE106615754614.asc)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 21,539
  Completion Tokens: 5,693
  Total Tokens: 27,232
  Total Cost: $0.002996
  Execution Time: 89.07 seconds

Final Status: SAFE


No issues found.


Audit Skips:

keys/pgp/602F567663E593BCBD14F338C638974D64792D67.asc: [SKIPPED] Skipping binary file: 602F567663E593BCBD14F338C638974D64792D67.asc

keys/pgp/ED1CA1E7A6F80E22E5CB2DA84ACE106615754614.asc: [SKIPPED] Skipping binary file: ED1CA1E7A6F80E22E5CB2DA84ACE106615754614.asc
