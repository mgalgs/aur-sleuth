---
package: azerothcore-wotlk-git
pkgver: r19326.cecdf4c4af
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 35915
completion_tokens: 5188
total_tokens: 41103
cost: 0.00367457958
execution_time: 216.92
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: ok
upstream_files: 10356
upstream_named_files: 1
unpinned_sources: 0
injection_attempts: 0
date: 2026-08-31T23:07:53Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious indicators found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd service unit - no malicious content.
  - file: acore_mod
    status: safe
    summary: Standard AUR helper script, no malicious indicators.
  - file: attach-world
    status: safe
    summary: Helper script for local server admin console connection.
  - file: acore-auth-server.service
    status: safe
    summary: Standard systemd service file, no security issues.
  - file: jemalloc.patch
    status: safe
    summary: Standard C++ compatibility patch, no security issues.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Standard server install script, no malicious behavior.
  - file: acore_setup
    status: safe
    summary: Standard admin setup script, no malicious behavior found.
---

Cloning https://aur.archlinux.org/azerothcore-wotlk-git.git...
Cloned azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope and `pkgver()` contain only standard variable definitions, a git source for the main repository, and normal git commands (`git rev-list --count HEAD`, `git rev-parse --short HEAD`). There are no `$(...)` command substitutions or backtick-executed code outside of `pkgver()` (which is inherently evaluated during source fetch, but contains only benign git operations). No malicious payloads, data exfiltration, or untrusted network calls are present in the evaluated portion.

The `prepare()`, `build()`, and `package()` functions contain checks and build logic, but these are **not executed** during the two commands (`makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`), so their content is out of scope for this gate.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope or pkgver().
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/azerothcore-wotlk/deps/jemalloc/src/jemalloc_cpp.cpp); they are upstream content and were not reviewed.
Reviewing the 9 file(s) in the AUR repository. The 10356 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, PKGBUILD...
[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS-based game server package. It clones the official upstream repository, builds with CMake/Clang, and installs binaries, systemd services, and configuration files. The prepare() function performs dependency checks for MySQL vs MariaDB (a legitimate compatibility requirement) and handles optional user module symlinks. No obfuscated code, unexpected network requests, or data exfiltration patterns are present. The use of SKIP checksums is normal for VCS sources. The `install -d -m 1777` for the module dropzone is permissive but serves the stated purpose of allowing user-added modules; it is not evidence of a supply-chain attack. The file is consistent with the package's stated purpose.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious indicators found.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service, acore-world-server.service...
[1/9] Reviewing .SRCINFO, acore-auth-server.service, acore-world-server.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious indicators found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.SRCINFO` is a standard AUR package metadata file. It defines the package name, version, dependencies, sources, and checksums. All sources point to the official AzerothCore GitHub repository or are local auxiliary files (systemd services, setup scripts) that are part of the package installation. The git source uses `SKIP` for checksums, which is normal for VCS packages. No commands, network operations, or obfuscated code are present. The file contains only declarative metadata and does not perform any actions. No supply-chain attack indicators are found.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, acore-auth-server.service, acore-world-server.service, acore_mod...
[2/9] Reviewing acore-auth-server.service, acore-world-server.service, acore_mod...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for running the AzerothCore world server. It defines the service unit with a description, dependencies (after network and auth server), user/group settings, working directory, and the command to execute. There is no obfuscated code, no network requests, no file operations outside standard packaging practices, and no attempt to execute untrusted content. The file is entirely declarative and poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard systemd service unit - no malicious content.</summary>
</security_assessment>

[2/9] Reviewing acore-auth-server.service, acore-world-server.service, acore_mod, acore_setup...
[3/9] Reviewing acore-auth-server.service, acore_mod, acore_setup...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd service unit - no malicious content.
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is an AUR maintainer helper that automates module compilation, symlink creation, and service restart for the azerothcore-wotlk-git package. All operations are confined to the package's own directories (`/usr/src/acore-modules/`, `/usr/share/azerothcore/`, `/etc/azerothcore/`, and the build workspace). It uses standard tools (`strings`, `find`, `sudo`, `makepkg`, `systemctl`) in expected ways. There is no obfuscated code, no network requests to untrusted hosts, no data exfiltration, and no backdoor. The `makepkg -edfi --noconfirm` invocation is a normal (if aggressive) incremental build command; it does not introduce unchecked external content because the `-e` flag skips source extraction and the `-d` flag skips dependency checks. The script does not violate any of the malicious criteria listed in the instructions.
</details>
<evidence></evidence>
<summary>Standard AUR helper script, no malicious indicators.</summary>
</security_assessment>

[4/9] Reviewing acore-auth-server.service, acore_setup...
+ Reviewed acore_mod. Status: SAFE -- Standard AUR helper script, no malicious indicators.
[4/9] Reviewing acore-auth-server.service, acore_setup, attach-world...
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `attach-world` is a simple helper that checks whether the AzerothCore world server's remote admin console port (3443) is listening on localhost. If it is not listening, it prints a user-friendly message and exits. If it is listening, it connects to `127.0.0.1:3443` using netcat (`nc -C`). This is legitimate functionality for attaching to the server's admin console. There is no network communication to any external host, no code execution from untrusted sources, no obfuscation, and no system modification beyond what is intended for the application. The script is consistent with standard AUR packaging helpers and contains no supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>Helper script for local server admin console connection.</summary>
</security_assessment>

[4/9] Reviewing acore-auth-server.service, acore_setup, attach-world, azerothcore-wotlk-git.install...
[5/9] Reviewing acore-auth-server.service, acore_setup, azerothcore-wotlk-git.install...
+ Reviewed attach-world. Status: SAFE -- Helper script for local server admin console connection.
LLM auditresponse for acore-auth-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the AzerothCore MMORPG Authentication Server. It defines the service type, user/group, working directory, execution command, and restart policy. There are no suspicious commands, network requests, encoded data, or unusual file operations. It follows normal AUR packaging practices for providing a systemd service.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[5/9] Reviewing acore-auth-server.service, acore_setup, azerothcore-wotlk-git.install, jemalloc.patch...
[6/9] Reviewing acore_setup, azerothcore-wotlk-git.install, jemalloc.patch...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard systemd service file, no security issues.
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch makes a single line change in a jemalloc source file, replacing a non-standard `std::__throw_bad_alloc()` call with the standard `throw std::bad_alloc()`. This is a typical compatibility fix, not a security concern. No malicious behavior is present.
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
The file is an `.install` script for an AUR package. It performs standard system administration tasks: creating a dedicated system user and group, copying configuration templates, and managing systemd services on removal. The use of `sudo` inside the script is unnecessary (as `pacman` runs the install script as root) but is not malicious—it is a harmless redundancy. There are no network requests, no obfuscated code, and no tampering with unrelated system files. All operations are confined to the application’s own scope and are expected for a server package of this nature.
</details>
<evidence></evidence>
<summary>Standard server install script, no malicious behavior.</summary>
</security_assessment>

[8/9] Reviewing acore_setup...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Standard server install script, no malicious behavior.
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `acore_setup` is an administrative setup utility for AzerothCore. It performs legitimate system administration tasks: prompting for MySQL credentials, running SQL initialization scripts, modifying package configuration files, launching the `authserver` and `worldserver` binaries (expected from the installed package), and creating a GM account. No obfuscated or suspicious command patterns (curl, wget, eval, base64, exec) are present. All file operations are confined to the package's own configuration directories and a temporary MySQL credentials file that is securely created (mode 600) and cleaned up via a trap. The script does not make any network requests, download code from external sources, exfiltrate data, or modify system files unrelated to the package. The only noteworthy coding concern is the use of unsanitized user input in a SQL query (the admin-provided username), which could allow SQL injection if the script is used in an untrusted context; however, this is a quality flaw rather than a supply-chain attack, as the script is intended for the administrator's own use on their local system. There is no evidence of malicious or injected behavior.
</details>
<evidence></evidence>
<summary>Standard admin setup script, no malicious behavior found.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed acore_setup. Status: SAFE -- Standard admin setup script, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,915
  Completion Tokens: 5,188
  Total Tokens: 41,103
  Total Cost: $0.003675
  Execution Time: 216.92 seconds

Final Status: SAFE


No issues found.
