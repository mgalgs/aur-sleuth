---
package: azerothcore-wotlk-git
pkgver: r19573.70865b66c7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 35925
completion_tokens: 6148
total_tokens: 42073
cost: 0.00176874628
execution_time: 71.03
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-20T07:08:00Z
file_verdicts:
  - file: acore-auth-server.service
    status: safe
    summary: Standard systemd service, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file; no malicious content.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd unit, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package, no malicious indicators.
  - file: acore_mod
    status: safe
    summary: Legitimate module compiler helper script, no malicious code.
  - file: attach-world
    status: safe
    summary: Safe helper script for local service connection.
  - file: acore_setup
    status: safe
    summary: Standard server setup script, no malicious code.
  - file: jemalloc.patch
    status: safe
    summary: Benign patch; standard C++ compatibility fix.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Standard install script with no malicious behavior.
---

Materializing azerothcore-wotlk-git from local mirror...
Materialized azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top‑level variable definitions, comments, and static arrays. No command substitutions, function calls, or network requests execute in the global scope. The code inside `pkgver()`, `prepare()`, `build()`, and `package()` is not invoked by `makepkg --printsrcinfo`, so it is out of scope for this gate. There is no risk of executing malicious code during this step.
</details>
<evidence>
</evidence>
<summary>No dangerous top‑level execution found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top‑level execution found.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, PKGBUILD...
[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service...
LLM auditresponse for acore-auth-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the AzerothCore authentication server. It defines:
- `After=network.target` – standard dependency.
- `Type=simple` – normal for a long-running server process.
- `User=azerothcore` and `Group=acore-admin` – standard privilege separation.
- `WorkingDirectory=/usr/share/azerothcore` – expected location.
- `ExecStart=/usr/bin/authserver` – a normal binary path.
- `Restart=on-failure` – common for service resilience.

There are no network requests, file downloads, encoded commands, or any deviation from normal packaging practices. The service simply launches the upstream application binary. No security issues present.
</details>
<evidence></evidence>
<summary>Standard systemd service, no malicious content.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service, acore-world-server.service...
[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard systemd service, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
.SRCINFO is a standard AUR metadata file describing package dependencies, sources, and checksums. No executable code or suspicious content is present. The git source is unpinned (branch=master) and its checksum is SKIP, which is normal for VCS packages. All other source files have valid SHA512 checksums. There are no hidden commands, obfuscated strings, or network requests beyond the declared upstream repository.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file; no malicious content.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service, acore_mod...
[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file; no malicious content.
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the AzerothCore world server. It defines a simple service that runs `/usr/bin/worldserver` as user `azerothcore` with group `acore-admin`, and includes standard directives like `After=network.target acore-auth-server.service` and `Restart=on-failure`. There is no obfuscated code, no network requests, no file operations outside of the expected service lifecycle, and no signs of supply-chain attack or malware. The configuration is entirely benign and follows normal packaging practices for a game server daemon.
</details>
<evidence></evidence>
<summary>Standard systemd unit, no security issues.</summary>
</security_assessment>

[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod, acore_setup...
[3/9] Reviewing PKGBUILD, acore_mod, acore_setup...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd unit, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a VCS-based game server package. It clones the upstream repository from GitHub, builds with CMake, and installs binaries, configuration, and systemd units. The `SKIP` checksum on the VCS source is normal for `-git` packages. The pre-build checks for conflicting MariaDB packages are legitimate dependency enforcement, not malicious. The `user_dropzone` variable referenced in `prepare()` is undefined, so the module-linking block has no effect – this is a minor bug but not a security threat. The only notable design choice is creating a world-writable directory `&#47;usr&#47;src&#47;acore-modules` in the package; while unusual, it is an upstream functionality mechanism for users to add custom modules, not evidence of a supply-chain attack. There are no obfuscated commands, unexpected network requests, data exfiltration, or backdoors.
</details>
<evidence></evidence>
<summary>Standard AUR package, no malicious indicators.</summary>
</security_assessment>

[4/9] Reviewing acore_mod, acore_setup...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package, no malicious indicators.
[4/9] Reviewing acore_mod, acore_setup, attach-world...
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a module compilation and deployment helper for the AzerothCore World of Warcraft emulator. It locates the active PKGBUILD workspace, creates symlinks for user-provided modules (both SQL and C++ source), rebuilds the package with `makepkg -edfi`, and restarts the world server service.  

All operations are standard for an AUR development tool:  
- Uses `sudo` only for system‑wide symlinks and service restarts.  
- No network downloads, obfuscation, eval, or data exfiltration.  
- The `makepkg -edfi --noconfirm` command rebuilds from local source (the `-e` flag preserves the existing build directory and skips fetching).  
- Extracting a compilation path from the installed binary with `strings` is unconventional but supplies legitimate workspace discovery, not a backdoor.  

There is no evidence of injected malicious code; the script faithfully serves its stated purpose of automating module integration and re‑compilation.
</details>
<evidence></evidence>
<summary>Legitimate module compiler helper script, no malicious code.</summary>
</security_assessment>

[4/9] Reviewing acore_mod, acore_setup, attach-world, azerothcore-wotlk-git.install...
[5/9] Reviewing acore_setup, attach-world, azerothcore-wotlk-git.install...
+ Reviewed acore_mod. Status: SAFE -- Legitimate module compiler helper script, no malicious code.
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
The script "attach-world" is a straightforward helper that checks whether the AzerothCore world server's remote access port (3443) is listening on localhost, then connects to it using netcat. It performs no external network requests, no file operations beyond standard checks, no obfuscated code, and no dangerous commands like eval, base64, or fetching code from remote sources. The use of `ss` and `nc` on loopback is normal for such a diagnostic/connection script. There is no indication of malicious or supply-chain attack behavior.</details>
<evidence></evidence>
<summary>Safe helper script for local service connection.</summary>
</security_assessment>

[5/9] Reviewing acore_setup, attach-world, azerothcore-wotlk-git.install, jemalloc.patch...
[6/9] Reviewing acore_setup, azerothcore-wotlk-git.install, jemalloc.patch...
+ Reviewed attach-world. Status: SAFE -- Safe helper script for local service connection.
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a typical initialization and provisioning tool for the AzerothCore game server. It checks for root privileges, securely handles MySQL credentials via a temporary config file with cleanup traps, runs SQL scripts from the package itself, configures server settings, and starts/ stops server binaries. All operations target the package's own files under `/usr/share/azerothcore/` and `/etc/azerothcore/`, and the only external input (MySQL password, admin username/password) is used to authenticate locally and set up server accounts. There are no obfuscated commands, no network requests to unexpected hosts, no downloading or execution of untrusted code, and no exfiltration of sensitive data. The script's behavior aligns with its stated purpose of securely initializing the server environment.
</details>
<evidence></evidence>
<summary>Standard server setup script, no malicious code.</summary>
</security_assessment>

[7/9] Reviewing azerothcore-wotlk-git.install, jemalloc.patch...
+ Reviewed acore_setup. Status: SAFE -- Standard server setup script, no malicious code.
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple patch file that changes one line in a jemalloc C++ source file: it replaces `std::__throw_bad_alloc()` with `throw std::bad_alloc()`. This is a standard compatibility fix for newer C++ runtimes where the internal `__throw_bad_alloc` function may be unavailable or deprecated. There is no obfuscation, no network access, no code execution, and no deviation from normal packaging practices. The patch does not introduce any malicious behavior.
</details>
<evidence></evidence>
<summary>Benign patch; standard C++ compatibility fix.</summary>
</security_assessment>

[8/9] Reviewing azerothcore-wotlk-git.install...
+ Reviewed jemalloc.patch. Status: SAFE -- Benign patch; standard C++ compatibility fix.
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script performs standard package installation tasks: creating a dedicated system user and group, copying default configuration files, and modifying them with `sed`. The use of `sudo` is unusual (since the script already runs as root) but is not malicious—it is likely a copy‑paste oversight rather than an attack. There are no network requests, no execution of fetched code, no obfuscation, and no attempts to access or exfiltrate sensitive data. The `pre_remove` function stops and disables the package's own systemd services, which is normal cleanup. All operations are confined to the package's own directories and configuration files.
</details>
<evidence></evidence>
<summary>Standard install script with no malicious behavior.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Standard install script with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,925
  Completion Tokens: 6,148
  Total Tokens: 42,073
  Total Cost: $0.001769
  Execution Time: 71.03 seconds

Final Status: SAFE


No issues found.
