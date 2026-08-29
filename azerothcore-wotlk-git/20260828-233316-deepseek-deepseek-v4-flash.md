---
package: azerothcore-wotlk-git
pkgver: r19295.73a301904a
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 35917
completion_tokens: 5143
total_tokens: 41060
cost: 0.00399748356
execution_time: 385.39
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: ok
upstream_files: 10342
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-28T23:33:15Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd service file; no security issues.
  - file: acore_mod
    status: safe
    summary: Legitimate AUR helper script, no malicious behavior.
  - file: acore_setup
    status: safe
    summary: Standard server setup script, no malicious behavior.
  - file: attach-world
    status: safe
    summary: Safe convenience script for local admin console connection.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Standard AUR install script, no malicious behavior.
  - file: jemalloc.patch
    status: safe
    summary: Simple compatibility patch, no security issues.
  - file: acore-auth-server.service
    status: safe
    summary: Standard service file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with standard build and install steps.
---

Cloning https://aur.archlinux.org/azerothcore-wotlk-git.git...
Cloned azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard variable assignments, arrays, and a `pkgver()` function that runs benign git commands on the already-cloned source. The source array fetches the upstream git repository over HTTPS and includes local files with valid checksums. There are no top-level command substitutions, no `eval`, no downloads from unexpected hosts, and no obfuscated code. The functions `prepare()`, `build()`, and `package()` are not executed under `makepkg --nobuild --nodeps --noprepare`. Thus, no risk is introduced during source fetching and PKGBUILD parsing.
</details>
<evidence></evidence>
<summary>Safe: only standard VCS packaging, no immediate execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: only standard VCS packaging, no immediate execution risk.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/azerothcore-wotlk/deps/jemalloc/src/jemalloc_cpp.cpp); they are upstream content and were not reviewed.
Reviewing the 9 file(s) in the AUR repository. The 10342 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, PKGBUILD...
[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR metadata file that declares package metadata, dependencies, sources, and checksums. The primary source is a git repository from the official upstream (`github.com/azerothcore/azerothcore-wotlk.git`). The `sha512sums` for the git source is `SKIP`, which is normal and expected for VCS-based packages. All other source files have valid SHA512 checksums. There are no suspicious network requests, encoded commands, or file operations beyond standard packaging declarations. The file contains no executable code or instructions that could be interpreted as malicious. It adheres to typical AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service, acore-world-server.service...
[1/9] Reviewing PKGBUILD, acore-auth-server.service, acore-world-server.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the AzerothCore World Server. It defines a simple service that runs `/usr/bin/worldserver` as the `azerothcore` user. All directives are routine: `After=network.target acore-auth-server.service` ensures proper ordering, `Restart=on-failure` is normal for server processes, and `WantedBy=multi-user.target` is standard. There is no embedded scripting, network fetches, obfuscated code, or any operation that deviates from ordinary packaging. No security concerns.
</details>
<evidence></evidence>
<summary>Standard systemd service file; no security issues.</summary>
</security_assessment>

[2/9] Reviewing PKGBUILD, acore-auth-server.service...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd service file; no security issues.
[2/9] Reviewing PKGBUILD, acore-auth-server.service, acore_mod...
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard AUR helper for compiling and deploying AzerothCore modules. It performs local file operations (symlink management, config file copying, and incremental compilation via `makepkg`) all within expected system paths (`/usr/src/acore-modules/`, `/usr/share/azerothcore/`, `/etc/azerothcore/`). There are no network requests, obfuscated commands, or exfiltration of data. The use of `sudo` and `systemctl` is appropriate for system-level actions. The dynamic discovery of the build directory via `strings` on the binary is unconventional but benign. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Legitimate AUR helper script, no malicious behavior.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, acore-auth-server.service...
+ Reviewed acore_mod. Status: SAFE -- Legitimate AUR helper script, no malicious behavior.
[3/9] Reviewing PKGBUILD, acore-auth-server.service, acore_setup...
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `acore_setup` is a standard administrative setup script for the AzerothCore World of Warcraft emulator. It runs with root privileges to configure MySQL databases, modify `/etc/azerothcore/` configuration files, and launch server binaries. All operations are confined to the package's own data files and MySQL databases. The temporary MySQL credentials file is created with secure permissions and cleaned up via a trap. There are no network requests, obfuscated commands, backdoors, or attempts to access sensitive system data outside the application's scope. The behavior is consistent with legitimate server provisioning for AzerothCore.
</details>
<evidence>
</evidence>
<summary>Standard server setup script, no malicious behavior.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, acore-auth-server.service, acore_setup, attach-world...
[4/9] Reviewing PKGBUILD, acore-auth-server.service, attach-world...
+ Reviewed acore_setup. Status: SAFE -- Standard server setup script, no malicious behavior.
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `attach-world` is a convenience helper that checks whether the local world server process (AzerothCore) has started its Remote Access listener on port 3443, and if so, connects to it via `nc` (netcat) on `127.0.0.1`. All operations are local; no network connections to external hosts, no data exfiltration, no code downloads, and no obfuscation. The script is consistent with normal packaging to provide an easy way to attach to an administrative console. There is no evidence of malicious or injected code.
</details>
<evidence>
</evidence>
<summary>
Safe convenience script for local admin console connection.
</summary>
</security_assessment>

[4/9] Reviewing PKGBUILD, acore-auth-server.service, attach-world, azerothcore-wotlk-git.install...
[5/9] Reviewing PKGBUILD, acore-auth-server.service, azerothcore-wotlk-git.install...
+ Reviewed attach-world. Status: SAFE -- Safe convenience script for local admin console connection.
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.install` script for the azerothcore-wotlk-git package. It performs expected post-installation tasks: creating a dedicated system user and group, copying default configuration templates if absent, adjusting a configuration path via `sed`, and managing systemd services during removal. The use of `sudo` inside the `sed` commands is unconventional (the script already runs as root), but it is not malicious—it merely adds unnecessary overhead. No network requests, obfuscated code, or data exfiltration is present. All operations are local to the system and serve the package’s stated purpose.
</details>
<evidence></evidence>
<summary>Standard AUR install script, no malicious behavior.</summary>
</security_assessment>

[6/9] Reviewing PKGBUILD, acore-auth-server.service...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Standard AUR install script, no malicious behavior.
[6/9] Reviewing PKGBUILD, acore-auth-server.service, jemalloc.patch...
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies a single line injemalloc_cpp.cpp, replacing a non-standard `std::__throw_bad_alloc()` call with the standard `throw std::bad_alloc()`. This is a compatibility or cleanup change typical in package patches. There is no evidence of malicious behavior: no network requests, obfuscation, unusual file operations, or execution of untrusted code. The patch only affects internal exception handling in the upstream jemalloc library and is consistent with standard packaging practices.
</details>
<evidence>
</evidence>
<summary>Simple compatibility patch, no security issues.</summary>
</security_assessment>

[7/9] Reviewing PKGBUILD, acore-auth-server.service...
+ Reviewed jemalloc.patch. Status: SAFE -- Simple compatibility patch, no security issues.
LLM auditresponse for acore-auth-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the AzerothCore MMORPG authentication server. It defines a simple service that runs `/usr/bin/authserver` under the `azerothcore` user and `acore-admin` group, with restart behavior on failure. There are no network connections, no code execution from untrusted sources, no obfuscation, and no unexpected file operations. The file conforms to typical packaging practices for such services. No security issues detected.
</details>
<evidence></evidence>
<summary>Standard service file, no security issues.</summary>
</security_assessment>

[8/9] Reviewing PKGBUILD...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard service file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS-based game server emulator. It clones the source from the official upstream GitHub repository, builds with CMake using Clang/LLVM, and installs binaries, configuration files, systemd units, and helper scripts. No suspicious network requests, obfuscated code, dangerous commands (eval, curl, base64), or data exfiltration attempts are present. The only operations beyond normal packaging are dependency checks for MySQL vs MariaDB (which is a legitimate compatibility requirement) and symlink creation for user modules in `/usr/src/acore-modules`. These are expected behaviors for the package's stated purpose and do not constitute malicious activity. Checksums for the VCS source are correctly set to `SKIP`, which is required for git sources. The file is safe.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD with standard build and install steps.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with standard build and install steps.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,917
  Completion Tokens: 5,143
  Total Tokens: 41,060
  Total Cost: $0.003997
  Execution Time: 385.39 seconds

Final Status: SAFE


No issues found.
