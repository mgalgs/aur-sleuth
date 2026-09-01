---
package: azerothcore-wotlk-git
pkgver: r19329.1483728006
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 35910
completion_tokens: 5296
total_tokens: 41206
cost: 0.0035481026
execution_time: 266.17
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: ok
upstream_files: 10357
upstream_named_files: 1
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T15:14:46Z
file_verdicts:
  - file: acore-auth-server.service
    status: safe
    summary: Standard service file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: acore_mod
    status: safe
    summary: Legitimate module management helper script.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd service unit, no malicious content.
  - file: acore_setup
    status: safe
    summary: Standard setup script, no malicious content.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Standard install script, no supply-chain threats.
  - file: jemalloc.patch
    status: safe
    summary: Routine C++ compatibility patch, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Clean standard AUR PKGBUILD, no issues.
  - file: attach-world
    status: safe
    summary: Standard local helper script, no malicious behavior detected.
---

Cloning https://aur.archlinux.org/azerothcore-wotlk-git.git...
Cloned azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no top-level code or `pkgver()` logic that executes anything beyond standard packaging operations. The source array fetches from the project's own GitHub repository and includes local files with checksums. No eval, base64, curl, wget, or other dangerous commands are present in the scopes that run during `makepkg --nobuild --nodeps --noprepare` or `--printsrcinfo`. The git source uses a SKIP checksum, which is normal for VCS packages. The `pkgver()` function only runs `git rev-list` and `git rev-parse` inside the already-cloned repo—standard and safe. All potentially dangerous code (e.g., MariaDB checks, patching, cmake build, file installation) resides in `prepare()`, `build()`, and `package()`, which are not executed by the requested commands.
</details>
<evidence></evidence>
<summary>Safe for source fetch and PKGBUILD parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe for source fetch and PKGBUILD parse.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/azerothcore-wotlk/deps/jemalloc/src/jemalloc_cpp.cpp); they are upstream content and were not reviewed.
Reviewing the 9 file(s) in the AUR repository. The 10357 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, PKGBUILD...
[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service...
LLM auditresponse for acore-auth-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file. It defines a service that executes `/usr/bin/authserver` after the network is up, as a non-root user (`azerothcore`) and group (`acore-admin`). There are no suspicious commands, network requests, obfuscation, or file operations. The configuration is entirely routine for a daemon service.
</details>
<evidence></evidence>
<summary>Standard service file, no security issues.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service, acore-world-server.service...
[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard service file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard AUR metadata. It defines a git-based package (`azerothcore-wotlk-git`) with source from the project's own GitHub repository. The checksum for the VCS source is `SKIP`, which is normal for `-git` packages. Other source files (systemd services, helper scripts) have valid sha512 checksums. No obfuscated code, dangerous commands, or unexpected network destinations are present. The unpinned master branch is routine for VCS packages and not a supply-chain attack indicator. The file itself is purely declarative and contains no executable content.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service, acore_mod...
[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a convenience helper for managing AzerothCore modules on an Arch Linux system. It performs expected packaging and deployment tasks: locating the build workspace, creating symlinks for SQL and C++ module files into system paths, copying default configuration templates, running an incremental recompilation via `makepkg` (with flags that skip source fetching), and restarting the associated systemd service. All file operations target paths that are within the expected scope of the package (e.g., `/usr/share/azerothcore/`, `/etc/azerothcore/`, and the local build directory). No obfuscated or encoded code is present; no network connections are made; no exfiltration of data occurs. The use of `sudo` for system-level directory operations is standard for AUR helper scripts that configure runtime environments. The extraction of a path from the `worldserver` binary is a heuristic to find the build directory, not a security issue. The script adheres to normal AUR and packaging practices and does not exhibit any signs of malicious intent or supply-chain attack.
</details>
<evidence></evidence>
<summary>Legitimate module management helper script.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, acore-world-server.service...
+ Reviewed acore_mod. Status: SAFE -- Legitimate module management helper script.
[3/9] Reviewing PKGBUILD, acore-world-server.service, acore_setup...
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the AzerothCore world server. It contains no commands, no network requests, no encoded payloads, and no file operations beyond specifying the execution path and runtime environment. The service runs as the dedicated `azerothcore` user in the `acore-admin` group, which follows the principle of least privilege. There is no evidence of malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no malicious content.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, acore-world-server.service, acore_setup, attach-world...
[4/9] Reviewing PKGBUILD, acore_setup, attach-world...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd service unit, no malicious content.
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard administrative setup utility for the AzerothCore World of Warcraft emulator. It initializes a MySQL database, configures server files, and bootstraps the auth and world server binaries for first-time configuration. All operations are local (interacting with MySQL, modifying configuration files under `/etc/azerothcore/`, and running the installed server binaries). There are no network requests to external hosts, no obfuscated or encoded commands, no attempts to exfiltrate data, and no unexpected file operations. The script creates a temporary MySQL credentials file with strict permissions and cleans it up via a `trap` on exit—a standard security practice. While user input is used directly in SQL statements, this is part of an interactive local setup and does not represent a supply-chain risk. The code is consistent with the package’s stated purpose and contains no injected malicious behavior.
</details>
<evidence></evidence>
<summary>Standard setup script, no malicious content.</summary>
</security_assessment>

[5/9] Reviewing PKGBUILD, attach-world...
+ Reviewed acore_setup. Status: SAFE -- Standard setup script, no malicious content.
[5/9] Reviewing PKGBUILD, attach-world, azerothcore-wotlk-git.install...
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script. It creates an unprivileged system user and group, copies default configuration templates from `.dist` files, and manages systemd services on removal. The `sudo` commands in `post_install()` are redundant (the script already runs as root) but not malicious. No network requests, obfuscated code, dangerous downloads, or data exfiltration are present. All operations are confined to the expected package paths and system administration tasks compatible with the package's purpose as a World of Warcraft server emulator.
</details>
<evidence></evidence>
<summary>Standard install script, no supply-chain threats.</summary>
</security_assessment>

[6/9] Reviewing PKGBUILD, attach-world...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Standard install script, no supply-chain threats.
[6/9] Reviewing PKGBUILD, attach-world, jemalloc.patch...
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies a single line in jemalloc&#39;s C++ source file, replacing the non-standard `std::__throw_bad_alloc()` with the standard `throw std::bad_alloc()`. This is a routine compatibility fix that aligns the code with standard C++ exception behavior. There is no evidence of malicious intent—no network requests, no obfuscation, no dangerous commands, and no deviation from expected packaging practices.
</details>
<evidence></evidence>
<summary>Routine C++ compatibility patch, no security issues.</summary>
</security_assessment>

[7/9] Reviewing PKGBUILD, attach-world...
+ Reviewed jemalloc.patch. Status: SAFE -- Routine C++ compatibility patch, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch Linux packaging practices for a VCS package. It clones the legitimate upstream AzerothCore repository from GitHub, builds it with CMake, and installs the resulting binaries and support files. There are no suspicious network requests, obfuscated code, dangerous commands (eval, base64, curl, wget in unexpected contexts), or data exfiltration attempts. The `prepare()` function includes dependency checks for MariaDB/MySQL and a user-module integration feature from `/usr/src/acore-modules`, both of which are normal upstream functionality and not malicious. The build and install steps are typical for a C++ project using CMake. No evidence of supply-chain attack or injected malicious code.
</details>
<evidence></evidence>
<summary>Clean standard AUR PKGBUILD, no issues.</summary>
</security_assessment>

[8/9] Reviewing attach-world...
+ Reviewed PKGBUILD. Status: SAFE -- Clean standard AUR PKGBUILD, no issues.
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a simple helper that checks for a listening port (3443) and then connects to it via netcat. It only connects to localhost (127.0.0.1), which is the expected behavior for accessing a local server's admin console. No external network requests, downloads, or dangerous commands are present. The script performs no obfuscation, no file exfiltration, and no unexpected system modifications. It is consistent with standard packaging practices for a service management utility.
</details>
<evidence></evidence>
<summary>Standard local helper script, no malicious behavior detected.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed attach-world. Status: SAFE -- Standard local helper script, no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,910
  Completion Tokens: 5,296
  Total Tokens: 41,206
  Total Cost: $0.003548
  Execution Time: 266.17 seconds

Final Status: SAFE


No issues found.
