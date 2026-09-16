---
package: azerothcore-wotlk-git
pkgver: r19551.2fb90e3b1f
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 36168
completion_tokens: 9544
total_tokens: 45712
cost: 0.00430112704
execution_time: 166.32
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-16T23:10:20Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package with no malicious code
  - file: acore-world-server.service
    status: safe
    summary: Standard service unit; no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: acore-auth-server.service
    status: safe
    summary: "Standard systemd unit for the package's auth server; no malicious behavior."
  - file: acore_mod
    status: safe
    summary: Legitimate AUR helper script; no malicious behavior found.
  - file: attach-world
    status: safe
    summary: Standard admin console helper script
  - file: jemalloc.patch
    status: safe
    summary: Single-line standard C++ exception fix; no malicious behavior indicated.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: Benign packaging script; creates user, installs configs, manages services. No malicious behavior.
  - file: acore_setup
    status: safe
    summary: Legitimate AzerothCore provisioning script; no malicious behavior found.
---

Materializing azerothcore-wotlk-git from local mirror...
Materialized azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD&#39;s global/top-level scope consists solely of standard variable definitions (pkgname, pkgver, source, depends, etc.) and comments. No command substitutions, backticks, or function calls are present that would execute arbitrary code when the file is sourced. The source array uses a legitimate GitHub URL and local files; the only variable expansion is `$_pkgname` in the git URL, which is a simple string replacement. No dangerous commands (curl, wget, eval, base64) appear in the global scope. All potentially suspicious operations (pacman checks, patching, builds) are contained within `prepare()`, `build()`, and `package()` functions, which are **not** executed by `makepkg --printsrcinfo`. Therefore, running this command is safe.
</details>
<evidence></evidence>
<summary>No malicious code in global scope; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope; safe to parse.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, acore-auth-server.service...
[0/9] Reviewing .SRCINFO, acore-auth-server.service, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no obfuscated code, unexpected network requests, or data exfiltration. It clones the upstream AzerothCore repository from GitHub, applies a local patch (jemalloc.patch), and builds with clang and CMake. The module dropzone feature (`/usr/src/acore-modules`) allows users to add custom modules via symlinks, but this is a documented feature and not a supply-chain attack vector within the PKGBUILD itself. All file operations are confined to the expected build and install directories. The `sha512sums` for the VCS source is `SKIP`, which is standard for `-git` packages and not a security concern. No evidence of backdoors, credential theft, or execution of untrusted external code exists. The checks for MariaDB and MySQL are dependency enforcement, not malicious.
</details>
<evidence></evidence>
<summary>Standard AUR package with no malicious code</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, acore-auth-server.service, PKGBUILD, acore-world-server.service...
[1/9] Reviewing .SRCINFO, acore-auth-server.service, acore-world-server.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package with no malicious code
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
Standard systemd service file for AzerothCore world server. Defines service metadata, execution user &amp; group, working directory, and the worldserver binary. No unusual commands, network operations, or file modifications. No obfuscation or encoded content. Follows standard packaging practices for a service unit.
</details>
<evidence></evidence>
<summary>Standard service unit; no security issues.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, acore-auth-server.service, acore-world-server.service, acore_mod...
[2/9] Reviewing .SRCINFO, acore-auth-server.service, acore_mod...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard service unit; no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is purely declarative metadata for the AUR package. It defines package name, version, dependencies, sources, and checksums. The git source uses a VCS source with SKIP checksum, which is standard for VCS packages. All other sources are local files (service files and helper scripts) with valid SHA512 checksums. No embedded commands, network requests, or obfuscated content are present. The file conforms to normal AUR packaging practices and contains no indicators of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, acore-auth-server.service, acore_mod, acore_setup...
[3/9] Reviewing acore-auth-server.service, acore_mod, acore_setup...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for acore-auth-server.service:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit for the AzerothCore authentication server. It defines a simple service that runs `/usr/bin/authserver` as the dedicated `azerothcore` user with `WorkingDirectory` set to the package's data directory. There are no network requests, downloads, file manipulations, obfuscated commands, or any unexpected operations. Launching the package's own installed binary under a least-privilege system user is normal and safe packaging practice.

The unit lacks some modern hardening flags (e.g., `NoNewPrivileges`, `ProtectSystem`), but that is a convenience/hygiene choice, not evidence of malice. The service runs only the package's own auth server binary and does nothing outside its scope. No suspicious behavior of any kind is present.
</details>
<evidence>
</evidence>
<summary>Standard systemd unit for the package's auth server; no malicious behavior.</summary>
</security_assessment>

[3/9] Reviewing acore-auth-server.service, acore_mod, acore_setup, attach-world...
[4/9] Reviewing acore_mod, acore_setup, attach-world...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard systemd unit for the package's auth server; no malicious behavior.
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a helper tool for the `azerothcore-wotlk-git` AUR package. It automates module symlink setup, incremental compilation via `makepkg -edfi`, and service restart. All operations (reading binary strings for path discovery, sudo symlink management, configuration deployment, and running makepkg) fall within the intended functionality of the package and are consistent with standard AUR maintainer scripting. There is no obfuscation, no unexpected network downloads, no data exfiltration, and no evidence of injected malicious code.
</details>
<evidence></evidence>
<summary>Legitimate AUR helper script; no malicious behavior found.</summary>
</security_assessment>

[4/9] Reviewing acore_mod, acore_setup, attach-world, azerothcore-wotlk-git.install...
[5/9] Reviewing acore_setup, attach-world, azerothcore-wotlk-git.install...
+ Reviewed acore_mod. Status: SAFE -- Legitimate AUR helper script; no malicious behavior found.
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `attach-world` is a helper for connecting to the AzerothCore world server's remote administration console. It checks whether port 3443 (the expected admin port) is listening and, if so, connects to it via `nc`. There are no external network requests, no obfuscated code, and no dangerous commands. This is a standard convenience script for legitimate server management and poses no supply-chain risk.
</details>
<evidence>
</evidence>
<summary>Standard admin console helper script</summary>
</security_assessment>

[5/9] Reviewing acore_setup, attach-world, azerothcore-wotlk-git.install, jemalloc.patch...
[6/9] Reviewing acore_setup, azerothcore-wotlk-git.install, jemalloc.patch...
+ Reviewed attach-world. Status: SAFE -- Standard admin console helper script
LLM auditresponse for jemalloc.patch:
 <security_assessment>
<decision>SAFE</decision>
<details>
The patch is a minimal, single-line change to the bundled jemalloc C++ source. It replaces the private libstdc++ helper `std::__throw_bad_alloc()` with the standard C++ expression `throw std::bad_alloc()`. This is a common portability fix for compiling with different standard library implementations and does not introduce any security concern.

There is no obfuscation, no network access, no file system manipulation, no execution of downloaded code, and no deviation from the stated purpose of patching an upstream dependency. The change is consistent with ordinary packaging and build fixes.
</details>
<evidence>
</evidence>
<summary>
Single-line standard C++ exception fix; no malicious behavior indicated.</summary>
</security_assessment>

[7/9] Reviewing acore_setup, azerothcore-wotlk-git.install...
+ Reviewed jemalloc.patch. Status: SAFE -- Single-line standard C++ exception fix; no malicious behavior indicated.
LLM auditresponse for azerothcore-wotlk-git.install:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install scriptlet for the azerothcore-wotlk-git AUR package. The `post_install()` function provisions an unprivileged system user/group, copies missing configuration templates from `.dist` files, adjusts the `SourceDirectory` setting inside the package's own config files under `/etc/azerothcore/`, and prints user instructions. The `pre_remove()` function stops and disables the two systemd service units that ship with this package. These actions are all normal packaging practice: file copies are guarded by existence checks, service management targets only the package's own units, and no data outside the application's configuration scope is touched.

No malicious behavior is present: there are no network requests (no `curl`, `wget`, or `git pull`), no obfuscated or encoded payloads, no `eval`, no base64 decoding, no exfiltration of credentials or local files, and no execution of remotely fetched content. The echoed message merely suggests the user manually install an auxiliary AUR package and run the package's own setup tool; it does not execute them.

One hygiene note: `post_install()` invokes `sudo sed ...`, but pacman `.install` scripts already run as root. `sudo` inside such a script is redundant and can cause hangs or failures in chroot/container environments, but it is not a security threat. The sed edits themselves are limited to the package's own config files, which is expected behavior.
</details>
<evidence></evidence>
<summary>Benign packaging script; creates user, installs configs, manages services. No malicious behavior.</summary>
</security_assessment>

[8/9] Reviewing acore_setup...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Benign packaging script; creates user, installs configs, manages services. No malicious behavior.
LLM auditresponse for acore_setup:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a root-only provisioning helper for the AzerothCore WoW server emulator. It interactively prompts the administrator for MySQL root credentials, writes a temporary MySQL option file with 0600 permissions, registers an EXIT trap to delete that file, executes the package&#39;s own SQL templates under /usr/share/azerothcore, tunes /etc/azerothcore/authserver.conf and worldserver.conf (enabling automatic DB updates, restricting RA to 127.0.0.1 with an admin-level requirement), starts authserver/worldserver to apply schema migrations, and creates a master GM account as the script&#39;s stated purpose. All file and database operations stay within the package&#39;s own scope.

No network downloads, no curl/wget, no eval/base64/obfuscation, no exfiltration of local data, and no backdoor or reverse-shell behavior is present. The MySQL password is stored briefly in /tmp in plaintext, but with root-only permissions and trap-based cleanup — a standard practice for non-interactive MySQL use, and a mild hygiene note rather than a threat. The sed-based config edits and GM elevation match the script&#39;s explicitly advertised function. The truncated region shows only routine provisioning messages and port-polling logic, with no suspicious patterns in the omitted sections.
</details>
<evidence>
</evidence>
<summary>Legitimate AzerothCore provisioning script; no malicious behavior found.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed acore_setup. Status: SAFE -- Legitimate AzerothCore provisioning script; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,168
  Completion Tokens: 9,544
  Total Tokens: 45,712
  Total Cost: $0.004301
  Execution Time: 166.32 seconds

Final Status: SAFE


No issues found.
