---
package: eddie-ui
pkgver: v2.26.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 09f2e477a21d918155ca5fbfdf5bc833f8a3f124
prompt_tokens: 72211
completion_tokens: 10175
total_tokens: 82386
cost: 0.00698465306
execution_time: 160.93
files_reviewed: 11
files_skipped: 1
files_unauditable: 134
unpinned_sources: 0
date: 2026-08-22T03:49:39Z
file_verdicts:
  - file: v2.26.2.tar.gz
    status: skipped
    summary: "Skipping binary file: v2.26.2.tar.gz"
  - file: eddie-ui.install
    status: safe
    summary: Standard install script; no security issues found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package with no malicious activity.
  - file: src/Eddie-2.26.2/repository/linux_arch/build_aur_stable.sh
    status: safe
    summary: Simple build helper script, no malicious behavior.
  - file: src/Eddie-2.26.2/fix-permissions.sh
    status: safe
    summary: Only chmod operations on build scripts; no security concerns.
  - file: src/Eddie-2.26.2/repository/linux_arch/build_aur_git.sh
    status: safe
    summary: Simple argument checker and build wrapper, no threats.
  - file: src/Eddie-2.26.2/repository/linux_common/deploy.sh
    status: safe
    summary: Standard deployment script, no security issues.
  - file: src/Eddie-2.26.2/src/App.CLI.Linux/postbuild.sh
    status: safe
    summary: Standard build script; no malicious indicators found.
  - file: src/Eddie-2.26.2/repository/linux_arch/bundle/eddie-ui/usr/share/applications/eddie-ui.desktop
    status: safe
    summary: Standard desktop entry file with no security concerns.
  - file: src/Eddie-2.26.2/src/App.CLI.Linux.Elevated.Service/src/main.cpp
    status: safe
    summary: Legitimate integrity-checked launcher; no supply-chain attack indicators.
  - file: src/Eddie-2.26.2/src/App.CLI.Linux.Elevated/src/wireguard.c
    status: safe
    summary: Standard WireGuard C implementation; no malicious code found.
  - file: src/Eddie-2.26.2/src/App.CLI.Linux.Elevated/src/impl.cpp
    status: safe
    summary: Legitimate VPN client network configuration code, no malicious behavior.
---

Cloning https://aur.archlinux.org/eddie-ui.git...
Cloned eddie-ui
Analyzing eddie-ui AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines standard variables and functions. The only operations executed by `makepkg --nobuild --nodeps --noprepare` are downloading the source tarball from the expected upstream GitHub URL and extracting it. No commands in the global scope or a `pkgver()` function (absent) perform any network requests, execute downloaded code, or exfiltrate data. The `build()` and `package()` functions are not run. The presence of `curl` inside `build()` is irrelevant for this narrow gate, as that function does not execute. No dangerous top-level code exists.
</details>
<summary>Fetching sources and parsing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Fetching sources and parsing is safe.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing eddie-ui.install...
[0/3] Reviewing eddie-ui.install, PKGBUILD...
[0/3] Reviewing eddie-ui.install, PKGBUILD, v2.26.2.tar.gz...
[1/3] Reviewing eddie-ui.install, PKGBUILD...
! Reviewed v2.26.2.tar.gz. Status: SKIPPED -- Skipping binary file: v2.26.2.tar.gz
LLM auditresponse for eddie-ui.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains standard post-installation hooks for updating the desktop MIME database using `update-desktop-database -q`. This is a routine and expected packaging operation, typical for applications that install `.desktop` files. There is no network activity, no obfuscated code, no file exfiltration, and no execution of untrusted content. The functions `msg_blue` and `note` are simple color-printing helpers used for user feedback and are not malicious. The file does not deviate from standard Arch Linux packaging practices.
</details>
<summary>Standard install script; no security issues found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed eddie-ui.install. Status: SAFE -- Standard install script; no security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging patterns for a VPN client built from official upstream sources. The source tarball is pinned to a specific version and checksummed. The build process uses `dotnet publish`, `msbuild`, and `mkbundle` as expected for a .NET/Mono application. The `curl` command fetches a changelog from the project's own website (`eddie.website/changelog/`) and writes it to a file — this is routine packaging behavior and does not execute the fetched data. No obfuscated code, backdoors, or exfiltration attempts are present.

The `LINE` variable and conditional blocks (`"ui" = "cli"`, `"ui" = "ui"`, `"$LINE" = "u"`/`"l"`) are used to select between UI variants (GTK-based or WinForms-based) and are part of the upstream build logic, not injected malice. All file operations are confined to the package's own source tree and installation directory (`$pkgdir`). No unexpected modifications to system files or user data occur.
</details>
<summary>Standard AUR package with no malicious activity.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package with no malicious activity.
Reviewed all required files.
Deciding which files to review next...
Note: 134 compiled/archived file(s) cannot be audited as text and were not reviewed (src/Eddie-2.26.2/deploy/linux_aarch64/hummingbird, src/Eddie-2.26.2/deploy/linux_aarch64/libayatana-appindicator3.so.1, src/Eddie-2.26.2/deploy/linux_aarch64/libayatana-ido3-0.4.so.0 and 131 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 638 files available for selection; offering the 50 highest-priority to the model. 410 lower-priority file(s) were not offered.
LLM response for file selection:
src/Eddie-2.26.2/build.sh
src/Eddie-2.26.2/fix-permissions.sh
src/Eddie-2.26.2/repository/linux_arch/build_aur_stable.sh
src/Eddie-2.26.2/repository/linux_arch/build_aur_git.sh
src/Eddie-2.26.2/repository/linux_common/deploy.sh
src/Eddie-2.26.2/src/App.CLI.Linux/postbuild.sh
src/Eddie-2.26.2/repository/linux_arch/bundle/eddie-ui/usr/share/applications/eddie-ui.desktop
src/Eddie-2.26.2/src/App.CLI.Linux.Elevated.Service/src/main.cpp
src/Eddie-2.26.2/src/App.CLI.Linux.Elevated/src/impl.cpp
src/Eddie-2.26.2/src/App.CLI.Linux.Elevated/src/wireguard.c
! Note: the model selected 1 path(s) not present in the package; these do not exist and were not reviewed: src/Eddie-2.26.2/build.sh
Decided to review 9 additional files: src/Eddie-2.26.2/fix-permissions.sh, src/Eddie-2.26.2/repository/linux_arch/build_aur_stable.sh, src/Eddie-2.26.2/repository/linux_arch/build_aur_git.sh, src/Eddie-2.26.2/repository/linux_common/deploy.sh, src/Eddie-2.26.2/src/App.CLI.Linux/postbuild.sh, src/Eddie-2.26.2/repository/linux_arch/bundle/eddie-ui/usr/share/applications/eddie-ui.desktop, src/Eddie-2.26.2/src/App.CLI.Linux.Elevated.Service/src/main.cpp, src/Eddie-2.26.2/src/App.CLI.Linux.Elevated/src/impl.cpp, src/Eddie-2.26.2/src/App.CLI.Linux.Elevated/src/wireguard.c
Reviewing additional files...
Reviewing additional files...
[0/9] Reviewing src/Eddie-2.26.2/repository/linux_arch/build_aur_stable.sh...
[0/9] Reviewing src/Eddie-2.26.2/repository/linux_arch/build_aur_stable.sh, src/Eddie-2.26.2/fix-permissions.sh...
[0/9] Reviewing src/Eddie-2.26.2/repository/linux_arch/build_aur_stable.sh, src/Eddie-2.26.2/fix-permissions.sh, src/Eddie-2.26.2/repository/linux_arch/build_aur_git.sh...
LLM auditresponse for build_aur_stable.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard build helper that takes a single argument (cli or ui) and delegates to `./build.sh $1 stable`. There is no evidence of malicious behavior: no network requests, no encoded commands, no file exfiltration, and no unexpected system modifications. The script simply validates its input and runs another script in the same directory. This is normal AUR packaging workflow.
</details>
<summary>Simple build helper script, no malicious behavior.</summary>
</security_assessment>

[1/9] Reviewing src/Eddie-2.26.2/fix-permissions.sh, src/Eddie-2.26.2/repository/linux_arch/build_aur_git.sh...
+ Reviewed src/Eddie-2.26.2/repository/linux_arch/build_aur_stable.sh. Status: SAFE -- Simple build helper script, no malicious behavior.
[1/9] Reviewing src/Eddie-2.26.2/fix-permissions.sh, src/Eddie-2.26.2/repository/linux_arch/build_aur_git.sh, src/Eddie-2.26.2/repository/linux_common/deploy.sh...
LLM auditresponse for fix-permissions.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a straightforward permission fixer. It runs `chmod +x` on a list of build scripts located in the package's source tree. There are no network requests, code execution via eval, base64 decoding, obfuscation, or any operations that could exfiltrate data or introduce backdoors. The file is typical of a packaging helper script and contains no malicious behavior.
</details>
<summary>Only chmod operations on build scripts; no security concerns.</summary>
</security_assessment>

[1/9] Reviewing src/Eddie-2.26.2/fix-permissions.sh, src/Eddie-2.26.2/repository/linux_arch/build_aur_git.sh, src/Eddie-2.26.2/repository/linux_common/deploy.sh, src/Eddie-2.26.2/src/App.CLI.Linux/postbuild.sh...
[2/9] Reviewing src/Eddie-2.26.2/repository/linux_arch/build_aur_git.sh, src/Eddie-2.26.2/repository/linux_common/deploy.sh, src/Eddie-2.26.2/src/App.CLI.Linux/postbuild.sh...
+ Reviewed src/Eddie-2.26.2/fix-permissions.sh. Status: SAFE -- Only chmod operations on build scripts; no security concerns.
LLM auditresponse for build_aur_git.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward wrapper that validates two command-line arguments and then calls `./build.sh` with those arguments plus the literal string `git`. It performs no network operations, no file modifications beyond its own scope, no obfuscated or encoded commands, and no system modifications outside standard build workflow. The call to `./build.sh` is expected as part of the AUR package build process. There is no indication of supply-chain attack, data exfiltration, or backdoor injection. The script is consistent with routine AUR packaging practices.
</details>
<summary>Simple argument checker and build wrapper, no threats.</summary>
</security_assessment>

[3/9] Reviewing src/Eddie-2.26.2/repository/linux_common/deploy.sh, src/Eddie-2.26.2/src/App.CLI.Linux/postbuild.sh...
+ Reviewed src/Eddie-2.26.2/repository/linux_arch/build_aur_git.sh. Status: SAFE -- Simple argument checker and build wrapper, no threats.
[3/9] Reviewing src/Eddie-2.26.2/repository/linux_common/deploy.sh, src/Eddie-2.26.2/src/App.CLI.Linux/postbuild.sh, src/Eddie-2.26.2/repository/linux_arch/bundle/eddie-ui/usr/share/applications/eddie-ui.desktop...
LLM auditresponse for deploy.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard deployment helper used by the package maintainer to upload built packages to an internal repository on `eddie.website` via SCP over SSH with a specific key. It contains no obfuscation, no encoded commands, no unexpected network requests, and no operations that manipulate data outside the scope of the package's own deployment workflow. The use of SCP with a designated key is normal for maintainer automation. There is no evidence of malicious behavior.
</details>
<summary>Standard deployment script, no security issues.</summary>
</security_assessment>

[4/9] Reviewing src/Eddie-2.26.2/src/App.CLI.Linux/postbuild.sh, src/Eddie-2.26.2/repository/linux_arch/bundle/eddie-ui/usr/share/applications/eddie-ui.desktop...
+ Reviewed src/Eddie-2.26.2/repository/linux_common/deploy.sh. Status: SAFE -- Standard deployment script, no security issues.
[4/9] Reviewing src/Eddie-2.26.2/src/App.CLI.Linux/postbuild.sh, src/Eddie-2.26.2/repository/linux_arch/bundle/eddie-ui/usr/share/applications/eddie-ui.desktop, src/Eddie-2.26.2/src/App.CLI.Linux.Elevated.Service/src/main.cpp...
LLM auditresponse for postbuild.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a straightforward post-build script for the `eddie-ui` package. It validates input arguments, sets architecture and configuration, then builds elevated helpers and a native library by calling local build scripts (`build.sh` files) located within the package's own source tree. The resulting binaries are copied to an output directory. There are no network requests, no obfuscated or encoded commands, no fetching of remote content, and no modification of system files beyond the package's own build output. The only conditional logic (`/etc/arch-release`) controls a build flag (`NOLZMA`) which is a normal part of upstream development. The script does exactly what a post-build script should do: compile and stage artifacts for packaging.
</details>
<summary>Standard build script; no malicious indicators found.</summary>
</security_assessment>

[5/9] Reviewing src/Eddie-2.26.2/repository/linux_arch/bundle/eddie-ui/usr/share/applications/eddie-ui.desktop, src/Eddie-2.26.2/src/App.CLI.Linux.Elevated.Service/src/main.cpp...
+ Reviewed src/Eddie-2.26.2/src/App.CLI.Linux/postbuild.sh. Status: SAFE -- Standard build script; no malicious indicators found.
[5/9] Reviewing src/Eddie-2.26.2/repository/linux_arch/bundle/eddie-ui/usr/share/applications/eddie-ui.desktop, src/Eddie-2.26.2/src/App.CLI.Linux.Elevated.Service/src/main.cpp, src/Eddie-2.26.2/src/App.CLI.Linux.Elevated/src/impl.cpp...
LLM auditresponse for eddie-ui.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` file for the eddie-ui VPN application. It defines a launcher with a fixed `Exec=` path to `/usr/bin/eddie-ui`, an icon, and metadata. There are no network requests, code execution, obfuscation, or any operations beyond defining a desktop menu entry. The file does not contain any mechanism to overload or execute arbitrary commands. It is consistent with normal packaging practices.
</details>
<summary>
Standard desktop entry file with no security concerns.</summary>
</security_assessment>

[5/9] Reviewing src/Eddie-2.26.2/repository/linux_arch/bundle/eddie-ui/usr/share/applications/eddie-ui.desktop, src/Eddie-2.26.2/src/App.CLI.Linux.Elevated.Service/src/main.cpp, src/Eddie-2.26.2/src/App.CLI.Linux.Elevated/src/impl.cpp, src/Eddie-2.26.2/src/App.CLI.Linux.Elevated/src/wireguard.c...
[6/9] Reviewing src/Eddie-2.26.2/src/App.CLI.Linux.Elevated.Service/src/main.cpp, src/Eddie-2.26.2/src/App.CLI.Linux.Elevated/src/impl.cpp, src/Eddie-2.26.2/src/App.CLI.Linux.Elevated/src/wireguard.c...
+ Reviewed src/Eddie-2.26.2/repository/linux_arch/bundle/eddie-ui/usr/share/applications/eddie-ui.desktop. Status: SAFE -- Standard desktop entry file with no security concerns.
LLM auditresponse for main.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `main.cpp` is the root-elevated launcher component of the Eddie VPN (AirVPN) software. It performs integrity verification on the service binaries before executing them, operates exclusively on local files under `/sbin/` and systemd unit paths, and includes no network requests, obfuscation, or data exfiltration. All operations – reading a root-owned JSON data file, computing SHA256 hashes of executables, comparing them to stored values, and launching the service binary – serve the application's stated security purpose. There is no evidence of injected malicious code.
</details>
<summary>
Legitimate integrity-checked launcher; no supply-chain attack indicators.
</summary>
</security_assessment>

[7/9] Reviewing src/Eddie-2.26.2/src/App.CLI.Linux.Elevated/src/impl.cpp, src/Eddie-2.26.2/src/App.CLI.Linux.Elevated/src/wireguard.c...
+ Reviewed src/Eddie-2.26.2/src/App.CLI.Linux.Elevated.Service/src/main.cpp. Status: SAFE -- Legitimate integrity-checked launcher; no supply-chain attack indicators.
LLM auditresponse for wireguard.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the standard upstream WireGuard C library implementation (`wireguard.c`) authored by Jason A. Donenfeld. It contains:

- A mini implementation of the `libmnl` netlink library (used to communicate with the kernel's netlink subsystem).
- Functions to configure WireGuard interfaces (add/delete devices, set/get peer configuration).
- Cryptographic primitives for Curve25519 key generation (using constant-time operations).
- Base64 encoding/decoding for key representation.
- Random number generation via `getentropy`, `getrandom` syscall, or fallback to `/dev/urandom`.

All operations are legitimate and expected for a kernel-mode VPN tool:
- Netlink socket creation and binding are standard for configuring network interfaces.
- Cryptographic key generation uses proper system entropy sources.
- No network requests, data exfiltration, obfuscated code, or execution of downloaded content.
- No modification of files outside the application's normal scope.

There is no injected malicious code, backdoors, or supply-chain attack indicators. The file performs exactly what WireGuard is supposed to do: manage WireGuard tunnel interfaces via the kernel's netlink interface.
</details>
<summary>Standard WireGuard C implementation; no malicious code found.</summary>
</security_assessment>

[8/9] Reviewing src/Eddie-2.26.2/src/App.CLI.Linux.Elevated/src/impl.cpp...
+ Reviewed src/Eddie-2.26.2/src/App.CLI.Linux.Elevated/src/wireguard.c. Status: SAFE -- Standard WireGuard C implementation; no malicious code found.
LLM auditresponse for impl.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a genuine C++ source file from the Eddie VPN client (formerly AirVPN) implementing platform‑specific network management on Linux. It performs typical VPN‑related operations: DNS switching via systemd‑resolved and `/etc/resolv.conf`, IPv6 disablement through `/proc/sys/net/ipv6/conf/`, firewall rules with nftables and iptables, WireGuard tunnel control, and systemd service installation. All executed system commands (`systemctl`, `resolvectl`, `nft`, `iptables`, `ip`, `modprobe`, etc.) are standard tools for the stated purpose. There is no obfuscated code, no network requests to unexpected hosts, no data exfiltration, and no execution of downloaded content. The file is consistent with the expected behavior of a VPN elevation helper.
</details>
<summary>Legitimate VPN client network configuration code, no malicious behavior.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed src/Eddie-2.26.2/src/App.CLI.Linux.Elevated/src/impl.cpp. Status: SAFE -- Legitimate VPN client network configuration code, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: v2.26.2.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 72,211
  Completion Tokens: 10,175
  Total Tokens: 82,386
  Total Cost: $0.006985
  Execution Time: 160.93 seconds

Final Status: SAFE


No issues found.


Audit Skips:

/data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ky99yocr/v2.26.2.tar.gz: [SKIPPED] Skipping binary file: v2.26.2.tar.gz
