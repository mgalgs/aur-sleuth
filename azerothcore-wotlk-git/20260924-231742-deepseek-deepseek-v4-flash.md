---
package: azerothcore-wotlk-git
pkgver: r19657.9c1bbfafec
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 36323
completion_tokens: 9069
total_tokens: 45392
cost: 0.002668589
execution_time: 71.74
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-24T23:17:41Z
file_verdicts:
  - file: acore-auth-server.service
    status: safe
    summary: Standard systemd service file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata file; no security issues.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd service unit, no issues.
  - file: acore_mod
    status: safe
    summary: No malicious behavior found; helper is ordinary AUR module compilation tool.
  - file: attach-world
    status: safe
    summary: "Safe: standard local admin console connector."
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious behavior detected.
  - file: acore_setup
    status: safe
    summary: Standard AzerothCore setup script, no malicious content.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Routine package install script; no malicious behavior detected.
  - file: jemalloc.patch
    status: safe
    summary: Simple compatibility patch, no security concerns.
---

Materializing azerothcore-wotlk-git from local mirror...
Materialized azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only static variable assignments (strings, arrays) and function definitions (`pkgver()`, `prepare()`, `build()`, `package()`). There are no command substitutions, backtick executions, `eval`, or any other code that would run during sourcing. All dangerous logic is confined to the function bodies, which are not executed by `makepkg --printsrcinfo`. The `source` array uses a standard git URL, and `sha512sums` includes `SKIP` for the VCS source, which is normal. No red flags for this narrow gate.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to source for metadata.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to source for metadata.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, PKGBUILD...
[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service...
LLM auditresponse for acore-auth-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the AzerothCore authentication server. It defines a user and group, working directory, executable path, and restart policy. No malicious commands, obfuscation, network requests, or unexpected operations are present. The file follows normal packaging conventions for a systemd service.
</details>
<evidence>
</evidence>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard systemd service file, no security issues.
[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a purely declarative metadata file for an AUR package. It defines the package name, version, dependencies, sources, and checksums. All sources point to the upstream project's GitHub repository (a standard VCS source with `SKIP` checksum, which is expected for git sources) and a set of local files with valid checksums. There are no executable commands, no obfuscated content, no suspicious network requests, and no indicators of malicious behavior. The file conforms to normal AUR packaging practices.
</details>
<evidence>

</evidence>
<summary>Declarative metadata file; no security issues.</summary>
</security_assessment>

[2/9] Reviewing PKGBUILD, acore-world-server.service...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata file; no security issues.
[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod...
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the AzerothCore World Server. It defines a simple service running /usr/bin/worldserver with typical directives (User, Group, WorkingDirectory, Restart). There are no network requests, obfuscated commands, dangerous operations, or deviations from standard packaging practices. The service file is entirely benign.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no issues.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, acore_mod...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd service unit, no issues.
[3/9] Reviewing PKGBUILD, acore_mod, acore_setup...
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a user-invoked helper script for compiling and deploying AzerothCore modules. It locates a build workspace (including by scanning `/usr/bin/worldserver` string data), creates symlinks from `/usr/src/acore-modules` into the SQL updates and C++ module directories, deploys `.conf.dist` templates to `/etc/azerothcore`, rebuilds with `makepkg -edfi --noconfirm`, and restarts the `acore-world-server` service. These actions are consistent with the script's stated purpose of managing a local AzerothCore module build.

No genuinely malicious behavior is present: there are no network fetches or downloads, no `eval`, `base64`, or obfuscated commands, no exfiltration of local credentials or files, no backdoors or reverse shells, and no connections to unrelated hosts. Some operations are worth noting as hygiene and safety considerations rather than malware: the build directory is discovered dynamically from binary strings, existing symlinks under system directories are deleted, and `makepkg` runs with dependency checks skipped. These behaviors could be risky if the build directory or module sources were untrusted, but they do not indicate injected malicious code and fit the normal maintainer/workflow use case.
</details>
<evidence>
</evidence>
<summary>
No malicious behavior found; helper is ordinary AUR module compilation tool.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, acore_mod, acore_setup, attach-world...
[4/9] Reviewing PKGBUILD, acore_setup, attach-world...
+ Reviewed acore_mod. Status: SAFE -- No malicious behavior found; helper is ordinary AUR module compilation tool.
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a simple helper to connect to the local AzerothCore world server's Remote Access console on port 3443. It checks if the port is listening and then uses `nc` to connect to `127.0.0.1`. There are no external network connections, no downloads, no obfuscated code, and no unusual file operations. The behavior is entirely expected for a game server administration tool and poses no supply-chain security risk.
</details>
<evidence>
</evidence>
<summary>Safe: standard local admin console connector.</summary>
</security_assessment>

[4/9] Reviewing PKGBUILD, acore_setup, attach-world, azerothcore-wotlk-git.install...
[5/9] Reviewing PKGBUILD, acore_setup, azerothcore-wotlk-git.install...
+ Reviewed attach-world. Status: SAFE -- Safe: standard local admin console connector.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD builds the AzerothCore WoW server emulator from the project's official GitHub repository. The source array points to the upstream repo (branch=master) and includes several local files with pinned checksums. The build process only runs standard `cmake` and `make`, with no external download or execution of untrusted code. The prepare() function checks for the presence of MariaDB/MySQL packages using `pacman -Qq`, which is a local query that does not exfiltrate data or modify the system. There are no uses of `eval`, `curl`, `wget`, `base64`, or obfuscated commands. The only packaging concern is that `$user_dropzone` is referenced but not defined, which would cause the condition to fall through silently—a bug rather than a security issue. The file exhibits no signs of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[6/9] Reviewing acore_setup, azerothcore-wotlk-git.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious behavior detected.
[6/9] Reviewing acore_setup, azerothcore-wotlk-git.install, jemalloc.patch...
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a legitimate setup utility for the AzerothCore World of Warcraft emulator. It performs standard administrative tasks: checking for root privileges, prompting for MySQL credentials (stored temporarily with proper permissions and cleanup), initializing databases, modifying server configuration files, starting authserver and worldserver binaries, and creating a master GM account. All operations are confined to local system resources (MySQL, files under /etc/azerothcore/, /usr/bin/, and /usr/share/azerothcore/). No network requests to external hosts, no obfuscated code, no execution of downloaded content, and no data exfiltration are present. The script follows normal AUR packaging practices for a server provisioning tool. There is no evidence of malicious or supply-chain attack behavior.
</details>
<evidence>
</evidence>
<summary>Standard AzerothCore setup script, no malicious content.</summary>
</security_assessment>

[7/9] Reviewing azerothcore-wotlk-git.install, jemalloc.patch...
+ Reviewed acore_setup. Status: SAFE -- Standard AzerothCore setup script, no malicious content.
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.install` script performs routine package installation tasks: creating a dedicated system user and group, adding the user to that group, copying default configuration templates if absent, and stopping/disabling the package's own systemd services on removal. These operations are normal for a server-style package and stay within the package's own scope (`/etc/azerothcore`, `/usr/share/azerothcore`, and the `acore-*` services).

The `sudo sed -i` commands are somewhat unusual because pacman `.install` scripts already run as root, and relying on `sudo` could fail on systems without it. However, the sed edits only modify the package's own configuration files under `/etc/azerothcore`, setting `SourceDirectory` to a path under `/usr/share/azerothcore`. This is a configuration convenience, not evidence of malicious behavior.

No suspicious network requests, encoded/obfuscated commands, data exfiltration, or execution of externally fetched code were found. The script is consistent with ordinary packaging practice, aside from minor hygiene issues like the unnecessary `sudo` usage.
</details>
<evidence>
</evidence>
<summary>
Routine package install script; no malicious behavior detected.</summary>
</security_assessment>

[8/9] Reviewing jemalloc.patch...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Routine package install script; no malicious behavior detected.
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a patch that replaces a non-standard `std::__throw_bad_alloc()` call with `throw std::bad_alloc()`. This is a compatibility fix for certain C++ runtime environments where the internal symbol is unavailable. The change is trivial, directly related to the upstream dependency (jemalloc), and shows no signs of malicious intent—no obfuscation, network activity, or system modification. It follows standard AUR patching practices.
</details>
<evidence>
</evidence>
<summary>Simple compatibility patch, no security concerns.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed jemalloc.patch. Status: SAFE -- Simple compatibility patch, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,323
  Completion Tokens: 9,069
  Total Tokens: 45,392
  Total Cost: $0.002669
  Execution Time: 71.74 seconds

Final Status: SAFE


No issues found.
