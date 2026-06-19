---
package: mullvad-vpn-bin
pkgver: 2026.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 62912
completion_tokens: 9167
total_tokens: 72079
cost: 0.00731214
execution_time: 106.08
files_reviewed: 13
files_skipped: 0
date: 2026-06-19T11:00:30Z
file_verdicts:
  - file: mullvad-vpn.sh
    status: safe
    summary: Standard launch script, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package with no malicious content found.
  - file: mullvad-vpn-daemon.install
    status: safe
    summary: Standard package install script, no malicious behavior.
  - file: src/usr/share/applications/mullvad-vpn.desktop
    status: safe
    summary: Standard .desktop file, no security concerns.
  - file: src/usr/lib/systemd/system/mullvad-daemon.service
    status: safe
    summary: Standard systemd service file, no malicious content.
  - file: mullvad-vpn.install
    status: safe
    summary: Standard install hooks; no malicious behavior detected.
  - file: src/usr/lib/systemd/system/mullvad-early-boot-blocking.service
    status: safe
    summary: Standard systemd unit; no malicious behavior found.
  - file: src/_gpgbuilder
    status: safe
    summary: Standard Debian package builder metadata; no risk.
  - file: src/prerm
    status: safe
    summary: Legitimate cleanup script for VPN removal; no security issues.
  - file: src/usr/share/fish/vendor_completions.d/mullvad.fish
    status: safe
    summary: Standard shell completion file, no malicious content.
  - file: src/postrm
    status: safe
    summary: Safe cleanup script for Mullvad VPN package
  - file: src/preinst
    status: safe
    summary: Standard cleanup script; no malicious behavior.
  - file: src/postinst
    status: safe
    summary: Standard post-install script; no evidence of malicious behavior.
---

Cloning https://aur.archlinux.org/mullvad-vpn-bin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-3tlyagn9...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-3tlyagn9
Analyzing mullvad-vpn-bin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-3tlyagn9) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only variable definitions (pkgname, pkgver, source arrays, checksums, etc.) and no command substitutions or executable code. There is no `pkgver()` function defined. The `source` arrays point exclusively to the official Mullvad VPN GitHub releases (`github.com/mullvad/mullvadvpn-app/releases`), which is the legitimate upstream. The `source` also includes a local file (`mullvad-vpn.sh`). Checksums are provided for the `.deb` archives, and the `.asc` files are set to `SKIP` (normal because they are verified by GPG using the specified `validpgpkey`). No network requests to unexpected hosts, no obfuscated code, and no dangerous top-level operations exist. The commands `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will safely fetch these sources and parse the PKGBUILD without executing any malicious code.
</details>
<summary>No dangerous code in PKGBUILD top-level scope or pkgver(). Safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No dangerous code in PKGBUILD top-level scope or pkgver(). Safe to source.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, mullvad-vpn.sh...
[0/3] Reviewing PKGBUILD, mullvad-vpn.sh, mullvad-vpn-daemon.install...
LLM auditresponse for mullvad-vpn.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script simply launches the Mullvad VPN binary from its standard installation path with the `%U` argument, which is a placeholder typical for desktop entry handlers. No obfuscation, network requests, file manipulation, or any other suspicious activity is present.
</details>
<summary>Standard launch script, no security issues.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, mullvad-vpn-daemon.install...
+ Reviewed mullvad-vpn.sh. Status: SAFE -- Standard launch script, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a pre-built binary package. It downloads the Mullvad VPN `.deb` files from the official GitHub releases with pinned checksums (the `.asc` signature files use `SKIP`, which is normal—PGP verification is done separately via `validpgpkeys`). The build process extracts archives and installs files without any unexpected network requests, obfuscated code, or exfiltration of sensitive data. File permissions (e.g., `chmod 4755` for `chrome-sandbox`), AppArmor integration, and file placements are all consistent with the application&#x27;s documented requirements. No genuinely malicious behavior is present.
</details>
<summary>Standard AUR package with no malicious content found.</summary>
</security_assessment>

[2/3] Reviewing mullvad-vpn-daemon.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package with no malicious content found.
LLM auditresponse for mullvad-vpn-daemon.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman install script for the Mullvad VPN daemon. It performs routine package management operations: starting/stopping systemd services, setting setuid on a binary, cleaning caches, and calling the vendor's own setup script (`mullvad-setup`) for proper lifecycle actions (firewall reset, device removal). All operations are confined to the application's own files and directories (`/opt/Mullvad VPN/`, `/var/cache/mullvad-vpn/`, `/var/log/mullvad-vpn/`, `/etc/mullvad-vpn/`). There are no unrecognized network requests, obfuscated commands, or attempts to exfiltrate or tamper with system data outside the package's scope.
</details>
<summary>Standard package install script, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed mullvad-vpn-daemon.install. Status: SAFE -- Standard package install script, no malicious behavior.
Reviewed all required files.
Deciding which files to review next...
LLM response for file selection:
mullvad-vpn.install
src/usr/lib/systemd/system/mullvad-daemon.service
src/usr/lib/systemd/system/mullvad-early-boot-blocking.service
src/usr/share/applications/mullvad-vpn.desktop
src/postinst
src/postrm
src/preinst
src/prerm
src/_gpgbuilder
src/usr/share/fish/vendor_completions.d/mullvad.fish
Decided to review 10 additional files: mullvad-vpn.install, src/usr/lib/systemd/system/mullvad-daemon.service, src/usr/lib/systemd/system/mullvad-early-boot-blocking.service, src/usr/share/applications/mullvad-vpn.desktop, src/postinst, src/postrm, src/preinst, src/prerm, src/_gpgbuilder, src/usr/share/fish/vendor_completions.d/mullvad.fish
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing mullvad-vpn.install...
[0/10] Reviewing mullvad-vpn.install, src/usr/lib/systemd/system/mullvad-daemon.service...
[0/10] Reviewing mullvad-vpn.install, src/usr/lib/systemd/system/mullvad-daemon.service, src/usr/share/applications/mullvad-vpn.desktop...
[0/10] Reviewing mullvad-vpn.install, src/usr/lib/systemd/system/mullvad-daemon.service, src/usr/share/applications/mullvad-vpn.desktop, src/usr/lib/systemd/system/mullvad-early-boot-blocking.service...
[0/10] Reviewing mullvad-vpn.install, src/usr/lib/systemd/system/mullvad-daemon.service, src/usr/share/applications/mullvad-vpn.desktop, src/usr/lib/systemd/system/mullvad-early-boot-blocking.service, src/postinst...
[0/10] Reviewing mullvad-vpn.install, src/usr/lib/systemd/system/mullvad-daemon.service, src/usr/share/applications/mullvad-vpn.desktop, src/usr/lib/systemd/system/mullvad-early-boot-blocking.service, src/postinst, src/postrm...
[0/10] Reviewing mullvad-vpn.install, src/usr/lib/systemd/system/mullvad-daemon.service, src/usr/share/applications/mullvad-vpn.desktop, src/usr/lib/systemd/system/mullvad-early-boot-blocking.service, src/postinst, src/postrm, src/preinst...
[0/10] Reviewing mullvad-vpn.install, src/usr/lib/systemd/system/mullvad-daemon.service, src/usr/share/applications/mullvad-vpn.desktop, src/usr/lib/systemd/system/mullvad-early-boot-blocking.service, src/postinst, src/postrm, src/preinst, src/_gpgbuilder...
[0/10] Reviewing mullvad-vpn.install, src/usr/lib/systemd/system/mullvad-daemon.service, src/usr/share/applications/mullvad-vpn.desktop, src/usr/lib/systemd/system/mullvad-early-boot-blocking.service, src/postinst, src/postrm, src/preinst, src/_gpgbuilder, src/prerm...
[0/10] Reviewing mullvad-vpn.install, src/usr/lib/systemd/system/mullvad-daemon.service, src/usr/share/applications/mullvad-vpn.desktop, src/usr/lib/systemd/system/mullvad-early-boot-blocking.service, src/postinst, src/postrm, src/preinst, src/_gpgbuilder, src/prerm, src/usr/share/fish/vendor_completions.d/mullvad.fish...
LLM auditresponse for mullvad-vpn.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Mullvad VPN application. It defines a launcher with `Exec` pointing to the official binary at `/opt/Mullvad VPN/mullvad-vpn`, which is a typical installation path for third-party software. There are no suspicious commands, network requests, obfuscated code, or unexpected operations. The file adheres to normal packaging practices for a desktop entry.
</details>
<summary>Standard .desktop file, no security concerns.</summary>
</security_assessment>

[1/10] Reviewing mullvad-vpn.install, src/usr/lib/systemd/system/mullvad-daemon.service, src/usr/lib/systemd/system/mullvad-early-boot-blocking.service, src/postinst, src/postrm, src/preinst, src/_gpgbuilder, src/prerm, src/usr/share/fish/vendor_completions.d/mullvad.fish...
+ Reviewed src/usr/share/applications/mullvad-vpn.desktop. Status: SAFE -- Standard .desktop file, no security concerns.
LLM auditresponse for mullvad-daemon.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the Mullvad VPN daemon. It defines the daemon's startup, restart behavior, and signal handling. The only unusual element is the comment "testing if new changes are added", which could be a maintainer's note or leftover from a test, but it does not affect functionality or introduce any security risk. There are no network requests, obfuscated commands, or unexpected file operations. All paths reference the Mullvad application itself. The use of SIGUSR1 for lockdown before restart is a documented Mullvad feature to prevent network leaks, not a sign of malice.
</details>
<summary>Standard systemd service file, no malicious content.</summary>
</security_assessment>

[2/10] Reviewing mullvad-vpn.install, src/usr/lib/systemd/system/mullvad-early-boot-blocking.service, src/postinst, src/postrm, src/preinst, src/_gpgbuilder, src/prerm, src/usr/share/fish/vendor_completions.d/mullvad.fish...
+ Reviewed src/usr/lib/systemd/system/mullvad-daemon.service. Status: SAFE -- Standard systemd service file, no malicious content.
LLM auditresponse for mullvad-vpn.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains only standard installation hooks for the Mullvad VPN package. The `post_install()` function reloads an AppArmor profile using the legitimate `apparmor_parser` command, which is expected behavior for packages shipping AppArmor policies. The `post_remove()` function prints a brief informational message suggesting manual removal of an autostart file; it performs no file operations or dangerous commands. No network requests, obfuscated code, or unexpected system modifications are present.
</details>
<summary>Standard install hooks; no malicious behavior detected.</summary>
</security_assessment>

[3/10] Reviewing src/usr/lib/systemd/system/mullvad-early-boot-blocking.service, src/postinst, src/postrm, src/preinst, src/_gpgbuilder, src/prerm, src/usr/share/fish/vendor_completions.d/mullvad.fish...
+ Reviewed mullvad-vpn.install. Status: SAFE -- Standard install hooks; no malicious behavior detected.
LLM auditresponse for mullvad-early-boot-blocking.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd service unit for the Mullvad VPN package. It runs a oneshot command (`/usr/bin/mullvad-daemon -v --initialize-early-boot-firewall`) during early boot to block traffic before the main daemon starts. There are no network requests, encoded/obfuscated commands, or unexpected system modifications. The service only invokes the package's own binary with a documented flag, which is normal and necessary for its stated purpose of network blocking. The sole deviation is a minor encoding artifact (`&apos;` in a comment), which is harmless and likely a copy-paste issue. No supply-chain attack indicators are present.
</details>
<summary>Standard systemd unit; no malicious behavior found.</summary>
</security_assessment>

[4/10] Reviewing src/postinst, src/postrm, src/preinst, src/_gpgbuilder, src/prerm, src/usr/share/fish/vendor_completions.d/mullvad.fish...
+ Reviewed src/usr/lib/systemd/system/mullvad-early-boot-blocking.service. Status: SAFE -- Standard systemd unit; no malicious behavior found.
LLM auditresponse for _gpgbuilder:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `_gpgbuilder` is a Debian package builder metadata file containing PGP-signed hashes for the components of a `.deb` package (`debian-binary`, `control.tar.xz`, `data.tar.xz`). It is a standard part of Debian package verification, used to ensure integrity and authenticity of the package. There is no executable code, obfuscation, network requests, or any deviation from expected packaging practices. The content is purely cryptographic metadata and a detached signature, presenting no supply-chain risk or malicious behavior.
</details>
<summary>Standard Debian package builder metadata; no risk.</summary>
</security_assessment>

[5/10] Reviewing src/postinst, src/postrm, src/preinst, src/prerm, src/usr/share/fish/vendor_completions.d/mullvad.fish...
+ Reviewed src/_gpgbuilder. Status: SAFE -- Standard Debian package builder metadata; no risk.
LLM auditresponse for prerm:
<security_assessment>
<decision>SAFE</decision>
<details>
The script performs standard cleanup operations for a VPN application: killing its own GUI process (using SIGINT and SIGKILL), stopping and disabling its systemd services, resetting the firewall, and removing the device from the account. All commands target the application&#39;s own components. There is no obfuscated code, no unexpected network activity, no exfiltration of data, and no modifications to unrelated system files. The early exit condition for upgrades is normal packaging behavior (e.g., Fedora scriptlet semantics). The script is consistent with legitimate package removal scripts and does not exhibit any malicious characteristics.
</details>
<summary>
Legitimate cleanup script for VPN removal; no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/postinst, src/postrm, src/preinst, src/usr/share/fish/vendor_completions.d/mullvad.fish...
+ Reviewed src/prerm. Status: SAFE -- Legitimate cleanup script for VPN removal; no security issues.
LLM auditresponse for mullvad.fish:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Fish shell completion script for the Mullvad CLI tool. It consists entirely of `complete` commands that define tab-completion rules for the `mullvad` command and its subcommands. There are no network requests (no `curl`, `wget`, or `git`), no obfuscated or encoded content, no file operations, and no execution of external programs beyond defining shell completions. The content is auto-generated from the application's help output and is consistent with normal packaging practices for CLI tools. No malicious behavior is present.
</details>
<summary>Standard shell completion file, no malicious content.</summary>
</security_assessment>

[7/10] Reviewing src/postinst, src/postrm, src/preinst...
+ Reviewed src/usr/share/fish/vendor_completions.d/mullvad.fish. Status: SAFE -- Standard shell completion file, no malicious content.
LLM auditresponse for postrm:
<security_assessment>
<decision>SAFE</decision>
<details>
The postrm script performs routine cleanup for the Mullvad VPN package after removal. It removes the package's own log, cache, and configuration directories under `/var/log`, `/var/cache`, `/etc`, and per-user `~/.config/Mullvad VPN` directories. It also removes the AppArmor profile and the GPU cache (a common Electron cache that can cause issues across versions).  

The script reads `/etc/passwd` to locate home directories, but this is a standard pattern for cleaning up per-user configuration files and does not access or exfiltrate any data outside the package's own files. All actions are strictly scoped to directories and files belonging to Mullvad VPN. There are no network requests, no obfuscated code, no execution of untrusted content, and no unexpected system modifications.

The use of `--interactive=never` is a safety measure to avoid prompting during automated removal. The script is entirely consistent with benign post-removal packaging practices.
</details>
<summary>Safe cleanup script for Mullvad VPN package</summary>
</security_assessment>

[8/10] Reviewing src/postinst, src/preinst...
+ Reviewed src/postrm. Status: SAFE -- Safe cleanup script for Mullvad VPN package
LLM auditresponse for preinst:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pre-installation script for the Mullvad VPN package. It stops and disables the running daemon service (if present), backs up the daemon log, and cleans up cached files under `/var/cache/mullvad-vpn/`. All operations are confined to the application&#x27;s own installation and cache directories. There are no network requests, obfuscated code, or attempts to access or exfiltrate system data.
</details>
<summary>Standard cleanup script; no malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/postinst...
+ Reviewed src/preinst. Status: SAFE -- Standard cleanup script; no malicious behavior.
LLM auditresponse for postinst:
<security_assessment>
<decision>SAFE</decision>
<details>
The script performs standard post-installation tasks for a VPN package: setting the setuid bit on a binary (`mullvad-exclude`), enabling and starting systemd services, and installing an AppArmor profile. All operations are consistent with the expected functionality of the Mullvad VPN client.

- The `chmod u+s` on `/usr/bin/mullvad-exclude` grants elevated privileges to that binary. While this is a security consideration (potential privilege escalation if the binary is compromised), it is an intentional design choice by the upstream application to allow non‑root users to exclude processes from the VPN tunnel. This is not evidence of a supply‑chain attack.
- System service management using `systemctl enable/start` is standard packaging practice.
- The AppArmor profile is copied from the application’s own installation directory (`/opt/Mullvad VPN/resources/apparmor_mullvad`) and reloaded via the official `apparmor_parser` tool. No unknown or untrusted sources are involved.

There are no obfuscated commands, no external network requests, no exfiltration of data, and no deviation from normal packaging workflow. The script is straightforward and performs only actions that serve the application’s stated purpose.
</details>
<summary>Standard post-install script; no evidence of malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/postinst. Status: SAFE -- Standard post-install script; no evidence of malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 62,912
  Completion Tokens: 9,167
  Total Tokens: 72,079
  Total Cost: $0.007312
  Execution Time: 106.08 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-mullvad-vpn-bin.txt
Final Status: SAFE


No issues found.
