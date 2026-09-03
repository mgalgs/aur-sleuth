---
package: azerothcore-wotlk-git
pkgver: r19332.9eab2c5ec1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e1aa01f19251c0ab5d086ae2b4a1ce353c3f844d
prompt_tokens: 35888
completion_tokens: 5698
total_tokens: 41586
cost: 0.004189646104
execution_time: 353.35
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: ok
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-03T00:16:41Z
file_verdicts:
  - file: acore-auth-server.service
    status: safe
    summary: Standard systemd service unit, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd service file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior detected.
  - file: attach-world
    status: safe
    summary: Legitimate helper script for local console access.
  - file: acore_mod
    status: safe
    summary: Standard AUR module helper, no malicious activity.
  - file: jemalloc.patch
    status: safe
    summary: Standard C++ compatibility patch, no security issues.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Standard package install script, no malicious behavior.
  - file: acore_setup
    status: safe
    summary: Standard setup script; no supply-chain attack indicators.
---

Cloning https://aur.archlinux.org/azerothcore-wotlk-git.git...
Cloned azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no dangerous code in its global scope or `pkgver()` function that could execute during `makepkg --verifysource --nodeps` or `makepkg --printsrcinfo`. The top-level scope consists only of variable assignments, arrays (source, checksums, dependencies), and a standard `pkgver()` function that reads revision data from the cloned git repository. No command substitutions, downloads, or obfuscated commands are present outside of `prepare()`/`build()`/`package()`, which are not executed by these commands. The use of `git+https` sources with `SKIP` checksums and an unpinned branch is standard for VCS packages in the AUR and does not represent a security risk for this verification step.
</details>
<evidence></evidence>
<summary>No malicious code in global scope or pkgver(). Safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope or pkgver(). Safe.
Downloading sources...
makepkg --verifysource --nodeps successful
Reviewing the 9 file(s) in the AUR repository. The 0 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, PKGBUILD...
[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service...
LLM auditresponse for acore-auth-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit file for the AzerothCore MMORPG authentication server. It defines a simple service that runs the `/usr/bin/authserver` binary as the `azerothcore` user and `acore-admin` group, with a restart policy on failure. There are no network requests, downloads, obfuscated code, or any other dangerous or suspicious operations. The file follows normal packaging practices for a systemd service.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no security issues.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service, acore-world-server.service...
[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard systemd service unit, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It declares the package source from the official upstream GitHub repository (`azerothcore/azerothcore-wotlk.git`), lists dependencies, provides checksums for auxiliary files, and uses `SKIP` for the VCS source (normal for `-git` packages). No network requests, obfuscated commands, or suspicious file operations are present. The file is purely declarative and contains no executable code. All checksums for non-VCS sources are pinned, and there is no evidence of supply-chain tampering.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service, acore_mod...
[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd unit file for the AzerothCore MMORPG world server. It defines a simple service that runs `/usr/bin/worldserver` as the `azerothcore` user with the `acore-admin` group. The file contains only standard service configuration directives (`Type`, `User`, `Group`, `WorkingDirectory`, `ExecStart`, `Restart`, `Install`). No network requests, obfuscated code, dangerous commands, or data exfiltration mechanisms are present. The file follows normal packaging practices for a systemd service and does not introduce any security risks.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no malicious content.</summary>
</security_assessment>

[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod, acore_setup...
[3/9] Reviewing PKGBUILD, acore_mod, acore_setup...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd service file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS package. It clones the official upstream repository from GitHub, builds with CMake, and installs binaries and configuration files. No obfuscated code, unexpected network requests, data exfiltration, or backdoors are present.

The only notable point is the use of an undefined variable `$user_dropzone` in `prepare()`. This is a bug (likely a leftover from a previous version) rather than a malicious injection. The variable is never set, so the condition `[ -d "$user_dropzone" ]` evaluates to false (empty string), and the block is skipped. This does not introduce a security risk, though it could cause confusion if a user sets it externally. Other than that, all operations are scoped to the build directory and the package's own installation paths.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, acore_mod, acore_setup, attach-world...
[4/9] Reviewing acore_mod, acore_setup, attach-world...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior detected.
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a simple helper that checks if port 3443 (the AzerothCore remote access console) is listening on localhost, and if so, connects to it using `nc`. It only connects to 127.0.0.1, a local loopback address, so there is no outbound network activity to external hosts. The script does not download, execute, or exfiltrate anything. It is a standard convenience script for attaching to the world server’s admin console, consistent with the package's purpose. No evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Legitimate helper script for local console access.</summary>
</security_assessment>

[5/9] Reviewing acore_mod, acore_setup...
+ Reviewed attach-world. Status: SAFE -- Legitimate helper script for local console access.
[5/9] Reviewing acore_mod, acore_setup, azerothcore-wotlk-git.install...
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a maintenance helper for AzerothCore modules on Arch Linux. It locates the build directory (including via `strings` on the binary, which is unusual but not malicious), sets up symlinks for SQL and C++ modules, copies missing `.conf.dist` files to `/etc/azerothcore/`, runs `makepkg -edfi --noconfirm` to compile and install, and restarts the `acore-world-server` service. All operations are standard for such a tool and serve the stated purpose of integrating modules. There is no data exfiltration, no downloading from unexpected hosts, no obfuscated code, no backdoors, and no manipulation of files outside the application's scope. The use of `sudo` is expected for system-level operations. The script is not malicious.
</details>
<evidence>
</evidence>
<summary>Standard AUR module helper, no malicious activity.</summary>
</security_assessment>

[5/9] Reviewing acore_mod, acore_setup, azerothcore-wotlk-git.install, jemalloc.patch...
[6/9] Reviewing acore_setup, azerothcore-wotlk-git.install, jemalloc.patch...
+ Reviewed acore_mod. Status: SAFE -- Standard AUR module helper, no malicious activity.
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a straightforward patch to the jemalloc C++ source code. It replaces a non-standard internal function call (`std::__throw_bad_alloc()`) with the standard C++ `throw std::bad_alloc();`. This is a common compatibility fix for building with newer compilers or standard library implementations. There is no network activity, obfuscation, or any behavior that deviates from normal packaging or upstream development. The patch is benign and serves its stated purpose.
</details>
<evidence></evidence>
<summary>Standard C++ compatibility patch, no security issues.</summary>
</security_assessment>

[7/9] Reviewing acore_setup, azerothcore-wotlk-git.install...
+ Reviewed jemalloc.patch. Status: SAFE -- Standard C++ compatibility patch, no security issues.
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard Arch Linux package install script for the AzerothCore World of Warcraft emulator. It creates a system user and group, copies default configuration files, modifies configuration settings via sed, and manages systemd services. There are no network requests, no obfuscated code, no base64 decoding, no eval, and no exfiltration of data. The only minor anomaly is the use of `sudo` within a script that is already executed with root privileges by pacman; this is unnecessary but not malicious. The script does not introduce any supply-chain attack vectors.
</details>
<evidence></evidence>
<summary>Standard package install script, no malicious behavior.</summary>
</security_assessment>

[8/9] Reviewing acore_setup...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Standard package install script, no malicious behavior.
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an administrative setup script for the AzerothCore WoW emulator, intended to initialize databases, configure services, and provision a master admin account. It performs the following standard operations:

- Prompts for MySQL root credentials and creates a temporary password file (cleaned up via `trap` on EXIT).
- Executes the package's own SQL creation script from `/usr/share/azerothcore/data/sql/create/create_mysql.sql`.
- Modifies configuration files under `/etc/azerothcore/` using `sed` to enable updates, RA console, etc.
- Launches the `authserver` and `worldserver` binaries (shipped with the package) to trigger schema migration and then to allow the user to create an admin account via the console.
- After the worldserver exits, it automatically grants GM status to the created account via a SQL INSERT.

All network connections, file operations, and executed binaries are limited to the package's own installed files and local MySQL. There are no external downloads, obfuscated code, unexpected encoding, or commands like `eval`, `base64`, `curl`, or `wget` targeting third-party hosts. The temporary password file is securely handled and removed. The script does not deviate from standard AUR packaging helper practices.

**Note**: Storing the MySQL password in a world-readable temp file (though cleaned up) and passing it via command-line arguments to `mysql` is a minor operational security concern but is not evidence of a supply-chain attack. This is a judgment call on hygiene, not malice.
</details>
<evidence>
</evidence>
<summary>Standard setup script; no supply-chain attack indicators.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed acore_setup. Status: SAFE -- Standard setup script; no supply-chain attack indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,888
  Completion Tokens: 5,698
  Total Tokens: 41,586
  Total Cost: $0.004190
  Execution Time: 353.35 seconds

Final Status: SAFE


No issues found.
