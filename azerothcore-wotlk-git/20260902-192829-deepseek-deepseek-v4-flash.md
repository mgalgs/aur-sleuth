---
package: azerothcore-wotlk-git
pkgver: r19332.9eab2c5ec1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: c6a5a9f6b0e70545bff9fff8802c361e476b0a86
prompt_tokens: 36001
completion_tokens: 6789
total_tokens: 42790
cost: 0.00408828434
execution_time: 250.8
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: ok
upstream_files: 10357
upstream_named_files: 1
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-02T19:28:28Z
file_verdicts:
  - file: acore-auth-server.service
    status: safe
    summary: Standard systemd service file, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd service unit, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious content found.
  - file: acore_setup
    status: safe
    summary: Standard AUR setup script, no malicious behavior.
  - file: attach-world
    status: safe
    summary: Simple local console-attach helper; no malicious behavior detected.
  - file: jemalloc.patch
    status: safe
    summary: Patch fixes standard compliance, not malicious.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Standard service setup, no malicious behavior.
  - file: acore_mod
    status: safe
    summary: Local build helper; no malicious behavior found.
---

Cloning https://aur.archlinux.org/azerothcore-wotlk-git.git...
Cloned azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR VCS package for AzerothCore. The `source` array fetches the upstream git repository from `github.com/azerothcore/azerothcore-wotlk.git` (expected) and local auxiliary files (service files, scripts) that are bundled with the AUR package. The `sha512sums` include `SKIP` for the git source, which is normal for VCS packages. No top-level command substitutions or dangerous code exist outside of function definitions. The `pkgver()` function runs safe `git rev-list` and `git rev-parse` commands in the cloned directory to generate a version string — standard for `-git` packages. Functions `prepare()`, `build()`, and `package()` are defined but are **not executed** by `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. No obfuscated code, unexpected network requests, data exfiltration, or other malicious patterns are present in the scope that executes during these commands.
</details>
<evidence></evidence>
<summary>No dangerous code executes during source fetch or PKGBUILD parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code executes during source fetch or PKGBUILD parse.
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
This is a standard systemd service unit file for the AzerothCore authentication server. It defines a simple service that runs `/usr/bin/authserver` after network is available, running as user `azerothcore` and group `acore-admin`, with a restart-on-failure policy. There are no suspicious commands, network requests, file operations, or obfuscated content. The file follows normal packaging practices for a systemd service.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no malicious content.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard systemd service file, no malicious content.
[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file containing package dependency declarations, source URLs, and checksums. The `sha512sums = SKIP` for the VCS source is expected for `-git` packages. All non-VCS sources have valid sha512 hashes. The package sources point to the official upstream GitHub repository and local service files. No obfuscated code, dangerous commands, or references to unexpected external hosts are present. There is no evidence of malicious behavior or supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service, acore_mod...
[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `acore-world-server.service` is a standard systemd service unit file for the AzerothCore MMORPG World Server. It defines a simple service that executes `/usr/bin/worldserver` with specified user, group, and working directory. It includes typical dependencies on networking and the auth server. There are no suspicious commands, network requests, obfuscated code, or unexpected file operations. The content is entirely consistent with normal packaging practices for a game server service.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no malicious content.</summary>
</security_assessment>

[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod, acore_setup...
[3/9] Reviewing PKGBUILD, acore_mod, acore_setup...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd service unit, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR practices for building a git-based MMORPG server from source. The source is fetched from the official upstream GitHub repository. There are no obfuscated commands, no unexpected network requests, no downloads from external hosts, and no attempts to exfiltrate data. The prepare() function checks for conflicting MariaDB packages and exits early, which is a dependency management decision. The use of SKIP for the git source checksum is typical for VCS packages. The build and package functions use standard CMake and installation commands. The `user_dropzone` variable is undefined but defaults to empty, causing no action; this is a minor packaging oversight but not a security issue. No malicious behavior detected.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD, no malicious content found.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, acore_mod, acore_setup, attach-world...
[4/9] Reviewing acore_mod, acore_setup, attach-world...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious content found.
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a legitimate setup helper for AzerothCore (a WoW server emulator). It performs expected administrative tasks: reading MySQL credentials via a temporary options file with proper cleanup, executing the package's own SQL initialization scripts, starting local binaries (authserver, worldserver) for schema migration, modifying configuration files under `/etc/azerothcore/`, and creating an admin account. No network requests to external hosts, no downloads or execution of untrusted code, no obfuscation, and no access to sensitive files outside the application's scope. The use of `sudo` is appropriate for installing system services. The temporary password file is properly secured (chmod 600) and cleaned up via a trap, which is standard practice.</details>
<evidence></evidence>
<summary>Standard AUR setup script, no malicious behavior.</summary>
</security_assessment>

[5/9] Reviewing acore_mod, attach-world...
+ Reviewed acore_setup. Status: SAFE -- Standard AUR setup script, no malicious behavior.
[5/9] Reviewing acore_mod, attach-world, azerothcore-wotlk-git.install...
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a simple helper that attaches to the AzerothCore world server's Remote Access console. It first checks whether port 3443 is listening on the local machine (`ss -ltn | grep -q :3443`), prints a status message if the server is still booting, and otherwise connects to `127.0.0.1 3443` with netcat. Port 3443 is the default AzerothCore Remote Access port, and connecting to it locally is the script's stated purpose.

There is no suspicious behavior: no downloads, no obfuscation, no encoded commands, no file modifications, and no exfiltration. The network connection targets only localhost (`127.0.0.1`), which is expected for attaching to a locally running server console. This is consistent with ordinary packaging/helper tooling and contains no injected malicious code.
</details>
<evidence>
</evidence>
<summary>
Simple local console-attach helper; no malicious behavior detected.
</summary>
</security_assessment>

[5/9] Reviewing acore_mod, attach-world, azerothcore-wotlk-git.install, jemalloc.patch...
[6/9] Reviewing acore_mod, azerothcore-wotlk-git.install, jemalloc.patch...
+ Reviewed attach-world. Status: SAFE -- Simple local console-attach helper; no malicious behavior detected.
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch modifies a single line in jemalloc's C++ source to replace a compiler-specific internal function (`std::__throw_bad_alloc()`) with the standard C++ expression (`throw std::bad_alloc()`). This is a common portability or compliance fix, not suspicious. No network activity, obfuscation, data exfiltration, or backdoor code is present. The change is consistent with standard packaging practices.
</details>
<evidence>
</evidence>
<summary>Patch fixes standard compliance, not malicious.</summary>
</security_assessment>

[7/9] Reviewing acore_mod, azerothcore-wotlk-git.install...
+ Reviewed jemalloc.patch. Status: SAFE -- Patch fixes standard compliance, not malicious.
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install script performs standard post-installation and pre-removal operations for a service daemon: creating an unprivileged user and group, copying default configuration files, and stopping/disabling systemd services.  

The only unusual element is the use of `sudo sed` instead of plain `sed` in two lines. Since package installation scripts run as root under `makepkg`, the `sudo` is redundant but harmless — it is not evidence of malice. No network requests, obfuscated code, or data exfiltration are present. All paths refer to the package&#39;s own directories (`/etc/azerothcore/`, `/usr/share/azerothcore/`).  

The script is consistent with the expected behavior of an AUR package for the AzerothCore server software.
</details>
<evidence></evidence>
<summary>Standard service setup, no malicious behavior.</summary>
</security_assessment>

[8/9] Reviewing acore_mod...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Standard service setup, no malicious behavior.
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a helper tool for locally compiling and deploying custom AzerothCore modules. It scans a user-controlled module directory (`/usr/src/acore-modules`), creates symlinks for SQL and C++ sources, copies missing configuration files, and recompiles the server using `makepkg -edfi --noconfirm`. There are no network requests, obfuscated commands, or attempts to exfiltrate data. All operations (sudo for symlink and config management, systemctl restart) are expected for a module integration tool. The use of `strings` on the server binary to locate a previous build directory is unusual but not malicious. No injected code or supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Local build helper; no malicious behavior found.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed acore_mod. Status: SAFE -- Local build helper; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,001
  Completion Tokens: 6,789
  Total Tokens: 42,790
  Total Cost: $0.004088
  Execution Time: 250.80 seconds

Final Status: SAFE


No issues found.
