---
package: azerothcore-wotlk-git
pkgver: r19332.9eab2c5ec1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 1d6b5f000e2ff2cbdfdf4e324a3e5ac914955c8a
prompt_tokens: 35821
completion_tokens: 5606
total_tokens: 41427
cost: 0.004167405998
execution_time: 43.04
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-03T00:48:52Z
file_verdicts:
  - file: acore-auth-server.service
    status: safe
    summary: Standard systemd service unit for authserver.
  - file: .SRCINFO
    status: safe
    summary: Metadata file, no executable code, all sources legitimate.
  - file: acore-world-server.service
    status: safe
    summary: Safe systemd service unit file
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior detected.
  - file: attach-world
    status: safe
    summary: Safe helper script for local admin console connection.
  - file: acore_mod
    status: safe
    summary: Legitimate module management script for AzerothCore server.
  - file: jemalloc.patch
    status: safe
    summary: Minor code fix, no security issues.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Standard package install script, no malicious behavior found.
  - file: acore_setup
    status: safe
    summary: Legitimate local setup/configuration helper for AzerothCore; no malicious behavior found.
---

Cloning https://aur.archlinux.org/azerothcore-wotlk-git.git...
Cloned azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only variable assignments (strings and arrays) and function definitions (`pkgver()`, `prepare()`, `build()`, `package()`). There are no command substitutions, arithmetic expansions, or other executable code at the top level that would run during `makepkg --printsrcinfo`. Function bodies are not executed during this step. Therefore, sourcing this PKGBUILD poses no security risk for the narrow `--printsrcinfo` gate.
</details>
<evidence>
</evidence>
<summary>Sourcing this PKGBUILD is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing this PKGBUILD is safe.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, PKGBUILD...
[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service...
LLM auditresponse for acore-auth-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the AzerothCore authentication server. It defines a simple service that runs the `authserver` binary with the specified user, group, and working directory. There are no network requests, no file operations outside of the service definition, no obfuscated or encoded commands, and no deviation from normal packaging practices. The file is consistent with the expected purpose of the package and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard systemd service unit for authserver.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service, acore-world-server.service...
[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard systemd service unit for authserver.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a `.SRCINFO` metadata file for an AUR package. It contains only declarative data (package name, version, dependencies, sources, and checksums). No executable code, scripts, or commands are present. All sources point to the project's official GitHub repository or local files included with the package. The git source uses `SKIP` for checksums, which is standard for VCS packages. There are no suspicious network requests, obfuscated content, or unexpected system modifications. The file is consistent with normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Metadata file, no executable code, all sources legitimate.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service, acore_mod...
[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file, no executable code, all sources legitimate.
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd service unit file for the AzerothCore MMORPG world server. It defines a simple service that runs the `/usr/bin/worldserver` binary with specified user/group, working directory, and restart behavior. There are no network requests, file operations, obfuscated code, or any other indicators of malicious behavior. The file follows standard packaging practices for systemd services.
</details>
<evidence></evidence>
<summary>Safe systemd service unit file</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, acore_mod...
+ Reviewed acore-world-server.service. Status: SAFE -- Safe systemd service unit file
[3/9] Reviewing PKGBUILD, acore_mod, acore_setup...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch build definition for the AzerothCore MMORPG server. It fetches the source from the official GitHub repository, performs dependency checks (MariaDB vs MySQL detection), and builds with CMake. The `prepare()` function removes and recreates symlinks in the `modules/` directory to optionally include user-supplied modules from `/usr/src/acore-modules/`. This is a legitimate modular build feature, not a backdoor. No obfuscated code, unexpected network requests, or system-modifying tricks are present. The `sha512sums` for the git source is `SKIP`, which is required for VCS sources and explicitly excluded as a security indicator per the analysis guidelines. All other files have valid checksums. The package behaves exactly as a normal AUR PKGBUILD should.
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
This script is a simple helper that checks for a local listening port (3443) and then connects to it via netcat. All network activity is strictly to localhost (127.0.0.1). There are no external network requests, no downloads, no obfuscation, and no dangerous commands. The script does exactly what its name implies: attaching to the AzerothCore world server's remote admin console. This is standard operational tooling for the package and does not exhibit any signs of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Safe helper script for local admin console connection.</summary>
</security_assessment>

[4/9] Reviewing acore_mod, acore_setup, attach-world, azerothcore-wotlk-git.install...
[5/9] Reviewing acore_mod, acore_setup, azerothcore-wotlk-git.install...
+ Reviewed attach-world. Status: SAFE -- Safe helper script for local admin console connection.
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `acore_mod` is a helper tool for the AzerothCore World of Warcraft server emulator, intended to automate the compilation and deployment of C++ modules and SQL database updates. It performs standard operations for this purpose: locating the build directory (even via binary string extraction), creating symlinks for module code and database updates, copying configuration files, running `makepkg` to rebuild the package, and restarting the service. All commands are consistent with the package's stated purpose and do not exhibit any signs of malicious behavior such as data exfiltration, execution of untrusted code, or obfuscation. The use of `sudo`, `find -delete`, and `makepkg -edfi` is expected for a build/management script deployed on an Arch Linux system. No evidence of supply-chain compromise was found.
</details>
<evidence></evidence>
<summary>Legitimate module management script for AzerothCore server.</summary>
</security_assessment>

[6/9] Reviewing acore_setup, azerothcore-wotlk-git.install...
+ Reviewed acore_mod. Status: SAFE -- Legitimate module management script for AzerothCore server.
[6/9] Reviewing acore_setup, azerothcore-wotlk-git.install, jemalloc.patch...
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch file modifies a single line in `jemalloc_cpp.cpp`, changing `std::__throw_bad_alloc()` to `throw std::bad_alloc()`. This is a standard code fix, likely to improve portability or compatibility with different C++ standard library implementations. No malicious behavior is present: no network requests, obfuscation, unexpected file operations, or dangerous commands. The change is consistent with normal packaging and upstream development practices.
</details>
<evidence></evidence>
<summary>Minor code fix, no security issues.</summary>
</security_assessment>

[7/9] Reviewing acore_setup, azerothcore-wotlk-git.install...
+ Reviewed jemalloc.patch. Status: SAFE -- Minor code fix, no security issues.
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install script performs standard package management tasks: creating a dedicated system user and group for the application, copying default configuration files, and managing systemd services on removal. The use of `sudo` inside the script is unnecessary but harmless, as the script already runs with root privileges. No dangerous commands (curl, wget, eval, base64, etc.) are present, and no data is exfiltrated or unexpected code executed. The script only modifies files within the package's own scope (`/etc/azerothcore/`, `/usr/share/azerothcore/`, and systemd unit files). It is a typical, safe AUR package install script.
</details>
<evidence></evidence>
<summary>Standard package install script, no malicious behavior found.</summary>
</security_assessment>

[8/9] Reviewing acore_setup...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Standard package install script, no malicious behavior found.
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a local setup helper for the AzerothCore server package. It performs routine administrative provisioning: it reads a MySQL root password interactively, writes it to a temporary options file with mode 600 and a cleanup trap, initializes the package's database schemas from files under `/usr/share/azerothcore`, edits the package's own configuration files under `/etc/azerothcore`, and briefly runs the packaged `authserver` and `worldserver` binaries to complete first-time database setup and account elevation.

No suspicious network requests, encoded payloads, eval-style execution, or exfiltration behavior is present. The temporary MySQL credential file is a common way to suppress password warnings; it is protected with `chmod 600` and removed on exit via a trap. The use of user-supplied input inside a SQL statement is a local robustness concern if the administrator enters quotes, but it is not a remote injection or supply-chain attack. The script's actions stay within the application's own configuration, database, and installed binaries, so it is consistent with legitimate packaging and administration tooling.
</details>
<evidence>
</evidence>
<summary>
Legitimate local setup/configuration helper for AzerothCore; no malicious behavior found.
</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed acore_setup. Status: SAFE -- Legitimate local setup/configuration helper for AzerothCore; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,821
  Completion Tokens: 5,606
  Total Tokens: 41,427
  Total Cost: $0.004167
  Execution Time: 43.04 seconds

Final Status: SAFE


No issues found.
