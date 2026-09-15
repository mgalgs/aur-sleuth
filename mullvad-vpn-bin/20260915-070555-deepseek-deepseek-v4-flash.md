---
package: mullvad-vpn-bin
pkgver: 2026.5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 23619
completion_tokens: 5648
total_tokens: 29267
cost: 0.003093678490
execution_time: 127.42
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 2
injection_attempts: 0
date: 2026-09-15T07:05:55Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with no malicious content.
  - file: .gitignore
    status: safe
    summary: Benign .gitignore whitelisting packaging files; no security issues found.
  - file: LICENSE
    status: safe
    summary: Standard license file with no security concerns.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config querying the official Mullvad GitHub repo; no malicious behavior.
  - file: mullvad-vpn.install
    status: safe
    summary: Routine AppArmor reload and informational removal message; no malicious behavior found.
  - file: mullvad-vpn.sh
    status: safe
    summary: "Standard launcher script executing the package's own binary; no suspicious behavior."
  - file: PKGBUILD
    status: safe
    summary: Standard Mullvad VPN split package; no malicious or unexpected behavior found.
  - file: mullvad-vpn-daemon.install
    status: safe
    summary: Routine Mullvad VPN lifecycle script; no malicious behavior found.
---

Materializing mullvad-vpn-bin from local mirror...
Materialized mullvad-vpn-bin
Analyzing mullvad-vpn-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard top-level variable definitions (pkgname, pkgver, source, checksums, etc.) and function definitions (prepare, package_mullvad-vpn-bin, package_mullvad-vpn-daemon-bin). There are no command substitutions, backticks, eval, or any other executable statements in the global scope. The source URLs use simple string interpolation of the static `$pkgver` variable, which is set to a literal string. No code runs during sourcing that could download or execute untrusted payloads. The functions are not invoked at top level. Therefore, `makepkg --printsrcinfo` is safe to run.
</details>
<evidence></evidence>
<summary>No top-level code execution risks.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risks.
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
The `.SRCINFO` file is a standard AUR package metadata file. It declares sources from the official Mullvad VPN GitHub releases, pinned to a specific version (2026.5). Checksums are provided for the main `.deb` archives, while the `.asc` signature files use `SKIP` — a common and accepted practice because signature files are not checksummed.  

No suspicious URLs, obfuscated content, dangerous commands, or attempts to exfiltrate data are present. All dependencies are standard for a VPN client (gtk3, libnftnl, etc.). There is no evidence of supply-chain attack or malicious behavior in this file alone. Note that `aur-sleuth` or a similar tool is responsible for flagging unpinned VCS sources or missing checksum verification elsewhere; this file is clean.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO with no malicious content.</summary>
</security_assessment>

[1/8] Reviewing .gitignore, .nvchecker.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with no malicious content.
[1/8] Reviewing .gitignore, .nvchecker.toml, LICENSE...
LLM auditresponse for .gitignore:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used by an AUR maintainer to keep a git repository clean. It ignores all files by default (`/*`) and then whitelists only the packaging-related files that should be tracked (`PKGBUILD`, `.SRCINFO`, `.nvchecker.toml`, `LICENSE`, install scripts, and a shell wrapper). There is no executable code, no network activity, no obfuscation, no file manipulation, and nothing that deviates from normal AUR repository practices. No security concerns are present.
</details>
<evidence>
</evidence>
<summary>
Benign .gitignore whitelisting packaging files; no security issues found.</summary>
</security_assessment>

[1/8] Reviewing .gitignore, .nvchecker.toml, LICENSE, PKGBUILD...
[2/8] Reviewing .nvchecker.toml, LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore whitelisting packaging files; no security issues found.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain-text license file (ISC-style, attributed to Arch Linux Contributors). It contains only legal text granting permissions and disclaimers. There is no executable code, no network requests, no system modifications, no obfuscation, and no instructions that could be interpreted as malicious. This is a standard, harmless document that accompanies many AUR packages.
</details>
<evidence></evidence>
<summary>Standard license file with no security concerns.</summary>
</security_assessment>

[2/8] Reviewing .nvchecker.toml, LICENSE, PKGBUILD, mullvad-vpn-daemon.install...
[3/8] Reviewing .nvchecker.toml, PKGBUILD, mullvad-vpn-daemon.install...
+ Reviewed LICENSE. Status: SAFE -- Standard license file with no security concerns.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `nvchecker` configuration used by AUR helpers to detect the latest upstream release version. It points to the Mullvad VPN application's official GitHub repository (`https://github.com/mullvad/mullvadvpn-app.git`), uses `use_max_release = true` to select the newest release, and excludes pre-release versions via `exclude_regex`.

There are no network requests to unexpected hosts, no code execution, no obfuscated commands, and no file operations. The configuration only instructs nvchecker to query the package's own upstream repository for version information. This is normal and non-malicious AUR packaging tooling.
</details>
<evidence>
</evidence>
<summary>
Standard nvchecker config querying the official Mullvad GitHub repo; no malicious behavior.</summary>
</security_assessment>

[3/8] Reviewing .nvchecker.toml, PKGBUILD, mullvad-vpn-daemon.install, mullvad-vpn.install...
[4/8] Reviewing PKGBUILD, mullvad-vpn-daemon.install, mullvad-vpn.install...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config querying the official Mullvad GitHub repo; no malicious behavior.
LLM auditresponse for mullvad-vpn.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install script performs only a routine post-install action: if `apparmor_parser` is present, it reloads the Mullvad AppArmor profile from `/etc/apparmor.d/mullvad`. This is a standard operation for an application that ships an AppArmor profile and does not involve downloading, executing untrusted code, or modifying unrelated system files.

The post-remove hook only prints a message reminding the user they can optionally remove an autostart desktop entry. It performs no destructive actions and does not touch any data outside the application's own scope. No suspicious network requests, obfuscation, or dangerous commands are present.
</details>
<evidence>
</evidence>
<summary>
Routine AppArmor reload and informational removal message; no malicious behavior found.</summary>
</security_assessment>

[4/8] Reviewing PKGBUILD, mullvad-vpn-daemon.install, mullvad-vpn.install, mullvad-vpn.sh...
[5/8] Reviewing PKGBUILD, mullvad-vpn-daemon.install, mullvad-vpn.sh...
+ Reviewed mullvad-vpn.install. Status: SAFE -- Routine AppArmor reload and informational removal message; no malicious behavior found.
LLM auditresponse for mullvad-vpn.sh:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop launcher script. It simply executes the Mullvad VPN binary installed by the package at `/opt/Mullvad VPN/mullvad-vpn`, passing through `%U` (the desktop-environment URL argument placeholder). The path is properly quoted to handle the space in the directory name. There is no network activity, no obfuscation, no encoding, no dangerous command substitution, and no deviation from normal packaging practices. The script only runs the application's own installed binary.
</details>
<evidence>
</evidence>
<summary>
Standard launcher script executing the package's own binary; no suspicious behavior.</summary>
</security_assessment>

[6/8] Reviewing PKGBUILD, mullvad-vpn-daemon.install...
+ Reviewed mullvad-vpn.sh. Status: SAFE -- Standard launcher script executing the package's own binary; no suspicious behavior.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard split-package build for the official Mullvad VPN binary client. It downloads the upstream `.deb` packages from the project&apos;s own GitHub releases over HTTPS, verifies them with pinned SHA-256 checksums, and references the package maintainer&apos;s PGP key. The `SKIP` entry applies only to the optional `.asc` signature file, which is a hygiene concern rather than evidence of malicious behavior.

The prepare and package functions perform ordinary packaging operations: extracting the upstream data archive, installing binaries and resources into `$pkgdir`, removing files that belong to the companion daemon split package, and installing completions, systemd units, and an AppArmor profile. All file operations target `$pkgdir` or create a symlink under the package&apos;s own AppArmor directory. There is no obfuscated code, no unexpected network fetching, no execution of downloaded scripts, and no attempt to modify host files outside the package installation path.

The AppArmor symlink and resource removals are consistent with the application&apos;s stated purpose and standard AUR packaging practices. No injected or malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>
Standard Mullvad VPN split package; no malicious or unexpected behavior found.</summary>
</security_assessment>

[7/8] Reviewing mullvad-vpn-daemon.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Mullvad VPN split package; no malicious or unexpected behavior found.
LLM auditresponse for mullvad-vpn-daemon.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard package lifecycle script for the Mullvad VPN daemon. It stops and disables the daemon services, backs up the daemon log, clears Mullvad cache files, enables the daemon after installation, and stops services during removal. These actions are all consistent with the application&apos;s stated purpose and typical AUR package maintenance.

The `chmod u+s` on `/usr/bin/mullvad-exclude` grants setuid to Mullvad&apos;s own helper binary. This is a security-relevant permission change, but it is plausibly required by Mullvad&apos;s upstream design for the exclude helper to function with elevated privileges. There is no evidence of tampering or of an unexpected file being made setuid.

The `pre_remove` function invokes `/opt/Mullvad VPN/resources/mullvad-setup reset-firewall` and `remove-device`. These are upstream Mullvad utilities and serve the application&apos;s own functionality, including optionally contacting Mullvad&apos;s backend to remove the device from the account. No obfuscated code, external downloads, credential theft, backdoors, or unexpected system modifications are present.
</details>
<evidence>
</evidence>
<summary>
Routine Mullvad VPN lifecycle script; no malicious behavior found.
</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed mullvad-vpn-daemon.install. Status: SAFE -- Routine Mullvad VPN lifecycle script; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,619
  Completion Tokens: 5,648
  Total Tokens: 29,267
  Total Cost: $0.003094
  Execution Time: 127.42 seconds

Final Status: SAFE


No issues found.
