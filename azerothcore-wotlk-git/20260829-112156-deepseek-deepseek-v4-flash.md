---
package: azerothcore-wotlk-git
pkgver: r19296.2fed8b96e4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 35919
completion_tokens: 6152
total_tokens: 42071
cost: 0.00403722956
execution_time: 227.13
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: ok
upstream_files: 10342
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-29T11:21:55Z
file_verdicts:
  - file: acore-auth-server.service
    status: safe
    summary: Standard systemd service unit, no security issues.
  - file: .SRCINFO
    status: safe
    summary: No security issues detected in .SRCINFO.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd service unit, no issues.
  - file: acore_setup
    status: safe
    summary: Safe setup script for AzerothCore emulator.
  - file: PKGBUILD
    status: safe
    summary: Standard -git PKGBUILD, no malicious behavior detected.
  - file: acore_mod
    status: safe
    summary: No malicious content; safe AUR helper script.
  - file: jemalloc.patch
    status: safe
    summary: Standard C++ patch, no security concerns.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Standard AUR install script, no malicious behavior.
  - file: attach-world
    status: safe
    summary: Routine admin attachment script, no malicious behavior.
---

Cloning https://aur.archlinux.org/azerothcore-wotlk-git.git...
Cloned azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable definitions and function declarations. The `pkgver()` function runs `git rev-list --count HEAD` and `git rev-parse --short HEAD` inside the cloned repository, which is normal for VCS packages. The `source` array includes a `git+https` reference to the upstream GitHub repository and local files; no external or unexpected download sources are present. No top-level code performs any command substitution, network requests, or file operations that could exfiltrate data or execute untrusted payloads. The `prepare()`, `build()`, and `package()` functions are not executed during the narrow gate (`--nobuild --nodeps --noprepare`). Therefore, fetching sources and sourcing the PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no dangerous top-level execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD, no dangerous top-level execution.
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
This file is a standard systemd service unit for starting the AzerothCore authentication server. It contains only typical directives such as `Description`, `After`, `Type`, `User`, `Group`, `WorkingDirectory`, `ExecStart`, `Restart`, and `WantedBy`. There is no evidence of malicious behavior: no network downloads, no code execution beyond the intended binary, no obfuscation, and no modification of system files. The service runs as a dedicated user (`azerothcore`) and group (`acore-admin`), which is a standard security practice for reducing privileges. No concerns.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no security issues.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service, acore-world-server.service...
[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard systemd service unit, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `azerothcore-wotlk-git` package. It declares the upstream source as a git repository from the project's official GitHub page, lists dependencies, provides service files and helper scripts with verified checksums, and uses `SKIP` for the VCS source (normal practice). No obfuscated code, suspicious network requests, unauthorized file operations, or malicious commands are present. The file is consistent with routine AUR packaging and poses no security risk.
</details>
<evidence>
</evidence>
<summary>No security issues detected in .SRCINFO.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service, acore_mod...
[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod...
+ Reviewed .SRCINFO. Status: SAFE -- No security issues detected in .SRCINFO.
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd service unit for the AzerothCore MMORPG world server. It defines a simple service that runs the `/usr/bin/worldserver` executable with a dedicated user and group, sets a working directory, and configures a restart policy. There are no embedded scripts, network calls, obfuscated commands, or any operations beyond normal service definitions. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no issues.</summary>
</security_assessment>

[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod, acore_setup...
[3/9] Reviewing PKGBUILD, acore_mod, acore_setup...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd service unit, no issues.
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a setup helper script for the AzerothCore World of Warcraft emulator. It automates initial database configuration, schema migration, and admin account creation. The script:
- Uses a temporary MySQL configuration file with proper permissions and cleanup (trap + chmod 600).
- Connects only to a local MySQL instance (localhost).
- Executes SQL files and binaries that are part of the installed package (under /usr/share/azerothcore and /usr/bin).
- Does not make any external network requests (no curl, wget, or downloads).
- Contains no obfuscated code, no base64/hex decoding, no eval, and no execution of fetched content.
- Follows standard practices for self-contained application setup scripts.

No evidence of supply-chain attack, data exfiltration, or hidden malicious behavior was found.
</details>
<evidence></evidence>
<summary>Safe setup script for AzerothCore emulator.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, acore_mod, acore_setup, attach-world...
[4/9] Reviewing PKGBUILD, acore_mod, attach-world...
+ Reviewed acore_setup. Status: SAFE -- Safe setup script for AzerothCore emulator.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD builds the AzerothCore MMORPG server from the legitimate upstream GitHub repository (`github.com/azerothcore/azerothcore-wotlk`). All non-VCS sources have valid SHA-512 checksums. The VCS source uses `SKIP` which is standard for `-git` packages.  

All operations are standard for building and packaging: cloning the upstream repo, setting up build directories, applying an upstream-local patch (`jemalloc.patch`), running CMake with reasonable flags, and installing files into `$pkgdir`. The `pacman -Qq` checks in `prepare()` verify that MariaDB is not installed and that MySQL packages are present — these are local checks only and do not exfiltrate any data or make remote connections.  

There is no evidence of obfuscated code, unexpected network requests (the only download is from the package’s own upstream), or any other supply-chain attack indicators. A minor bug exists (`$user_dropzone` is used but never defined), but it is not malicious — it would simply result in an empty module dropzone scenario. No genuine security threat is present.
</details>
<evidence></evidence>
<summary>Standard -git PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[4/9] Reviewing PKGBUILD, acore_mod, attach-world, azerothcore-wotlk-git.install...
[5/9] Reviewing acore_mod, attach-world, azerothcore-wotlk-git.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard -git PKGBUILD, no malicious behavior detected.
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a modular compilation and deployment helper for AzerothCore. It locates the build workspace (using `strings` on the installed server binary, which is unusual but not malicious—it extracts a compilation path), creates symlinks for SQL and C++ module sources, copies `.conf.dist` templates, runs `makepkg -edfi` to incrementally rebuild, and restarts the service. All operations are performed with `sudo` where needed, and no external network requests, obfuscated code, or data exfiltration exist. The `strings`/`grep`/`sed` pipeline extracts a path from a metadata string embedded in the binary—it does not execute anything fetched or hidden. The script is consistent with its declared purpose and AUR packaging practices.
</details>
<evidence></evidence>
<summary>No malicious content; safe AUR helper script.</summary>
</security_assessment>

[5/9] Reviewing acore_mod, attach-world, azerothcore-wotlk-git.install, jemalloc.patch...
[6/9] Reviewing attach-world, azerothcore-wotlk-git.install, jemalloc.patch...
+ Reviewed acore_mod. Status: SAFE -- No malicious content; safe AUR helper script.
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch modifies a single line in a jemalloc source file, replacing a non-standard internal function `std::__throw_bad_alloc()` with the standard C++ `throw std::bad_alloc()`. This is a legitimate portability or standards-compliance fix and does not introduce any security issues. There is no network activity, obfuscation, file manipulation, or any other malicious behavior.
</details>
<evidence></evidence>
<summary>Standard C++ patch, no security concerns.</summary>
</security_assessment>

[7/9] Reviewing attach-world, azerothcore-wotlk-git.install...
+ Reviewed jemalloc.patch. Status: SAFE -- Standard C++ patch, no security concerns.
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `azerothcore-wotlk-git.install` is a standard Arch Linux package install script. It performs routine post-installation tasks: creating an unprivileged system user and group, copying default configuration files from `.dist` templates, and modifying config files via `sed`. The use of `sudo` inside the script is redundant (the script already runs as root) but not malicious — it is merely a packaging oversight. The `pre_remove` function safely disables and stops systemd services. No network requests, obfuscated code, unexpected file operations, or exfiltration of data are present. The script follows typical AUR packaging practices for a server application.
</details>
<evidence>
</evidence>
<summary>Standard AUR install script, no malicious behavior.</summary>
</security_assessment>

[8/9] Reviewing attach-world...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Standard AUR install script, no malicious behavior.
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `attach-world` is a simple helper that waits for the AzerothCore world server's Remote Access listener (port 3443) to become active and then opens an interactive netcat connection to it. All commands (`ss`, `grep`, `echo`, `exit`, `nc`) are standard system utilities used as intended. The connection target is `127.0.0.1` (localhost), which is the server's own admin console — not an external or unexpected host. There is no code obfuscation, no network downloads, no data exfiltration, and no tampering with system files. This is a routine packaging convenience script consistent with the application's stated functionality.
</details>
<evidence></evidence>
<summary>Routine admin attachment script, no malicious behavior.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed attach-world. Status: SAFE -- Routine admin attachment script, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,919
  Completion Tokens: 6,152
  Total Tokens: 42,071
  Total Cost: $0.004037
  Execution Time: 227.13 seconds

Final Status: SAFE


No issues found.
