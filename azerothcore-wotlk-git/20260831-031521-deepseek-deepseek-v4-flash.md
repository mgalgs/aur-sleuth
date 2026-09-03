---
package: azerothcore-wotlk-git
pkgver: r19313.7e18ca5b8d
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 36001
completion_tokens: 6077
total_tokens: 42078
cost: 0.004266821930
execution_time: 368.92
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: ok
upstream_files: 10350
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-31T03:15:20Z
file_verdicts:
  - file: acore-auth-server.service
    status: safe
    summary: Standard systemd service file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious content.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd service unit, no security issues.
  - file: acore_setup
    status: safe
    summary: Standard administrative setup script, no malicious behavior.
  - file: attach-world
    status: safe
    summary: Standard helper script to attach to local admin console.
  - file: .SRCINFO
    status: safe
    summary: No security issues in metadata file.
  - file: jemalloc.patch
    status: safe
    summary: Benign patch replacing internal libstdc++ throw with standard bad_alloc.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Standard packaging operations; no malicious behavior found.
  - file: acore_mod
    status: safe
    summary: Safe AUR helper script for module deployment.
---

Cloning https://aur.archlinux.org/azerothcore-wotlk-git.git...
Cloned azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no code that executes during the source-fetch and parse phase (global scope and `pkgver()`) that downloads or runs untrusted payloads. The `pkgver()` function runs `git rev-list` and `git rev-parse` inside the cloned repository, which is standard for VCS packages. The source array only clones the official upstream repository and includes local helper files with valid checksums (except the VCS source which correctly uses `SKIP`). No obfuscation, suspicious network destinations, or data exfiltration is present. The only code that could be considered impactful resides in `prepare()` and later functions, which are not executed by `makepkg --nobuild --nodeps --noprepare`.
</details>
<evidence>
</evidence>
<summary>Safe: no malicious code in the source-fetch and parse phase.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no malicious code in the source-fetch and parse phase.
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
This is a standard systemd service unit file for the AzerothCore MMORPG Authentication Server. It defines a simple service that runs the authserver binary with the specified user, group, working directory, and restart policy. No malicious or suspicious content is present. There are no network requests, data exfiltration, obfuscated code, or unexpected operations. The file adheres to normal packaging practices for systemd services.
</details>
<evidence>
</evidence>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service, acore-world-server.service...
[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard systemd service file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a git-based project. It clones the upstream AzerothCore repository from GitHub, builds with CMake and Clang, and installs binaries, systemd services, and configuration files. The file contains no obfuscated code, no unexpected network requests, and no execution of externally downloaded content. The `prepare()` function uses a local patch (`jemalloc.patch`) that is referenced but not included in the `source` array; this is a packaging oversight but not a supply-chain attack. The undefined variable `$user_dropzone` is another packaging bug—likely intended to refer to `ACORE_DROPZONE` from the config file—but presents no security risk. All non-VCS sources have valid SHA-512 checksums. The only behavior outside ordinary packaging is the MariaDB conflict check, which is a legitimate dependency enforcement mechanism. No evidence of data exfiltration, backdoors, or malicious code injection was found.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious content.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service, acore_mod...
[2/9] Reviewing .SRCINFO, acore-world-server.service, acore_mod...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious content.
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a straightforward systemd service unit file for the AzerothCore World Server. It declares standard dependencies (`network.target`, `acore-auth-server.service`), runs as a dedicated unprivileged user (`azerothcore`), and sets a working directory (`/usr/share/azerothcore`). The `ExecStart` command (`/usr/bin/worldserver`) points to a binary in the system path. There are no suspicious network operations, code downloads, obfuscation, or unexpected system modifications. The file follows normal packaging and service deployment practices.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no security issues.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, acore-world-server.service, acore_mod, acore_setup...
[3/9] Reviewing .SRCINFO, acore_mod, acore_setup...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd service unit, no security issues.
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard administrative setup utility for the AzerothCore World of Warcraft server emulator. It performs expected operations: interactive credential collection with secure temporary file handling, MySQL database initialization, configuration file modification, temporary server startup for schema migration, and account creation with privilege elevation. All commands reference files from the package's own installed paths (`/usr/share/azerothcore/`, `/etc/azerothcore/`, `/usr/bin/authserver`, `/usr/bin/worldserver`), and there are no external network requests, obfuscated code, or unexpected system modifications outside the package's scope. The SQL injection risk in the account elevation step is an input hygiene issue, not a supply-chain attack, as the user provides the input interactively during setup.
</details>
<evidence></evidence>
<summary>Standard administrative setup script, no malicious behavior.</summary>
</security_assessment>

[3/9] Reviewing .SRCINFO, acore_mod, acore_setup, attach-world...
[4/9] Reviewing .SRCINFO, acore_mod, attach-world...
+ Reviewed acore_setup. Status: SAFE -- Standard administrative setup script, no malicious behavior.
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `attach-world` is a helper that checks whether the AzerothCore world server's remote administration port (3443) is listening on localhost and then connects to it via netcat. It performs no external network requests, does not download or execute any remote code, and does not modify any system files. The use of `ss` to check a local port and `nc` to connect to localhost is standard for server administration tools. There is no evidence of obfuscation, data exfiltration, or supply-chain attack behavior. The script is consistent with the stated purpose of attaching to the AzerothCore admin console.
</details>
<evidence></evidence>
<summary>Standard helper script to attach to local admin console.</summary>
</security_assessment>

[4/9] Reviewing .SRCINFO, acore_mod, attach-world, azerothcore-wotlk-git.install...
[5/9] Reviewing .SRCINFO, acore_mod, azerothcore-wotlk-git.install...
+ Reviewed attach-world. Status: SAFE -- Standard helper script to attach to local admin console.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR metadata file containing only declarative fields such as pkgbase, pkgver, dependencies, sources, and checksums. It references a VCS source (`git+https://github.com/azerothcore/azerothcore-wotlk.git#branch=master`) with a SKIP checksum, which is normal for VCS packages. Additional static source files have provided SHA-512 checksums. No executable code, obfuscated strings, dangerous commands, or unusual network destinations are present. The file does not introduce any security risks; it merely describes the package for the AUR build system.
</details>
<evidence></evidence>
<summary>No security issues in metadata file.</summary>
</security_assessment>

[6/9] Reviewing acore_mod, azerothcore-wotlk-git.install...
+ Reviewed .SRCINFO. Status: SAFE -- No security issues in metadata file.
[6/9] Reviewing acore_mod, azerothcore-wotlk-git.install, jemalloc.patch...
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a one-line patch to a jemalloc C++ source file. It replaces the libstdc++-internal call `std::__throw_bad_alloc()` with the standard `throw std::bad_alloc()` expression. This is a common compatibility change for building against compilers or standard libraries where the internal helper is not available or should not be called directly.

There is no suspicious network activity, no obfuscation, no additional file operations, and no deviation from standard packaging work. The patch only adjusts how an out-of-memory condition is reported in C++. It does not introduce any supply-chain risk.
</details>
<evidence>
</evidence>
<summary>
Benign patch replacing internal libstdc++ throw with standard bad_alloc.
</summary>
</security_assessment>

[7/9] Reviewing acore_mod, azerothcore-wotlk-git.install...
+ Reviewed jemalloc.patch. Status: SAFE -- Benign patch replacing internal libstdc++ throw with standard bad_alloc.
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.install` script performs standard packaging operations: creating an unprivileged system user and group, copying default configuration templates, and managing systemd services on removal. The use of `sudo` in the `post_install` function is redundant (since the script runs as root) but not malicious. There are no network requests, obfuscated code, or dangerous commands like `eval`, `curl`, or `wget`. The script does not exfiltrate data, download untrusted code, or deviate from expected AUR packaging behavior. The only potential issue is the unnecessary `sudo` calls, which are a minor hygiene concern but not evidence of a supply-chain attack.  
</details>
<evidence></evidence>
<summary>Standard packaging operations; no malicious behavior found.</summary>
</security_assessment>

[8/9] Reviewing acore_mod...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Standard packaging operations; no malicious behavior found.
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `acore_mod` is a helper script for deploying AzerothCore modules. It operates within the application's own directories: it scans `/usr/src/acore-modules` (user's module dropzone), creates symlinks in `/usr/share/azerothcore/data/sql/updates/` and the package build directory, copies `.conf.dist` templates to `/etc/azerothcore/`, and triggers an incremental recompilation via `makepkg -edfi --noconfirm`. All file operations are confined to the expected scope of the AzerothCore server and its packaging workspace. The script uses `sudo` to modify system-owned paths, which is necessary for deploying configurations and managing server data. There are no network requests to unrelated hosts, no obfuscated code, no exfiltration of sensitive data, and no execution of untrusted fetched content. The behavior is consistent with a legitimate AUR maintainer convenience script for module management.
</details>
<evidence>
</evidence>
<summary>Safe AUR helper script for module deployment.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed acore_mod. Status: SAFE -- Safe AUR helper script for module deployment.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,001
  Completion Tokens: 6,077
  Total Tokens: 42,078
  Total Cost: $0.004267
  Execution Time: 368.92 seconds

Final Status: SAFE


No issues found.
