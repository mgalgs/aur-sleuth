---
package: mullvad-vpn-daemon-bin
pkgbase: mullvad-vpn-bin
pkgver: 2026.5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 23797
completion_tokens: 18186
total_tokens: 41983
cost: 0.005331334414
execution_time: 636.06
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 2
injection_attempts: 0
date: 2026-09-15T07:14:19Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata; no malicious content detected.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for upstream release checking; no security issues.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for an AUR package; no malicious behavior present.
  - file: mullvad-vpn.install
    status: safe
    summary: Standard AppArmor reload and removal reminder; no malicious behavior found.
  - file: mullvad-vpn.sh
    status: safe
    summary: Simple launcher script executing the installed Mullvad VPN binary; no malicious behavior found.
  - file: mullvad-vpn-daemon.install
    status: safe
    summary: Standard Mullvad VPN install script; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior; standard official Mullvad split package.
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
The PKGBUILD contains only standard variable declarations at the global/top-level scope (pkgname, pkgver, source, checksums, dependencies, etc.). No command substitutions, backticks, eval statements, network requests, or file operations exist outside of the function definitions (prepare(), package_*()), which are explicitly not executed by `makepkg --printsrcinfo`. The source URLs all point to the project&#x27;s own GitHub releases. Therefore, sourcing this PKGBUILD to generate its metadata is completely safe.
</details>
<evidence>
</evidence>
<summary>Global scope is entirely declarative and safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope is entirely declarative and safe.
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
The .SRCINFO file is a declarative metadata file for the AUR package. It defines package name, version, dependencies, and source URLs. All sources point to the official Mullvad VPN GitHub releases (github.com/mullvad/mullvadvpn-app). The checksums include a valid sha256sum for each binary package, while the corresponding `.asc` signature files have `SKIP` (standard for detached signatures). No commands, scripts, obfuscated content, or suspicious network destinations are present. The file is consistent with legitimate AUR packaging practices.
</details>
<evidence></evidence>
<summary>Declarative metadata; no malicious content detected.</summary>
</security_assessment>

[0/8] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, LICENSE...
[1/8] Reviewing .gitignore, .nvchecker.toml, LICENSE...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata; no malicious content detected.
LLM auditresponse for .nvchecker.toml:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard nvchecker configuration used by AUR maintainers to automatically check for new upstream releases. It specifies the upstream GitHub repository for the Mullvad VPN app, instructs nvchecker to use the latest release tag, and excludes pre-release versions containing alpha, beta, or rc in their names.

There is no suspicious behavior: no network requests to unexpected hosts, no code execution, no obfuscation, no file manipulation, and no packaging deviations. The configuration only defines how to query the project's own upstream repository for version information.
</details>
<evidence>
</evidence>
<summary>
Standard nvchecker config for upstream release checking; no security issues.</summary>
</security_assessment>

[1/8] Reviewing .gitignore, .nvchecker.toml, LICENSE, PKGBUILD...
[2/8] Reviewing .gitignore, LICENSE, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for upstream release checking; no security issues.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC license file used by Arch Linux contributors. It contains no executable code, network requests, file operations, or any other security-relevant content. It is purely a legal text file.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[2/8] Reviewing .gitignore, LICENSE, PKGBUILD, mullvad-vpn-daemon.install...
[3/8] Reviewing .gitignore, PKGBUILD, mullvad-vpn-daemon.install...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used by an AUR maintainer to control which files are tracked in the package git repository. The pattern `/*` ignores everything at the repository root, and the `!` negation rules re-include only the packaging-relevant files: `PKGBUILD`, `.SRCINFO`, `.nvchecker.toml` (used by the nvchecker tool for upstream version monitoring), `LICENSE`, the two `.install` scripts, and `mullvad-vpn.sh`. No network requests, obfuscated content, dangerous command execution, or file operations outside normal git tracking are present. The file is consistent with ordinary AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore for an AUR package; no malicious behavior present.</summary>
</security_assessment>

[4/8] Reviewing PKGBUILD, mullvad-vpn-daemon.install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for an AUR package; no malicious behavior present.
[4/8] Reviewing PKGBUILD, mullvad-vpn-daemon.install, mullvad-vpn.install...
LLM auditresponse for mullvad-vpn.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script for the Mullvad VPN daemon. The `post_install()` function reloads the AppArmor profile shipped with the package using `apparmor_parser -r /etc/apparmor.d/mullvad`. This is a normal, expected operation for an application that provides an AppArmor profile, and it does not fetch or execute remote code, modify unrelated system files, or perform any suspicious actions. The `post_remove()` function only prints a reminder to the user that they may optionally remove an autostart desktop entry; it does not delete anything automatically. No obfuscated code, network requests, credential access, or backdoor behavior is present.
</details>
<evidence>
</evidence>
<summary>
Standard AppArmor reload and removal reminder; no malicious behavior found.</summary>
</security_assessment>

[4/8] Reviewing PKGBUILD, mullvad-vpn-daemon.install, mullvad-vpn.install, mullvad-vpn.sh...
[5/8] Reviewing PKGBUILD, mullvad-vpn-daemon.install, mullvad-vpn.sh...
+ Reviewed mullvad-vpn.install. Status: SAFE -- Standard AppArmor reload and removal reminder; no malicious behavior found.
LLM auditresponse for mullvad-vpn.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple launcher script for the Mullvad VPN GUI. It contains a shebang and a single command that executes the pre-installed binary at `/opt/Mullvad VPN/mullvad-vpn`, passing through the `%U` placeholder (which the desktop environment replaces with a list of URLs/files when launched via a .desktop entry).

There is no evidence of malicious behavior:
- No network requests, downloads, or execution of remotely fetched code.
- No obfuscation, encoding, or hidden commands.
- No file system manipulation beyond launching the application.
- No credential theft, exfiltration, backdoors, or system tampering.

The script only runs the application's own installed binary from its standard installation path, which is exactly what a packaging launcher script is expected to do. This is a routine and benign packaging practice.
</details>
<evidence>
</evidence>
<summary>
Simple launcher script executing the installed Mullvad VPN binary; no malicious behavior found.
</summary>
</security_assessment>

[6/8] Reviewing PKGBUILD, mullvad-vpn-daemon.install...
+ Reviewed mullvad-vpn.sh. Status: SAFE -- Simple launcher script executing the installed Mullvad VPN binary; no malicious behavior found.
LLM auditresponse for mullvad-vpn-daemon.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This install script performs standard package lifecycle operations for the Mullvad VPN daemon: stopping and disabling the old services before upgrade, enabling them after install, resetting the firewall and removing the device from the account during removal, and printing optional cleanup hints after removal. There is no obfuscation, no eval/base64 usage, no download-and-execute behavior, and no tampering with files outside the application&apos;s own scope. The file operations affect Mullvad&apos;s own log/cache directories and configuration paths only.

The calls to `/opt/Mullvad\ VPN/resources/mullvad-setup` are upstream Mullvad commands used to restore firewall state and deregister the current device from the user&apos;s Mullvad account during uninstall. This is an expected account-lifecycle action, not malicious exfiltration.

One noteworthy point is `chmod u+s /usr/bin/mullvad-exclude`, which installs a setuid-root helper. This is consistent with Mullvad&apos;s designed functionality for the exclude utility and is not by itself evidence of a supply-chain attack, though it is a privilege elevation that should be expected and trusted from the package.
</details>
<evidence>
</evidence>
<summary>
Standard Mullvad VPN install script; no malicious behavior found.
</summary>
</security_assessment>

[7/8] Reviewing PKGBUILD...
+ Reviewed mullvad-vpn-daemon.install. Status: SAFE -- Standard Mullvad VPN install script; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD downloads the official Mullvad VPN .deb packages and detached signatures over HTTPS from the upstream Mullvad GitHub releases page. The binary package checksums are pinned for both x86_64 and aarch64, and a Mullvad code-signing PGP key is configured. The SKIP checksum on the detached .asc files is normal and not a security concern in itself.

The prepare and package functions only extract the upstream archive into isolated directories, split contents between the desktop and daemon packages, remove files that belong to the other split package, install the wrapper script, and create symlinks inside `$pkgdir`. There are no eval, base64, curl, wget, or unexpected network operations, no writes outside packaging directories, and no sign of obfuscated or injected malicious code.
</details>
<evidence></evidence>
<summary>No malicious behavior; standard official Mullvad split package.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior; standard official Mullvad split package.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,797
  Completion Tokens: 18,186
  Total Tokens: 41,983
  Total Cost: $0.005331
  Execution Time: 636.06 seconds

Final Status: SAFE


No issues found.
