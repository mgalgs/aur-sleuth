---
package: azerothcore-wotlk-git
pkgver: r19314.54783860e4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 35998
completion_tokens: 7337
total_tokens: 43335
cost: 0.00433448288
execution_time: 212.77
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: ok
upstream_files: 10350
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-31T15:31:19Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior detected.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd service unit, no security issues.
  - file: acore-auth-server.service
    status: safe
    summary: Standard systemd service file, no security concerns.
  - file: attach-world
    status: safe
    summary: Helper script for attaching to local admin console.
  - file: acore_mod
    status: safe
    summary: Helper script automates module build and install; no malicious behavior found.
  - file: jemalloc.patch
    status: safe
    summary: Standard C++ exception fix, no security issues.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Standard AUR install script, no malicious behavior.
  - file: acore_setup
    status: safe
    summary: Standard AzerothCore setup script, no malicious behavior.
---

Cloning https://aur.archlinux.org/azerothcore-wotlk-git.git...
Cloned azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package for the AzerothCore MMORPG server. The source array fetches the official GitHub repository via git+https, along with local service files and helper scripts. No top-level command substitutions, eval, base64 decoding, or unexpected network requests exist. The `pkgver()` function only runs `git rev-list` and `git rev-parse` on the cloned source, which is normal for VCS packages. There are no dangerous operations in the global scope or `pkgver()` that would execute during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The `SKIP` checksum on the git source is standard for VCS packages and does not trigger any runtime execution. The package is safe to fetch and parse.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard AUR PKGBUILD, safe to fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/azerothcore-wotlk/deps/jemalloc/src/jemalloc_cpp.cpp); they are upstream content and were not reviewed.
Reviewing the 9 file(s) in the AUR repository. The 10350 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, PKGBUILD...
[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS-based game server package. The source is correctly fetched from the official upstream GitHub repository. All non-VCS sources have valid SHA-512 checksums. The `prepare()` function performs dependency checks (MariaDB vs MySQL) and manages module symlinks, which is normal operational logic, not malicious. The `build()` and `package()` functions use standard CMake and install commands. There is no obfuscated code, no unexpected network requests, no data exfiltration, and no execution of untrusted external content. The variable `user_dropzone` is used but not defined in this file; it will either be empty or set from elsewhere, but does not constitute a security threat. No evidence of supply-chain attack or malicious intent is present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service, acore-world-server.service...
[1/9] Reviewing .SRCINFO, acore-auth-server.service, acore-world-server.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR metadata file describing the package. It contains no executable code, no network requests, no obfuscated commands, and no unusual file operations. All sources point to the legitimate upstream GitHub repository or are local files provided with the package. The `sha512sums` entries are either `SKIP` (required for VCS sources) or valid checksums for the supporting files. No indicators of supply-chain attack or malicious intent are present.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, acore-auth-server.service, acore-world-server.service, acore_mod...
[2/9] Reviewing acore-auth-server.service, acore-world-server.service, acore_mod...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit definition for the AzerothCore MMORPG world server. It specifies typical directives: description, dependencies (after network and auth server), service type, user/group, working directory, executable path, and restart policy. No malicious content, obfuscated commands, or unexpected operations are present. This is a legitimate packaging artifact.</details>
<evidence></evidence>
<summary>Standard systemd service unit, no security issues.</summary>
</security_assessment>

[2/9] Reviewing acore-auth-server.service, acore-world-server.service, acore_mod, acore_setup...
[3/9] Reviewing acore-auth-server.service, acore_mod, acore_setup...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd service unit, no security issues.
LLM auditresponse for acore-auth-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for an MMO authentication server. It defines a simple service that runs `/usr/bin/authserver` after the network is up, as a dedicated user and group (`azerothcore` and `acore-admin`). The configuration is minimal and contains no suspicious operations, no network downloads, no encoded or obfuscated commands, and no unexpected file operations. It follows typical packaging practices for a daemon service.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no security concerns.</summary>
</security_assessment>

[4/9] Reviewing acore_mod, acore_setup...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard systemd service file, no security concerns.
[4/9] Reviewing acore_mod, acore_setup, attach-world...
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a simple helper that waits for the AzerothCore world server to open its Remote Access port (3443) on localhost, then connects to it using netcat. It uses only standard utilities (`ss`, `grep`, `nc`) and communicates only with the local loopback interface. There is no downloading of code, no obfuscation, no manipulation of system files outside the application's expected scope, and no exfiltration of data. The behavior is consistent with a convenience tool for attaching to an already-running game server console.
</details>
<evidence/></evidence>
<summary>Helper script for attaching to local admin console.</summary>
</security_assessment>

[5/9] Reviewing acore_mod, acore_setup...
+ Reviewed attach-world. Status: SAFE -- Helper script for attaching to local admin console.
[5/9] Reviewing acore_mod, acore_setup, azerothcore-wotlk-git.install...
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a user-facing helper that automates rebuilding AzerothCore with third-party modules. It locates the build workspace, symlinks module SQL and C++ sources into the expected AzerothCore directories, deploys missing `.conf.dist` templates to `/etc/azerothcore`, runs `makepkg -edfi --noconfirm` from the detected build directory, and restarts the `acore-world-server` service. These actions are consistent with the stated purpose of the tool and with ordinary local package/module management workflows.

No genuinely malicious behavior was found: there is no obfuscated or encoded content, no network exfiltration, no downloading and executing code from unexpected hosts, and no access to credentials or unrelated system files. The script does use `sudo` to delete symlinks under `/usr/share/azerothcore/data/sql/updates/` and restart a system service, and it runs `makepkg` with several bypass flags (`-d`, `-e`, `-f`, `-i`). These are powerful operations and should be reviewed before use, but they operate within the application's own directories, configuration paths, and service scope rather than serving a hidden malicious purpose.
</details>
<evidence>
</evidence>
<summary>
Helper script automates module build and install; no malicious behavior found.</summary>
</security_assessment>

[5/9] Reviewing acore_mod, acore_setup, azerothcore-wotlk-git.install, jemalloc.patch...
[6/9] Reviewing acore_setup, azerothcore-wotlk-git.install, jemalloc.patch...
+ Reviewed acore_mod. Status: SAFE -- Helper script automates module build and install; no malicious behavior found.
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies a single line in the jemalloc C++ wrapper to replace `std::__throw_bad_alloc()` with `throw std::bad_alloc();`. The `__throw_bad_alloc()` function is a non-standard internal implementation detail of some standard libraries, while `std::bad_alloc` is the standard C++ exception for allocation failures. This change is a correctness/compatibility fix, not a security concern. There is no obfuscation, no network access, no unusual file operations, and no indication of malicious intent. The patch is a straightforward, benign code change.
</details>
<evidence></evidence>
<summary>Standard C++ exception fix, no security issues.</summary>
</security_assessment>

[7/9] Reviewing acore_setup, azerothcore-wotlk-git.install...
+ Reviewed jemalloc.patch. Status: SAFE -- Standard C++ exception fix, no security issues.
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install script performs standard packaging operations: creating a system user and group, copying default configuration files, updating config directives with `sed`, and managing systemd services on removal. The use of `sudo` inside the `post_install` function is redundant (the script already runs as root), but it is not malicious—it is a minor packaging quirk. No network requests, encoded commands, dangerous operations (eval, base64, curl, wget), or exfiltration of data are present. The script only modifies files within the package's own scope and prints user guidance. No evidence of a supply-chain attack exists.
</details>
<evidence></evidence>
<summary>Standard AUR install script, no malicious behavior.</summary>
</security_assessment>

[8/9] Reviewing acore_setup...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Standard AUR install script, no malicious behavior.
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a legitimate setup tool for the AzerothCore World of Warcraft server emulator. It performs expected operations such as connecting to MySQL with root credentials (stored temporarily in a secure file with cleanup trap), executing the package's own SQL template, modifying configuration files in `/etc/azerothcore/`, starting authentication and world server binaries from the package's installed path, and creating an admin account via SQL insert. No network requests are made to external/unrelated hosts, no code is downloaded or executed from untrusted sources, and no obfuscated or encoded commands are present. The script only interacts with local services and configuration files that are part of the package's own infrastructure. There is no evidence of data exfiltration, backdoors, or any deviation from the stated purpose of provisioning an AzerothCore server.
</details>
<evidence></evidence>
<summary>Standard AzerothCore setup script, no malicious behavior.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed acore_setup. Status: SAFE -- Standard AzerothCore setup script, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,998
  Completion Tokens: 7,337
  Total Tokens: 43,335
  Total Cost: $0.004334
  Execution Time: 212.77 seconds

Final Status: SAFE


No issues found.
