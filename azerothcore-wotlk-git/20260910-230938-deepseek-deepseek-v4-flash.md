---
package: azerothcore-wotlk-git
pkgver: r19465.c9a5efc491
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 35815
completion_tokens: 11918
total_tokens: 47733
cost: 0.00482695892
execution_time: 225.72
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-10T23:09:38Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: acore-auth-server.service
    status: safe
    summary: Standard systemd service unit, no malicious content.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd unit file; no security issues.
  - file: acore_setup
    status: safe
    summary: No malicious behavior found; script is a normal setup helper.
  - file: attach-world
    status: safe
    summary: Standard admin helper script, no malicious behavior.
  - file: acore_mod
    status: safe
    summary: Legitimate module management helper, no malicious behavior.
  - file: jemalloc.patch
    status: safe
    summary: Patch is benign, standard compatibility fix.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS PKGBUILD; no obfuscation, unexpected downloads, or exfiltration.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Redundant sudo but no malicious behavior found.
---

Materializing azerothcore-wotlk-git from local mirror...
Materialized azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and array definitions at global scope. There are no command substitutions, backtick executions, or function calls that would execute during `makepkg --printsrcinfo`. The `pkgver()`, `prepare()`, `build()`, and `package()` functions are defined but not invoked during the sourcing step. No dangerous commands (eval, curl, wget, base64) or obfuscated code are present in the global scope. Running `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No malicious code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, PKGBUILD...
[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata manifest for the AUR package. It contains package description, dependencies, source URLs, and checksums. The VCS source (git) appropriately uses SKIP for the checksum, which is standard practice for version control sources. The other sources (service files and helper scripts) have pinned SHA512 checksums. There is no executable code, obfuscation, network requests, or system modification commands in this file. It is a standard, benign package definition.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/9] Reviewing PKGBUILD, acore-auth-server.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
[1/9] Reviewing PKGBUILD, acore-auth-server.service, acore-world-server.service...
LLM auditresponse for acore-auth-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd service unit for the AzerothCore MMORPG authentication server. It contains no executable code, no network requests, no obfuscation, and no file operations beyond defining the service execution environment. All directives (`Description`, `After`, `Type`, `User`, `Group`, `WorkingDirectory`, `ExecStart`, `Restart`, `WantedBy`) are normal and expected for a server package. There is no evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no malicious content.</summary>
</security_assessment>

[2/9] Reviewing PKGBUILD, acore-world-server.service...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard systemd service unit, no malicious content.
[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod...
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the AzerothCore world server. It defines a simple service that runs the `/usr/bin/worldserver` binary as the `azerothcore` user and `acore-admin` group. There are no unusual commands, network requests, file operations, or encoded content. The service dependencies (`network.target`, `acore-auth-server.service`) and restart policy (`on-failure`) are typical for a game server. No security issues are present.
</details>
<evidence>
</evidence>
<summary>Standard systemd unit file; no security issues.</summary>
</security_assessment>

[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod, acore_setup...
[3/9] Reviewing PKGBUILD, acore_mod, acore_setup...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd unit file; no security issues.
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `acore_setup` is an administrative setup helper for the AzerothCore World of Warcraft server. It prompts for MySQL credentials, creates a temporary MySQL option file (with proper permissions and cleanup via trap), runs the official `create_mysql.sql` script shipped with the package, then starts the `authserver` and `worldserver` binaries from the expected system paths (`/usr/bin/authserver`, `/usr/bin/worldserver`). No external network requests, obfuscated code, `eval`/`base64`/`curl`/`wget` invocations, or unexpected file operations are present. The script creates an admin account and elevates its privileges via SQL, which is the intended application functionality. All operations stay within the package’s own scope and follow standard packaging practices. There is no evidence of supply-chain attack or malicious injection.
</details>
<evidence>
</evidence>
<summary>No malicious behavior found; script is a normal setup helper.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, acore_mod, acore_setup, attach-world...
[4/9] Reviewing PKGBUILD, acore_mod, attach-world...
+ Reviewed acore_setup. Status: SAFE -- No malicious behavior found; script is a normal setup helper.
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a simple utility to connect to the AzerothCore World Server's local Remote Access console on port 3443. It first checks if the port is listening (via `ss -ltn | grep -q :3443`) and if not, prints a waiting message and exits. If the port is up, it connects using `nc -C 127.0.0.1 3443`. All operations are confined to localhost (`127.0.0.1`). There are no network requests to external hosts, no obfuscated commands, no file modifications, and no execution of fetched code. The script aligns with standard packaging practices for a game server administration tool.
</details>
<evidence></evidence>
<summary>Standard admin helper script, no malicious behavior.</summary>
</security_assessment>

[4/9] Reviewing PKGBUILD, acore_mod, attach-world, azerothcore-wotlk-git.install...
[5/9] Reviewing PKGBUILD, acore_mod, azerothcore-wotlk-git.install...
+ Reviewed attach-world. Status: SAFE -- Standard admin helper script, no malicious behavior.
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a legitimate helper for compiling and deploying AzerothCore modules. It performs standard operations: locating the build directory (using a heuristic based on the installed binary's strings), managing symlinks for SQL and C++ module sources, copying default configuration files, running `makepkg` for incremental compilation, and restarting the server daemon. All file operations are confined to the package's own directories (`/usr/share/azerothcore/`, `/etc/azerothcore/`, `/usr/src/acore-modules/`, and the build directory). No network requests, obfuscated code, exfiltration, or execution of untrusted content is present. The use of `sudo` and `systemctl` is expected for system-level tasks. While the heuristic to extract the build path from the binary is unconventional, it is not malicious. The script behaves as a typical AUR maintainer helper for this package.
</details>
<evidence>
</evidence>
<summary>Legitimate module management helper, no malicious behavior.</summary>
</security_assessment>

[5/9] Reviewing PKGBUILD, acore_mod, azerothcore-wotlk-git.install, jemalloc.patch...
[6/9] Reviewing PKGBUILD, azerothcore-wotlk-git.install, jemalloc.patch...
+ Reviewed acore_mod. Status: SAFE -- Legitimate module management helper, no malicious behavior.
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a trivial patch to jemalloc's C++ wrapper, replacing an internal libstdc++ function `std::__throw_bad_alloc()` with the standard `throw std::bad_alloc();`. There is no network activity, obfuscation, file manipulation, or any behavior outside standard packaging. The change is a compatibility fix for non-GCC compilers or newer GCC versions, consistent with normal upstream development. No security concerns.
</details>
<evidence></evidence>
<summary>Patch is benign, standard compatibility fix.</summary>
</security_assessment>

[7/9] Reviewing PKGBUILD, azerothcore-wotlk-git.install...
+ Reviewed jemalloc.patch. Status: SAFE -- Patch is benign, standard compatibility fix.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR VCS PKGBUILD for AzerothCore. The only network fetch is the package&apos;s own declared upstream source via `git+https://github.com/azerothcore/azerothcore-wotlk.git#branch=master`, which is expected for a `-git` package. `sha512sums=SKIP` is normal for VCS sources. There is no obfuscated code, no `base64`, `eval`, `curl|bash`, or other execution of remotely fetched scripts, and no attempt to exfiltrate local data.

Most operations are ordinary packaging: dependency checks with `pacman -Qq`, CMake configuration and build, and installing files into `$pkgdir`. A few minor hygiene issues exist but do not indicate malice: the source tracks a mutable branch, `$user_dropzone` is referenced but never defined, `${startdir}/jemalloc.patch` is referenced but not listed in `source`, and the package creates a world-writable `/usr/src/acore-modules` directory as a user module dropzone. These are design or maintainability concerns, not evidence of an injected supply-chain attack.
</details>
<evidence></evidence>
<summary>
Standard AUR VCS PKGBUILD; no obfuscation, unexpected downloads, or exfiltration.
</summary>
</security_assessment>

[8/9] Reviewing azerothcore-wotlk-git.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS PKGBUILD; no obfuscation, unexpected downloads, or exfiltration.
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard AUR install/uninstall hook for a server service. It creates an unprivileged user and group, copies default configuration files, modifies a config file path, and stops/disables systemd units on removal.  

The only unusual element is the use of `sudo` inside the `post_install()` function (e.g., `sudo sed -i ...`). Install scripts already run with elevated privileges (typically via `makepkg` under `fakeroot` or directly by pacman as root), so `sudo` is redundant but not malicious. It is most likely an oversight from copying commands meant for post-install instructions into the `.install` script.  

No network requests, obfuscated code, data exfiltration, or unexpected downloads are present. The script only interacts with package-owned paths (`/etc/azerothcore/`, system service files) and standard system utilities (`useradd`, `groupadd`, `systemctl`). The behavior is consistent with legitimate packaging of a server service.
</details>
<evidence></evidence>
<summary>Redundant sudo but no malicious behavior found.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Redundant sudo but no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,815
  Completion Tokens: 11,918
  Total Tokens: 47,733
  Total Cost: $0.004827
  Execution Time: 225.72 seconds

Final Status: SAFE


No issues found.
