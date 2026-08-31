---
package: azerothcore-wotlk-git
pkgver: r19313.7e18ca5b8d
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 36001
completion_tokens: 7412
total_tokens: 43413
cost: 0.004503399950
execution_time: 265.78
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: ok
upstream_files: 10350
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-31T07:15:13Z
file_verdicts:
  - file: acore-auth-server.service
    status: safe
    summary: Standard systemd service unit file, no risks.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd service file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious indicators.
  - file: acore_setup
    status: safe
    summary: Legitimate AUR package setup script.
  - file: attach-world
    status: safe
    summary: Clean helper script for connecting to local server admin console.
  - file: jemalloc.patch
    status: safe
    summary: Legitimate patch for compiler compatibility
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Standard install script with no malicious content.
  - file: acore_mod
    status: safe
    summary: Helper script for compiling AzerothCore modules; no malicious or suspicious behavior found.
---

Cloning https://aur.archlinux.org/azerothcore-wotlk-git.git...
Cloned azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no top-level command substitutions, backticks, or other code that would execute during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The global scope only defines variables and arrays. The `pkgver()` function simply runs standard `git rev-list` and `git rev-parse` commands on the freshly cloned upstream repository, which is normal for VCS packages. The `source` array points to the official upstream GitHub repository and local service/script files included with the AUR package; none of these are executed during the source-fetching phase. No `eval`, `base64`, `curl | bash`, or network requests to unexpected hosts are present. Therefore, running the specified commands is safe.
</details>
<evidence></evidence>
<summary>Safe source fetching, no malicious code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe source fetching, no malicious code.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/azerothcore-wotlk/deps/jemalloc/src/jemalloc_cpp.cpp); they are upstream content and were not reviewed.
Reviewing the 9 file(s) in the AUR repository. The 10350 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, PKGBUILD...
[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service...
LLM auditresponse for acore-auth-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for running the AzerothCore authentication server. It contains no elements that deviate from typical packaging practices. No network requests, code execution, obfuscation, or suspicious file operations are present. The service simply specifies the executable path, working directory, and user/group.</details>
<evidence></evidence>
<summary>Standard systemd service unit file, no risks.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service, acore-world-server.service...
[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard systemd service unit file, no risks.
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the AzerothCore MMORPG world server. It defines a simple service that runs `/usr/bin/worldserver` as the `azerothcore` user and `acore-admin` group, with the working directory set to `/usr/share/azerothcore`. The file follows typical packaging conventions for systemd services: it declares dependencies on `network.target` and `acore-auth-server.service`, enables restart on failure, and installs the service to `multi-user.target`. There are no suspicious commands, network requests, obfuscated code, or unexpected system modifications. The file is benign and consistent with normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no malicious content.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service, acore_mod...
[2/9] Reviewing .SRCINFO, PKGBUILD, acore_mod...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd service file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a VCS-based package. It clones the official upstream repository (azerothcore/azerothcore-wotlk), runs CMake with clang, and installs the built components along with auxiliary scripts and systemd service files. There are no suspicious network requests, no obfuscated code, no attempts to exfiltrate data, and no unexpected file operations outside the package's own scope. The only minor hygiene issue is the undefined variable `user_dropzone`, which would simply cause the optional module-linking logic to be skipped—this is a packaging bug, not a supply-chain attack. The patch application and config file generation are normal for AUR packages.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, PKGBUILD, acore_mod, acore_setup...
[3/9] Reviewing .SRCINFO, acore_mod, acore_setup...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the `.SRCINFO` metadata for the `azerothcore-wotlk-git` AUR package. It contains package description, dependencies, sources, and checksums. The only VCS source (`git+https://github.com/azerothcore/azerothcore-wotlk.git`) uses `SKIP` for the checksum, which is standard and expected for Git-based packages. All other static sources have verified SHA-512 checksums. There are no embedded commands, obfuscated content, network requests, or any indication of malicious behavior. The file conforms to normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious indicators.</summary>
</security_assessment>

[3/9] Reviewing .SRCINFO, acore_mod, acore_setup, attach-world...
[4/9] Reviewing acore_mod, acore_setup, attach-world...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious indicators.
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a legitimate setup utility for the AzerothCore World of Warcraft server emulator. It performs standard initialization steps: asking for MySQL root credentials, creating a temporary credentials file with proper cleanup (`trap` and `chmod 600`), executing the package's own SQL scripts from `/usr/share/azerothcore/data/sql/create/`, adjusting configuration files in `/etc/azerothcore/`, starting the `authserver` binary to trigger schema migrations, and then launching `worldserver` to complete setup and prompt the user to create an admin account. The script does not make any network requests to external hosts, download any code, use obfuscated or encoded commands, or perform any file operations outside the package's own directories. All commands are consistent with normal package management and server setup workflows. No malicious or suspicious behavior is present.</details>
<evidence></evidence>
<summary>Legitimate AUR package setup script.</summary>
</security_assessment>

[4/9] Reviewing acore_mod, acore_setup, attach-world, azerothcore-wotlk-git.install...
[5/9] Reviewing acore_mod, attach-world, azerothcore-wotlk-git.install...
+ Reviewed acore_setup. Status: SAFE -- Legitimate AUR package setup script.
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `attach-world` is a simple helper that checks whether the AzerothCore world server's remote access port (3443) is listening on localhost, and if so, connects to it via netcat. This is a standard utility for administrators to interact with the server's administrative console. It does not make any external network requests, download or execute code from remote sources, exfiltrate data, or perform any obfuscated operations. All commands are benign and directly related to the package's intended functionality. No evidence of malicious or supply-chain attack behavior is present.
</details>
<evidence>
</evidence>
<summary>
Clean helper script for connecting to local server admin console.
</summary>
</security_assessment>

[5/9] Reviewing acore_mod, attach-world, azerothcore-wotlk-git.install, jemalloc.patch...
[6/9] Reviewing acore_mod, azerothcore-wotlk-git.install, jemalloc.patch...
+ Reviewed attach-world. Status: SAFE -- Clean helper script for connecting to local server admin console.
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch file `jemalloc.patch` is a standard diff that changes a single line in a C++ source file to replace a compiler-specific internal function (`std::__throw_bad_alloc()`) with the standard C++ exception throw (`throw std::bad_alloc()`). This is a common compatibility fix for compiling with different compilers (e.g., GCC vs Clang). There is no obfuscation, no network requests, no file operations, and no system modifications. The patch is entirely benign and follows normal packaging practices for fixing upstream code.
</details>
<evidence></evidence>
<summary>Legitimate patch for compiler compatibility</summary>
</security_assessment>

[7/9] Reviewing acore_mod, azerothcore-wotlk-git.install...
+ Reviewed jemalloc.patch. Status: SAFE -- Legitimate patch for compiler compatibility
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux `.install` script for the `azerothcore-wotlk-git` package. It performs routine system administration tasks: creating a dedicated unprivileged user and group, copying default configuration files (from `.dist` templates if they do not already exist), and managing systemd services on removal. The use of `sudo` inside the script is unnecessary (the script already runs as root) but is not malicious — it simply modifies application configuration files to set a path. There are no network requests, obfuscated commands, or attempts to fetch or execute external code. The script also displays informational messages to the user. All operations are within the expected scope of a server package installation.
</details>
<evidence>
</evidence>
<summary>Standard install script with no malicious content.</summary>
</security_assessment>

[8/9] Reviewing acore_mod...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Standard install script with no malicious content.
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a maintainer/developer helper script for the `azerothcore-wotlk-git` AUR package. It locates the package build directory, symlinks user-provided modules from `/usr/src/acore-modules` into the build tree and SQL updates directory, copies `.conf.dist` templates into `/etc/azerothcore/`, runs `makepkg -edfi --noconfirm`, and restarts the `acore-world-server` service. These operations match the script's stated purpose and operate only on the package's own directories, build workspace, and service.

No genuinely malicious behavior is present: there are no network fetches or `curl|bash`, no obfuscated or encoded commands, no `eval`, no data exfiltration, and no writes to unrelated system areas beyond the package's own configuration/build locations. The use of `sudo find ... -delete` for stale symlinks is aggressive but confined to the package's SQL updates directory, and the `makepkg -d` flag is a reproducibility/hygiene concern, not evidence of a supply-chain attack. Overall this is an ordinary, if powerful, packaging helper script.
</details>
<evidence></evidence>
<summary>Helper script for compiling AzerothCore modules; no malicious or suspicious behavior found.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed acore_mod. Status: SAFE -- Helper script for compiling AzerothCore modules; no malicious or suspicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,001
  Completion Tokens: 7,412
  Total Tokens: 43,413
  Total Cost: $0.004503
  Execution Time: 265.78 seconds

Final Status: SAFE


No issues found.
