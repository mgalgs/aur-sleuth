---
package: mullvad-vpn-daemon-bin
pkgbase: mullvad-vpn-bin
pkgver: 2026.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: f47e5ed5e9b50f484d29402229454e7d1b1d7cdb
prompt_tokens: 23392
completion_tokens: 3754
total_tokens: 27146
cost: 0.00245716800
execution_time: 79.2
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
upstream_files: 6
upstream_named_files: 0
unpinned_sources: 2
date: 2026-08-27T11:30:01Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard version-checking config; no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no suspicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious code.
  - file: mullvad-vpn-daemon.install
    status: safe
    summary: No malicious code; standard package script.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR packaging.
  - file: mullvad-vpn.sh
    status: safe
    summary: Standard launcher script, no security issues.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: mullvad-vpn.install
    status: safe
    summary: Standard install hooks; no malicious behavior.
---

mullvad-vpn-daemon-bin is built from mullvad-vpn-bin
Cloning https://aur.archlinux.org/mullvad-vpn-bin.git...
Cloned mullvad-vpn-daemon-bin
Analyzing mullvad-vpn-daemon-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines standard variables and source arrays pointing to official Mullvad VPN GitHub releases. No code is executed in the global scope that would download or run untrusted payloads. The `source` entries are all legitimate, and checksums are provided for the main archives (only the detached .asc signature files have `SKIP`, which is normal). There is no `pkgver()` function. The `prepare()`, `build()`, and `package()` functions are not executed during the two commands (`--nobuild --noprepare`), so any content inside them is out of scope. Nothing in the top-level code or source fetching presents a supply-chain risk for this narrow gate.
</details>
<evidence></evidence>
<summary>Safe for source fetch and PKGBUILD parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe for source fetch and PKGBUILD parse.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: https://github.com/mullvad/mullvadvpn-app/releases/download/2026.4/MullvadVPN-2026.4_amd64.deb.asc, https://github.com/mullvad/mullvadvpn-app/releases/download/2026.4/MullvadVPN-2026.4_arm64.deb.asc
Reviewing the 8 file(s) in the AUR repository. The 6 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file used to track new releases of the Mullvad VPN application. It defines a single source pointing to the official GitHub repository (`https://github.com/mullvad/mullvadvpn-app.git`) and excludes pre-release tags via a regex. There is no obfuscation, no dangerous commands (no eval, curl, wget, base64, etc.), no unexpected network destinations, and no data exfiltration. The file is purely declarative and performs no actions on its own. It is a normal AUR maintainer helper configuration and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard version-checking config; no malicious content.</summary>
</security_assessment>

[0/8] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, LICENSE...
[1/8] Reviewing .SRCINFO, .gitignore, LICENSE...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard version-checking config; no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the `mullvad-vpn-bin` AUR package. It declares the package base and two split packages (`mullvad-vpn-bin` and `mullvad-vpn-daemon-bin`), along with version, architecture, dependencies, and source URLs pointing to the official Mullvad GitHub releases. Checksums are provided for the main `.deb` archives; the associated `.asc` signature files correctly have `SKIP` checksums, which is normal for detached signature verification. There is no executable code, no obfuscation, and no unexpected network destinations. The file conforms to standard AUR packaging practices and contains no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no suspicious content.</summary>
</security_assessment>

[2/8] Reviewing .gitignore, LICENSE...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no suspicious content.
[2/8] Reviewing .gitignore, LICENSE, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads Mullvad VPN binary packages from the official GitHub releases using HTTPS, verifies them with SHA256 checksums (signature files are SKIP, which is standard), and extracts the contents for installation. All file operations (removing unnecessary files, creating symlinks, setting permissions on chrome-sandbox) are normal packaging steps for the Mullvad desktop application and daemon. There are no obfuscated commands, unexpected network requests, or attempts to exfiltrate data. The code is transparent and consistent with standard AUR practices for a binary package.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD, no malicious code.</summary>
</security_assessment>

[2/8] Reviewing .gitignore, LICENSE, PKGBUILD, mullvad-vpn-daemon.install...
[3/8] Reviewing .gitignore, LICENSE, mullvad-vpn-daemon.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious code.
LLM auditresponse for mullvad-vpn-daemon.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux .install script for the Mullvad VPN daemon package (mullvad-vpn-daemon-bin). It performs expected package management operations: starting/stopping systemd services (`mullvad-daemon`, `mullvad-early-boot-blocking`), running the upstream `mullvad-setup` utility with commands like `prepare-restart`, `reset-firewall`, and `remove-device`, and cleaning cache files (`/var/cache/mullvad-vpn/`). It also sets the setuid bit on `/usr/bin/mullvad-exclude`, which is a routine operation for applications requiring privileged network exclusion. There is no obfuscation, no network requests to unexpected hosts, no eval or base64 decoding, and no modification of files outside the application's own paths. All actions are consistent with the package's stated purpose of managing a VPN daemon and its associated system components. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>No malicious code; standard package script.</summary>
</security_assessment>

[3/8] Reviewing .gitignore, LICENSE, mullvad-vpn-daemon.install, mullvad-vpn.install...
[4/8] Reviewing .gitignore, LICENSE, mullvad-vpn.install...
+ Reviewed mullvad-vpn-daemon.install. Status: SAFE -- No malicious code; standard package script.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file is a standard Git configuration file used to control which files are tracked by version control. It ignores everything except essential packaging files (`PKGBUILD`, `.SRCINFO`, `.nvchecker.toml`, etc.). There is no obfuscated code, network activity, file manipulation, or any behavior that could be considered malicious. This is a normal and expected file for an AUR repository.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore for AUR packaging.</summary>
</security_assessment>

[5/8] Reviewing LICENSE, mullvad-vpn.install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR packaging.
[5/8] Reviewing LICENSE, mullvad-vpn.install, mullvad-vpn.sh...
LLM auditresponse for mullvad-vpn.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple launcher script that executes the Mullvad VPN binary located at `/opt/Mullvad VPN/mullvad-vpn` with the argument `%U` (a standard placeholder for URLs in desktop launchers). There is no obfuscation, no suspicious network requests, no dangerous commands, and no deviation from normal packaging practices. The script is completely benign and serves only to launch the application.
</details>
<evidence></evidence>
<summary>Standard launcher script, no security issues.</summary>
</security_assessment>

[6/8] Reviewing LICENSE, mullvad-vpn.install...
+ Reviewed mullvad-vpn.sh. Status: SAFE -- Standard launcher script, no security issues.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC-style license commonly used in open-source projects. It contains no executable code, no network requests, no obfuscation, and no instructions that could be malicious. It is a static text file distributed as part of the package's legal documentation. There is no evidence of any supply-chain attack or security issue.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[7/8] Reviewing mullvad-vpn.install...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for mullvad-vpn.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.install` script for Arch Linux packages. `post_install()` reloads the AppArmor profile for Mullvad VPN if the AppArmor parser is present — this is normal and expected for a VPN service that ships its own AppArmor policy. `post_remove()` merely prints a reminder to optionally remove a desktop autostart file. There are no network requests, obfuscated commands, data exfiltration, or any behavior beyond routine package maintenance. No supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard install hooks; no malicious behavior.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed mullvad-vpn.install. Status: SAFE -- Standard install hooks; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,392
  Completion Tokens: 3,754
  Total Tokens: 27,146
  Total Cost: $0.002457
  Execution Time: 79.20 seconds

Final Status: SAFE


No issues found.
