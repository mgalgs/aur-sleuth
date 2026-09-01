---
package: azerothcore-wotlk-git
pkgver: r19327.98c2d82af8
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 35994
completion_tokens: 6101
total_tokens: 42095
cost: 0.00390002032
execution_time: 185.12
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: ok
upstream_files: 10356
upstream_named_files: 1
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T11:03:24Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious activity.
  - file: acore-auth-server.service
    status: safe
    summary: Standard systemd service file, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious behavior detected.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd unit, no malicious content.
  - file: attach-world
    status: safe
    summary: Safe helper script for local server admin console.
  - file: acore_mod
    status: safe
    summary: Standard AUR helper script with no malicious behavior.
  - file: jemalloc.patch
    status: safe
    summary: Harmless code compatibility patch for jemalloc.
  - file: acore_setup
    status: safe
    summary: Legitimate setup script, no malicious behavior detected.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Standard post-install script, no malicious content.
---

Cloning https://aur.archlinux.org/azerothcore-wotlk-git.git...
Cloned azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope only defines variables, arrays, and standard metadata. The `pkgver()` function changes into the cloned git repository and runs `git rev-list --count HEAD` and `git rev-parse --short HEAD` — these are benign standard VCS versioning operations. The `source` array fetches from the official upstream GitHub repository and includes local files with checksums. No top-level command substitutions, `eval`, `curl`, `wget`, or other dangerous operations are present that could execute during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The suspicious logic in `prepare()`, `build()`, and `package()` is out of scope for this narrow gate as those functions are not executed.
</details>
<evidence></evidence>
<summary>No malicious code executes during fetch or source phase.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during fetch or source phase.
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
This PKGBUILD follows standard Arch packaging practices for a VCS (git) AUR package. It fetches the upstream source from the officially maintained GitHub repository, uses standard build tools (cmake, clang, lld), and installs files into the package directory. The prepare() function performs environment checks for conflicting MySQL/MariaDB packages and optionally links user-provided modules from `/usr/src/acore-modules/` – these are normal operational checks, not data exfiltration or code injection. There is no obfuscated code, no unexpected network requests, no execution of downloaded content from untrusted sources, and no modification of system files outside the package scope. The only notable packaging issue is a missing `jemalloc.patch` file from the source array (which would cause a build failure, but is not a security threat). No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious activity.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service, acore-world-server.service...
[1/9] Reviewing .SRCINFO, acore-auth-server.service, acore-world-server.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious activity.
LLM auditresponse for acore-auth-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for running the AzerothCore authentication server. It defines a simple service that executes `/usr/bin/authserver` as the `azerothcore` user with the `acore-admin` group. The `WorkingDirectory` is set to `/usr/share/azerothcore` and the restart policy is `on-failure`. There are no network requests, encoded commands, file operations, or any other potentially malicious content. The file follows normal packaging practices for a systemd service.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no malicious content.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, acore-world-server.service...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard systemd service file, no malicious content.
[2/9] Reviewing .SRCINFO, acore-world-server.service, acore_mod...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `azerothcore-wotlk-git` package. It contains no executable code and no build logic — it only declares package metadata, dependencies, sources, and checksums.

The sources are the project's own upstream GitHub repository (`git+https://github.com/azerothcore/azerothcore-wotlk.git#branch=master`) plus five local auxiliary files (systemd service units and helper scripts) that ship with the package. Four of the five local files have pinned sha512sums; the VCS source correctly uses `SKIP`, which is required practice for `-git` packages. The `master` branch is unpinned, which is normal for a `-git` package and only a reproducibility note, not evidence of malice. The plain-`http` homepage URL is also merely informational.

There is no obfuscation, no encoded/decoded commands, no suspicious network destinations, no curl-piped-to-shell behavior, and no file or system manipulation outside normal packaging scope.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata; no malicious behavior detected.
</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, acore-world-server.service, acore_mod, acore_setup...
[3/9] Reviewing acore-world-server.service, acore_mod, acore_setup...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious behavior detected.
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the AzerothCore world server. It defines the service description, dependencies (`network.target`, `acore-auth-server.service`), execution environment (`User`, `Group`, `WorkingDirectory`), and the command to run (`/usr/bin/worldserver`). There are no suspicious network requests, obfuscated commands, or unexpected file operations. The configuration follows normal packaging practices for a game server daemon.
</details>
<evidence></evidence>
<summary>Standard systemd unit, no malicious content.</summary>
</security_assessment>

[3/9] Reviewing acore-world-server.service, acore_mod, acore_setup, attach-world...
[4/9] Reviewing acore_mod, acore_setup, attach-world...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd unit, no malicious content.
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a simple helper to connect to a local AzerothCore world server's remote admin console. It checks whether port 3443 is listening on localhost and then uses netcat (`nc`) to connect to it. There are no external network requests, no downloads, no obfuscation, and no dangerous commands. The behavior is fully consistent with the stated purpose of providing a local admin console connection. No evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Safe helper script for local server admin console.</summary>
</security_assessment>

[4/9] Reviewing acore_mod, acore_setup, attach-world, azerothcore-wotlk-git.install...
[5/9] Reviewing acore_mod, acore_setup, azerothcore-wotlk-git.install...
+ Reviewed attach-world. Status: SAFE -- Safe helper script for local server admin console.
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a convenience helper for managing AzerothCore modules. It performs standard operations: locating the build directory, creating symlinks for SQL and C++ module sources, deploying configuration files, rebuilding the package with `makepkg -edfi --noconfirm`, and restarting the service. All operations are local and use standard AUR tools. There is no obfuscation, no network requests to untrusted hosts, no exfiltration of data, and no execution of externally fetched code. The use of `sudo` and `makepkg` flags (like `-d` to skip dependency checks) is aggressive but not malicious; it is consistent with a developer-side automation tool. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR helper script with no malicious behavior.</summary>
</security_assessment>

[5/9] Reviewing acore_mod, acore_setup, azerothcore-wotlk-git.install, jemalloc.patch...
[6/9] Reviewing acore_setup, azerothcore-wotlk-git.install, jemalloc.patch...
+ Reviewed acore_mod. Status: SAFE -- Standard AUR helper script with no malicious behavior.
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a trivial patch that changes a single line in jemalloc's C++ source code from `std::__throw_bad_alloc()` to `throw std::bad_alloc()`. The change replaces a non-standard internal function with the standard C++ exception. There is no suspicious network activity, obfuscation, or any commands that deviate from normal packaging practices. The patch is purely a code compatibility fix.
</details>
<evidence>
</evidence>
<summary>Harmless code compatibility patch for jemalloc.</summary>
</security_assessment>

[7/9] Reviewing acore_setup, azerothcore-wotlk-git.install...
+ Reviewed jemalloc.patch. Status: SAFE -- Harmless code compatibility patch for jemalloc.
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a setup utility for AzerothCore (a World of Warcraft server emulator). It performs standard administrative tasks: obtaining MySQL credentials, creating a temporary secure config file (deleted via trap), initializing databases, starting server binaries, provisioning an admin account, and adjusting configuration files. All operations target the package's own files under `/etc/azerothcore/` and `/usr/share/azerothcore/`. No suspicious network requests, obfuscated code, backdoors, or data exfiltration are present. The use of `mysql --defaults-file`, `ss`, `sed`, and `kill` are all typical for such system management scripts. The script is consistent with legitimate AUR packaging practices and does not exhibit supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>Legitimate setup script, no malicious behavior detected.</summary>
</security_assessment>

[8/9] Reviewing azerothcore-wotlk-git.install...
+ Reviewed acore_setup. Status: SAFE -- Legitimate setup script, no malicious behavior detected.
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script for the AzerothCore WoW server. It performs routine operations: creating an unprivileged system user and group, copying default configuration files, and setting a configuration path. The use of `sudo` inside the script is unnecessary but harmless, likely a packaging oversight. There are no network requests, obfuscated code, unexpected file operations, or any other indicators of malicious behavior. The script follows typical AUR packaging practices for a daemon service.
</details>
<evidence></evidence>
<summary>Standard post-install script, no malicious content.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Standard post-install script, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,994
  Completion Tokens: 6,101
  Total Tokens: 42,095
  Total Cost: $0.003900
  Execution Time: 185.12 seconds

Final Status: SAFE


No issues found.
