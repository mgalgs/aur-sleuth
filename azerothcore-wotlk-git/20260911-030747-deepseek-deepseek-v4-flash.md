---
package: azerothcore-wotlk-git
pkgver: r19467.65d564c848
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 35922
completion_tokens: 6543
total_tokens: 42465
cost: 0.004342402848
execution_time: 158.73
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-11T03:07:46Z
file_verdicts:
  - file: acore-auth-server.service
    status: safe
    summary: Standard systemd service file, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious indicators.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd service file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard VCS package, no security threats found.
  - file: attach-world
    status: safe
    summary: Simple local port checker and netcat connector; no malicious behavior.
  - file: acore_mod
    status: safe
    summary: Legitimate maintenance script, no malicious behavior.
  - file: acore_setup
    status: safe
    summary: Standard setup script for AzerothCore; no malicious behavior detected.
  - file: jemalloc.patch
    status: safe
    summary: Benign patch fixing non-standard C++ exception.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Standard AUR install script; no threats
---

Materializing azerothcore-wotlk-git from local mirror...
Materialized azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable assignments (pkgname, pkgver, source, depends, etc.), function definitions for pkgver(), prepare(), build(), and package(), and an install variable pointing to a local file. There are no command substitutions, no system calls, no network requests, and no data exfiltration at the top level. The `makepkg --printsrcinfo` command only sources this scope and does not execute any of the defined functions. Therefore, no malicious code can execute during this step.
</details>
<evidence></evidence>
<summary>No top-level malicious code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; safe to source.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, PKGBUILD...
[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service...
LLM auditresponse for acore-auth-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the AzerothCore authentication server. It defines a simple service that runs the `authserver` binary as the `azerothcore` user with the `acore-admin` group. There are no suspicious commands, network requests, obfuscated code, or any deviation from normal packaging practices. The file is clean and contains only expected configuration for launching a server daemon.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no malicious content.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service, acore-world-server.service...
[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard systemd service file, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a metadata descriptor for the AUR package `azerothcore-wotlk-git`. It defines the package source as the official upstream GitHub repository (`github.com/azerothcore/azerothcore-wotlk.git`) via git, with a `SKIP` checksum for the VCS source (standard practice). The remaining local files (service files, setup scripts) have explicit SHA512 checksums. No suspicious URLs, obfuscated commands, or unexpected network destinations are present. The package uses a mutable branch (`master`), which is normal for a `-git` package and does not indicate malice. No genuinely malicious behavior (data exfiltration, code execution from untrusted sources, backdoors) is found.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious indicators.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service, acore_mod...
[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious indicators.
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service file for the AzerothCore MMORPG world server. It defines a simple service unit that runs `/usr/bin/worldserver` as user `azerothcore` in group `acore-admin`, with a working directory of `/usr/share/azerothcore`. There are no dangerous commands, network requests, obfuscated code, or unexpected operations. The configuration follows normal packaging practices for a game server daemon. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no security concerns.</summary>
</security_assessment>

[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod, acore_setup...
[3/9] Reviewing PKGBUILD, acore_mod, acore_setup...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd service file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
**Analysis Summary:** This PKGBUILD is a standard AUR VCS package that builds the AzerothCore MMORPG server from source. It fetches the upstream source from the project's official GitHub repository, checks for required MySQL dependencies, and builds using clang and cmake. No obfuscated code, unexpected network requests, exfiltration, backdoors, or system tampering was found.

**Security Considerations (Non-malicious):**
- The `package()` function creates a world-writable directory `/usr/src/acore-modules` (permissions 1777). This is intentional—it serves as a "dropzone" for user-provided modules to be built alongside the core. While unusual for a system directory, it is a documented feature of the package and not a hidden supply-chain attack. Users should be aware of the permission model.
- The variable `$user_dropzone` is used in `prepare()` but never defined in this PKGBUILD. During normal operation it expands to empty, causing the conditional block to be skipped. This is a code quality issue but not malicious.

All other operations (checksum verification via SHA512 for static files, standard cmake build, install into `$pkgdir`) conform to expected AUR packaging practices. There is no evidence of injected malicious code.
</details>
<evidence>
</evidence>
<summary>Standard VCS package, no security threats found.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, acore_mod, acore_setup, attach-world...
[4/9] Reviewing acore_mod, acore_setup, attach-world...
+ Reviewed PKGBUILD. Status: SAFE -- Standard VCS package, no security threats found.
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a simple helper to attach to the local AzerothCore world server's remote admin console. It checks if port 3443 is listening on 127.0.0.1 and then connects via netcat. There are no external network connections, no downloads, no obfuscation, and no dangerous operations. This is standard behavior for a local admin console access tool.
</details>
<evidence></evidence>
<summary>Simple local port checker and netcat connector; no malicious behavior.</summary>
</security_assessment>

[4/9] Reviewing acore_mod, acore_setup, attach-world, azerothcore-wotlk-git.install...
[5/9] Reviewing acore_mod, acore_setup, azerothcore-wotlk-git.install...
+ Reviewed attach-world. Status: SAFE -- Simple local port checker and netcat connector; no malicious behavior.
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a helper tool for managing and compiling AzerothCore modules from the AUR package azerothcore-wotlk-git. It locates the build workspace, updates symlinks for SQL and C++ module sources, optionally deploys configuration files, runs an incremental rebuild via makepkg, and restarts the world server service. All operations are confined to expected system paths (/usr/share/azerothcore/, /etc/azerothcore/, /usr/src/acore-modules, and the build directory). There are no outbound network requests, no encoded/obfuscated commands, no attempts to exfiltrate data, and no execution of untrusted code from external sources. The use of `strings` on the binary to detect the build path is unconventional but benign. The `makepkg -edfi` invocation builds from the local source directory and does not introduce supply-chain risks beyond what the PKGBUILD already defines. The script follows standard packaging practices for module management.
</details>
<evidence></evidence>
<summary>Legitimate maintenance script, no malicious behavior.</summary>
</security_assessment>

[5/9] Reviewing acore_mod, acore_setup, azerothcore-wotlk-git.install, jemalloc.patch...
[6/9] Reviewing acore_setup, azerothcore-wotlk-git.install, jemalloc.patch...
+ Reviewed acore_mod. Status: SAFE -- Legitimate maintenance script, no malicious behavior.
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard setup helper for the AzerothCore World of Warcraft emulator. It handles MySQL database initialization, configuration of the authserver and worldserver, and automated creation of a master administrator account. All operations are confined to the package's own files and dependencies installed by the package manager. There is no code that downloads executables from external sources, exfiltrates data, or performs obfuscated commands. The script writes the MySQL root password to a temporary file with restrictive permissions (`chmod 600`) and cleans it up via a trap, which is an expected secure pattern. The use of `ss -tlnp` to poll for a port and `kill` to stop processes is typical server provisioning. The SQL commands only affect the package's own databases (`acore_auth`, etc.). No evidence of supply-chain injection or malicious intent was found.
</details>
<evidence></evidence>
<summary>Standard setup script for AzerothCore; no malicious behavior detected.</summary>
</security_assessment>

[7/9] Reviewing azerothcore-wotlk-git.install, jemalloc.patch...
+ Reviewed acore_setup. Status: SAFE -- Standard setup script for AzerothCore; no malicious behavior detected.
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch modifies a single line in a jemalloc source file, changing `std::__throw_bad_alloc()` to `throw std::bad_alloc();`. This is a standard code improvement that replaces a non-standard internal function with the standard C++ exception mechanism. There is no obfuscation, no network activity, no dangerous commands, or any other malicious behavior. The change is consistent with ordinary packaging and upstream development practices.
</details>
<evidence>
</evidence>
<summary>Benign patch fixing non-standard C++ exception.</summary>
</security_assessment>

[8/9] Reviewing azerothcore-wotlk-git.install...
+ Reviewed jemalloc.patch. Status: SAFE -- Benign patch fixing non-standard C++ exception.
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script for the AzerothCore server. It creates an unprivileged system user and group for the daemon, copies default configuration files, modifies a path setting in configs using sed, and stops/disables services on removal. There is no obfuscated code, no network requests, no downloads, no execution of untrusted content, and no exfiltration of data. The use of `sudo` inside the post_install function is redundant (the script already runs as root) but harmless—likely a maintainer oversight. All operations are confined to expected system paths for this type of package. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR install script; no threats</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Standard AUR install script; no threats
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,922
  Completion Tokens: 6,543
  Total Tokens: 42,465
  Total Cost: $0.004342
  Execution Time: 158.73 seconds

Final Status: SAFE


No issues found.
