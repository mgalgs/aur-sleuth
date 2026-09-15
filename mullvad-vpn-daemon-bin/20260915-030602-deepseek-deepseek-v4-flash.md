---
package: mullvad-vpn-daemon-bin
pkgbase: mullvad-vpn-bin
pkgver: 2026.5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 23720
completion_tokens: 7022
total_tokens: 30742
cost: 0.003346116984
execution_time: 118.42
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 2
injection_attempts: 0
date: 2026-09-15T03:06:02Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: LICENSE
    status: safe
    summary: Standard license file, no executable content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security issues found.
  - file: .nvchecker.toml
    status: safe
    summary: Benign nvchecker config pointing to official upstream repo; no malicious behavior.
  - file: mullvad-vpn.install
    status: safe
    summary: Standard install script, no security issues.
  - file: mullvad-vpn.sh
    status: safe
    summary: Standard launcher wrapper for Mullvad VPN; no malicious behavior found.
  - file: mullvad-vpn-daemon.install
    status: safe
    summary: Standard Mullvad VPN package install script; no malicious behavior found.
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
The PKGBUILD contains only standard variable assignments (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.) and function definitions (`prepare`, `package_mullvad-vpn-bin`, `package_mullvad-vpn-daemon-bin`). No top-level command substitutions, `eval`, `curl`, `wget`, or other code execution constructs are present. Sourcing the file for `makepkg --printsrcinfo` will not execute any malicious payload. All potentially risky operations (e.g., `bsdtar`, `rm`, `install`) reside inside the packaging functions, which are not invoked during this step.
</details>
<evidence></evidence>
<summary>No top-level execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution risk.
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://github.com/mullvad/mullvadvpn-app/releases/download/2026.5/MullvadVPN-2026.5_amd64.deb.asc, https://github.com/mullvad/mullvadvpn-app/releases/download/2026.5/MullvadVPN-2026.5_arm64.deb.asc
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .gitignore...
[0/8] Reviewing .gitignore, .SRCINFO...
[0/8] Reviewing .gitignore, .SRCINFO, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This .gitignore file is a standard configuration file used by Git to specify intentionally untracked files. It only contains comments and path patterns (using the ignore-everything-then-unignore-specific-files pattern). There are no commands, network requests, encoded data, or any other executable or dangerous content. It is a benign file consistent with routine AUR package maintenance.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[0/8] Reviewing .gitignore, .SRCINFO, .nvchecker.toml, LICENSE...
[1/8] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC license text attributed to "Arch Linux Contributors". It contains no code, no instructions, no network requests, no obfuscation, and no file operations. It is a purely informational license file with no security implications.
</details>
<evidence></evidence>
<summary>Standard license file, no executable content.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, .nvchecker.toml, LICENSE, PKGBUILD...
[2/8] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no executable content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package for Mullvad VPN. It downloads official `.deb` releases from the project's GitHub repository, verifies the binary archives with provided SHA256 checksums (signature files are appropriately SKIPped), and extracts the contents using `bsdtar`. Installation steps are normal: installing binaries, systemd service files, shell completions, and configuration files from the extracted package. No obfuscated code, unexpected network requests, eval, or data exfiltration present. The splitting into two subpackages is a typical packaging pattern. No security concerns identified.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious content.</summary>
</security_assessment>

[2/8] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, mullvad-vpn-daemon.install...
[3/8] Reviewing .SRCINFO, .nvchecker.toml, mullvad-vpn-daemon.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR .SRCINFO metadata file. It describes a binary package for Mullvad VPN, fetching official .deb releases from the project&#8217;s GitHub page (HTTPS). All source URLs point to the upstream vendor&#8217;s release assets, checksums are provided for the binary archives, and the PGP key fingerprint for signature verification is listed. No obfuscated code, embedded commands, suspicious network destinations, or unexpected operations are present. The file is purely declarative and follows routine packaging conventions.</details>
<evidence></evidence>
<summary>Standard metadata file, no security issues found.</summary>
</security_assessment>

[3/8] Reviewing .SRCINFO, .nvchecker.toml, mullvad-vpn-daemon.install, mullvad-vpn.install...
[4/8] Reviewing .nvchecker.toml, mullvad-vpn-daemon.install, mullvad-vpn.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security issues found.
LLM auditresponse for .nvchecker.toml:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file used by AUR maintainers to automate version checks for updates. The only network endpoint referenced is the official upstream GitHub repository for the Mullvad VPN app (`https://github.com/mullvad/mullvadvpn-app.git`), which is expected and appropriate for this package. The settings instruct nvchecker to track the latest release and exclude alpha/beta/rc pre-release versions via a normal regex pattern. There is no executable code, no obfuscation, no suspicious downloads, no data exfiltration, and no system modification of any kind. This is an ordinary packaging automation file with no security concerns.
</details>
<evidence>
</evidence>
<summary>
Benign nvchecker config pointing to official upstream repo; no malicious behavior.
</summary>
</security_assessment>

[4/8] Reviewing .nvchecker.toml, mullvad-vpn-daemon.install, mullvad-vpn.install, mullvad-vpn.sh...
[5/8] Reviewing mullvad-vpn-daemon.install, mullvad-vpn.install, mullvad-vpn.sh...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign nvchecker config pointing to official upstream repo; no malicious behavior.
LLM auditresponse for mullvad-vpn.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script (`.install`). It contains two hooks:  
- `post_install()`: Reloads an AppArmor profile for Mullvad VPN if `apparmor_parser` is available. This is normal and expected for a package that ships an AppArmor profile.  
- `post_remove()`: Prints a reminder for the user to optionally remove an autostart desktop file. This is a common courtesy message.  

There are no network requests, obfuscated code, suspicious file operations, or any behavior that deviates from legitimate packaging practices. The script only touches files that belong to the package itself and uses tools in their intended manner.
</details>
<evidence></evidence>
<summary>Standard install script, no security issues.</summary>
</security_assessment>

[6/8] Reviewing mullvad-vpn-daemon.install, mullvad-vpn.sh...
+ Reviewed mullvad-vpn.install. Status: SAFE -- Standard install script, no security issues.
LLM auditresponse for mullvad-vpn.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a trivial launcher wrapper for the Mullvad VPN client. It executes the application binary from its standard installation location (`/opt/Mullvad VPN/mullvad-vpn`) and forwards the desktop-entry `%U` argument (URLs/files) to it. This is ordinary, expected packaging practice for a GUI application installed under `/opt`.

There is no obfuscation, no network activity, no downloads, no use of dangerous shell constructs (eval, base64, curl, wget), and no file manipulation outside the application's own scope. The script does exactly what its name and placement suggest: it starts the installed Mullvad VPN client. No injected or malicious behavior is present. (The `&quot;` entities are an artifact of HTML/XML escaping in how the file was presented; the actual script contains normal double quotes.)
</details>
<evidence>
</evidence>
<summary>
Standard launcher wrapper for Mullvad VPN; no malicious behavior found.
</summary>
</security_assessment>

[7/8] Reviewing mullvad-vpn-daemon.install...
+ Reviewed mullvad-vpn.sh. Status: SAFE -- Standard launcher wrapper for Mullvad VPN; no malicious behavior found.
LLM auditresponse for mullvad-vpn-daemon.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch package install script for the Mullvad VPN daemon. It stops and disables the package's own systemd services, calls the package's own `mullvad-setup` helper to reset the firewall and remove the device from the user's account, and clears Mullvad-specific cache/log files. `post_install` enables the Mullvad daemon and sets the setuid bit on `mullvad-exclude`, which is consistent with the application's intended split-tunnel helper behavior. `pre_remove` also only handles Mullvad services and prints optional cleanup commands for Mullvad's own files.

No obfuscated code, no unexpected downloads, no execution of fetched scripts, and no exfiltration of user data is present. The only network-adjacent action is the upstream `mullvad-setup remove-device` account operation, which is normal application functionality during removal. The `chmod u+s` is worth noting as a privilege-related file mode, but it is applied to the package's own helper binary and matches upstream behavior, so it is not evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard Mullvad VPN package install script; no malicious behavior found.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed mullvad-vpn-daemon.install. Status: SAFE -- Standard Mullvad VPN package install script; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,720
  Completion Tokens: 7,022
  Total Tokens: 30,742
  Total Cost: $0.003346
  Execution Time: 118.42 seconds

Final Status: SAFE


No issues found.
