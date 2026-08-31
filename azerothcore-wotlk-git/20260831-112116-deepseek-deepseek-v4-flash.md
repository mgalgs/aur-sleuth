---
package: azerothcore-wotlk-git
pkgver: r19314.54783860e4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 36156
completion_tokens: 9789
total_tokens: 45945
cost: 0.004938366804
execution_time: 406.4
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: ok
upstream_files: 10350
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-31T11:21:15Z
file_verdicts:
  - file: acore-auth-server.service
    status: safe
    summary: Standard systemd service unit, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Metadata only; upstream GitHub source; standard -git packaging; no malicious content.
  - file: acore-world-server.service
    status: safe
    summary: Standard systemd unit file, no issues.
  - file: acore_mod
    status: safe
    summary: Legitimate AUR module helper, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: "SAFE: standard -git PKGBUILD; world-writable module dropzone is a local hardening concern only."
  - file: attach-world
    status: safe
    summary: Standard helper script, no security issues.
  - file: azerothcore-wotlk-git.install
    status: safe
    summary: "Standard package install script: user/group setup, config copy, service stop. Safe."
  - file: jemalloc.patch
    status: safe
    summary: Patch standardizes exception throw; no malicious behavior.
  - file: acore_setup
    status: safe
    summary: Standard setup script, no malicious behavior found.
---

Cloning https://aur.archlinux.org/azerothcore-wotlk-git.git...
Cloned azerothcore-wotlk-git
Analyzing azerothcore-wotlk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines a standard AUR package with a git source from the project's official GitHub repository and several local configuration/script files. The top-level scope only contains variable assignments, arrays, and comments; there are no command substitutions, `eval`, `curl`, `wget`, or other dynamic executions that could occur during sourcing. The `pkgver()` function simply runs `git rev-list --count` and `git rev-parse --short HEAD` inside the cloned repository, which is normal and expected for a `-git` package and does not introduce any external downloads or data exfiltration. There is no obfuscated code, suspicious network destinations, or instructions that would execute arbitrary payloads when sourcing the PKGBUILD or fetching sources. All `source` entries point to legitimate and expected locations (the project's own GitHub repo and local files shipped with the PKGBUILD). Therefore, running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>Safe: no malicious code executes during source fetch or PKGBUILD source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no malicious code executes during source fetch or PKGBUILD source.
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
The file is a standard systemd service unit for the AzerothCore MMORPG Authentication Server. It defines a simple service that runs the `/usr/bin/authserver` binary under the `azerothcore` user and `acore-admin` group. The configuration includes typical directives for a system service: `Type=simple`, `Restart=on-failure`, and standard systemd paths. No suspicious commands, network requests, or obfuscated code are present. The file does not deviate from expected packaging practices for a systemd service unit.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no security issues.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, PKGBUILD, acore-auth-server.service, acore-world-server.service...
[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service...
+ Reviewed acore-auth-server.service. Status: SAFE -- Standard systemd service unit, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is pure package metadata: it declares the package name, version, dependencies, checksums, and source locations. It contains no executable statements, no shell snippets, no encoded or obfuscated content, and no network operations of any kind, so there is nothing here that could directly execute code or exfiltrate data.

The only external source is `git+https://github.com/azerothcore/azerothcore-wotlk.git#branch=master`, which is the project's own upstream repository fetched over HTTPS — standard, expected behavior for a `-git` package. The unpinned `master` branch is normal for AUR VCS packages; it is a reproducibility/hygiene consideration only, not a sign of malice. The `sha512sums = SKIP` for the VCS source is likewise standard (required for VCS sources), and the five non-VCS auxiliary files (`acore_mod`, `attach-world`, `acore_setup`, and the two systemd service units) all carry pinned SHA-512 checksums, so those local files are integrity-verified at build time.

No suspicious hosts, no `curl|bash`, no checksum tampering, and no unexpected file operations appear. The referenced `azerothcore-wotlk-git.install` script and the helper source files are not visible in this metadata file; their contents would need separate review, but nothing in this `.SRCINFO` indicates malicious behavior. Overall this is ordinary, well-formed AUR packaging metadata.
</details>
<evidence>
</evidence>
<summary>
Metadata only; upstream GitHub source; standard -git packaging; no malicious content.
</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, PKGBUILD, acore-world-server.service, acore_mod...
[2/9] Reviewing PKGBUILD, acore-world-server.service, acore_mod...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata only; upstream GitHub source; standard -git packaging; no malicious content.
LLM auditresponse for acore-world-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the AzerothCore MMORPG world server. It defines the service startup, executable path, working directory, user/group, and restart policy. There are no embedded commands, network requests, obfuscated code, or file operations beyond what is expected for a system service definition. No evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard systemd unit file, no issues.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, acore_mod...
+ Reviewed acore-world-server.service. Status: SAFE -- Standard systemd unit file, no issues.
[3/9] Reviewing PKGBUILD, acore_mod, acore_setup...
LLM auditresponse for acore_mod:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `acore_mod` is a helper tool for managing AzerothCore modules in an AUR-based installation. It performs standard operations: locating the build directory (by checking the current directory or extracting a path from the installed server binary), cleaning and recreating symlinks for SQL updates and C++ modules, copying configuration files, running `makepkg -edfi --noconfirm` to rebuild and install the package, and restarting the `acore-world-server` service.  

No malicious behavior is present: there are no network downloads (curl, wget, etc.), no obfuscated code, no data exfiltration, and no backdoor mechanisms. The use of `sudo` and `strings` on the binary is consistent with the script's purpose of automating system-level module deployment. The `makepkg` flags are typical for local rebuilds; they do not introduce an attack vector. The script does not bypass or subvert the normal AUR build process in a way that would allow unchecked code execution from an external source.  
</details>
<evidence></evidence>
<summary>Legitimate AUR module helper, no malicious code.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, acore_mod, acore_setup, attach-world...
[4/9] Reviewing PKGBUILD, acore_setup, attach-world...
+ Reviewed acore_mod. Status: SAFE -- Legitimate AUR module helper, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `-git` PKGBUILD for the AzerothCore WoW emulator. It clones the package's own upstream GitHub repository (unpinned master branch with SKIP checksum, which is normal and required for VCS sources), builds with clang/cmake, and installs into `$pkgdir`. The `pacman -Qq` invocations in `prepare()` are read-only package-availability checks; no network fetching of extra code, no obfuscation, no eval/base64, and no file writes outside the build/install sandbox. The MariaDB/MySQL checks are unusual but harmless dependency validation.

Notable but non-malicious concerns: (1) the package installs `/usr/src/acore-modules` with mode `1777` (world-writable sticky), and `prepare()` symlinks any directory found there into `src/modules/` for compilation — a local attacker could plant a malicious module that gets compiled into the root-run server on a rebuild. This is an intentional, documented "module dropzone" feature of the package, not an injected supply-chain attack, but it is a real local hardening consideration. (2) The `$user_dropzone` variable is referenced but never defined, and `jemalloc.patch` is used in `prepare()` but missing from the `source` array — these are packaging bugs (dead code / potential build failure), not security issues. (3) The build-time `srcdir` path is baked into `/etc/azerothcore/acore_mod.conf`, a reproducibility/hygiene oddity. No genuine malware indicators were found.
</details>
<evidence>
</evidence>
<summary>
SAFE: standard -git PKGBUILD; world-writable module dropzone is a local hardening concern only.</summary>
</security_assessment>

[4/9] Reviewing PKGBUILD, acore_setup, attach-world, azerothcore-wotlk-git.install...
[5/9] Reviewing acore_setup, attach-world, azerothcore-wotlk-git.install...
+ Reviewed PKGBUILD. Status: SAFE -- SAFE: standard -git PKGBUILD; world-writable module dropzone is a local hardening concern only.
LLM auditresponse for attach-world:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a simple helper to connect to a local Remote Access console on port 3443. It checks if the port is listening and then connects with netcat. All operations are local and standard for the application. No suspicious commands, downloads, or obfuscation are present. The script follows normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard helper script, no security issues.</summary>
</security_assessment>

[5/9] Reviewing acore_setup, attach-world, azerothcore-wotlk-git.install, jemalloc.patch...
[6/9] Reviewing acore_setup, azerothcore-wotlk-git.install, jemalloc.patch...
+ Reviewed attach-world. Status: SAFE -- Standard helper script, no security issues.
LLM auditresponse for azerothcore-wotlk-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script for the AzerothCore WoW server. It performs routine post-install, upgrade, and pre-remove operations: creating a dedicated system user and group, adding the user to the group, copying default configuration templates, and adjusting configuration file settings with `sed`. The `pre_remove` function stops and disables the package's own systemd services, which is normal cleanup behavior. No malicious activities are present: there are no network requests, no downloads or execution of external code, no obfuscated commands, and no access to unrelated system files or credentials. The use of `sudo` within the install script is unnecessary (install scripts already run as root) and could be considered a minor hygiene issue, but it does not constitute malicious behavior. Overall, the script aligns with expected packaging practices for a server application.
</details>
<evidence>
</evidence>
<summary>
Standard package install script: user/group setup, config copy, service stop. Safe.</summary>
</security_assessment>

[7/9] Reviewing acore_setup, jemalloc.patch...
+ Reviewed azerothcore-wotlk-git.install. Status: SAFE -- Standard package install script: user/group setup, config copy, service stop. Safe.
LLM auditresponse for jemalloc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch modifies a single line in the jemalloc source code, changing a non-standard call `std::__throw_bad_alloc()` to the standard `throw std::bad_alloc()`. This is a standard portability or compliance fix, not indicative of malicious behavior. No network requests, obfuscation, file operations, or other suspicious activity. The change is consistent with routine upstream development.
</details>
<evidence></evidence>
<summary>Patch standardizes exception throw; no malicious behavior.</summary>
</security_assessment>

[8/9] Reviewing acore_setup...
+ Reviewed jemalloc.patch. Status: SAFE -- Patch standardizes exception throw; no malicious behavior.
LLM auditresponse for acore_setup:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard post‑installation setup helper for an AzerothCore World of Warcraft emulator. It performs expected operations: prompting for MySQL root credentials, creating a temporary credentials file with restrictive permissions (`chmod 600`), running SQL migration scripts from the package’s own directory (`/usr/share/azerothcore/data/sql/create/create_mysql.sql`), launching the `authserver` and `worldserver` binaries from the system path, and finally elevating a user account via SQL. All actions are consistent with the application’s documented setup workflow.

No obfuscated code, external downloads, unexpected network requests, or backdoors are present. The script does not execute any code from uncontrolled sources. The use of a temporary file for MySQL credentials is a standard practice for automating MySQL commands in scripts. The SQL injection potential in the `INSERT` statement (due to unsanitized user input) is a local script quality issue, not a supply‑chain attack—it requires the administrator to intentionally enter a malicious string. This does not meet the threshold for marking the file UNSAFE.
</details>
<evidence>
</evidence>
<summary>
Standard setup script, no malicious behavior found.
</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed acore_setup. Status: SAFE -- Standard setup script, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,156
  Completion Tokens: 9,789
  Total Tokens: 45,945
  Total Cost: $0.004938
  Execution Time: 406.40 seconds

Final Status: SAFE


No issues found.
