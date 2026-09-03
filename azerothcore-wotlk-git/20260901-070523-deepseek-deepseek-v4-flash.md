---
package: azerothcore-wotlk-git
pkgver: r19326.cecdf4c4af
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 35915
completion_tokens: 7924
total_tokens: 43839
cost: 0.00418866196
execution_time: 301.5
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: ok
upstream_files: 10356
upstream_named_files: 1
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T07:05:22Z
file_verdicts:
  - file: acore-auth-server.service
    status: safe
    summary: Standard systemd service unit, no security issues found.
  - file: .SRCINFO
    status: safe
    summary: Metadata file, no malicious content found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior detected.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd service file, no security issues.
  - file: acore_mod
    status: safe
    summary: Safe helper script for AzerothCore module compilation.
  - file: attach-world
    status: safe
    summary: Legitimate connectivity helper script for local admin console.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Standard packaging script, no malicious behavior.
  - file: jemalloc.patch
    status: safe
    summary: Benign patch for C++ exception handling.
  - file: acore_setup
    status: safe
    summary: Standard server setup script, no malicious injection detected.
---

Cloning https://aur.archlinux.org/azerothcore-wotlk-git.git...
Cloned azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard AUR packaging elements. The source array fetches the project&#39;s own upstream repository via git+https, which is expected. The `pkgver()` function simply runs `git rev-list` and `git rev-parse` inside the cloned repository — no network operations or dangerous commands. The global scope consists solely of variable assignments and array definitions; no `eval`, `curl`, `wget`, base64 decoding, or obfuscated code is present. The `prepare()`, `build()`, and `package()` functions, which contain the package&#39;s logic (dependency checks, patching, compilation), are not executed during the requested commands (`makepkg --nobuild --nodeps --noprepare`). Therefore, running those commands to fetch sources and source the PKGBUILD carries no risk of executing malicious code.
</details>
<evidence>
</evidence>
<summary>Safe for source fetch and PKGBUILD sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe for source fetch and PKGBUILD sourcing.
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
This file is a standard systemd service unit for the AzerothCore authentication server. It defines a simple service that runs `/usr/bin/authserver` as the `azerothcore` user and `acore-admin` group, with appropriate restart behavior and working directory. There is no sign of any malicious or suspicious activity—no network connections to unexpected hosts, no obfuscated code, no unusual file operations, and no deviation from normal packaging practices for a systemd service.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no security issues found.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service, acore-world-server.service...
[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard systemd service unit, no security issues found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file for an Arch User Repository (AUR) package. It contains no executable code, scripts, or commands. All sources are fetched from the official upstream repository (github.com/azerothcore/azerothcore-wotlk.git) using standard VCS source syntax. The SKIP checksum for the git source is expected for VCS packages. The other source files have pinned SHA512 checksums. There are no signs of obfuscation, suspicious network requests, or malicious instructions. The file adheres to standard AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Metadata file, no malicious content found.</summary>
</security_assessment>

[2/9] Reviewing PKGBUILD, acore-world-server.service...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file, no malicious content found.
[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a VCS (git) source. It clones the official upstream repository, builds with cmake, and installs files into the package directory. There are no suspicious network requests (only the expected git clone), no obfuscated code, and no execution of untrusted content. The `$user_dropzone` variable is undefined, so the conditional module-dropzone loop is effectively a no-op (an empty string is not a directory). The jemalloc patch references `$startdir`, which is a non-standard variable but is likely a leftover from the maintainer's local environment; it does not introduce a supply-chain risk because the patch file must be present alongside the PKGBUILD. No backdoors, data exfiltration, or unexpected behavior is present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod, acore_setup...
[3/9] Reviewing acore-world-server.service, acore_mod, acore_setup...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior detected.
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the AzerothCore world server. It defines the service as a simple type, runs as user `azerothcore` and group `acore-admin`, and starts the `/usr/bin/worldserver` binary. There are no security concerns such as network requests, obfuscation, file modifications, or dangerous commands. The file follows normal packaging practices for a server application.
</details>
<evidence>
</evidence>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[3/9] Reviewing acore-world-server.service, acore_mod, acore_setup, attach-world...
[4/9] Reviewing acore_mod, acore_setup, attach-world...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd service file, no security issues.
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `acore_mod` is a helper that automates incremental compilation and deployment of modules for the AzerothCore server. It locates the build workspace by checking the current directory or by reading the compilation path from the installed server binary (a heuristic, not a threat). It then manages symlinks for SQL and C++ module sources, copies missing configuration files to `/etc/azerothcore/`, runs `makepkg -edfi --noconfirm` to rebuild the package without fetching sources, and restarts the server service. All operations are confined to the application's standard directories and use expected tools (makepkg, systemctl, sudo). There is no obfuscated code, no unexpected network requests, no data exfiltration, and no execution of untrusted content. The behavior is consistent with a legitimate AUR maintainer helper script.
</details>
<evidence>
</evidence>
<summary>Safe helper script for AzerothCore module compilation.</summary>
</security_assessment>

[4/9] Reviewing acore_mod, acore_setup, attach-world, azerothcore-wotlk-git.install...
[5/9] Reviewing acore_setup, attach-world, azerothcore-wotlk-git.install...
+ Reviewed acore_mod. Status: SAFE -- Safe helper script for AzerothCore module compilation.
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
This script checks whether a local TCP port (3443) is open and then connects to it via netcat (`nc -C 127.0.0.1 3443`). The port is documented as the "Remote Access" listener for the AzerothCore world server, which is a standard component of the upstream project. There is no exfiltration of data, no download or execution of external code, and no obfuscation. The script operates entirely on localhost and performs only a trivial connection action after verifying the service is ready. This is consistent with the intended use of interacting with the AzerothCore admin console.</details>
<evidence></evidence>
<summary>Legitimate connectivity helper script for local admin console.</summary>
</security_assessment>

[5/9] Reviewing acore_setup, attach-world, azerothcore-wotlk-git.install, jemalloc.patch...
[6/9] Reviewing acore_setup, azerothcore-wotlk-git.install, jemalloc.patch...
+ Reviewed attach-world. Status: SAFE -- Legitimate connectivity helper script for local admin console.
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script performs standard post-installation tasks for a game server daemon: creating an unprivileged system user and group, copying default configuration templates, modifying configuration files, and managing systemd services. The use of `sudo` inside a script that runs as root is redundant but not malicious. There are no network requests, downloads, obfuscated code, or operations outside the package's scope. All actions are consistent with normal packaging practices for a daemon that requires a dedicated user and group.
</details>
<evidence></evidence>
<summary>Standard packaging script, no malicious behavior.</summary>
</security_assessment>

[7/9] Reviewing acore_setup, jemalloc.patch...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Standard packaging script, no malicious behavior.
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The provided file is a patch that modifies a single line in a jemalloc source file, changing `std::__throw_bad_alloc();` to `throw std::bad_alloc();`. This is a routine compatibility fix, likely to address compilation errors with certain C++ standard library implementations. No network requests, obfuscated code, or suspicious operations are present. The change is consistent with standard packaging or upstream patching practices and does not introduce any malicious behavior.
</details>
<evidence>
</evidence>
<summary>Benign patch for C++ exception handling.</summary>
</security_assessment>

[8/9] Reviewing acore_setup...
+ Reviewed jemalloc.patch. Status: SAFE -- Benign patch for C++ exception handling.
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a setup script for the AzerothCore World of Warcraft server, intended to be run with root privileges by an administrator. It performs standard initialization tasks: connecting to MySQL with user-provided credentials, creating databases, modifying configuration files in `/etc/azerothcore/`, launching the `authserver` binary to populate schemas, and then starting `worldserver` in the foreground to allow account creation. After `worldserver` exits, it elevates the new account to Game Master status via SQL.

**No evidence of malicious supply-chain activity was found.** The script does not download any code or binaries from external sources, no obfuscated commands are present, and all network interactions are limited to the local MySQL server and the AzerothCore binaries themselves (which are expected packaged components). The script uses a temporary MySQL credentials file with restrictive permissions and sets up a trap for cleanup, which is standard practice.

One noteworthy **local security concern** exists: the SQL query that elevates the account uses string interpolation of user-supplied input (`SETUP_USER_UPPER`) without escaping. This creates a SQL injection vulnerability. However, the script is designed to be run by the system administrator on their own machine to configure their own server; any exploitation would require the admin to intentionally inject malicious input into their own username prompt. This is a hygiene issue, not a supply-chain attack, and does not meet the threshold for marking the file UNSAFE under these audit criteria.

All other operations (file modifications, binary execution, service configuration) are consistent with the package's stated purpose and standard AUR/packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard server setup script, no malicious injection detected.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed acore_setup. Status: SAFE -- Standard server setup script, no malicious injection detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,915
  Completion Tokens: 7,924
  Total Tokens: 43,839
  Total Cost: $0.004189
  Execution Time: 301.50 seconds

Final Status: SAFE


No issues found.
