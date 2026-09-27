---
package: azerothcore-wotlk-git
pkgver: r19691.d80ce1d877
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 35922
completion_tokens: 5444
total_tokens: 41366
cost: 0.0021953890
execution_time: 46.84
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-27T07:09:56Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
  - file: acore-auth-server.service
    status: safe
    summary: Standard systemd service file, no issues.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd service unit file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Safe PKGBUILD with no malicious code.
  - file: attach-world
    status: safe
    summary: Standard admin console helper script, no security issues.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Standard package setup, no malicious code.
  - file: acore_setup
    status: safe
    summary: Legitimate setup script; no malicious code found.
  - file: jemalloc.patch
    status: safe
    summary: Standard exception handling patch, no security issues.
  - file: acore_mod
    status: safe
    summary: Legitimate AUR helper script; no malicious behavior found.
---

Materializing azerothcore-wotlk-git from local mirror...
Materialized azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable and array definitions (pkgdesc, source, sha512sums, depends, etc.) and comments. There are no command substitutions, backticks, eval, curl, wget, or any other code execution at the top level. The `pkgver()`, `prepare()`, `build()`, and `package()` functions are defined but are not executed during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD to print metadata poses no risk.
</details>
<evidence></evidence>
<summary>Top-level code is static; no runtime execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code is static; no runtime execution risk.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, PKGBUILD...
[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR package metadata file. It declares the package name, version, sources, checksums, dependencies, and other metadata. All sources point to the project's own upstream repository (`github.com/azerothcore/azerothcore-wotlk.git`) or local auxiliary files. The VCS source has `sha512sums = SKIP`, which is normal for git-based packages. No suspicious URLs, obfuscated commands, or unexpected operations are present. This file contains no executable logic and follows standard packaging practices.
</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service, acore-world-server.service...
[1/9] Reviewing PKGBUILD, acore-auth-server.service, acore-world-server.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
LLM auditresponse for acore-auth-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the AzerothCore MMORPG authentication server. It defines a simple service that runs the `/usr/bin/authserver` binary as a dedicated user and group. There are no network requests, downloads, obfuscated commands, file manipulations, or any other potentially malicious operations. The file follows normal packaging practices for a systemd-managed game server.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no issues.</summary>
</security_assessment>

[1/9] Reviewing PKGBUILD, acore-auth-server.service, acore-world-server.service, acore_mod...
[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard systemd service file, no issues.
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the AzerothCore MMORPG world server. It defines a simple service that runs `/usr/bin/worldserver` as the `azerothcore` user and `acore-admin` group, with a `WorkingDirectory` of `/usr/share/azerothcore`. The file contains no executable code, no network requests, no obfuscated content, and no file operations beyond standard service configuration. The `After=network.target` and `Restart=on-failure` directives are normal and expected for a server daemon. There is no evidence of malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Standard systemd service unit file, no security issues.</summary>
</security_assessment>

[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod, acore_setup...
[3/9] Reviewing PKGBUILD, acore_mod, acore_setup...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd service unit file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It fetches the source from the official upstream GitHub repository (github.com/azerothcore/azerothcore-wotlk.git#branch=master), which is expected. Checksums are set to SKIP for the VCS source, which is normal. The prepare() function only checks for conflicting local packages (MariaDB) and creates symlinks for user-provided modules from a dropzone directory; these operations are local and benign. The build() and package() functions use standard CMake and install commands without any obfuscation, unexpected network calls, or data exfiltration. The config file written is purely metadata about the build directory. No evidence of supply-chain attack or malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>Safe PKGBUILD with no malicious code.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, acore_mod, acore_setup, attach-world...
[4/9] Reviewing acore_mod, acore_setup, attach-world...
+ Reviewed PKGBUILD. Status: SAFE -- Safe PKGBUILD with no malicious code.
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `attach-world` is a simple helper to connect to a local AzerothCore world server's admin console via netcat on port 3443 (localhost only). It first checks if the port is listening, and if not, prints informative messages and exits. There are no network requests to external hosts, no dangerous command usage (curl, wget, eval, base64, etc.), and no file system manipulation beyond standard output. This is a normal convenience script for AUR packages providing game server administration tools.
</details>
<evidence>
</evidence>
<summary>Standard admin console helper script, no security issues.</summary>
</security_assessment>

[4/9] Reviewing acore_mod, acore_setup, attach-world, azerothcore-wotlk-git.install...
[5/9] Reviewing acore_mod, acore_setup, azerothcore-wotlk-git.install...
+ Reviewed attach-world. Status: SAFE -- Standard admin console helper script, no security issues.
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This install script performs standard package management tasks: creating a dedicated system user and group for the AzerothCore server, copying default configuration files from `.dist` templates, and managing systemd services on upgrade or removal. It also displays informative post-installation instructions to the user. The use of `sudo` inside a script that already runs as root is redundant but not malicious. No external network requests, encoded commands, file exfiltration, or backdoors are present. The script only operates on the package’s own files and system accounts, consistent with expected packaging practices.
</details>
<evidence></evidence>
<summary>Standard package setup, no malicious code.</summary>
</security_assessment>

[5/9] Reviewing acore_mod, acore_setup, azerothcore-wotlk-git.install, jemalloc.patch...
[6/9] Reviewing acore_mod, acore_setup, jemalloc.patch...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Standard package setup, no malicious code.
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
The `acore_setup` script is a legitimate administrative setup tool for the AzerothCore World of Warcraft emulator. It performs expected initialization tasks:
- Prompts for MySQL root password and stores it in a temporary file with restrictive permissions (`chmod 600`) and automatic cleanup via a trap.
- Runs SQL scripts from the package's own data directory to create databases and apply schema migrations.
- Launches the `authserver` binary and polls port 3724 to wait for migrations to complete.
- Prompts the admin for a username/password, then launches the `worldserver` binary in the foreground for map extraction.
- After worldserver exits, it elevates the created account to GM status via SQL.

No evidence of supply-chain attack or malicious behavior:
- No obfuscated code, no base64/hex encoding, no eval.
- No downloads from unexpected sources – all paths reference `/usr/bin/authserver`, `/usr/bin/worldserver`, and `/usr/share/azerothcore/`.
- No exfiltration of data; the MySQL credentials are handled locally and securely.
- The SQL injection risk in the `SQL_AUTO_ELEVATE` query is a code quality issue (unquoted username interpolation) but does not constitute an intentionally malicious backdoor or supply-chain attack. The script is intended to be run interactively by the system administrator.

Therefore the file is SAFE.
</details>
<evidence>
</evidence>
<summary>
Legitimate setup script; no malicious code found.
</summary>
</security_assessment>

[7/9] Reviewing acore_mod, jemalloc.patch...
+ Reviewed acore_setup. Status: SAFE -- Legitimate setup script; no malicious code found.
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a patch that makes a trivial change to exception handling in jemalloc: replacing a non-standard compiler intrinsic (`std::__throw_bad_alloc()`) with the standard C++ `throw std::bad_alloc()`. This is a common and harmless code improvement that does not involve any network requests, file operations, obfuscation, or other security concerns. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard exception handling patch, no security issues.</summary>
</security_assessment>

[8/9] Reviewing acore_mod...
+ Reviewed jemalloc.patch. Status: SAFE -- Standard exception handling patch, no security issues.
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a helper for compiling and deploying modules for the AzerothCore WoW emulator. It locates the build directory (either from the current working directory or by scanning the installed worldserver binary for the compilation path), manages symlinks for SQL and C++ module sources, copies new configuration templates, runs `makepkg -edfi --noconfirm` to rebuild the package locally, and restarts the service. All operations are confined to the package&#39;s own directories and standard AUR build workflow. There is no obfuscated code, no network requests to unexpected hosts, no exfiltration of sensitive data, and no execution of untrusted downloaded content. The use of `strings` to extract a path from the binary is unconventional but not malicious. The `makepkg -edfi` flags are typical for rebuilding VCS packages where integrity checks are already handled by the source type. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Legitimate AUR helper script; no malicious behavior found.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed acore_mod. Status: SAFE -- Legitimate AUR helper script; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,922
  Completion Tokens: 5,444
  Total Tokens: 41,366
  Total Cost: $0.002195
  Execution Time: 46.84 seconds

Final Status: SAFE


No issues found.
