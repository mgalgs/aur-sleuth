---
package: azerothcore-wotlk-git
pkgver: r19295.73a301904a
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 35917
completion_tokens: 5473
total_tokens: 41390
cost: 0.00396273528
execution_time: 291.45
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: ok
upstream_files: 10342
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-29T07:22:42Z
file_verdicts:
  - file: acore-auth-server.service
    status: safe
    summary: Standard systemd service unit, no malicious content.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd service unit, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO; no malicious content detected.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious behavior.
  - file: acore_mod
    status: safe
    summary: Standard helper script, no malicious behavior.
  - file: attach-world
    status: safe
    summary: Safe local helper script for AzerothCore admin console.
  - file: jemalloc.patch
    status: safe
    summary: Minor C++ exception fix, no security issues.
  - file: acore_setup
    status: safe
    summary: Standard setup script, no malicious behavior detected.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Standard post-install script, no malicious activity.
---

Cloning https://aur.archlinux.org/azerothcore-wotlk-git.git...
Cloned azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains standard AUR packaging constructs. The `source` array clones from the official upstream GitHub repository (`github.com/azerothcore/azerothcore-wotlk.git`), which is the expected source. The `pkgver()` function only runs `git rev-list --count` and `git rev-parse --short HEAD` inside the cloned repo – these are harmless and typical for VCS packages. There are no top-level command substitutions, no `eval`, no `curl`/`wget`/`base64`, no obfuscation, and no code that executes outside of `prepare()`/`build()`/`package()`. All checksums are either `SKIP` (as required for VCS sources) or pinned to valid SHA-512 hashes. No code in the global scope or `pkgver()` poses a risk during source fetching or PKGBUILD sourcing.
</details>
<evidence></evidence>
<summary>No malicious code in source fetch or pkgver scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in source fetch or pkgver scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/azerothcore-wotlk/deps/jemalloc/src/jemalloc_cpp.cpp); they are upstream content and were not reviewed.
Reviewing the 9 file(s) in the AUR repository. The 10342 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, PKGBUILD...
[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service...
LLM auditresponse for acore-auth-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the AzerothCore MMORPG authentication server. It defines a simple service that runs as the `azerothcore` user, executes `/usr/bin/authserver` from `/usr/share/azerothcore`, and restarts on failure. There are no suspicious commands, network requests, obfuscated code, or operations outside of normal packaging practices. The file is a straightforward unit configuration with no security concerns.
</details>
<evidence />
<summary>Standard systemd service unit, no malicious content.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service, acore-world-server.service...
[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard systemd service unit, no malicious content.
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the AzerothCore world server. It defines a simple service that runs the worldserver binary with the appropriate user, group, and working directory. There are no network requests, file operations, or any other commands beyond the expected service definition. No obfuscated or encoded content is present. The file adheres to typical packaging practices and contains no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no security issues.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service, acore_mod...
[2/9] Reviewing .SRCINFO, PKGBUILD, acore_mod...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd service unit, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It declares sources, checksums, dependencies, and packaging options. The VCS source (`git+https://github.com/azerothcore/azerothcore-wotlk.git#branch=master`) has `sha512sums = SKIP`, which is normal for VCS packages. All other files have fixed, non-SKIP checksums. There are no executable commands, obfuscated content, network requests, or any indications of malicious behavior. The file is purely declarative and conforms to AUR standards.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO; no malicious content detected.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, PKGBUILD, acore_mod, acore_setup...
[3/9] Reviewing PKGBUILD, acore_mod, acore_setup...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO; no malicious content detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS-based package. The source is cloned from the official upstream GitHub repository (azerothcore/azerothcore-wotlk) with a `SKIP` checksum, which is expected and required for `-git` packages. The `prepare()` and `build()` functions run the upstream build system (CMake, clang) and install files into `$pkgdir` using standard Arch Linux paths. The dependency checks for MySQL vs MariaDB are legitimate runtime requirements, not malicious. No suspicious network requests, obfuscated code, data exfiltration, or unexpected system modifications are present. One packaging oversight is the inclusion of a `jemalloc.patch` reference without adding it to the `source` array, which would cause a build failure but is not a security threat. Overall, the file shows no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious behavior.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, acore_mod, acore_setup, attach-world...
[4/9] Reviewing acore_mod, acore_setup, attach-world...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious behavior.
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is an AUR maintainer helper for automated module compilation and deployment for AzerothCore. It performs routine operations: locating the build directory (either by checking the current directory or extracting a path from the existing binary), managing symlinks for SQL and C++ module sources, deploying missing configuration templates, running `makepkg -edfi --noconfirm` for incremental rebuild, and restarting the server daemon. There is no obfuscation, no unexpected network requests, no data exfiltration, and no execution of untrusted external code. The use of `sudo` and `makepkg` is consistent with the stated purpose of the tool and standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard helper script, no malicious behavior.</summary>
</security_assessment>

[5/9] Reviewing acore_setup, attach-world...
+ Reviewed acore_mod. Status: SAFE -- Standard helper script, no malicious behavior.
[5/9] Reviewing acore_setup, attach-world, azerothcore-wotlk-git.install...
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
The script simply checks whether a local service is listening on port 3443 and, if so, connects to it using `nc` (netcat). All network operations are strictly local (127.0.0.1) and intended for legitimate administrative access to the AzerothCore world server. No external downloads, encoded payloads, or system modifications are present. This is a standard helper script for attaching to a running service.
</details>
<evidence></evidence>
<summary>Safe local helper script for AzerothCore admin console.</summary>
</security_assessment>

[5/9] Reviewing acore_setup, attach-world, azerothcore-wotlk-git.install, jemalloc.patch...
[6/9] Reviewing acore_setup, azerothcore-wotlk-git.install, jemalloc.patch...
+ Reviewed attach-world. Status: SAFE -- Safe local helper script for AzerothCore admin console.
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch changes the exception throwing mechanism in a jemalloc C++ wrapper from using the internal `std::__throw_bad_alloc()` (a libstdc++ internal function) to the standard `throw std::bad_alloc()`. This is a benign and common code improvement for portability or compliance with the C++ standard. There is no evidence of malicious behavior, such as data exfiltration, hidden network requests, or obfuscated code.
</details>
<evidence></evidence>
<summary>Minor C++ exception fix, no security issues.</summary>
</security_assessment>

[7/9] Reviewing acore_setup, azerothcore-wotlk-git.install...
+ Reviewed jemalloc.patch. Status: SAFE -- Minor C++ exception fix, no security issues.
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
The `acore_setup` script is a standard administrative provisioning helper for AzerothCore. It performs routine operations such as MySQL database initialization, configuration file tuning, and starting/stopping server binaries (authserver, worldserver) that are part of the package. All operations are local and do not involve network downloads, obfuscated code, or attempts to exfiltrate data. The script temporarily stores MySQL credentials in a secured file (`/tmp/.acore_mysql_$$.cnf` with mode 600) and cleans up on exit via a trap — a standard and acceptable practice. The only user input (MySQL password, admin username/password) is used to interact with local services. The SQL query that elevates the admin account uses the username directly, which could cause a SQL syntax error if the username contains special characters, but this is a local privilege elevation step performed by the administrator, not a supply-chain attack vector. There are no `curl`, `wget`, `eval`, `base64`, or other dangerous command patterns. The file matches the expected behavior of a server setup script for a Warcraft emulator package.
</details>
<evidence></evidence>
<summary>Standard setup script, no malicious behavior detected.</summary>
</security_assessment>

[8/9] Reviewing azerothcore-wotlk-git.install...
+ Reviewed acore_setup. Status: SAFE -- Standard setup script, no malicious behavior detected.
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR .install script for a game server package. It performs routine post-installation tasks: creating an unprivileged system user, creating an administrative group, copying default configuration templates, and setting a configuration value via sed. The pre-removal section stops and disables systemd services. There are no network requests, no downloads of external code, no obfuscated commands, and no operations that exfiltrate data or modify system files outside the application&#39;s own configuration scope. The use of `sudo` is unnecessary when running as root but does not indicate malice; it is merely redundant. The script is consistent with safe packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard post-install script, no malicious activity.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Standard post-install script, no malicious activity.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,917
  Completion Tokens: 5,473
  Total Tokens: 41,390
  Total Cost: $0.003963
  Execution Time: 291.45 seconds

Final Status: SAFE


No issues found.
