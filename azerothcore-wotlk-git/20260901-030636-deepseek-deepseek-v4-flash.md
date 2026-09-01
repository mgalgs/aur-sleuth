---
package: azerothcore-wotlk-git
pkgver: r19326.cecdf4c4af
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 35915
completion_tokens: 6119
total_tokens: 42034
cost: 0.00389654076
execution_time: 271.79
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: ok
upstream_files: 10356
upstream_named_files: 1
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T03:06:35Z
file_verdicts:
  - file: acore-auth-server.service
    status: safe
    summary: Standard systemd service file, no malicious content.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd service unit, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: acore_mod
    status: safe
    summary: Standard AUR helper script, no malicious content.
  - file: attach-world
    status: safe
    summary: Safe local admin console connector script
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Standard package install script, no malicious behavior found.
  - file: jemalloc.patch
    status: safe
    summary: Innocuous C++ compatibility patch, no malice.
  - file: acore_setup
    status: safe
    summary: Legitimate setup script; SQL injection risk but not a supply-chain attack.
  - file: .SRCINFO
    status: safe
    summary: Standard declarative AUR metadata file, no malicious content.
---

Cloning https://aur.archlinux.org/azerothcore-wotlk-git.git...
Cloned azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope and `pkgver()` function do not contain any code that could execute malicious actions during the `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo` commands. The `pkgver()` function only runs standard git commands (`git rev-list --count HEAD` and `git rev-parse --short HEAD`) to generate a version string, which is safe. The `source` array fetches the upstream git repository from `github.com/azerothcore` and a few static files (service units, scripts) that are part of the AUR package itself. There are no unexpected network requests, no `eval`, `curl`, `wget`, or `base64` decoding, and no obfuscated code. The `prepare()`, `build()`, and `package()` functions are not executed at this stage, so their content is out of scope. No security issues are present for this narrow gate.
</details>
<evidence></evidence>
<summary>Safe for source fetch and parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe for source fetch and parsing.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/azerothcore-wotlk/deps/jemalloc/src/jemalloc_cpp.cpp); they are upstream content and were not reviewed.
Reviewing the 9 file(s) in the AUR repository. The 10356 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, PKGBUILD...
[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service...
LLM auditresponse for acore-auth-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the AzerothCore MMORPG authentication server. It defines a simple service that runs the `authserver` binary as a dedicated user and group, with a restart policy. There are no network requests, obfuscated commands, file operations, or other malicious behaviors. The file follows normal packaging practices for AUR packages that include systemd services.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no malicious content.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard systemd service file, no malicious content.
[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service...
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the AzerothCore MMORPG world server. It defines the service name, dependencies (network and auth server after), execution user/group, working directory, and command to run (`/usr/bin/worldserver`). There are no network requests, obfuscated code, file operations, or dangerous commands. The configuration follows typical AUR packaging practices for a game server daemon. No evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no security issues.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service, acore_mod...
[2/9] Reviewing .SRCINFO, PKGBUILD, acore_mod...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd service unit, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS-based game server package. The source is fetched from the official upstream GitHub repository (`git+https://github.com/azerothcore/azerothcore-wotlk.git#branch=master`). The build process uses `cmake` and `make` with no unusual flags. The `prepare()` function includes checks for conflicting MariaDB packages and enforces MySQL dependencies, which is a legitimate compatibility requirement for the AzerothCore project. The module dropzone feature (`/usr/src/acore-modules`) symlinks user-provided modules for build-time inclusion, which is a normal convenience mechanism. All file installations are scoped to the package directory (`$pkgdir`). No obfuscated code, unexpected network requests, or data exfiltration is present. The `sha512sums` for the git source is `SKIP`, which is expected for VCS packages. The overall code is transparent and consistent with the package's stated purpose.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, PKGBUILD, acore_mod, acore_setup...
[3/9] Reviewing .SRCINFO, acore_mod, acore_setup...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
The `acore_mod` script is an AUR maintainer helper that automates the compilation and deployment of modules for the AzerothCore World of Warcraft server emulator. It performs expected operations: locating the build directory (including from the server binary string metadata, which is a local operation and not exfiltration), managing symlinks for SQL and C++ module sources, copying configuration templates, running `makepkg -edfi --noconfirm` to rebuild and install the package, and restarting the service.

There is no evidence of data exfiltration, downloading and executing code from unexpected origins, obfuscated commands, backdoors, or other malicious behavior. The use of `sudo` and `systemctl` is appropriate for the intended system-level operations. While the script uses the `-e` and `-d` flags with `makepkg`, these are standard packaging shortcuts and not supply-chain attack indicators. The script does not bypass the PKGBUILD source array or introduce untrusted external content at build time.
</details>
<evidence></evidence>
<summary>Standard AUR helper script, no malicious content.</summary>
</security_assessment>

[3/9] Reviewing .SRCINFO, acore_mod, acore_setup, attach-world...
[4/9] Reviewing .SRCINFO, acore_setup, attach-world...
+ Reviewed acore_mod. Status: SAFE -- Standard AUR helper script, no malicious content.
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a convenience utility for attaching to the AzerothCore world server's remote admin console on localhost port 3443. It checks if the port is listening, provides a helpful message if not, and then uses `nc` to connect to the local server. All operations are local and involve no external downloads, obfuscation, or unexpected system modifications. It aligns with standard packaging helper scripts and does not exhibit any malicious behavior.
</details>
<evidence></evidence>
<summary>Safe local admin console connector script</summary>
</security_assessment>

[4/9] Reviewing .SRCINFO, acore_setup, attach-world, azerothcore-wotlk-git.install...
[5/9] Reviewing .SRCINFO, acore_setup, azerothcore-wotlk-git.install...
+ Reviewed attach-world. Status: SAFE -- Safe local admin console connector script
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script performs standard post-install tasks: creating a system user and group, copying default configuration files, and modifying configuration paths with `sed`. The use of `sudo` inside the `post_install` function is redundant (the script already runs as root) but not malicious — it may be a harmless oversight. There are no network requests, no obfuscated code, no dangerous commands like `eval` or `curl`/`wget`, and no exfiltration of data. The `pre_remove` function properly stops and disables services. Overall, the file follows normal AUR packaging practices for a game server daemon.
</details>
<evidence></evidence>
<summary>Standard package install script, no malicious behavior found.</summary>
</security_assessment>

[5/9] Reviewing .SRCINFO, acore_setup, azerothcore-wotlk-git.install, jemalloc.patch...
[6/9] Reviewing .SRCINFO, acore_setup, jemalloc.patch...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Standard package install script, no malicious behavior found.
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies a single line in a jemalloc source file to change the way a bad allocation is thrown, from using a compiler-specific internal function (`std::__throw_bad_alloc()`) to the standard C++ `throw std::bad_alloc()`. This is a common compatibility fix for different C++ standard library implementations. There is no evidence of any malicious behavior: no network requests, obfuscated code, file operations, or system modifications. The patch is purely a build adjustment for the upstream library.
</details>
<evidence></evidence>
<summary>Innocuous C++ compatibility patch, no malice.</summary>
</security_assessment>

[7/9] Reviewing .SRCINFO, acore_setup...
+ Reviewed jemalloc.patch. Status: SAFE -- Innocuous C++ compatibility patch, no malice.
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `acore_setup` is a legitimate administrative setup script for AzerothCore. It performs expected operations: creating a temporary MySQL credentials file with proper cleanup, initializing databases, starting server binaries to trigger schema migrations, and interactively gathering admin account credentials. No network downloads, obfuscated commands, or data exfiltration are present. All network destinations (MySQL, local socket checks) are local. The temporary password file is created with restrictive permissions and deleted via `trap`. The script runs the package's own binaries (`authserver`, `worldserver`) from the expected installation paths.

One coding-quality issue exists: the SQL query that inserts GM level uses string interpolation of the uppercased username (`${SETUP_USER_UPPER}`) without sanitization, making it potentially vulnerable to SQL injection if a malicious username is supplied. However, this script is intended to be run interactively by an administrator, so the risk is limited to self-inflicted harm rather than a supply-chain attack. It does not meet the threshold for UNSAFE as defined in the instructions (no exfiltration, backdoors, or execution of untrusted code).
</details>
<evidence></evidence>
<summary>Legitimate setup script; SQL injection risk but not a supply-chain attack.</summary>
</security_assessment>

[8/9] Reviewing .SRCINFO...
+ Reviewed acore_setup. Status: SAFE -- Legitimate setup script; SQL injection risk but not a supply-chain attack.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a declarative metadata file for an Arch User Repository package. It defines the package name, version, dependencies, sources, and checksums. It contains no executable code, no network requests, no file operations, and no obfuscated content. The source is fetched from the expected upstream GitHub repository (`github.com/azerothcore/azerothcore-wotlk.git`), which is standard for a `-git` package. Checksums are set to `SKIP` for the VCS source, which is normal and expected. All other source files have valid SHA-512 checksums provided. There are no signs of malicious or unusual activity.
</details>
<evidence></evidence>
<summary>Standard declarative AUR metadata file, no malicious content.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard declarative AUR metadata file, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,915
  Completion Tokens: 6,119
  Total Tokens: 42,034
  Total Cost: $0.003897
  Execution Time: 271.79 seconds

Final Status: SAFE


No issues found.
