---
package: azerothcore-wotlk-git
pkgver: r19432.1668534311
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 35809
completion_tokens: 6802
total_tokens: 42611
cost: 0.00407459598
execution_time: 69.94
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-08T23:05:12Z
file_verdicts:
  - file: acore-auth-server.service
    status: safe
    summary: Standard systemd service unit, no malicious content.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd service file, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior.
  - file: attach-world
    status: safe
    summary: Simple local port check and connection, no security risk.
  - file: acore_setup
    status: safe
    summary: Standard admin setup script, no malicious content.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Standard package setup, no malicious content.
  - file: acore_mod
    status: safe
    summary: Legitimate AUR module build helper script.
  - file: jemalloc.patch
    status: safe
    summary: Benign single-line portability patch for jemalloc; no malicious behavior found.
---

Materializing azerothcore-wotlk-git from local mirror...
Materialized azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions (source, sha512sums, depends, etc.) at the top level, none of which perform command substitution or execute external commands that could be malicious. The source array points to the upstream GitHub repo, and all other definitions are static or string-based. The functions `pkgver()`, `prepare()`, `build()`, and `package()` are defined but are not invoked during `makepkg --printsrcinfo`; their contents are out of scope for this narrow gate. There is no obfuscated code, no use of `eval`, `curl`, `wget`, or any other dangerous commands in global scope. No top-level code exfiltrates data, downloads payloads, or modifies the system.
</details>
<evidence></evidence>
<summary>No malicious top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, PKGBUILD...
[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service...
LLM auditresponse for acore-auth-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the AzerothCore MMORPG authentication server. It defines a simple service that runs `/usr/bin/authserver` as a dedicated user and group, with working directory set to `/usr/share/azerothcore`. There are no embedded commands, no network fetches, no obfuscation, and no unexpected file operations. This is entirely normal packaging practice and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no malicious content.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service, acore-world-server.service...
[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard systemd service unit, no malicious content.
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the AzerothCore MMORPG world server. It defines the service to run `/usr/bin/worldserver` as the user `azerothcore` and group `acore-admin`, with a working directory of `/usr/share/azerothcore`. It declares a dependency on `network.target` and `acore-auth-server.service`, and sets restart policy to `on-failure`. There are no executable commands, no network requests, no obfuscated content, and no manipulation of files outside the package's scope. The file is a normal configuration artifact for packaging a system daemon. No security issues.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no malicious content.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service, acore_mod...
[2/9] Reviewing .SRCINFO, PKGBUILD, acore_mod...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd service file, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is metadata for an AUR package and contains no executable code. It defines the package source (upstream GitHub git repository, plus local service files and scripts), dependencies, options, and checksums. The git source uses a mutable `master` branch (expected for `-git` packages) with a `SKIP` checksum, which is standard for VCS sources. All other source files have pinned SHA512 checksums. There are no suspicious URLs, obfuscated commands, or unexpected directives. The presence of script files (`acore_setup`, `attach-world`, `acore_mod`) is part of the package's normal tooling; without examining their contents, they are not inherently malicious. This file follows conventional AUR packaging practices and poses no supply-chain risk by itself.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security concerns.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, PKGBUILD, acore_mod, acore_setup...
[3/9] Reviewing PKGBUILD, acore_mod, acore_setup...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for the `azerothcore-wotlk-git` package follows standard AUR packaging practices. It pulls the source from the upstream GitHub repository using a VCS source (git+https) with a SKIP checksum, which is normal for -git packages. All other source files (systemd services, helper scripts) have pinned SHA-512 checksums.  

The `prepare()` function performs only dependency checks (detecting conflicting MariaDB packages and verifying MySQL components) and applies a local patch—no unexpected downloads, obfuscated commands, or external network requests. The `build()` and `package()` functions use standard CMake and install commands, targeting the usual system paths. No exfiltration, backdoors, or execution of untrusted code is present.  

The variable `$user_dropzone` is used but not defined in this file; that will simply default to empty, causing the module-linking block to be skipped—a minor coding oversight, not a security threat. Overall, the file exhibits no indicators of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, acore_mod, acore_setup, attach-world...
[4/9] Reviewing acore_mod, acore_setup, attach-world...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior.
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `attach-world` is a straightforward helper that waits for a local port (3443) to become active and then connects via `nc` to that port. It uses only standard utilities (`ss`, `echo`, `nc`) and operates solely on localhost. There are no external network calls, downloads, code execution of untrusted content, or obfuscation. This matches the expected functionality of the AzerothCore world server's remote admin console.
</details>
<evidence>

</evidence>
<summary>Simple local port check and connection, no security risk.</summary>
</security_assessment>

[4/9] Reviewing acore_mod, acore_setup, attach-world, azerothcore-wotlk-git.install...
[5/9] Reviewing acore_mod, acore_setup, azerothcore-wotlk-git.install...
+ Reviewed attach-world. Status: SAFE -- Simple local port check and connection, no security risk.
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `acore_setup` is a straightforward administrative provisioner for the AzerothCore server environment. It requires root privileges, prompts for MySQL credentials, creates a temporary MySQL options file with proper permissions (chmod 600) and cleans it up via a trap, runs SQL initialization scripts from the package's own data directory (`/usr/share/azerothcore/`), starts the authserver and worldserver binaries from `/usr/bin/` (installed by the package), and configures settings under `/etc/azerothcore/`. All commands (`mysql`, `sed`, `kill`, `ss`, `wait`, `read`) are standard for server setup and do not involve any obfuscation, remote downloads (no `curl`, `wget`, `eval`, `base64`), or exfiltration of local data. The script's only external communication is to the local MySQL server and the server processes themselves, which is expected for the application. The temporary password file in `/tmp` is a common practice to avoid exposing credentials on the command line and is properly secured and cleaned. There is no evidence of supply-chain injection; the script only uses the package's own installed files and performs expected initialization tasks.
</details>
<evidence></evidence>
<summary>Standard admin setup script, no malicious content.</summary>
</security_assessment>

[5/9] Reviewing acore_mod, acore_setup, azerothcore-wotlk-git.install, jemalloc.patch...
[6/9] Reviewing acore_mod, azerothcore-wotlk-git.install, jemalloc.patch...
+ Reviewed acore_setup. Status: SAFE -- Standard admin setup script, no malicious content.
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install script performs standard provisioning for a server daemon: creating an unprivileged system user and group, setting default configuration files, and modifying config paths to match the installation prefix. All operations are within the package's own directories (`/etc/azerothcore/`, `/usr/share/azerothcore/`) or involve standard system user management. The use of `sudo` is redundant when run as root (typical for pacman hooks), but not malicious. There are no network requests, obfuscated code, or data exfiltration. The `pre_remove()` function stops and disables the package's own systemd services, which is expected cleanup.
</details>
<evidence></evidence>
<summary>Standard package setup, no malicious content.</summary>
</security_assessment>

[7/9] Reviewing acore_mod, jemalloc.patch...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Standard package setup, no malicious content.
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a maintainer helper for building and deploying AzerothCore modules on Arch Linux. It performs expected operations: locating the build workspace, creating symlinks for SQL migrations and C++ source code, copying default configuration files, rebuilding the package with `makepkg -edfi`, and restarting the world server service.  

There is no evidence of malicious behavior: no network requests to unexpected hosts, no obfuscated or encoded commands, no exfiltration of sensitive data, and no backdoors. The use of `sudo` for system file operations and `makepkg -i` (install) is standard for AUR build helpers that manage system packages. The script does not deviate from its stated purpose of automating module compilation and deployment.  

The only minor hygiene concern is that `makepkg -edfi --noconfirm` installs the built package without dependency checks, but this is intentional for an incremental build workflow and does not indicate malice.
</details>
<evidence></evidence>
<summary>Legitimate AUR module build helper script.</summary>
</security_assessment>

[8/9] Reviewing jemalloc.patch...
+ Reviewed acore_mod. Status: SAFE -- Legitimate AUR module build helper script.
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple patch that modifies a single line in jemalloc's C++ interop code. It replaces the libstdc++-specific internal helper `std::__throw_bad_alloc()` with the standard portable expression `throw std::bad_alloc()`. Such changes are common for improving cross-compiler or cross-library compatibility (e.g., when building against libc++ or newer libstdc++ versions).

There is no obfuscation, no network access, no suspicious file operations, no credential access, and no execution of external code. The patch is scoped entirely to one source line inside the package's own dependency and does not deviate from ordinary packaging or patching practices.
</details>
<evidence>
</evidence>
<summary>
Benign single-line portability patch for jemalloc; no malicious behavior found.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed jemalloc.patch. Status: SAFE -- Benign single-line portability patch for jemalloc; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,809
  Completion Tokens: 6,802
  Total Tokens: 42,611
  Total Cost: $0.004075
  Execution Time: 69.94 seconds

Final Status: SAFE


No issues found.
