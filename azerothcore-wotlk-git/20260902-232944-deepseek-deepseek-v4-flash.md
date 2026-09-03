---
package: azerothcore-wotlk-git
pkgver: r19334.37de65eb06
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: c6a5a9f6b0e70545bff9fff8802c361e476b0a86
prompt_tokens: 36077
completion_tokens: 5236
total_tokens: 41313
cost: 0.00362337416
execution_time: 421.5
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: ok
upstream_files: 10359
upstream_named_files: 1
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-02T23:29:43Z
file_verdicts:
  - file: acore-auth-server.service
    status: safe
    summary: Standard systemd service unit; no malicious or suspicious content found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO for a VCS package with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for AzerothCore; no malicious or suspicious behavior found.
  - file: acore-world-server.service
    status: safe
    summary: Standard service file, no security issues.
  - file: attach-world
    status: safe
    summary: Safe convenience script for local admin console.
  - file: acore_mod
    status: safe
    summary: Standard AUR maintainer helper script, no malicious behavior.
  - file: jemalloc.patch
    status: safe
    summary: Benign patch; no security issues found.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Standard post‑install script; no malicious behavior found.
  - file: acore_setup
    status: safe
    summary: Legitimate setup script for AzerothCore server.
---

Cloning https://aur.archlinux.org/azerothcore-wotlk-git.git...
Cloned azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only standard variable assignments, array definitions, and comments. The `pkgver()` function runs innocuous `git rev-list` and `git rev-parse` commands on the cloned source directory. No dangerous commands (eval, curl, wget, base64, etc.) appear in the executed code path. The `prepare()`, `build()`, and `package()` functions are not invoked during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`, so their content is out of scope for this gate. The source array points to the official upstream GitHub repository, which is expected. The SKIP checksum on the VCS source is normal. No evidence of malicious behavior that would execute during the source fetch or PKGBUILD sourcing phase.
</details>
<evidence></evidence>
<summary>No malicious code in top-level or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in top-level or pkgver().
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/azerothcore-wotlk/deps/jemalloc/src/jemalloc_cpp.cpp); they are upstream content and were not reviewed.
Reviewing the 9 file(s) in the AUR repository. The 10359 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, PKGBUILD...
[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service...
LLM auditresponse for acore-auth-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit for the AzerothCore authentication server. It defines a simple service that runs `/usr/bin/authserver` as the `azerothcore` user with the `acore-admin` group, sets the working directory to the package installation path, and restarts on failure. There are no suspicious commands, network operations, obfuscated content, file modifications, or references to external/untrusted resources. The unit follows normal packaging practices for a system service.
</details>
<evidence>
</evidence>
<summary>
Standard systemd service unit; no malicious or suspicious content found.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service, acore-world-server.service...
[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard systemd service unit; no malicious or suspicious content found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains only standard package metadata for an AUR VCS package. The source references the project's own GitHub repository, and the checksum for the VCS source is SKIP (which is normal for `-git` packages). The other static files (service files, helper scripts) have pinned SHA-512 checksums, ensuring integrity. There is no obfuscation, no unexpected network destinations, no dangerous commands, or any other indicators of malicious intent. The file follows normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR .SRCINFO for a VCS package with no malicious content.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service, acore_mod...
[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO for a VCS package with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR build script for the AzerothCore WoW emulator. It clones the official upstream GitHub repository, applies a known patch conditionally, builds with CMake, and installs files into the package directory. The prepare() function checks for conflicting MariaDB packages and required MySQL components, which is packaging logic rather than malicious behavior. The module symlink creation and configuration file generation are related to the application's expected functionality. There are no hidden network requests, obfuscated commands, base64/curl/eval abuse, or attempts to exfiltrate data. The `sha512sums` for the git source is `SKIP`, which is normal for VCS sources and not a security concern by itself.
</details>
<evidence>
</evidence>
<summary>
Standard AUR PKGBUILD for AzerothCore; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod, acore_setup...
[3/9] Reviewing acore-world-server.service, acore_mod, acore_setup...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for AzerothCore; no malicious or suspicious behavior found.
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the AzerothCore world server. It defines a simple service that runs `/usr/bin/worldserver` as user `azerothcore` with group `acore-admin`, with restart on failure. The service depends on `network.target` and `acore-auth-server.service`. There are no malicious commands, obfuscated code, suspicious network requests, or any deviation from normal packaging practices. The file contains only safe configuration directives.
</details>
<evidence></evidence>
<summary>Standard service file, no security issues.</summary>
</security_assessment>

[4/9] Reviewing acore_mod, acore_setup...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard service file, no security issues.
[4/9] Reviewing acore_mod, acore_setup, attach-world...
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `attach-world` is a simple convenience script that checks whether the AzerothCore world server's remote access port (3443) is listening, and then connects to it using `nc` (netcat). All network operations are to localhost (127.0.0.1) only. There are no external downloads, no obfuscated code, no file exfiltration, and no unexpected system modifications. The `-C` flag on `nc` is likely intended to send CRLF line endings for the telnet-like admin console, which is normal for such a use case. This script is consistent with standard AUR packaging and upstream functionality. No security issues identified.
</details>
<evidence></evidence>
<summary>Safe convenience script for local admin console.</summary>
</security_assessment>

[4/9] Reviewing acore_mod, acore_setup, attach-world, azerothcore-wotlk-git.install...
[5/9] Reviewing acore_mod, acore_setup, azerothcore-wotlk-git.install...
+ Reviewed attach-world. Status: SAFE -- Safe convenience script for local admin console.
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is an AUR maintainer helper tool that automates the process of recompiling and reinstalling the AzerothCore server after adding custom modules. It locates the build directory by inspecting the installed binary or by assuming the current working directory, then cleans old symlinks, links new module sources (SQL and C++), copies default configuration files if missing, runs `makepkg -edfi` to rebuild and install the package, and restarts the systemd service. All operations are confined to the package's own directories (`/usr/src/acore-modules/`, `/usr/share/azerothcore/`, `/etc/azerothcore/`, and the build directory). There are no network requests, obfuscated code, or data exfiltration. The script is a typical automation script found in AUR git repositories and does not exhibit any malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR maintainer helper script, no malicious behavior.</summary>
</security_assessment>

[5/9] Reviewing acore_mod, acore_setup, azerothcore-wotlk-git.install, jemalloc.patch...
[6/9] Reviewing acore_setup, azerothcore-wotlk-git.install, jemalloc.patch...
+ Reviewed acore_mod. Status: SAFE -- Standard AUR maintainer helper script, no malicious behavior.
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple patch file for the jemalloc library. It changes one line from `std::__throw_bad_alloc();` to `throw std::bad_alloc();`. This is a minor code style/portability fix, not malicious. There is no evidence of any supply chain attack, obfuscated code, network requests, data exfiltration, or unexpected system modifications. The patch is consistent with standard packaging practices.
</details>
<evidence></evidence>
<summary>Benign patch; no security issues found.</summary>
</security_assessment>

[7/9] Reviewing acore_setup, azerothcore-wotlk-git.install...
+ Reviewed jemalloc.patch. Status: SAFE -- Benign patch; no security issues found.
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script performs standard package housekeeping: creating a dedicated system user and group, copying default configuration templates, and stopping/removing services on uninstall. The informational banners and references to external guides are normal packaging patterns.  

One minor anomaly is the use of `sudo` inside `post_install()` — since pacman runs hooks as root, `sudo` is redundant and could cause a failure or hang if a password is required. This is a packaging defect, not a supply‑chain attack, and does not exfiltrate data, download untrusted code, or execute obfuscated instructions. No other network, encoded, or dangerous operations are present.  

The file is consistent with legitimate AUR packaging for a game server.
</details>
<evidence></evidence>
<summary>Standard post‑install script; no malicious behavior found.</summary>
</security_assessment>

[8/9] Reviewing acore_setup...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Standard post‑install script; no malicious behavior found.
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `acore_setup` is a legitimate administrative setup tool for the AzerothCore World of Warcraft server emulator. It performs standard initialization tasks: creating a temporary MySQL credentials file (with proper permissions and trap cleanup), running SQL scripts from the package's installed data directory, starting `authserver` and `worldserver` binaries from `/usr/bin/` (packaged by the AUR build), and configuring daemon settings via `sed`. The script does not download or execute code from any external network source, does not use obfuscated commands, and does not exfiltrate data. All file paths reference only files installed by the package itself (`/usr/share/azerothcore/`, `/etc/azerothcore/`, `/usr/bin/authserver`, `/usr/bin/worldserver`). The SQL INSERT that elevates the admin account uses the user-supplied username without sanitization, but this is a local administrative risk (user error) rather than a supply-chain attack, as the script runs interactively with root privileges and the input source is the administrator themselves. No genuinely malicious behavior is present.
</details>
<evidence></evidence>
<summary>Legitimate setup script for AzerothCore server.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed acore_setup. Status: SAFE -- Legitimate setup script for AzerothCore server.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,077
  Completion Tokens: 5,236
  Total Tokens: 41,313
  Total Cost: $0.003623
  Execution Time: 421.50 seconds

Final Status: SAFE


No issues found.
