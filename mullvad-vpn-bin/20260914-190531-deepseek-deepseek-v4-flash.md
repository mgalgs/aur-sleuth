---
package: mullvad-vpn-bin
pkgver: 2026.5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 23698
completion_tokens: 9772
total_tokens: 33470
cost: 0.00349914264
execution_time: 292.3
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 2
injection_attempts: 0
date: 2026-09-14T19:05:31Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for tracking upstream releases.
  - file: LICENSE
    status: safe
    summary: License file with no security concerns.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no executable or malicious content. Safe.
  - file: .SRCINFO
    status: safe
    summary: No malicious behavior; standard AUR metadata for the Mullvad VPN binary package.
  - file: mullvad-vpn.install
    status: safe
    summary: Standard package install script; reloads AppArmor profile and prints optional cleanup reminder. No malicious behavior.
  - file: mullvad-vpn.sh
    status: safe
    summary: Simple, expected launcher script; no malicious behavior found.
  - file: mullvad-vpn-daemon.install
    status: safe
    summary: No malicious behavior found; script performs routine Mullvad service and cleanup operations.
  - file: PKGBUILD
    status: safe
    summary: No evidence of malicious behavior; standard signed Mullvad binary packaging.
---

Materializing mullvad-vpn-bin from local mirror...
Materialized mullvad-vpn-bin
Analyzing mullvad-vpn-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD contains only standard top-level variable assignments (pkgname, pkgver, source, checksums, dependencies) and function definitions for prepare() and package(). Running `makepkg --printsrcinfo` sources the PKGBUILD but does not execute function bodies, and no top-level command substitutions, eval, curl, wget, or file-exfiltration statements are present. Therefore the metadata-printing step is safe.

Function bodies contain normal packaging operations such as extracting the downloaded .deb data, installing binaries and resources, and creating an AppArmor symlink. These are outside the scope of `makepkg --printsrcinfo` and will be reviewed in the full PKGBUILD audit.
</details>
<evidence>
</evidence>
<summary>
Top-level scope is static declarations only; no malicious code executes during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is static declarations only; no malicious code executes during printsrcinfo.
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://github.com/mullvad/mullvadvpn-app/releases/download/2026.5/MullvadVPN-2026.5_amd64.deb.asc, https://github.com/mullvad/mullvadvpn-app/releases/download/2026.5/MullvadVPN-2026.5_arm64.deb.asc
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for nvchecker, a tool used to monitor upstream releases. It points to the official Mullvad VPN GitHub repository and filters for stable releases. There is no malicious content such as obfuscated code, suspicious network requests, or unexpected commands. The configuration is standard and serves the legitimate purpose of version tracking.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for tracking upstream releases.</summary>
</security_assessment>

[0/8] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, LICENSE...
[1/8] Reviewing .SRCINFO, .gitignore, LICENSE...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for tracking upstream releases.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC-style license text. It contains no executable code, network requests, obfuscated content, or any behavior that could be considered malicious. It is simply a permission grant and disclaimer of liability. No security concerns.
</details>
<evidence></evidence>
<summary>License file with no security concerns.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, .gitignore, LICENSE, PKGBUILD...
[2/8] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- License file with no security concerns.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files except the ones required for the AUR package: `PKGBUILD`, `.SRCINFO`, `.nvchecker.toml`, `LICENSE`, the install scripts, and the main executable shell script. This pattern is normal and expected for AUR git repositories, which typically track only packaging metadata and not build artifacts or downloaded sources.

There is no executable code, no network access, no obfuscation, no file manipulation, and no behavior that could constitute a supply-chain attack. The file only defines version-control ignore rules. Nothing in it deviates from standard packaging practices or poses any security risk.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore with no executable or malicious content. Safe.</summary>
</security_assessment>

[3/8] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no executable or malicious content. Safe.
[3/8] Reviewing .SRCINFO, PKGBUILD, mullvad-vpn-daemon.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a `.SRCINFO` metadata description for the `mullvad-vpn-bin` AUR package. It contains no executable code, no shell commands, and no install-time logic. It only declares package metadata: names, descriptions, dependencies, conflicts, architecture-specific source URLs, PGP keys, and checksums.

The sources point to the official Mullvad GitHub releases for the Mullvad VPN application (`https://github.com/mullvad/mullvadvpn-app/releases/...`), which matches the package's stated purpose. The SHA-256 checksums include one real hash for the `.deb` package and `SKIP` for the accompanying `.asc` signature file; skipping the checksum on a detached signature is not itself evidence of malice and is not a supply-chain red flag. The valid PGP key is also listed, and the `.asc` files are included so the signature can be verified.

No suspicious network destinations, obfuscated content, dangerous commands, credential access, backdoors, or unexpected file operations are present. This is consistent with standard AUR packaging practice for a prebuilt binary package.
</details>
<evidence>
</evidence>
<summary>
No malicious behavior; standard AUR metadata for the Mullvad VPN binary package.</summary>
</security_assessment>

[3/8] Reviewing .SRCINFO, PKGBUILD, mullvad-vpn-daemon.install, mullvad-vpn.install...
[4/8] Reviewing PKGBUILD, mullvad-vpn-daemon.install, mullvad-vpn.install...
+ Reviewed .SRCINFO. Status: SAFE -- No malicious behavior; standard AUR metadata for the Mullvad VPN binary package.
LLM auditresponse for mullvad-vpn.install:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script for the Mullvad VPN binary package. The `post_install()` function reloads the package's AppArmor profile using `apparmor_parser -r /etc/apparmor.d/mullvad` if the parser is present. This is a legitimate post-install maintenance action directly related to the application's stated purpose. The `post_remove()` function only prints a user-friendly reminder about optionally removing an autostart entry; it does not delete anything itself.

No suspicious behavior is present: there are no network requests, no downloads, no base64/obfuscation, no `eval`, no dynamic command construction, no writes to sensitive system files, and no execution of untrusted external code. The script is limited to reloading the package's own AppArmor profile and displaying informational messages, consistent with normal packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard package install script; reloads AppArmor profile and prints optional cleanup reminder. No malicious behavior.
</summary>
</security_assessment>

[5/8] Reviewing PKGBUILD, mullvad-vpn-daemon.install...
+ Reviewed mullvad-vpn.install. Status: SAFE -- Standard package install script; reloads AppArmor profile and prints optional cleanup reminder. No malicious behavior.
[5/8] Reviewing PKGBUILD, mullvad-vpn-daemon.install, mullvad-vpn.sh...
LLM auditresponse for mullvad-vpn.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a minimal launcher script that executes the Mullvad VPN application from its installed location under `/opt/Mullvad VPN`. The command is properly quoted, and `%U` is a standard placeholder intended for file/URL arguments passed by a desktop environment. There are no network requests, downloads, encoded payloads, environment variable manipulation, file exfiltration, or other suspicious operations. The behavior is consistent with an ordinary application launcher in an AUR binary package.
</details>
<evidence>
</evidence>
<summary>
Simple, expected launcher script; no malicious behavior found.</summary>
</security_assessment>

[6/8] Reviewing PKGBUILD, mullvad-vpn-daemon.install...
+ Reviewed mullvad-vpn.sh. Status: SAFE -- Simple, expected launcher script; no malicious behavior found.
LLM auditresponse for mullvad-vpn-daemon.install:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard package install script for the Mullvad VPN daemon. It manages systemd services (`mullvad-daemon`, `mullvad-early-boot-blocking`), resets the VPN firewall on uninstall, removes the device from the user&apos;s Mullvad account, and removes a few Mullvad cache files. All commands target Mullvad&apos;s own files, services, and configuration paths. No obfuscation, suspicious downloads, hidden network exfiltration, or execution of attacker-controlled code is present.

The `chmod u+s /usr/bin/mullvad-exclude` operation grants setuid to a Mullvad helper binary. This is a privilege-sensitive operation, but it is consistent with Mullvad&apos;s intended functionality for an exclusion helper and is not evidence of an injected supply-chain attack. The `post_remove` function only prints optional cleanup commands; it does not execute them.
</details>
<evidence>
</evidence>
<summary>
No malicious behavior found; script performs routine Mullvad service and cleanup operations.
</summary>
</security_assessment>

[7/8] Reviewing PKGBUILD...
+ Reviewed mullvad-vpn-daemon.install. Status: SAFE -- No malicious behavior found; script performs routine Mullvad service and cleanup operations.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads Mullvad&apos;s official signed `.deb` packages from the project&apos;s own GitHub releases, pins SHA-256 checksums for the `.deb` files, and lists the upstream Mullvad code-signing PGP key. Extracting the package archive and installing files into `$pkgdir` are normal packaging operations. The `SKIP` checksums apply only to the `.asc` signature files, which is not suspicious because the signatures themselves are PGP-verified.

No obfuscation, suspicious network destinations, credential access, unexpected executable downloads, or operations outside the package installation scope are present. The visible install commands only place binaries, resources, systemd units, completions, and an AppArmor profile into the package directory. This is consistent with standard AUR packaging for a signed upstream binary release.
</details>
<evidence></evidence>
<summary>
No evidence of malicious behavior; standard signed Mullvad binary packaging.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No evidence of malicious behavior; standard signed Mullvad binary packaging.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,698
  Completion Tokens: 9,772
  Total Tokens: 33,470
  Total Cost: $0.003499
  Execution Time: 292.30 seconds

Final Status: SAFE


No issues found.
