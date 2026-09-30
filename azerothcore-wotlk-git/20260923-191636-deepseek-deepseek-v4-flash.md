---
package: azerothcore-wotlk-git
pkgver: r19623.2d6742b267
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 36083
completion_tokens: 6924
total_tokens: 43007
cost: 0.00411731026
execution_time: 190.87
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-23T19:16:36Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR VCS metadata with no malicious or suspicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package, no malicious behavior detected.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd service file, no security issues.
  - file: acore-auth-server.service
    status: safe
    summary: Standard systemd service unit; no security issues.
  - file: attach-world
    status: safe
    summary: Legitimate local admin console connector; no malicious behavior detected.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Standard install script, no malicious content.
  - file: acore_setup
    status: safe
    summary: Standard AzerothCore setup script, no malicious indicators.
  - file: jemalloc.patch
    status: safe
    summary: Patch fixes C++ exception compatibility, benign.
  - file: acore_mod
    status: safe
    summary: Legitimate module compilation helper; no malicious code found.
---

Materializing azerothcore-wotlk-git from local mirror...
Materialized azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines standard variables, arrays, and comments at the top level. No command substitutions, backticks, `eval`, or other code that would execute during sourcing. All dynamic content consists of string assignments (e.g., `source=(...)` with a git URL). The functions `pkgver()`, `prepare()`, `build()`, `package()` are not executed by `makepkg --printsrcinfo`, so they are out of scope for this gate. There is no risk of malicious execution when sourcing this file to print SRCINFO.
</details>
<evidence>
</evidence>
<summary>No malicious code at top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code at top-level scope.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, PKGBUILD...
[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR metadata file for a VCS-based package. It declares the upstream source as the project's own GitHub repository (`git+https://github.com/azerothcore/azerothcore-wotlk.git#branch=master`), lists normal build dependencies and options, and provides sha512 checksums for the auxiliary local files. Using `SKIP` for the git source is expected and required behavior for VCS packages; it is not evidence of malice.

No suspicious commands, network requests outside the declared upstream repository, obfuscated content, file operations, or credential-handling behavior are present in this file. The remaining sourced files (`acore-auth-server.service`, `acore-world-server.service`, `acore_setup`, `attach-world`, `acore_mod`) are listed with pinned checksums and would need separate inspection, but the .SRCINFO itself contains only standard packaging metadata.

The only note is that the git source tracks a mutable `master` branch rather than a pinned commit, which is normal for `-git` packages and is not itself a security threat. Overall, this file follows standard AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard AUR VCS metadata with no malicious or suspicious behavior found.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service, acore-world-server.service...
[1/9] Reviewing PKGBUILD, acore-auth-server.service, acore-world-server.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR VCS metadata with no malicious or suspicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch User Repository package for AzerothCore, a World of Warcraft server emulator. It clones the upstream git repository, builds with CMake and Clang, and installs binaries, systemd services, and configuration files. There are no suspicious network requests (only the declared upstream GitHub source), no eval/obfuscation, no downloads of untrusted code, and no exfiltration of local data. The file follows typical AUR packaging patterns: VCS source with SKIP checksum (normal for -git packages), dependency checks, and a custom module linking mechanism.

Minor packaging issues exist – an undefined variable (`$user_dropzone`) and a missing patch file reference – but these are build errors, not malicious behavior. The prepare step does not fetch or execute any content beyond the upstream source. Nothing in the file exfiltrates data, installs backdoors, or introduces attacker-controlled code. The code is consistent with the package's stated purpose.
</details>
<evidence></evidence>
<summary>Standard AUR package, no malicious behavior detected.</summary>
</security_assessment>

[1/9] Reviewing PKGBUILD, acore-auth-server.service, acore-world-server.service, acore_mod...
[2/9] Reviewing acore-auth-server.service, acore-world-server.service, acore_mod...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package, no malicious behavior detected.
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the AzerothCore MMORPG world server. It defines a simple service that runs the `/usr/bin/worldserver` binary as the `azerothcore` user, with a restart policy on failure. No unusual commands, network requests, or obfuscated code are present. The configuration follows normal packaging practices for system services.
</details>
<evidence>
</evidence>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[2/9] Reviewing acore-auth-server.service, acore-world-server.service, acore_mod, acore_setup...
[3/9] Reviewing acore-auth-server.service, acore_mod, acore_setup...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd service file, no security issues.
LLM auditresponse for acore-auth-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the AzerothCore MMORPG Authentication Server. It defines a simple service that runs the `authserver` binary with a dedicated user and group, sets the working directory, and restarts on failure. There are no dangerous commands, no external network requests, no obfuscated or encoded content, and no deviation from normal packaging practices. The file only configures how the system should manage the service process.
</details>
<evidence></evidence>
<summary>Standard systemd service unit; no security issues.</summary>
</security_assessment>

[3/9] Reviewing acore-auth-server.service, acore_mod, acore_setup, attach-world...
[4/9] Reviewing acore_mod, acore_setup, attach-world...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard systemd service unit; no security issues.
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
The script simply checks whether a local service is listening on port 3443 using `ss`, prints a helpful status message if it is not yet ready, and otherwise connects to `127.0.0.1:3443` with `nc`. This is consistent with the stated purpose of attaching to a local AzerothCore world server admin console. There are no network requests to external hosts, no downloads or execution of remote code, no obfuscation, and no file or system modifications outside the intended local connection. The use of `exec nc` is a standard way to replace the shell with the netcat client and is not suspicious in this context.

No evidence of injected malicious behavior, data exfiltration, backdoors, or supply-chain attack patterns was found.
</details>
<evidence>
</evidence>
<summary>
Legitimate local admin console connector; no malicious behavior detected.
</summary>
</security_assessment>

[4/9] Reviewing acore_mod, acore_setup, attach-world, azerothcore-wotlk-git.install...
[5/9] Reviewing acore_mod, acore_setup, azerothcore-wotlk-git.install...
+ Reviewed attach-world. Status: SAFE -- Legitimate local admin console connector; no malicious behavior detected.
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script for an AUR package (`azerothcore-wotlk-git`). It performs expected post-installation tasks: creating an unprivileged system user and group, copying default configuration templates, and setting a configuration directive via `sed`. The `pre_remove` function stops and disables the associated systemd services before removal. No malicious activity is present: there are no external network requests, no obfuscated code, no execution of untrusted downloaded content, and no manipulation of data outside the application's scope. The only minor anomaly is the use of `sudo` inside `post_install`, which is redundant because the script runs as root. This is a packaging hygiene issue, not evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard install script, no malicious content.</summary>
</security_assessment>

[5/9] Reviewing acore_mod, acore_setup, azerothcore-wotlk-git.install, jemalloc.patch...
[6/9] Reviewing acore_mod, acore_setup, jemalloc.patch...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Standard install script, no malicious content.
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard setup utility for AzerothCore (a World of Warcraft emulator). It performs expected administrative tasks: prompting for MySQL root credentials, securely storing them in a temporary file with cleanup, running database initialization scripts from the package's own data directory, modifying configuration files under `/etc/azerothcore/`, launching the authserver and worldserver binaries from the system path, and interactively creating an admin account.  

The script does **not** contain any supply‑chain attack indicators: no obfuscated code, no unexpected network calls (curl/wget), no base64 or eval usage, and no exfiltration of sensitive data. The only notable hygiene concern is a potential SQL injection risk in the auto‑elevate step (the username variable is directly interpolated into an SQL string), but this is a local‑user input issue and does not constitute a malicious supply‑chain attack. All network destinations and file operations are confined to the application's own upstream resources and standard system paths.  

The script is consistent with legitimate AUR packaging practices for a game server setup tool. No evidence of injected malicious code was found.
</details>
<evidence>
</evidence>
<summary>Standard AzerothCore setup script, no malicious indicators.</summary>
</security_assessment>

[7/9] Reviewing acore_mod, jemalloc.patch...
+ Reviewed acore_setup. Status: SAFE -- Standard AzerothCore setup script, no malicious indicators.
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies a jemalloc C++ source file to replace a non-standard `std::__throw_bad_alloc()` call with the standard `throw std::bad_alloc()`. This is a common compatibility fix for compliance with the C++ standard library, not a malicious alteration. No suspicious behavior, network activity, obfuscation, or systemic risk is present.
</details>
<evidence></evidence>
<summary>Patch fixes C++ exception compatibility, benign.</summary>
</security_assessment>

[8/9] Reviewing acore_mod...
+ Reviewed jemalloc.patch. Status: SAFE -- Patch fixes C++ exception compatibility, benign.
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a helper for the AUR package `azerothcore-wotlk-git` that automates the process of linking user-placed modules in `/usr/src/acore-modules/` into the build workspace and SQL updates directory, then recompiles the server using `makepkg -edfi` and restarts the `acore-world-server` service. 

There is no evidence of malicious behavior: no network requests to unexpected hosts, no obfuscated or encoded commands, no data exfiltration, no backdoors, and no execution of untrusted code outside of the intended upstream build system. The use of `strings` on the installed server binary to locate the build directory is unconventional but pragmatic and does not introduce a security threat—it merely reads metadata from a trusted binary. All file operations (deleting and creating symlinks, copying configuration templates, restarting services) are within the expected scope of managing an AzerothCore installation. The script does not bypass the package manager's dependency checking or install unsigned code. It is consistent with standard AUR maintenance practices.
</details>
<evidence></evidence>
<summary>Legitimate module compilation helper; no malicious code found.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed acore_mod. Status: SAFE -- Legitimate module compilation helper; no malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,083
  Completion Tokens: 6,924
  Total Tokens: 43,007
  Total Cost: $0.004117
  Execution Time: 190.87 seconds

Final Status: SAFE


No issues found.
