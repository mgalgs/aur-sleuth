---
package: azerothcore-wotlk-git
pkgver: r19553.41f475e9da
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 36162
completion_tokens: 8380
total_tokens: 44542
cost: 0.00370454
execution_time: 270.73
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-17T15:05:14Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious behavior found.
  - file: acore-auth-server.service
    status: safe
    summary: Standard systemd service unit; no malicious behavior detected.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd service file, no malicious content.
  - file: attach-world
    status: safe
    summary: Safe helper script for local server console access.
  - file: acore_setup
    status: safe
    summary: Legitimate administrative setup script, no signs of malicious code.
  - file: acore_mod
    status: safe
    summary: Auxiliary module helper; no malicious activity found.
  - file: jemalloc.patch
    status: safe
    summary: Single benign compatibility patch to jemalloc exception handling; no security concerns.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: "Standard daemon install script: safe user/group setup, config handling, service control."
---

Materializing azerothcore-wotlk-git from local mirror...
Materialized azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD&#39;s global/top-level scope consists solely of static variable assignments, comments, and array definitions (source, sha512sums, depends, etc.). There are no command substitutions, backtick executions, eval invocations, or network calls at the top level. The only potential dynamic evaluation is inside the `pkgver()` function, which is not executed during `makepkg --printsrcinfo` (it only runs when printing the version). Therefore, sourcing this file to parse its metadata poses no risk of unintended code execution.
</details>
<evidence></evidence>
<summary>Top-level code is purely declarative; no execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code is purely declarative; no execution risk.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, PKGBUILD...
[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file for the `azerothcore-wotlk-git` package. It declares the package metadata, dependencies, sources, and checksums. The VCS source (`git+https://github.com/azerothcore/azerothcore-wotlk.git#branch=master`) uses `sha512sums = SKIP`, which is expected for VCS sources and is a standard AUR practice. The remaining local sources have proper checksums. There are no network requests, dangerous commands, obfuscated code, or any deviations from normal packaging practices. The file contains no malicious or suspicious content.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata file, no security issues.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service, acore-world-server.service...
[1/9] Reviewing PKGBUILD, acore-auth-server.service, acore-world-server.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch Linux packaging file for the open-source MMORPG server AzerothCore. It fetches the source code from the official GitHub repository via git (with a mutable master branch, which is normal for a -git package), compiles it with CMake and Clang, and installs binaries, configuration files, systemd units, and helper scripts. All network activity is limited to the declared upstream source. There are no obfuscated commands, no unexpected downloads, no attempts to exfiltrate data, and no alterations to system files outside of the package's intended scope. The `prepare()` function includes checks for MariaDB vs MySQL to enforce a known compatibility requirement, which is routine dependency management and not malicious. The file does not contain any genuinely dangerous or supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[1/9] Reviewing PKGBUILD, acore-auth-server.service, acore-world-server.service, acore_mod...
[2/9] Reviewing acore-auth-server.service, acore-world-server.service, acore_mod...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious behavior found.
LLM auditresponse for acore-auth-server.service:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd unit file for the AzerothCore MMORPG authentication server. It defines a simple service that runs the authserver binary from the package installation, using a dedicated service user and group. No network requests, no downloads, no shell code, no obfuscation, and no suspicious file manipulations are present. The configuration is consistent with normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard systemd service unit; no malicious behavior detected.</summary>
</security_assessment>

[2/9] Reviewing acore-auth-server.service, acore-world-server.service, acore_mod, acore_setup...
[3/9] Reviewing acore-world-server.service, acore_mod, acore_setup...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard systemd service unit; no malicious behavior detected.
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This systemd unit file defines a standard service for the AzerothCore MMORPG world server. It runs the worldserver binary as a dedicated user and group, sets a working directory, enables automatic restart on failure, and establishes normal dependencies on network and the auth server. The content is consistent with standard packaging practices for daemon services. No suspicious commands, network requests, obfuscation, or unexpected operations are present.
</details>
<evidence>
</evidence>
<summary>Standard systemd service file, no malicious content.</summary>
</security_assessment>

[3/9] Reviewing acore-world-server.service, acore_mod, acore_setup, attach-world...
[4/9] Reviewing acore_mod, acore_setup, attach-world...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd service file, no malicious content.
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `attach-world` is a simple helper that checks if the AzerothCore world server's remote access console (port 3443) is listening locally (`127.0.0.1`) and then connects to it via `netcat`. There are no external network requests, no downloads, no obfuscation, and no dangerous commands. It is a standard convenience script for administrators to interact with the server's console. All operations are confined to localhost and are directly related to the application's intended functionality.
</details>
<evidence></evidence>
<summary>Safe helper script for local server console access.</summary>
</security_assessment>

[4/9] Reviewing acore_mod, acore_setup, attach-world, azerothcore-wotlk-git.install...
[5/9] Reviewing acore_mod, acore_setup, azerothcore-wotlk-git.install...
+ Reviewed attach-world. Status: SAFE -- Safe helper script for local server console access.
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is an administrative setup helper for AzerothCore, a World of Warcraft emulator. It performs legitimate system administration tasks: prompting for MySQL credentials (stored securely in a temp file with 600 permissions), testing the database connection, running SQL initialization scripts, dropping and recreating the auth database, launching the authserver to trigger migrations, and then running the worldserver in the foreground to create map data. It then auto-elevates a new admin account to GM status via a SQL insert. All operations target local system files under `/usr/share/azerothcore/`, `/etc/azerothcore/`, and the local MySQL database. There are no network fetch commands (curl, wget), no obfuscated or encoded payloads, no execution of untrusted code from remote sources, and no exfiltration of data. The script only interacts with the package's own installed binaries and configuration files. The password file cleanup via `trap` and `chmod 600` are standard security practices. The `printf` usage to write the password file is safe (password is passed as a `%s` argument, not interpreted as a format string). The modifications to config files (sed) are normal server tuning. The SQL deletion and recreation of `acore_auth` is expected for a fresh setup. No evidence of supply-chain attack or malicious behavior was found.
</details>
<evidence></evidence>
<summary>Legitimate administrative setup script, no signs of malicious code.</summary>
</security_assessment>

[6/9] Reviewing acore_mod, azerothcore-wotlk-git.install...
+ Reviewed acore_setup. Status: SAFE -- Legitimate administrative setup script, no signs of malicious code.
[6/9] Reviewing acore_mod, azerothcore-wotlk-git.install, jemalloc.patch...
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is an auxiliary helper for managing source modules in the azerothcore-wotlk-git AUR package. It locates the build workspace, realigns SQL and C++ symlinks from a user module dropzone, optionally deploys new configuration files, triggers an incremental build with `makepkg`, and restarts the background service. All operations are confined to the package's own directories and commands (`sudo`, `find`, `ln`, `cp`, `systemctl`, `makepkg`). No network downloads, obfuscated code, exfiltration, or backdoors are present. The script's behavior is entirely consistent with its stated purpose of assisting modular compilation and deployment.
</details>
<evidence>
</evidence>
<summary>Auxiliary module helper; no malicious activity found.</summary>
</security_assessment>

[7/9] Reviewing azerothcore-wotlk-git.install, jemalloc.patch...
+ Reviewed acore_mod. Status: SAFE -- Auxiliary module helper; no malicious activity found.
LLM auditresponse for jemalloc.patch:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a patch file that makes a single, small change to the jemalloc C++ exception handling code. It replaces the compiler-runtime-specific internal helper `std::__throw_bad_alloc()` with the standard C++ expression `throw std::bad_alloc();`. This is a normal source compatibility fix and does not introduce any network access, command execution, file manipulation, obfuscation, or any behavior outside the upstream build/dependency context.

There are no suspicious URLs, encoded payloads, system modifications, or references to unrelated hosts. The patch is consistent with ordinary packaging practice and contains no evidence of malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>Single benign compatibility patch to jemalloc exception handling; no security concerns.</summary>
</security_assessment>

[8/9] Reviewing azerothcore-wotlk-git.install...
+ Reviewed jemalloc.patch. Status: SAFE -- Single benign compatibility patch to jemalloc exception handling; no security concerns.
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.install` script is a routine Arch Linux package hook for the azerothcore-wotlk-git daemon package. `post_install()` provisions an unprivileged system user (`azerothcore` with `/usr/bin/nologin` shell), creates a dedicated admin group, copies the package's own configuration templates into `/etc/azerothcore/`, and runs `sed -i` to point each config's `SourceDirectory` at the package's data dir. All file operations are confined to `/etc/azerothcore` — the package's own config directory — and the user/group management is standard daemon packaging practice. `pre_remove()` stops and disables only the package's own systemd units with error suppression, which is expected and safe.

Potential concerns are minor and non-malicious: the `sudo` prefix in the `sed` commands is redundant (the install script already runs as root under pacman) and could be a portability nit if `sudo` is absent in a chroot, and the script does not clean up the user/group on removal (a common, acceptable behavior). There is no network activity, no download/execution of remote content, no obfuscated or encoded payloads, no environment/credential exfiltration, and no manipulation of files outside the package's own configuration scope. The remaining code is diagnostic output (ANSI-colored messages) and a reference to the package's own `acore_setup` helper in displayed text, not an execution of it.
</details>
<evidence>
</evidence>
<summary>Standard daemon install script: safe user/group setup, config handling, service control.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Standard daemon install script: safe user/group setup, config handling, service control.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,162
  Completion Tokens: 8,380
  Total Tokens: 44,542
  Total Cost: $0.003705
  Execution Time: 270.73 seconds

Final Status: SAFE


No issues found.
