---
package: mullvad-vpn-daemon-bin
pkgbase: mullvad-vpn-bin
pkgver: 2026.5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 23639
completion_tokens: 6941
total_tokens: 30580
cost: 0.00280506996
execution_time: 198.67
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 2
injection_attempts: 0
date: 2026-09-14T23:07:41Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata, no security issues found.
  - file: LICENSE
    status: safe
    summary: Plain license text only; no code, no suspicious behavior, safe.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for Mullvad VPN binaries.
  - file: mullvad-vpn.install
    status: safe
    summary: A standard, safe install script for Mullvad VPN.
  - file: mullvad-vpn.sh
    status: safe
    summary: Standard wrapper script, no security concerns.
  - file: .nvchecker.toml
    status: safe
    summary: "Safe: standard nvchecker config tracking official Mullvad upstream repository."
  - file: mullvad-vpn-daemon.install
    status: safe
    summary: Standard Mullvad install script; no malicious behavior detected.
---

mullvad-vpn-daemon-bin is built from mullvad-vpn-bin
Materializing mullvad-vpn-daemon-bin from local mirror...
Materialized mullvad-vpn-daemon-bin
Analyzing mullvad-vpn-daemon-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level portion of this PKGBUILD. That portion consists of static metadata assignments (`pkgname`, `pkgver`, `arch`, `source`, `sha256sums`, `validpgpkeys`, etc.) and function definitions. There is no top-level `eval`, command substitution, download-and-execute, or data-exfiltration.

The `prepare()` and `package_mullvad-vpn-bin()` functions contain file operations, but they are not executed by `makepkg --printsrcinfo`. Source URLs and checksums are only represented as data at this stage, so a `SKIP` checksum or unpinned source is not relevant to this safety gate.
</details>
<evidence>
</evidence>
<summary>No top-level code execution; printsrcinfo is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution; printsrcinfo is safe.
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://github.com/mullvad/mullvadvpn-app/releases/download/2026.5/MullvadVPN-2026.5_amd64.deb.asc, https://github.com/mullvad/mullvadvpn-app/releases/download/2026.5/MullvadVPN-2026.5_arm64.deb.asc
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file describing the AUR package. It contains no executable code, no network requests beyond standard upstream source URLs, and no suspicious commands. Checksums set to SKIP are an allowed practice per guidelines. All dependencies and sources are for the legitimate Mullvad VPN application from the official GitHub repository. No evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard metadata, no security issues found.</summary>
</security_assessment>

[1/8] Reviewing .gitignore, .nvchecker.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata, no security issues found.
[1/8] Reviewing .gitignore, .nvchecker.toml, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain MIT/ISC-style software license text attributed to Arch Linux Contributors. It contains only standard license language granting permission to use, copy, modify, and distribute the software with no warranty. There is no executable code, no network requests, no file operations, no obfuscated content, and no deviation from ordinary packaging practices. No security issues are present.
</details>
<evidence>
</evidence>
<summary>
Plain license text only; no code, no suspicious behavior, safe.</summary>
</security_assessment>

[1/8] Reviewing .gitignore, .nvchecker.toml, LICENSE, PKGBUILD...
[2/8] Reviewing .gitignore, .nvchecker.toml, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Plain license text only; no code, no suspicious behavior, safe.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The .gitignore file is a standard configuration file used by Git to ignore certain files in a repository. It does not contain any executable code, network requests, file operations, or potential for malicious behavior. Its sole purpose is to instruct Git to ignore all files except those explicitly listed (such as PKGBUILD, .SRCINFO, etc.), which is normal and expected for an AUR package repository. There is no evidence of obfuscation, dangerous commands, or any deviation from standard packaging practices.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no security issues.</summary>
</security_assessment>

[2/8] Reviewing .gitignore, .nvchecker.toml, PKGBUILD, mullvad-vpn-daemon.install...
[3/8] Reviewing .nvchecker.toml, PKGBUILD, mullvad-vpn-daemon.install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a binary package. It downloads Mullvad VPN’s official `.deb` releases from GitHub (`https://github.com/mullvad/mullvadvpn-app/releases/download/$pkgver/`) with PGP signatures, verifies them via a trusted signing key, and installs the extracted files. No malicious behavior is present: there are no hidden network requests to unknown hosts, no obfuscated code, no use of `eval`, `curl|bash`, or other dangerous patterns. The `SKIP` checksums on the `.asc` signature files are normal and expected. The file is consistent with legitimate packaging.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for Mullvad VPN binaries.</summary>
</security_assessment>

[3/8] Reviewing .nvchecker.toml, PKGBUILD, mullvad-vpn-daemon.install, mullvad-vpn.install...
[4/8] Reviewing .nvchecker.toml, mullvad-vpn-daemon.install, mullvad-vpn.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for Mullvad VPN binaries.
LLM auditresponse for mullvad-vpn.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux .install script for a VPN daemon package. The `post_install()` function reloads the AppArmor profile for Mullvad VPN by invoking `apparmor_parser` on the package's profile file. This is a normal administrative operation for packages that integrate with AppArmor. The `post_remove()` function merely prints a reminder for users to optionally remove an autostart file. There are no network requests, obfuscated code, dangerous command execution, or any behavior that deviates from legitimate packaging practices. No security issue is present.
</details>
<evidence>
</evidence>
<summary>A standard, safe install script for Mullvad VPN.</summary>
</security_assessment>

[4/8] Reviewing .nvchecker.toml, mullvad-vpn-daemon.install, mullvad-vpn.install, mullvad-vpn.sh...
[5/8] Reviewing .nvchecker.toml, mullvad-vpn-daemon.install, mullvad-vpn.sh...
+ Reviewed mullvad-vpn.install. Status: SAFE -- A standard, safe install script for Mullvad VPN.
LLM auditresponse for mullvad-vpn.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a simple wrapper script that launches the Mullvad VPN application from its standard installation directory `/opt/Mullvad VPN/mullvad-vpn` with `%U` (a placeholder for URLs, typically passed by desktop environments). There is no obfuscation, no network requests, no file operations outside of this single command, and no deviation from standard packaging practices. The script only performs its intended function: launching the installed application.
</details>
<evidence></evidence>
<summary>Standard wrapper script, no security concerns.</summary>
</security_assessment>

[6/8] Reviewing .nvchecker.toml, mullvad-vpn-daemon.install...
+ Reviewed mullvad-vpn.sh. Status: SAFE -- Standard wrapper script, no security concerns.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `nvchecker` configuration used by AUR maintainers to automatically check for new upstream releases. It defines a single package entry (`mullvad-vpn-bin`) that polls the official Mullvad VPN GitHub repository (`https://github.com/mullvad/mullvadvpn-app.git`) using git tags, selects the maximum release, and excludes pre-release tags containing alpha/beta/rc.

There is no obfuscation, no encoded commands, no downloading or execution of code, no exfiltration of local data, and no file operations. The only network reference is to the project's own legitimate upstream repository, which is expected and normal for a version-checker helper script. This file contains no signs of malicious or supply-chain-compromised behavior.
</details>
<evidence>
</evidence>
<summary>
Safe: standard nvchecker config tracking official Mullvad upstream repository.
</summary>
</security_assessment>

[7/8] Reviewing mullvad-vpn-daemon.install...
+ Reviewed .nvchecker.toml. Status: SAFE -- Safe: standard nvchecker config tracking official Mullvad upstream repository.
LLM auditresponse for mullvad-vpn-daemon.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script for the Mullvad VPN daemon. It stops and disables Mullvad systemd services during install/upgrade, backs up the daemon log, clears Mullvad&#39;s own cache files under /var/cache/mullvad-vpn, enables the Mullvad daemon after install, and on removal disables the services and invokes `/opt/Mullvad VPN/resources/mullvad-setup` to reset the firewall and remove the device from the account. These actions are all scoped to the Mullvad VPN application and its own services, configuration, logs, and cache.

The `chmod u+s /usr/bin/mullvad-exclude` line is a security-relevant change, but setuid is plausibly part of Mullvad&#39;s intended functionality for the exclude helper and does not by itself indicate a supply-chain attack. The `post_remove` function only prints optional cleanup commands; it does not execute `rm -rf`. No obfuscated code, suspicious network requests, encoded payloads, or remote code execution are present. The script follows normal packaging practices and contains no evidence of injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard Mullvad install script; no malicious behavior detected.
</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed mullvad-vpn-daemon.install. Status: SAFE -- Standard Mullvad install script; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,639
  Completion Tokens: 6,941
  Total Tokens: 30,580
  Total Cost: $0.002805
  Execution Time: 198.67 seconds

Final Status: SAFE


No issues found.
