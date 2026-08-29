---
package: azerothcore-wotlk-git
pkgver: r19296.2fed8b96e4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 35998
completion_tokens: 5476
total_tokens: 41474
cost: 0.00390436200
execution_time: 351.87
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: ok
upstream_files: 10342
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-29T15:22:20Z
file_verdicts:
  - file: acore-auth-server.service
    status: safe
    summary: Standard systemd service file; no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file; no security issues.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd service unit, no security concerns.
  - file: acore_mod
    status: safe
    summary: Legitimate AUR automation script, no malicious code found.
  - file: attach-world
    status: safe
    summary: Safe helper script for local admin console.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Standard package install script; no malicious or suspicious behavior found.
  - file: jemalloc.patch
    status: safe
    summary: Benign C++ compatibility patch; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: acore_setup
    status: safe
    summary: Legitimate server setup script, no malicious indicators.
---

Cloning https://aur.archlinux.org/azerothcore-wotlk-git.git...
Cloned azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch VCS package that fetches its source from the official upstream GitHub repository (`git+https://github.com/azerothcore/azerothcore-wotlk.git#branch=master`) and several local supporting files (service units, scripts). The only code executed during `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is the `source` array fetch (git clone and file extraction) and the `pkgver()` function, which runs benign `git rev-list` and `git rev-parse` commands against the already-cloned local repository. There are no suspicious network requests, no obfuscated commands, no eval, no unexpected downloads, and no code that exfiltrates data. All operations are consistent with normal AUR packaging practices for a -git package. While the `prepare()`, `build()`, and `package()` functions contain dependency checks and build logic, they are **not** executed by the two commands in scope (due to `--noprepare` and `--nobuild`). Therefore, running these commands is safe.
</details>
<evidence></evidence>
<summary>Safe: standard VCS package, no malicious code in scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: standard VCS package, no malicious code in scope.
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
This is a standard systemd service unit file for the AzerothCore authentication server. It defines a simple service that runs `/usr/bin/authserver` as the `azerothcore` user and `acore-admin` group, with the working directory set to `/usr/share/azerothcore`. There are no network requests, code execution, obfuscation, or any deviation from normal packaging practices. The file is benign and follows the expected format for a systemd service.
</details>
<evidence></evidence>
<summary>Standard systemd service file; no security issues.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard systemd service file; no security issues.
[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file. It defines the package source as a git repository from `github.com/azerothcore/azerothcore-wotlk.git` (the project's own upstream), along with several static helper files that have proper SHA-512 checksums. The VCS git source has a `SKIP` checksum, which is required for VCS sources and is normal practice. There is no embedded code, no suspicious URLs, no network connections beyond fetching the declared upstream, and no signs of obfuscation or malicious intent. The content is entirely metadata and meets standard packaging conventions.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file; no security issues.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service, acore_mod...
[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file; no security issues.
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the AzerothCore MMORPG world server. It defines the service type, user/group, working directory, and the executable to run (`/usr/bin/worldserver`). There are no network requests, obfuscated code, unexpected file operations, or any instructions that deviate from normal packaging practices. The service follows typical AUR and systemd conventions and does not contain any malicious behavior.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no security concerns.</summary>
</security_assessment>

[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod, acore_setup...
[3/9] Reviewing PKGBUILD, acore_mod, acore_setup...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd service unit, no security concerns.
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `acore_mod` is an AUR maintainer helper script that automates module compilation and deployment for the AzerothCore World of Warcraft server. It performs the following standard operations:
- Locates the build directory (either by current directory or by extracting the compile path from the installed server binary via `strings` – unconventional but not malicious).
- Removes old symlinks from production and build workspace module directories.
- Scans `/usr/src/acore-modules` for user modules and creates symlinks for SQL migration files and C++ source code.
- Copies `.conf.dist` configuration templates to `/etc/azerothcore/` if they do not exist.
- Runs `makepkg -edfi --noconfirm` to perform an incremental build and install (the `-d` flag skips dependency checks, which is a convenience for developers who already have dependencies installed; this is not malicious).
- Restarts the `acore-world-server` systemd service.

No network requests, obfuscated code, eval, or other malicious indicators are present. The script is consistent with legitimate AUR packaging practices and does not exhibit supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Legitimate AUR automation script, no malicious code found.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, acore_mod, acore_setup, attach-world...
[4/9] Reviewing PKGBUILD, acore_setup, attach-world...
+ Reviewed acore_mod. Status: SAFE -- Legitimate AUR automation script, no malicious code found.
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a helper to attach to the AzerothCore world server's Remote Access console. It checks if the local port 3443 is listening (using `ss`) and then connects via `nc` to 127.0.0.1:3443. There is no network activity to external hosts, no downloads, no obfuscation, no file system manipulation beyond checking a socket. It is a normal utility script for interacting with the game server's admin interface. No evidence of supply-chain compromise.
</details>
<evidence></evidence>
<summary>Safe helper script for local admin console.</summary>
</security_assessment>

[4/9] Reviewing PKGBUILD, acore_setup, attach-world, azerothcore-wotlk-git.install...
[5/9] Reviewing PKGBUILD, acore_setup, azerothcore-wotlk-git.install...
+ Reviewed attach-world. Status: SAFE -- Safe helper script for local admin console.
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install script performs standard packaging operations: creating an unprivileged system user, creating a group, adding the user to that group, copying default configuration templates, and using sed to set a configuration path within the package's own config directory (/etc/azerothcore). The pre_remove hook stops and disables the package's own systemd services, which is normal cleanup behavior. All operations are confined to the package's own scope; there are no network requests, no execution of downloaded code, no obfuscation, and no access to sensitive data. Use of `sudo` in a post_install script is unusual but not malicious—the script generally runs as root in pacman hooks, and the commands only target the package's own config files. Overall, the file is consistent with legitimate AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard package install script; no malicious or suspicious behavior found.</summary>
</security_assessment>

[5/9] Reviewing PKGBUILD, acore_setup, azerothcore-wotlk-git.install, jemalloc.patch...
[6/9] Reviewing PKGBUILD, acore_setup, jemalloc.patch...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Standard package install script; no malicious or suspicious behavior found.
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies a single line in a jemalloc C++ source file, replacing a GCC-internal call (`std::__throw_bad_alloc()`) with the standard C++ expression (`throw std::bad_alloc()`). This is a routine compatibility improvement for building with modern compilers or standard libraries. No network requests, obfuscation, dangerous commands, or any other indicators of a supply‑chain attack are present. The change is entirely within the upstream application code and serves the application’s stated purpose.
</details>
<evidence></evidence>
<summary>Benign C++ compatibility patch; no security concerns.</summary>
</security_assessment>

[7/9] Reviewing PKGBUILD, acore_setup...
+ Reviewed jemalloc.patch. Status: SAFE -- Benign C++ compatibility patch; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package that builds the AzerothCore MMORPG server from the official GitHub repository. All operations are limited to cloning the upstream source, building it with CMake and clang, and installing the resulting binaries and configuration files into the package staging directory. There are no network requests to unexpected hosts, no encoded or obfuscated commands, no attempts to exfiltrate data, and no execution of untrusted code beyond the declared upstream source. The undefined `$user_dropzone` variable in `prepare()` is a harmless bug (likely a typo for `$ACORE_DROPZONE`) that simply skips the module symlink step; it does not introduce a vulnerability. The world-writable module dropzone at `/usr/src/acore-modules` is a deliberate design choice to allow user-supplied modules, not a supply-chain attack. Overall, this PKGBUILD shows no signs of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[8/9] Reviewing acore_setup...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `acore_setup` is a standard administrative provisioning script for the AzerothCore WoW emulator server. It performs expected initialization tasks: connecting to a local MySQL database with user-provided credentials (stored securely in a temporary file cleaned up on exit), running SQL schema scripts from the package's own data directory, modifying its own configuration files, and launching the authserver and worldserver binaries to perform database migrations and account creation. There are no suspicious network requests, obfuscated code, unexpected file operations, or attempts to exfiltrate data. All operations are confined to the package's own database, binaries, and configuration files, consistent with the package's stated purpose of provisioning a game server.
</details>
<evidence>
</evidence>
<summary>Legitimate server setup script, no malicious indicators.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed acore_setup. Status: SAFE -- Legitimate server setup script, no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,998
  Completion Tokens: 5,476
  Total Tokens: 41,474
  Total Cost: $0.003904
  Execution Time: 351.87 seconds

Final Status: SAFE


No issues found.
