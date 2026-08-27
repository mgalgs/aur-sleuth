---
package: mullvad-vpn-bin
pkgver: 2026.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: f47e5ed5e9b50f484d29402229454e7d1b1d7cdb
prompt_tokens: 23453
completion_tokens: 4110
total_tokens: 27563
cost: 0.00251863696
execution_time: 52.3
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
upstream_files: 6
upstream_named_files: 0
unpinned_sources: 2
date: 2026-08-27T11:27:42Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package files.
  - file: LICENSE
    status: safe
    summary: Standard license file with no executable content.
  - file: .nvchecker.toml
    status: safe
    summary: Benign nvchecker configuration file for version checking.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; official upstream sources, pinned checksums, no malicious behavior.
  - file: mullvad-vpn.install
    status: safe
    summary: Standard install script with AppArmor reload and removal hints; safe.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package with no malicious indicators.
  - file: mullvad-vpn-daemon.install
    status: safe
    summary: Standard packaging script, no malicious behavior found.
  - file: mullvad-vpn.sh
    status: safe
    summary: Simple launcher script, no malicious content.
---

Cloning https://aur.archlinux.org/mullvad-vpn-bin.git...
Cloned mullvad-vpn-bin
Analyzing mullvad-vpn-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package for Mullvad VPN. It downloads official `.deb` archives from the project's GitHub releases, which is expected and legitimate. The global scope only defines variables, arrays, and functions. No code in the global scope or `pkgver()` executes dangerous commands (e.g., `curl|bash`, obfuscated payloads). The source files are fetched from the official upstream repository (`github.com/mullvad/mullvadvpn-app`). Running `makepkg --nobuild --nodeps --noprepare` will safely download these sources and source the PKGBUILD without executing any malicious code.
</details>
<evidence></evidence>
<summary>No malicious code in global scope; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope; safe to fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: https://github.com/mullvad/mullvadvpn-app/releases/download/2026.4/MullvadVPN-2026.4_amd64.deb.asc, https://github.com/mullvad/mullvadvpn-app/releases/download/2026.4/MullvadVPN-2026.4_arm64.deb.asc
Reviewing the 8 file(s) in the AUR repository. The 6 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file is a standard configuration file for a Git repository. It ignores all files by default (`/*`), then selectively un-ignores specific files that are essential for the AUR package (PKGBUILD, .SRCINFO, etc.). There are no commands, network requests, obfuscated code, or any other potentially malicious operations. It serves only to manage version control visibility.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package files.</summary>
</security_assessment>

[0/8] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, LICENSE...
[1/8] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package files.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC-style license typically used by Arch Linux packages. It contains no executable code, no network requests, no obfuscated content, and no system modifications. It is purely a legal text file and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file with no executable content.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, .nvchecker.toml, LICENSE, PKGBUILD...
[2/8] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file with no executable content.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for `nvchecker`, a tool commonly used in AUR packaging to monitor upstream releases. It defines how to check for new versions of the `mullvad-vpn-bin` package by tracking the `git` tags from the official Mullvad VPN app repository on GitHub. There are no dangerous commands, obfuscated code, or any indications of malicious behavior. The configuration is standard and transparent.
</details>
<evidence></evidence>
<summary>Benign nvchecker configuration file for version checking.</summary>
</security_assessment>

[2/8] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, mullvad-vpn-daemon.install...
[3/8] Reviewing .SRCINFO, PKGBUILD, mullvad-vpn-daemon.install...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign nvchecker configuration file for version checking.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata. It declares the `mullvad-vpn-bin` package split into desktop and daemon sub-packages, with dependencies and installer hooks that are normal for this kind of application.

All download sources point to the official Mullvad GitHub releases page, and the `.deb` binaries have pinned SHA-256 checksums. The `.asc` signature files use `SKIP` checksums, which is acceptable because they are verification signatures accompanying the already-checksummed binaries, and a `validpgpkeys` entry is present for verification. There are no scripts, commands, obfuscated code, unexpected network endpoints, or file operations in this file — only declarative packaging metadata.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata; official upstream sources, pinned checksums, no malicious behavior.</summary>
</security_assessment>

[3/8] Reviewing .SRCINFO, PKGBUILD, mullvad-vpn-daemon.install, mullvad-vpn.install...
[4/8] Reviewing PKGBUILD, mullvad-vpn-daemon.install, mullvad-vpn.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; official upstream sources, pinned checksums, no malicious behavior.
LLM auditresponse for mullvad-vpn.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `mullvad-vpn.install` contains two functions: `post_install` and `post_remove`.  
`post_install` reloads an AppArmor profile for the Mullvad VPN application if the apparmor\_parser binary exists. This is a standard and expected operation for a VPN package that enforces security policies.  
`post_remove` simply prints instructions for removing a desktop autostart entry; no files are deleted by the script itself.  

There is no evidence of network requests, obfuscated code, data exfiltration, backdoors, or any other malicious behavior. The script performs only legitimate system administration tasks consistent with the package's purpose.
</details>
<evidence></evidence>
<summary>Standard install script with AppArmor reload and removal hints; safe.</summary>
</security_assessment>

[4/8] Reviewing PKGBUILD, mullvad-vpn-daemon.install, mullvad-vpn.install, mullvad-vpn.sh...
[5/8] Reviewing PKGBUILD, mullvad-vpn-daemon.install, mullvad-vpn.sh...
+ Reviewed mullvad-vpn.install. Status: SAFE -- Standard install script with AppArmor reload and removal hints; safe.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for `mullvad-vpn-bin` is a standard AUR package that downloads prebuilt binaries from the official Mullvad VPN GitHub releases. All source URLs point to the project's own upstream repository under `https://github.com/mullvad/mullvadvpn-app/releases/download/`. SHA256 checksums are provided for the `.deb` archives (not skipped), and PGP signature files are included with a valid signing key. The only skipped checksum is on the `.asc` signature files (`SKIP`), which is typical for detached signature verification that occurs at build time.

The package extracts the `.deb` archive using `bsdtar` and installs files to standard locations. The `chmod 4755` on `chrome-sandbox` is normal for Electron-based applications that require the setuid sandbox helper. The AppArmor symlink is also standard Mullvad behavior. No obfuscated code, no unexpected network requests, no `curl|bash`, no `eval`, no base64 decoding, and no tampering with system files outside the application's scope. The `prepare()` and `package_*()` functions perform only routine installation and cleanup tasks.

There are no signs of malicious injection, supply-chain tampering, or exfiltration. The package follows standard Arch packaging practices for a binary AUR package.
</details>
<evidence></evidence>
<summary>Standard AUR package with no malicious indicators.</summary>
</security_assessment>

[6/8] Reviewing mullvad-vpn-daemon.install, mullvad-vpn.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package with no malicious indicators.
LLM auditresponse for mullvad-vpn-daemon.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux `.install` script for the `mullvad-vpn-daemon` package. It performs expected operations:

- **pre_install/pre_upgrade:** Stops and disables the existing daemon, backs up the old daemon log, and clears package-specific cache files (`/var/cache/mullvad-vpn/relays.json`, `api-ip-address.txt`). It invokes the package's own `mullvad-setup` binary for a graceful restart -- all normal.
- **post_install/post_upgrade:** Sets the setuid bit on `/usr/bin/mullvad-exclude` (a known required permission for non-root exclusion commands), enables and starts the daemon, and runs `systemctl daemon-reload`.
- **pre_remove:** Disables and stops the services, then runs `mullvad-setup` to reset the firewall and optionally remove the device from the user's account -- legitimate cleanup.
- **post_remove:** Prints informational messages about optional manual removal of logs, cache, and config.

There are no obfuscated commands, no unexpected network requests, no downloads or execution of external code, no attempts to exfiltrate data, and no manipulation of files outside the package's own directories (except systemd unit management, which is the expected interface). The `chmod u+s` on `mullvad-exclude` is an upstream design choice, not a supply-chain attack.

No genuinely malicious behavior is present.</details>
<evidence></evidence>
<summary>Standard packaging script, no malicious behavior found.</summary>
</security_assessment>

[7/8] Reviewing mullvad-vpn.sh...
+ Reviewed mullvad-vpn-daemon.install. Status: SAFE -- Standard packaging script, no malicious behavior found.
LLM auditresponse for mullvad-vpn.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a trivial launcher script that executes the Mullvad VPN binary from its installed location. It contains no dangerous commands, no obfuscation, no network activity, no file operations beyond executing the intended application, and no deviations from standard packaging practices. The script is consistent with the expected behavior of launching a desktop application.
</details>
<evidence></evidence>
<summary>Simple launcher script, no malicious content.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed mullvad-vpn.sh. Status: SAFE -- Simple launcher script, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,453
  Completion Tokens: 4,110
  Total Tokens: 27,563
  Total Cost: $0.002519
  Execution Time: 52.30 seconds

Final Status: SAFE


No issues found.
