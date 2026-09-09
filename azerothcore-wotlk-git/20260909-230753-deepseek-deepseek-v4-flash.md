---
package: azerothcore-wotlk-git
pkgver: r19445.19ca6e1128
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 35894
completion_tokens: 5773
total_tokens: 41667
cost: 0.00332080
execution_time: 268.2
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-09T23:07:53Z
file_verdicts:
  - file: acore-auth-server.service
    status: safe
    summary: Benign systemd unit; no malicious or suspicious behavior present.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd service unit file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior detected.
  - file: attach-world
    status: safe
    summary: Legitimate local admin console connection helper.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: No malicious behavior found; standard package maintenance script.
  - file: jemalloc.patch
    status: safe
    summary: Simple C++ exception syntax patch, no security issues.
  - file: acore_mod
    status: safe
    summary: Standard maintainer helper script, no malicious behavior.
  - file: acore_setup
    status: safe
    summary: Legitimate admin setup script; no malicious behavior found.
---

Materializing azerothcore-wotlk-git from local mirror...
Materialized azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only variable declarations (strings, arrays) and function definitions. There are no command substitutions, `eval`, `curl`, `wget`, `base64` decoding, or any other code that executes during sourcing. The `sha512sums` include `SKIP` for the VCS source, which is standard for `-git` packages. Since `makepkg --printsrcinfo` only sources the global scope and does not invoke `pkgver()`, `prepare()`, `build()`, or `package()`, no malicious code can run at this step. The file is safe to parse.
</details>
<evidence></evidence>
<summary>No malicious code in top-level scope; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in top-level scope; safe to parse.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, PKGBUILD...
[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service...
LLM auditresponse for acore-auth-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd service unit for running the AzerothCore authentication server. It defines the service description, starts after the network is up, runs as the dedicated `azerothcore` user and `acore-admin` group, sets the working directory to the installed package location, and executes the packaged `authserver` binary. The `Restart=on-failure` option is a routine resilience setting. There are no network fetches, no shell commands, no file manipulation, no encoding tricks, and no execution of attacker-controlled content. The service configuration is consistent with normal AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Benign systemd unit; no malicious or suspicious behavior present.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service, acore-world-server.service...
[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service...
+ Reviewed acore-auth-server.service. Status: SAFE -- Benign systemd unit; no malicious or suspicious behavior present.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It declares the package name, version, dependencies, source URLs (including a git repository from the project's official GitHub page), and checksums. The git source has `sha512sums = SKIP`, which is normal for VCS packages. All other sources have proper checksums. There are no embedded commands, network requests, obfuscated strings, or any other indicators of malicious behavior. The file conforms to standard AUR packaging practices and does not contain any supply-chain attack vectors.
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
This is a standard systemd service unit file for the AzerothCore MMORPG world server. It defines a simple service that starts `/usr/bin/worldserver` after `network.target` and `acore-auth-server.service`, running as user `azerothcore` and group `acore-admin`. There are no network requests, downloads, obfuscated commands, file manipulations, or any other potentially dangerous operations. The configuration follows normal packaging practices for a systemd service.
</details>
<evidence></evidence>
<summary>Standard systemd service unit file, no security concerns.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, acore_mod...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd service unit file, no security concerns.
[3/9] Reviewing PKGBUILD, acore_mod, acore_setup...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a `-git` VCS package. It fetches the upstream source from the project&#39;s own GitHub repository, uses `cmake` to build, and installs files into the expected locations. The `sha512sums` are set to `SKIP` for the git source, which is normal and expected for VCS packages. There are no suspicious network requests, obfuscated commands, attempts to exfiltrate data, or downloads from unexpected hosts. The only minor code quality concern is the undefined `$user_dropzone` variable in `prepare()`, but since it defaults to an empty string, it results in a harmless no-op and does not introduce any security risk. All other operations (dependency checks, patching, symlink creation, systemd service installation) are within normal packaging boundaries.
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
This script is a helper for connecting to the AzerothCore world server's Remote Access admin console (port 3443 on localhost). It checks whether the port is listening using `ss`, prints informative messages, and then uses `nc` (netcat) to connect to `127.0.0.1:3443`. All operations are local and expected for the package's purpose. No external network connections, data exfiltration, code execution from untrusted sources, or obfuscation is present.
</details>
<evidence>
</evidence>
<summary>Legitimate local admin console connection helper.</summary>
</security_assessment>

[5/9] Reviewing acore_mod, acore_setup...
+ Reviewed attach-world. Status: SAFE -- Legitimate local admin console connection helper.
[5/9] Reviewing acore_mod, acore_setup, azerothcore-wotlk-git.install...
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch package install script. It provisions an unprivileged user and group, creates default configuration files from .dist templates if absent, updates the application's SourceDirectory setting in its own config files, prints informational messages, and stops/disables the package's own systemd services on removal. No data exfiltration, no unexpected network fetching, no obfuscation, and no execution of external code.

Minor hygiene note: invoking `sudo` in post_install is unnecessary because pacman install scripts already run as root, and it could fail in environments where sudo is absent. The sed edits modify application-specific configuration files within /etc/azerothcore and are consistent with the package's stated purpose, not evidence of malice.
</details>
<evidence>
</evidence>
<summary>
No malicious behavior found; standard package maintenance script.
</summary>
</security_assessment>

[5/9] Reviewing acore_mod, acore_setup, azerothcore-wotlk-git.install, jemalloc.patch...
[6/9] Reviewing acore_mod, acore_setup, jemalloc.patch...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- No malicious behavior found; standard package maintenance script.
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies a single line in jemalloc's C++ source file, changing `std::__throw_bad_alloc()` to `throw std::bad_alloc()`. This is a routine compatibility or style fix, commonly seen in C++ codebases. There is no obfuscation, no network access, no suspicious file operations, and no deviation from standard packaging practices. The change is entirely benign and serves the application's stated purpose.
</details>
<evidence></evidence>
<summary>Simple C++ exception syntax patch, no security issues.</summary>
</security_assessment>

[7/9] Reviewing acore_mod, acore_setup...
+ Reviewed jemalloc.patch. Status: SAFE -- Simple C++ exception syntax patch, no security issues.
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a maintainer helper tool for the azerothcore-wotlk-git AUR package that automates building and installing modules. It performs standard operations: locating the build directory, creating symlinks for SQL migrations and C++ module code, copying configuration files, running `makepkg -edfi --noconfirm` to compile, and restarting the world server service. All operations are confined to system paths related to the package (`/usr/src/acore-modules`, `/usr/share/azerothcore`, `/etc/azerothcore`, the build directory) and use `sudo` where necessary. No network requests, obfuscated code, data exfiltration, or execution of untrusted remote content are present. The script follows expected AUR packaging practices for a helper script.
</details>
<evidence></evidence>
<summary>Standard maintainer helper script, no malicious behavior.</summary>
</security_assessment>

[8/9] Reviewing acore_setup...
+ Reviewed acore_mod. Status: SAFE -- Standard maintainer helper script, no malicious behavior.
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a legitimate setup helper for the AzerothCore emulator. It performs expected administrative tasks: reading MySQL credentials, running database initialization scripts, starting servers, and provisioning a game admin account. All network destinations (MySQL local socket, authserver/worldserver binaries from the package) are local and expected. No external downloads, obfuscated code, or data exfiltration mechanisms are present. The script uses a temporary file for credentials with proper cleanup via trap, which is standard practice. The SQL interpolation for the account elevation query is unsanitized but is purely local and interactive (the user supplies their own credentials), so it is a code-quality concern rather than evidence of a supply‑chain attack.
</details>
<evidence></evidence>
<summary>Legitimate admin setup script; no malicious behavior found.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed acore_setup. Status: SAFE -- Legitimate admin setup script; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,894
  Completion Tokens: 5,773
  Total Tokens: 41,667
  Total Cost: $0.003321
  Execution Time: 268.20 seconds

Final Status: SAFE


No issues found.
