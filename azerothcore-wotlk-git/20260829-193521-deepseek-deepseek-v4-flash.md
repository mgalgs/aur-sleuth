---
package: azerothcore-wotlk-git
pkgver: r19296.2fed8b96e4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 35998
completion_tokens: 6432
total_tokens: 42430
cost: 0.00402231984
execution_time: 538.31
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: ok
upstream_files: 10342
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-29T19:35:20Z
file_verdicts:
  - file: acore-auth-server.service
    status: safe
    summary: Standard systemd service file; no malicious content detected.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd service unit; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious content.
  - file: attach-world
    status: safe
    summary: Standard helper script for local admin console connection.
  - file: acore_mod
    status: safe
    summary: AUR helper script for module management, no malicious behavior.
  - file: acore_setup
    status: safe
    summary: Standard WoW server setup script, no malicious behavior.
  - file: jemalloc.patch
    status: safe
    summary: Standard C++ compatibility patch, no security issues.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Standard post-install script, no malicious behavior.
---

Cloning https://aur.archlinux.org/azerothcore-wotlk-git.git...
Cloned azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only uses standard packaging constructs: variable assignments, arrays, and a `pkgver()` function that runs `git rev-list` and `git rev-parse` on the cloned upstream repository. No dangerous top-level command substitutions, no `eval`, `curl`, `wget`, or obfuscated code. The `source` array fetches from the official GitHub repo (git+https) plus local AUR files. While the git source tracks a mutable branch (master) and has `SKIP` checksum, that is normal for `-git` packages and does not execute anything during the source fetch or PKGBUILD sourcing. The `pkgver()` function will only run after the source is cloned and only performs version detection. No code in the global scope or `pkgver()` performs any exfiltration, downloads from unexpected hosts, or attempts to execute untrusted payloads. The narrow gate of `makepkg --nobuild --nodeps --noprepare` and `--printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious code in sourced scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD, no malicious code in sourced scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/azerothcore-wotlk/deps/jemalloc/src/jemalloc_cpp.cpp); they are upstream content and were not reviewed.
Reviewing the 9 file(s) in the AUR repository. The 10342 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, PKGBUILD...
[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service...
LLM auditresponse for acore-auth-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd unit file for launching the AzerothCore authentication server. It defines a simple service that starts `/usr/bin/authserver` as the `azerothcore` user with the `acore-admin` group, sets a working directory, and restarts on failure. There are no network fetch operations, no encoded commands, no file manipulation outside of normal service startup, and no unexpected privileges or backdoors. The use of a dedicated user and group is consistent with standard service hardening. The `After=network.target` and `WantedBy=multi-user.target` lines are routine dependency/install directives. This file contains no malicious or suspicious behavior.
</details>
<evidence>

</evidence>
<summary>
Standard systemd service file; no malicious content detected.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service, acore-world-server.service...
[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard systemd service file; no malicious content detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` file for the `azerothcore-wotlk-git` package. It declares a git source from the official GitHub repository (branch `master`), with `SKIP` checksum as required for VCS sources. Other auxiliary sources (systemd service files, scripts, config) have valid SHA512 checksums. There is no embedded code, no obfuscation, no network requests, and no instructions to execute anything. The file simply defines package metadata and dependencies. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[2/9] Reviewing PKGBUILD, acore-world-server.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod...
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
Standard systemd service unit file for the AzerothCore MMORPG world server. It defines a simple service that runs `/usr/bin/worldserver` as the `azerothcore` user with `acore-admin` group, sets a working directory, and configures restart on failure. There are no embedded commands, network requests, obfuscated code, or unusual operations. The file follows normal packaging conventions for a system service and presents no security concerns.
</details>
<evidence>
</evidence>
<summary>Standard systemd service unit; no security issues.</summary>
</security_assessment>

[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod, acore_setup...
[3/9] Reviewing PKGBUILD, acore_mod, acore_setup...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd service unit; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS-based package. The `sha512sums` are `SKIP` for the git source, which is normal and expected. All other sources have proper checksums. The `prepare()` function checks for conflicting MariaDB packages and ensures MySQL ecosystem dependencies are present—this is a legitimate dependency management technique, not a supply-chain attack. Module symlinks are created from a user-managed dropzone directory, which is a standard pattern for modular builds. No network requests, obfuscated code, backdoors, or data exfiltration are present. The build and install steps are typical for a CMake-based C++ project with systemd service unit installation. No evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious content.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, acore_mod, acore_setup, attach-world...
[4/9] Reviewing acore_mod, acore_setup, attach-world...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious content.
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a simple helper to connect to the AzerothCore world server's remote administration console. It checks whether the server is listening on localhost port 3443 using `ss`, and if so, connects via `nc` (netcat) to `127.0.0.1:3443`. There is no external network communication, no obfuscation, no dangerous command execution, and no deviation from expected packaging practices. The script only facilitates local administrative access to the running server process.
</details>
<evidence></evidence>
<summary>Standard helper script for local admin console connection.</summary>
</security_assessment>

[4/9] Reviewing acore_mod, acore_setup, attach-world, azerothcore-wotlk-git.install...
[5/9] Reviewing acore_mod, acore_setup, azerothcore-wotlk-git.install...
+ Reviewed attach-world. Status: SAFE -- Standard helper script for local admin console connection.
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a legitimate helper tool for managing AzerothCore modules on an Arch Linux system using the `azerothcore-wotlk-git` AUR package. It performs routine operations within the application&#39;s scope: symlinking SQL and C++ module sources into the build workspace and system update directories, copying default configuration templates, rebuilding the server with `makepkg`, and restarting the associated systemd service. All file modifications (symlinks, config copies, service restart) are expected for a module deployment workflow. The use of `sudo` is appropriate for writing to system-owned paths, and the `strings`-based build directory detection is unconventional but not malicious—it merely attempts to locate the original package build directory from metadata. No network exfiltration, obfuscated commands, or execution of unsigned/unexpected code is present.
</details>
<evidence></evidence>
<summary>AUR helper script for module management, no malicious behavior.</summary>
</security_assessment>

[6/9] Reviewing acore_setup, azerothcore-wotlk-git.install...
+ Reviewed acore_mod. Status: SAFE -- AUR helper script for module management, no malicious behavior.
[6/9] Reviewing acore_setup, azerothcore-wotlk-git.install, jemalloc.patch...
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard post-install setup utility for an AzerothCore World of Warcraft private server. It performs routine administrative operations: prompting for MySQL credentials, creating a temporary password-protected config file, running SQL initialization scripts from the package's own data directory, modifying configuration files for the auth and world servers, starting those servers to trigger database migrations, and helping the admin create a game account. All network activity is confined to localhost MySQL and the server processes. There are no external downloads, no use of `curl`, `wget`, `eval`, `base64`, or any obfuscated code. The password is stored briefly in a file under `/tmp` with `chmod 600` and a `trap` cleanup – a standard pattern for avoiding command-line password exposure.

One minor security consideration is that the admin username is directly interpolated into a SQL query without escaping, which could allow SQL injection. However, the script is executed by the system administrator who already has root access and the MySQL root password, so this does not constitute a supply-chain attack. It is a hygiene issue within the application's own operational scope. No injected malicious code or data exfiltration is present.
</details>
<evidence></evidence>
<summary>Standard WoW server setup script, no malicious behavior.</summary>
</security_assessment>

[7/9] Reviewing azerothcore-wotlk-git.install, jemalloc.patch...
+ Reviewed acore_setup. Status: SAFE -- Standard WoW server setup script, no malicious behavior.
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch replaces a non-standard internal C++ function (`std::__throw_bad_alloc()`) with the standard `throw std::bad_alloc();`. This is a common compatibility fix to allow compilation with different standard library implementations (e.g., libstdc++ vs libc++, or different GCC/Clang versions). There is no indication of malicious intent, network activity, data exfiltration, or dangerous operations. The change is limited to a single line and serves a legitimate packaging purpose.
</details>
<evidence>
</evidence>
<summary>Standard C++ compatibility patch, no security issues.</summary>
</security_assessment>

[8/9] Reviewing azerothcore-wotlk-git.install...
+ Reviewed jemalloc.patch. Status: SAFE -- Standard C++ compatibility patch, no security issues.
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.install` script for an AUR package. It performs expected post-installation tasks: creating an unprivileged system user and group, copying default configuration templates, and printing informational messages to the user. The pre-removal function stops and disables the associated systemd services. There are no network requests, no execution of untrusted code, no obfuscation, and no attempts to exfiltrate data. The use of `sudo` within the script is redundant (since pacman runs install scripts as root) but does not introduce malicious behavior. All operations stay within the package's own directories and standard system boundaries. No evidence of a supply-chain attack or injected malicious functionality was found.
</details>
<evidence>
</evidence>
<summary>
Standard post-install script, no malicious behavior.
</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Standard post-install script, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,998
  Completion Tokens: 6,432
  Total Tokens: 42,430
  Total Cost: $0.004022
  Execution Time: 538.31 seconds

Final Status: SAFE


No issues found.
