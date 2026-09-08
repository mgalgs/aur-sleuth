---
package: azerothcore-wotlk-git
pkgver: r19413.c80c4b9792
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 36052
completion_tokens: 6584
total_tokens: 42636
cost: 0.004361187320
execution_time: 79.27
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-08T03:09:32Z
file_verdicts:
  - file: acore-auth-server.service
    status: safe
    summary: Benign systemd service unit; no malicious or suspicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR -git metadata with official upstream source; no malicious indicators found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious behavior found.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd unit; no malicious behavior or suspicious operations found.
  - file: attach-world
    status: safe
    summary: Safe helper script for local admin console.
  - file: acore_setup
    status: safe
    summary: Standard setup script, no supply-chain indicators.
  - file: jemalloc.patch
    status: safe
    summary: Innocuous patch improving standard compliance.
  - file: acore_mod
    status: safe
    summary: No security issues found; script performs local AzerothCore module build and deployment.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Standard package install script, no malicious content.
---

Materializing azerothcore-wotlk-git from local mirror...
Materialized azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments, array definitions, and function declarations at the global scope. There are no command substitutions, backtick executions, or any top-level code that would execute when sourced by `makepkg --printsrcinfo`. The functions `pkgver()`, `prepare()`, `build()`, and `package()` are defined but not invoked during this step. All source URLs and checksums are defined with quoted strings, and no eval, curl, wget, or other dangerous commands appear in the global scope. Therefore, running `makepkg --printsrcinfo` on this file is safe.
</details>
<evidence></evidence>
<summary>No top-level code execution; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution; safe to parse.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, PKGBUILD...
[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service...
LLM auditresponse for acore-auth-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit for the AzerothCore authentication server. It launches `/usr/bin/authserver` with a dedicated unprivileged user and group, sets a working directory, and restarts on failure. There are no network exfiltration steps, no downloads, no obfuscated commands, and no modification of system files outside of normal service management. The unit follows standard packaging practices for a game server daemon.
</details>
<evidence>
</evidence>
<summary>
Benign systemd service unit; no malicious or suspicious behavior found.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service, acore-world-server.service...
[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service...
+ Reviewed acore-auth-server.service. Status: SAFE -- Benign systemd service unit; no malicious or suspicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is routine AUR packaging metadata for a `-git` package. The primary source is the project's own official GitHub repository (`github.com/azerothcore/azerothcore-wotlk.git`), tracked on the `master` branch. Unpinned VCS branches and a `SKIP` checksum for the VCS source are standard and expected for `-git` packages, not evidence of malice.

The remaining auxiliary sources (systemd service files, helper scripts, and an install file) all have specific sha512 checksums, which is good packaging hygiene. No suspicious network endpoints, encoded commands, file operations, or downloads from unrelated hosts appear in this metadata. The actual helper scripts would need separate review, but this file itself contains no malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR -git metadata with official upstream source; no malicious indicators found.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service, acore_mod...
[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR -git metadata with official upstream source; no malicious indicators found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch Linux packaging script for the `azerothcore-wotlk-git` package. It sources the upstream code from the official GitHub repository via Git, builds with CMake and Clang, and installs systemd service files and helper scripts. All operations are confined to the expected build and install flow.

The prepare() function performs local dependency checks (MariaDB/MySQL presence) using `pacman -Qq` — this is a read-only check of the local package database, not exfiltration. It also manages symbolic links under `/usr/src/acore-modules`, which is a local user-provided dropzone for custom modules. These are normal packaging operations for a game server with modular extensions.

The build and package functions use typical CMake and install commands. There are no network requests beyond the initial `git clone` from the project's own GitHub, no obfuscated code, no dangerous commands (curl, wget, eval), and no manipulation of data outside the application's scope. The SKIP checksum on the VCS source is required for -git packages and is not a security issue.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious behavior found.</summary>
</security_assessment>

[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod, acore_setup...
[3/9] Reviewing acore-world-server.service, acore_mod, acore_setup...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious behavior found.
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit for running the AzerothCore world server. It starts `/usr/bin/worldserver` as the unprivileged `azerothcore` user after networking and the auth server are available. There are no malicious commands, no network fetches, no obfuscation, and no dangerous file operations. The service configuration is consistent with normal packaging for a multi-user game server.
</details>
<evidence>
</evidence>
<summary>
Standard systemd unit; no malicious behavior or suspicious operations found.</summary>
</security_assessment>

[3/9] Reviewing acore-world-server.service, acore_mod, acore_setup, attach-world...
[4/9] Reviewing acore_mod, acore_setup, attach-world...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd unit; no malicious behavior or suspicious operations found.
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a helper to connect to a local AzerothCore world server admin console (port 3443 on 127.0.0.1). It first checks if the port is listening with `ss`, then uses `nc` to connect. All operations are to localhost only, no external network requests. No obfuscation, no dangerous commands, no deviation from its intended purpose. It is a straightforward, benign convenience script for the package.
</details>
<evidence></evidence>
<summary>Safe helper script for local admin console.</summary>
</security_assessment>

[4/9] Reviewing acore_mod, acore_setup, attach-world, azerothcore-wotlk-git.install...
[5/9] Reviewing acore_mod, acore_setup, azerothcore-wotlk-git.install...
+ Reviewed attach-world. Status: SAFE -- Safe helper script for local admin console.
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a setup script for the AzerothCore World of Warcraft emulator, performing standard administrative tasks: database initialization, configuration tuning, and account creation. It uses a temporary MySQL options file with proper permissions (`chmod 600`) and cleanup via a trap, which is a secure way to handle credentials. All network interactions are local (MySQL on localhost) and binaries (`authserver`, `worldserver`) are from the system path. No downloads, obfuscation, or exfiltration of data to external hosts is present. The script modifies configuration files and runs SQL statements, all of which are within the expected functionality of the package.

One hygiene concern: the SQL INSERT statement interpolates user-provided input (`${SETUP_USER_UPPER}`) directly into the query, which could allow SQL injection if a user enters a malicious username. However, this is a local security vulnerability for the person running the script, not a supply-chain attack from the package maintainer. The script does not inject code or fetch untrusted content; it is consistent with ordinary AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard setup script, no supply-chain indicators.</summary>
</security_assessment>

[5/9] Reviewing acore_mod, acore_setup, azerothcore-wotlk-git.install, jemalloc.patch...
[6/9] Reviewing acore_mod, azerothcore-wotlk-git.install, jemalloc.patch...
+ Reviewed acore_setup. Status: SAFE -- Standard setup script, no supply-chain indicators.
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies a single line in the jemalloc source code, changing a non-standard internal function call (`std::__throw_bad_alloc()`) to the standard C++ `throw std::bad_alloc()`. This is a benign code improvement for compatibility and does not introduce any security issues. There are no network requests, obfuscated code, file operations, or system modifications. The change is consistent with standard packaging practices and does not indicate malicious intent.
</details>
<evidence></evidence>
<summary>Innocuous patch improving standard compliance.</summary>
</security_assessment>

[7/9] Reviewing acore_mod, azerothcore-wotlk-git.install...
+ Reviewed jemalloc.patch. Status: SAFE -- Innocuous patch improving standard compliance.
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a maintainer/helper tool for building and deploying AzerothCore modules from local source directories. It locates the package build workspace, creates symlinks for module SQL and C++ sources into AzerothCore data/build directories, deploys missing `.conf.dist` templates, runs `makepkg -edfi --noconfirm`, and restarts the `acore-world-server` service. These operations are consistent with the script's stated purpose and are scoped to AzerothCore-related paths (`/usr/src/acore-modules`, `/usr/share/azerothcore`, `/etc/azerothcore`, and the package build directory).

No obfuscation, suspicious network requests, data exfiltration, unexpected downloads, or hidden command execution was found. The use of `sudo`, `find -type l -delete`, symlink management, and service restart are normal for this kind of local deployment helper. The broad deletion of symlinks under `/usr/share/azerothcore/data/sql/updates/` is worth operational attention, but it is targeted at the application's own updates directory and is not evidence of malicious intent.
</details>
<evidence>
</evidence>
<summary>No security issues found; script performs local AzerothCore module build and deployment.</summary>
</security_assessment>

[8/9] Reviewing azerothcore-wotlk-git.install...
+ Reviewed acore_mod. Status: SAFE -- No security issues found; script performs local AzerothCore module build and deployment.
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install script performs standard package maintenance tasks: creating an unprivileged system user and group, copying default configuration files, and stopping/disabling services on removal. No obfuscated code, network requests, downloads, or execution of untrusted content is present. The use of `sudo sed` is redundant but harmless. The script does not deviate from expected AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard package install script, no malicious content.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Standard package install script, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,052
  Completion Tokens: 6,584
  Total Tokens: 42,636
  Total Cost: $0.004361
  Execution Time: 79.27 seconds

Final Status: SAFE


No issues found.
