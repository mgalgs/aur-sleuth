---
package: azerothcore-wotlk-git
pkgver: r19279.6bc4da1cef
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: f47e5ed5e9b50f484d29402229454e7d1b1d7cdb
prompt_tokens: 36077
completion_tokens: 5010
total_tokens: 41087
cost: 0.00359464406
execution_time: 209.84
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
upstream_files: 10337
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-27T19:54:20Z
file_verdicts:
  - file: acore-auth-server.service
    status: safe
    summary: Standard systemd unit for a game server; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security issues found.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd service unit; no security issues.
  - file: acore_setup
    status: safe
    summary: Standard setup script, no malicious behavior.
  - file: attach-world
    status: safe
    summary: Clean helper script; no security concerns.
  - file: jemalloc.patch
    status: safe
    summary: Benign portability patch; no malicious behavior found.
  - file: acore_mod
    status: safe
    summary: Local helper script with no malicious behavior.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Standard AUR install script, no malicious behavior.
---

Cloning https://aur.archlinux.org/azerothcore-wotlk-git.git...
Cloned azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard packaging logic. The top-level code defines variables and arrays; no command substitutions or function calls execute arbitrary commands. The `pkgver()` function performs a `git rev-list --count HEAD` and `git rev-parse --short HEAD` inside the source directory, which is normal for a `-git` package. No network requests, obfuscated code, or dangerous operations occur during the source fetch or when the PKGBUILD is sourced. The `source` array points to the project's own GitHub repository and local files with checksums. There are no out-of-scope executions (the `prepare()`, `build()`, and `package()` functions are not invoked by the requested commands). This is safe for the narrow scope of `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>Standard VCS PKGBUILD, no dangerous code in top-level or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard VCS PKGBUILD, no dangerous code in top-level or pkgver().
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/azerothcore-wotlk/deps/jemalloc/src/jemalloc_cpp.cpp); they are upstream content and were not reviewed.
Reviewing the 9 file(s) in the AUR repository. The 10337 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, PKGBUILD...
[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service...
LLM auditresponse for acore-auth-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit for the AzerothCore authentication server. It defines a simple service that runs `/usr/bin/authserver` after the network is up, under the dedicated `azerothcore` user and `acore-admin` group, with a working directory of `/usr/share/azerothcore`. It includes normal restart behavior and installation targets. There are no network fetches, no execution of downloaded content, no encoded commands, no file exfiltration, and no suspicious system modifications. The user/group and working directory are consistent with a packaged server application and do not indicate a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard systemd unit for a game server; no malicious behavior.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service, acore-world-server.service...
[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard systemd unit for a game server; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS package. It clones from the official AzerothCore GitHub repository, builds with CMake and Clang, installs systemd services, helper scripts, and configuration files. No suspicious network requests, obfuscated code, or dangerous commands (eval, base64, curl, wget) are present. The checksum for the git source is SKIP, which is expected for VCS packages. The only notable observation is an undefined variable `$user_dropzone` in the `prepare()` function, but this is a minor bug (likely harmless, as the block would be skipped) and not a security threat. There is no evidence of exfiltration, backdoors, or supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, acore-world-server.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
[2/9] Reviewing .SRCINFO, acore-world-server.service, acore_mod...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR metadata file for a VCS package. It lists the upstream source from the official GitHub repository, dependencies, and locally bundled helper files (e.g., systemd units, scripts). The first checksum is correctly set to `SKIP` for the VCS source; all other files have pinned SHA512 checksums. There is no evidence of malicious redirects, obfuscated content, or unexpected operations. The file conforms to ordinary AUR packaging practices and does not contain any injection or exfiltration logic.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata; no security issues found.</summary>
</security_assessment>

[3/9] Reviewing acore-world-server.service, acore_mod...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security issues found.
[3/9] Reviewing acore-world-server.service, acore_mod, acore_setup...
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for a World of Warcraft server emulator (AzerothCore). It defines a simple service that runs `/usr/bin/worldserver` as a dedicated user and group, with a working directory and restart policy. No suspicious commands, network requests, obfuscation, or file operations are present. All directives conform to normal packaging and deployment practices.
</details>
<evidence></evidence>
<summary>Standard systemd service unit; no security issues.</summary>
</security_assessment>

[4/9] Reviewing acore_mod, acore_setup...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd service unit; no security issues.
[4/9] Reviewing acore_mod, acore_setup, attach-world...
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard administrative setup utility for the AzerothCore World of Warcraft emulator. It performs expected operations: connecting to MySQL, initializing databases, running schema migrations via the authserver binary, prompting for an admin account, and launching the worldserver for first-time map extraction. All file operations target the package's own installation paths (`/usr/share/azerothcore/`, `/etc/azerothcore/`, `/usr/bin/authserver`, `/usr/bin/worldserver`). The use of a temporary MySQL credentials file with restricted permissions and an EXIT trap is a legitimate technique to avoid exposing passwords on the command line. No network requests, obfuscated code, or data exfiltration is present. The script faithfully implements the manual setup steps documented by the upstream project.
</details>
<evidence></evidence>
<summary>Standard setup script, no malicious behavior.</summary>
</security_assessment>

[4/9] Reviewing acore_mod, acore_setup, attach-world, azerothcore-wotlk-git.install...
[5/9] Reviewing acore_mod, attach-world, azerothcore-wotlk-git.install...
+ Reviewed acore_setup. Status: SAFE -- Standard setup script, no malicious behavior.
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
This script checks whether the AzerothCore world server's Remote Access port (3443) is listening on localhost. If the port is not yet open, it prints instructions for the user to monitor the server's logs and retry. Once the port is active, it connects to the admin console using `nc` (netcat) on 127.0.0.1:3443. All operations are local and standard: `ss` for socket listing, `echo` for output, and `exec nc` for a TCP connection. There are no external network requests, downloads, obfuscated commands, or suspicious file modifications. The script is a benign convenience tool for attaching to the server's built-in admin interface, consistent with normal packaging and upstream utility scripts.
</details>
<evidence></evidence>
<summary>Clean helper script; no security concerns.</summary>
</security_assessment>

[5/9] Reviewing acore_mod, attach-world, azerothcore-wotlk-git.install, jemalloc.patch...
[6/9] Reviewing acore_mod, azerothcore-wotlk-git.install, jemalloc.patch...
+ Reviewed attach-world. Status: SAFE -- Clean helper script; no security concerns.
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a patch that modifies a single line in jemalloc's C++ new/delete handler: it replaces the compiler-specific internal symbol `std::__throw_bad_alloc()` with the standard `throw std::bad_alloc();`. This is a common portability fix for building jemalloc with newer or different C++ standard libraries. There is no obfuscation, no network access, no file system manipulation, no execution of untrusted code, and no deviation from normal upstream patching behavior. The change is consistent with ordinary packaging/maintenance and does not introduce any supply-chain risk.
</details>
<evidence>
</evidence>
<summary>
Benign portability patch; no malicious behavior found.</summary>
</security_assessment>

[7/9] Reviewing acore_mod, azerothcore-wotlk-git.install...
+ Reviewed jemalloc.patch. Status: SAFE -- Benign portability patch; no malicious behavior found.
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a helper script for the AzerothCore WotLK AUR package that automates module compilation and deployment. It operates entirely on local system paths under the user's control: scanning `/usr/src/acore-modules/` for custom modules, creating symlinks into the build workspace, running `makepkg -edfi --noconfirm` to recompile and install the server, and restarting the `acore-world-server` systemd service.

No network requests, obfuscated commands, data exfiltration, or execution of untrusted code from external sources are present. The use of `strings` on the installed `worldserver` binary to infer the build directory is a local operation that reads metadata from a file the user already owns—it does not send any data elsewhere. Deleting symlinks and re-creating them, flushing CMake caches, and deploying `.conf.dist` files are all standard operations for this type of development tool.
</details>
<evidence></evidence>
<summary>Local helper script with no malicious behavior.</summary>
</security_assessment>

[8/9] Reviewing azerothcore-wotlk-git.install...
+ Reviewed acore_mod. Status: SAFE -- Local helper script with no malicious behavior.
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script performs standard packaging operations: creating an unprivileged system user, a group, copying default configuration files, modifying configuration paths with `sed`, and managing systemd services. The use of `sudo` inside `post_install` is redundant (the script runs as root) but not malicious. No network requests, obfuscated code, or attempts to exfiltrate data are present. All actions are within the expected scope of the package's functionality.
</details>
<evidence></evidence>
<summary>Standard AUR install script, no malicious behavior.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Standard AUR install script, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,077
  Completion Tokens: 5,010
  Total Tokens: 41,087
  Total Cost: $0.003595
  Execution Time: 209.84 seconds

Final Status: SAFE


No issues found.
