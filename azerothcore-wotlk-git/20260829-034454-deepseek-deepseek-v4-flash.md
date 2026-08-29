---
package: azerothcore-wotlk-git
pkgver: r19295.73a301904a
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 35996
completion_tokens: 5625
total_tokens: 41621
cost: 0.00404803728
execution_time: 439.5
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: ok
upstream_files: 10342
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-29T03:44:52Z
file_verdicts:
  - file: acore-auth-server.service
    status: safe
    summary: Standard systemd service unit; no malicious behavior detected.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd unit file, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no security issues found.
  - file: acore_mod
    status: safe
    summary: Legitimate development helper; no malicious behavior.
  - file: attach-world
    status: safe
    summary: Standard helper script connecting to local admin console.
  - file: acore_setup
    status: safe
    summary: Legitimate setup script for AzerothCore; no malicious code detected.
  - file: jemalloc.patch
    status: safe
    summary: Innocent patch to jemalloc exception handling.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Clean install script, no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: "Safe: standard AUR PKGBUILD, no malicious indicators."
---

Cloning https://aur.archlinux.org/azerothcore-wotlk-git.git...
Cloned azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines standard variables and source entries. The only code executed during the narrow gate (sourcing the PKGBUILD and running `pkgver()`) is a git revision count and short hash — an ordinary VCS versioning operation. There are no top-level command substitutions, no dangerous downloads, and no code paths that exfiltrate data or execute untrusted payloads. The dependency checks and file operations in `prepare()`, `build()`, and `package()` do not run during `makepkg --nobuild --nodeps --noprepare`. All source files are from the expected upstream origin (github.com/azerothcore) or local AUR files with fixed checksums.
</details>
<evidence></evidence>
<summary>No malicious code executes during source fetch or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during source fetch or pkgver().
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/azerothcore-wotlk/deps/jemalloc/src/jemalloc_cpp.cpp); they are upstream content and were not reviewed.
Reviewing the 9 file(s) in the AUR repository. The 10342 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, acore-auth-server.service...
[0/9] Reviewing .SRCINFO, acore-auth-server.service, PKGBUILD...
LLM auditresponse for acore-auth-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit for the AzerothCore authentication server. It defines a simple service that runs `/usr/bin/authserver` as the `azerothcore` user and `acore-admin` group, with a working directory of `/usr/share/azerothcore`. It enables restart on failure and starts after the network is up.

No suspicious activity is present: there are no network requests, downloads, shell commands, file writes, obfuscation, or anything that deviates from normal packaging. The unit only launches the package's own server binary with a non-root service user, which is appropriate and expected for this type of application.
</details>
<evidence>
</evidence>
<summary>
Standard systemd service unit; no malicious behavior detected.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, acore-auth-server.service, PKGBUILD, acore-world-server.service...
[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard systemd service unit; no malicious behavior detected.
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the AzerothCore world server. It declares expected dependencies (network, auth server), sets a dedicated user and group, specifies the executable path and working directory, and configures restart behavior. There is no code execution, network activity, obfuscation, or any operation beyond normal service definition. No security concerns.
</details>
<evidence></evidence>
<summary>Standard systemd unit file, no malicious content.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service, acore_mod...
[2/9] Reviewing .SRCINFO, PKGBUILD, acore_mod...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd unit file, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR metadata file describing the package, its dependencies, sources, and checksums. The `sha512sums` entry for the VCS git source is correctly set to `SKIP`, which is required for VCS packages. All other sources have valid checksums. There are no suspicious URLs, no attempts to download code from untrusted hosts, no obfuscated commands, and no unexpected file operations. The package sources point to the official upstream GitHub repository and include expected service files and helper scripts. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata, no security issues found.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, PKGBUILD, acore_mod, acore_setup...
[3/9] Reviewing PKGBUILD, acore_mod, acore_setup...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no security issues found.
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a development helper for the AzerothCore AUR package. It automates building and deploying modules from a local drop zone, performing operations like symlinking SQL and C++ sources, copying default config files, running `makepkg` to rebuild, and restarting the service. All network destinations (if any) are the package's own upstream; the script does not fetch code from unexpected hosts. The use of `strings` on the server binary to locate the build directory is unconventional but not malicious—it's a heuristic for finding the workspace. The `makepkg -e` flag bypasses integrity checks, which is a reproducibility concern but not evidence of a supply-chain attack. No data exfiltration, obfuscated commands, backdoors, or injection is present.
</details>
<evidence>
</evidence>
<summary>Legitimate development helper; no malicious behavior.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, acore_mod, acore_setup, attach-world...
[4/9] Reviewing PKGBUILD, acore_setup, attach-world...
+ Reviewed acore_mod. Status: SAFE -- Legitimate development helper; no malicious behavior.
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a convenience helper for connecting to the AzerothCore world server's remote admin console (port 3443 on localhost). It checks if the port is listening, prints a status message, and then connects using netcat. All commands (`ss`, `grep`, `echo`, `exit`, `exec`, `nc`) are standard POSIX shell utilities. The target is `127.0.0.1` (localhost), so no external network communication. There is no obfuscation, no unexpected downloads, no data exfiltration, and no deviation from the package's stated purpose (providing a World of Warcraft server emulator). The script is benign and follows normal AUR helper script patterns.
</details>
<evidence></evidence>
<summary>Standard helper script connecting to local admin console.</summary>
</security_assessment>

[4/9] Reviewing PKGBUILD, acore_setup, attach-world, azerothcore-wotlk-git.install...
[5/9] Reviewing PKGBUILD, acore_setup, azerothcore-wotlk-git.install...
+ Reviewed attach-world. Status: SAFE -- Standard helper script connecting to local admin console.
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a legitimate post-installation setup helper for the AzerothCore World of Warcraft emulator. It performs standard operations: reading MySQL credentials securely via a temporary options file, running the package's own SQL initialization scripts, starting the authserver and worldserver binaries from the package's installation paths, and configuring administrative accounts. All network interactions are local (MySQL socket, loopback RA port). There are no `curl`, `wget`, `eval`, `base64`, or other obfuscation patterns. The usage of temporary files with proper cleanup (`chmod 600`, `trap rm`) follows security best practices. No evidence of supply-chain injection or malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>
Legitimate setup script for AzerothCore; no malicious code detected.
</summary>
</security_assessment>

[5/9] Reviewing PKGBUILD, acore_setup, azerothcore-wotlk-git.install, jemalloc.patch...
[6/9] Reviewing PKGBUILD, azerothcore-wotlk-git.install, jemalloc.patch...
+ Reviewed acore_setup. Status: SAFE -- Legitimate setup script for AzerothCore; no malicious code detected.
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The provided patch is a minor code change to the jemalloc dependency, replacing a non-standard `std::__throw_bad_alloc()` call with the standard `throw std::bad_alloc()`. This is a typical compatibility or style fix with no security implications. There is no evidence of malicious behavior: no network requests, obfuscation, or dangerous operations. The patch modifies an upstream source file in a benign way.</details>
<evidence></evidence>
<summary>Innocent patch to jemalloc exception handling.</summary>
</security_assessment>

[7/9] Reviewing PKGBUILD, azerothcore-wotlk-git.install...
+ Reviewed jemalloc.patch. Status: SAFE -- Innocent patch to jemalloc exception handling.
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install script performs standard post-installation operations: creating a system user and group for the daemon, copying default configuration files, and sed-injecting a default `SourceDirectory` into the config. The `sudo` calls inside `post_install()` are redundant (the script already runs as root during package installation) but not malicious. No network requests, obfuscation, data exfiltration, or execution of untrusted code are present. The script is clean and follows typical AUR packaging conventions.
</details>
<evidence>
</evidence>
<summary>Clean install script, no malicious behavior found.</summary>
</security_assessment>

[8/9] Reviewing PKGBUILD...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Clean install script, no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR VCS package for the AzerothCore MMORPG server. It clones the upstream git repository, checks for required MySQL dependencies (with a user-friendly error message if MariaDB is found), applies a patch to jemalloc, builds with cmake and clang, and installs binaries, systemd services, configuration files, and SQL data into the expected directories.  

The `user_dropzone` variable is referenced but never defined locally — this is a harmless bug (defaults to empty, so the module symlink block is skipped). There are no suspicious network requests beyond the declared git source, no obfuscated code, no dangerous commands (eval, base64, curl|bash, etc.), and no file operations outside the package's own install destinations. The world-writable `/usr/src/acore-modules` directory (mode 1777) is intended for user-provided modules and is not a supply-chain threat.  

All red flags commonly associated with AUR supply-chain attacks are absent. The package follows standard packaging practices and is safe.
</details>
<evidence></evidence>
<summary>Safe: standard AUR PKGBUILD, no malicious indicators.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Safe: standard AUR PKGBUILD, no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,996
  Completion Tokens: 5,625
  Total Tokens: 41,621
  Total Cost: $0.004048
  Execution Time: 439.50 seconds

Final Status: SAFE


No issues found.
