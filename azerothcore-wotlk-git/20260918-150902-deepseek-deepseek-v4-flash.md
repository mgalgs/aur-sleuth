---
package: azerothcore-wotlk-git
pkgver: r19562.e72b221969
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 35998
completion_tokens: 5305
total_tokens: 41303
cost: 0.00232294272
execution_time: 69.82
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-18T15:09:01Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file; no malicious content.
  - file: acore-auth-server.service
    status: safe
    summary: Standard service unit, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd service file, no security issues.
  - file: acore_mod
    status: safe
    summary: Safe maintainer helper script, no malicious behavior.
  - file: acore_setup
    status: safe
    summary: Standard AzerothCore setup script, no malicious behavior.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Standard AUR install script, no malicious code found.
  - file: attach-world
    status: safe
    summary: Legitimate admin console attachment script; no malicious content.
  - file: jemalloc.patch
    status: safe
    summary: Single-line C++ exception compatibility fix; no malicious behavior detected.
---

Materializing azerothcore-wotlk-git from local mirror...
Materialized azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and function definitions at the top level. No command substitutions, backticks, eval, curl/wget, or other potentially dangerous constructs are executed when the file is sourced. The `makepkg --printsrcinfo` command will safely parse these definitions without any risk of malicious behavior.
</details>
<evidence></evidence>
<summary>No top-level code execution risks found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risks found.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, PKGBUILD...
[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file. It declares the package name, version, dependencies, and sources. The primary source is the official upstream git repository from `github.com/azerothcore/azerothcore-wotlk.git`, which is expected and legitimate. Local helper files (service files, scripts, config) are included with proper sha512 checksums. The git source uses a `SKIP` checksum, which is standard practice for VCS packages and not a security concern. There are no obfuscated commands, network requests to unexpected hosts, or attempts to exfiltrate data. The file contains only declarative metadata; it does not execute any code during audit. Therefore, no evidence of malicious or dangerous behavior is found.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file; no malicious content.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service, acore-world-server.service...
[1/9] Reviewing PKGBUILD, acore-auth-server.service, acore-world-server.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file; no malicious content.
LLM auditresponse for acore-auth-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd service unit for the AzerothCore authentication server. It specifies the executable path, user/group, working directory, restart policy, and dependencies. There is no obfuscated code, network requests, dangerous commands, or any deviation from expected packaging practices. The use of unprivileged user and group is a good security practice.
</details>
<evidence>
</evidence>
<summary>Standard service unit, no malicious content.</summary>
</security_assessment>

[1/9] Reviewing PKGBUILD, acore-auth-server.service, acore-world-server.service, acore_mod...
[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard service unit, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package for building the AzerothCore MMORPG server from a git source. All source URLs point to the official GitHub repository. The `sha512sums` for the git source is `SKIP`, which is normal for VCS packages and not a security concern. The prepare function performs dependency checks for MySQL vs MariaDB and creates symlinks for optional user modules from `/usr/src/acore-modules`. No network requests are made at build time beyond the initial git clone, and no obfuscated code, backdoors, or data exfiltration is present. The build and package steps use standard CMake and installation commands. There is no evidence of injected malicious behavior—only routine packaging operations consistent with the package's stated purpose.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod, acore_setup...
[3/9] Reviewing acore-world-server.service, acore_mod, acore_setup...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the AzerothCore MMORPG world server. It defines the service name, dependencies, user/group, working directory, executable path, and restart policy. There are no signs of malicious behavior such as obfuscated commands, network requests, data exfiltration, or unexpected file operations. The service runs a legitimate binary (`/usr/bin/worldserver`) with a dedicated system user, following normal packaging practices for game server services.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[4/9] Reviewing acore_mod, acore_setup...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd service file, no security issues.
[4/9] Reviewing acore_mod, acore_setup, attach-world...
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
The `acore_mod` script is a maintainer helper script for the azerothcore-wotlk-git AUR package. It automates module symlink management, configuration deployment, incremental compilation via `makepkg -edfi`, and service restart. All operations are within the expected scope of a packaging helper: it uses `sudo` for system-level file operations (symlinks, config copies, service restart), interacts only with local files and the package's own build directory, and does not fetch any external code or exfiltrate data. There is no obfuscation, encoded commands, or suspicious network requests. The script's behavior is consistent with standard AUR maintenance workflows and the stated purpose of managing game server modules.
</details>
<evidence>
</evidence>
<summary>Safe maintainer helper script, no malicious behavior.</summary>
</security_assessment>

[4/9] Reviewing acore_mod, acore_setup, attach-world, azerothcore-wotlk-git.install...
[5/9] Reviewing acore_setup, attach-world, azerothcore-wotlk-git.install...
+ Reviewed acore_mod. Status: SAFE -- Safe maintainer helper script, no malicious behavior.
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `acore_setup` is a standard administrative provisioning script for the AzerothCore World of Warcraft emulator. It performs the following expected operations:

- Verifies root privileges (necessary for system-wide mysql and service configuration).
- Creates a temporary MySQL credentials file (with secure permissions and automatic cleanup) to perform database operations without password warnings.
- Drops and recreates the `acore_auth` database, then runs the official SQL initialization file from the package (`/usr/share/azerothcore/data/sql/create/create_mysql.sql`).
- Modifies configuration files in `/etc/azerothcore/` to enable updates, RA interface (restricted to localhost), and disable console/log features for later daemon use.
- Launches the `authserver` binary from the system path, waits for port 3724 to be active, then terminates it – this is a standard migration trigger pattern for AzerothCore.
- Prompts the user for a master account, then launches `worldserver` in the foreground so the user can create the account via the in-game console, after which it inserts GM privileges via SQL and disables console mode for daemon use.

No obfuscated code, no network downloads (curl/wget), no data exfiltration, no encoded commands, and no execution of untrusted external scripts are present. All operations are limited to the package’s own installed files, MySQL, and the system’s own binaries. The script is consistent with normal AUR packaging practices for a server setup utility.
</details>
<evidence>
</evidence>
<summary>Standard AzerothCore setup script, no malicious behavior.</summary>
</security_assessment>

[5/9] Reviewing acore_setup, attach-world, azerothcore-wotlk-git.install, jemalloc.patch...
[6/9] Reviewing attach-world, azerothcore-wotlk-git.install, jemalloc.patch...
+ Reviewed acore_setup. Status: SAFE -- Standard AzerothCore setup script, no malicious behavior.
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux package install script for azerothcore-wotlk-git. It performs routine post-install actions: creating a daemon user and group, copying default configuration files, modifying a configuration path inside its own config files, and displaying setup instructions. No network requests, obfuscation, or unapproved downloads are present. The use of `sudo` is redundant (the script runs as root) but not malicious. Pre-removal properly stops and disables systemd services. No deviation from expected packaging behavior.
</details>
<evidence></evidence>
<summary>Standard AUR install script, no malicious code found.</summary>
</security_assessment>

[7/9] Reviewing attach-world, jemalloc.patch...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Standard AUR install script, no malicious code found.
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward helper to attach to the AzerothCore world server's remote admin console. It checks if the local port 3443 is listening (via `ss`) and then connects to it using `nc` on 127.0.0.1. All operations are local, no external network connections, no encoded or obfuscated commands, no file modifications. This is standard packaging practice for a server administration tool.
</details>
<evidence></evidence>
<summary>Legitimate admin console attachment script; no malicious content.</summary>
</security_assessment>

[8/9] Reviewing jemalloc.patch...
+ Reviewed attach-world. Status: SAFE -- Legitimate admin console attachment script; no malicious content.
LLM auditresponse for jemalloc.patch:
 <security_assessment>
<decision>SAFE</decision>
<details>
This patch makes a single, well-understood change to jemalloc's C++ exception handling: it replaces the libstdc++-specific internal call `std::__throw_bad_alloc()` with the standard, portable `throw std::bad_alloc()`. This is a routine compatibility fix commonly required when building against newer C++ standard library implementations (e.g., libc++ or newer libstdc++ where the internal helper may be removed or unavailable). 

There is no malicious behavior here: no network access, no obfuscation, no file system manipulation, no execution of downloaded code, and no deviation from normal build-patch practices. The change is minimal and directly serves the stated purpose of making the package compile correctly with the system compiler. It poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Single-line C++ exception compatibility fix; no malicious behavior detected.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed jemalloc.patch. Status: SAFE -- Single-line C++ exception compatibility fix; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,998
  Completion Tokens: 5,305
  Total Tokens: 41,303
  Total Cost: $0.002323
  Execution Time: 69.82 seconds

Final Status: SAFE


No issues found.
