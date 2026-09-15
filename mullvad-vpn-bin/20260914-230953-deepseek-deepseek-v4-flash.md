---
package: mullvad-vpn-bin
pkgver: 2026.5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 23856
completion_tokens: 11814
total_tokens: 35670
cost: 0.00354990384
execution_time: 331.83
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 2
injection_attempts: 0
date: 2026-09-14T23:09:52Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no executable or dangerous content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; official Mullvad sources; no malicious behavior detected.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config tracking upstream Mullvad releases; no malicious behavior detected.
  - file: LICENSE
    status: safe
    summary: Standard ISC license text; no executable or malicious content.
  - file: mullvad-vpn-daemon.install
    status: safe
    summary: Install script performs standard Mullvad service management and cleanup; no malicious behavior found.
  - file: mullvad-vpn.install
    status: safe
    summary: "Benign packaging script: reloads Mullvad AppArmor profile and prints optional cleanup guidance."
  - file: mullvad-vpn.sh
    status: safe
    summary: Trivial launcher script running the installed Mullvad binary; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard Mullvad split-package PKGBUILD; no malicious or suspicious behavior found.
---

Materializing mullvad-vpn-bin from local mirror...
Materialized mullvad-vpn-bin
Analyzing mullvad-vpn-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `makepkg --printsrcinfo` only executes the top-level variable and array definitions: `pkgname`, `pkgver`, `source`, `sha256sums`, `validpgpkeys`, and similar metadata. There are no top-level command substitutions, no `eval`, no `curl`/`wget`, no base64/obfuscated payloads, and no network or file operations in the global scope. The `prepare()`, `package_mullvad-vpn-bin()`, and related functions are not executed during `--printsrcinfo`, so their contents are out of scope for this narrow gate. No genuinely malicious behavior is present at source time.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD metadata only; no malicious code executes during --printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD metadata only; no malicious code executes during --printsrcinfo.
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://github.com/mullvad/mullvadvpn-app/releases/download/2026.5/MullvadVPN-2026.5_amd64.deb.asc, https://github.com/mullvad/mullvadvpn-app/releases/download/2026.5/MullvadVPN-2026.5_arm64.deb.asc
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files except the listed packaging files (`PKGBUILD`, `.SRCINFO`, `.nvchecker.toml`, `LICENSE`, and the install scripts). There is no executable code, no network operations, no obfuscation, and no dangerous commands. It serves only to keep the git repository clean of untracked build artifacts and stray files, which is normal AUR maintainer practice.

No evidence of malicious or suspicious behavior was found. The file contains only git ignore patterns and does not affect the built package or the system in any way.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore file with no executable or dangerous content.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no executable or dangerous content.
[1/8] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `mullvad-vpn-bin` package. All sources point to the official Mullvad GitHub releases page and use HTTPS. The `.deb` packages have pinned SHA-256 checksums; the `.asc` signature files use `SKIP`, which is a trust/hygiene choice (signature verification is performed via `validpgpkeys` instead) and is not malicious.

The package declares expected runtime dependencies, an install hook, and split package metadata for the daemon. There are no suspicious network endpoints, no encoded or obfuscated commands, no unexpected file operations, and no evidence of injected malicious code. This file follows normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata; official Mullvad sources; no malicious behavior detected.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, .nvchecker.toml, LICENSE, PKGBUILD...
[2/8] Reviewing .nvchecker.toml, LICENSE, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; official Mullvad sources; no malicious behavior detected.
LLM auditresponse for .nvchecker.toml:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is an nvchecker configuration used by the AUR maintainer to track the latest stable release of the Mullvad VPN application. It defines the upstream GitHub repository for mullvadvpn-app, requests the maximum release, and excludes alpha/beta/rc versions. There is no code execution, no suspicious network target, no obfuscation, and no file system manipulation. The only network destination is the application's own official upstream GitHub repository, which is consistent with standard packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard nvchecker config tracking upstream Mullvad releases; no malicious behavior detected.
</summary>
</security_assessment>

[2/8] Reviewing .nvchecker.toml, LICENSE, PKGBUILD, mullvad-vpn-daemon.install...
[3/8] Reviewing LICENSE, PKGBUILD, mullvad-vpn-daemon.install...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config tracking upstream Mullvad releases; no malicious behavior detected.
LLM auditresponse for LICENSE:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text ISC-style license. It contains only the copyright notice ("Copyright Arch Linux Contributors") and standard license terms granting permission to use, copy, modify, and/or distribute the software. There is no executable code, no network requests, no file operations, no obfuscation, and no embedded instructions. It is exactly what a LICENSE file is expected to contain in a packaging repository. No security concerns whatsoever.
</details>
<evidence>
</evidence>
<summary>
Standard ISC license text; no executable or malicious content.</summary>
</security_assessment>

[4/8] Reviewing PKGBUILD, mullvad-vpn-daemon.install...
+ Reviewed LICENSE. Status: SAFE -- Standard ISC license text; no executable or malicious content.
[4/8] Reviewing PKGBUILD, mullvad-vpn-daemon.install, mullvad-vpn.install...
LLM auditresponse for mullvad-vpn-daemon.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script for the Mullvad VPN daemon. The `pre_install` and `pre_upgrade` hooks stop and disable the Mullvad systemd services before replacing the package, which is normal behavior for a daemon package. The `post_install` hook enables the daemon and sets the setuid bit on `/usr/bin/mullvad-exclude`, which is a stated Mullvad feature allowing exclusion of processes from the VPN tunnel and requires elevated privileges. This is expected application functionality, not an injected attack.

The `pre_remove` hook stops/disables the Mullvad services and invokes `/opt/Mullvad VPN/resources/mullvad-setup` to reset the firewall and remove the device from the account. These commands operate within the application&apos;s own scope (Mullvad firewall state and Mullvad account device registration) and are consistent with cleanly removing the VPN package. The `post_remove` hook only prints informational messages about optionally deleting Mullvad-related logs, cache, and config files. No data exfiltration, obfuscated code, unexpected network downloads, or execution of attacker-controlled content is present.
</details>
<evidence>
</evidence>
<summary>
Install script performs standard Mullvad service management and cleanup; no malicious behavior found.</summary>
</security_assessment>

[4/8] Reviewing PKGBUILD, mullvad-vpn-daemon.install, mullvad-vpn.install, mullvad-vpn.sh...
[5/8] Reviewing PKGBUILD, mullvad-vpn.install, mullvad-vpn.sh...
+ Reviewed mullvad-vpn-daemon.install. Status: SAFE -- Install script performs standard Mullvad service management and cleanup; no malicious behavior found.
LLM auditresponse for mullvad-vpn.install:
 <security_assessment>
<decision>SAFE</decision>
<details>
This `.install` script performs two routine package management actions. In `post_install()`, it reloads the Mullvad AppArmor profile using `apparmor_parser -r`, which is a standard post-install operation for packages that ship an AppArmor profile. The command is guarded by a check that the parser exists, and failures are reported without masking the installation. In `post_remove()`, it only prints an informational message telling the user how to optionally remove an autostart entry; it does not modify any files.

There is no network access, no obfuscation, no execution of downloaded code, no data exfiltration, and no modification of files outside the package's own application scope. The AppArmor profile reload targets `/etc/apparmor.d/mullvad`, which is directly related to the application's stated purpose. The optional autostart removal message is ordinary user guidance and is not a security concern.
</details>
<evidence>
</evidence>
<summary>
Benign packaging script: reloads Mullvad AppArmor profile and prints optional cleanup guidance.</summary>
</security_assessment>

[6/8] Reviewing PKGBUILD, mullvad-vpn.sh...
+ Reviewed mullvad-vpn.install. Status: SAFE -- Benign packaging script: reloads Mullvad AppArmor profile and prints optional cleanup guidance.
LLM auditresponse for mullvad-vpn.sh:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a minimal shell launcher that executes the Mullvad VPN application binary installed at `/opt/Mullvad VPN/mullvad-vpn`. There are no network operations, no encoded or obfuscated commands, no file modifications outside the application scope, and no use of dangerous constructs such as `eval`, `curl`, `wget`, or `base64`.

The only notable observation is that `%U` is a desktop-entry field code, not meaningful in a shell script context; it would be passed as a literal argument to the application. This is a harmless packaging flaw (the launcher appears to be a re-purposed `.desktop` Exec line), not a security issue. It does not fetch or execute any untrusted content.
</details>
<evidence>
</evidence>
<summary>
Trivial launcher script running the installed Mullvad binary; no malicious behavior.
</summary>
</security_assessment>

[7/8] Reviewing PKGBUILD...
+ Reviewed mullvad-vpn.sh. Status: SAFE -- Trivial launcher script running the installed Mullvad binary; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard split-package build for the official Mullvad VPN binary application. All downloads come from the project&apos;s own GitHub release host (github.com/mullvad/mullvadvpn-app), the `.deb` payloads have pinned sha256 checksums, and the Mullvad code-signing PGP key is declared in `validpgpkeys`. The `SKIP` entries apply only to the `.asc` signature files, which is normal practice since makepkg verifies those signatures against `validpgpkeys` rather than hashing them.

The `prepare()` and package functions only extract the upstream `data.tar.xz` and move or remove files inside the `$pkgdir` staging tree (binaries, resources, completions, systemd units, and an AppArmor profile symlink). There are no network fetches at build time, no `eval`/`base64`/`curl|bash` patterns, no obfuscation, and no operations that escape the package staging directory. The AppArmor symlink and the user-namespace note describe upstream configuration that supports the Electron client&apos;s sandbox, which is the application&apos;s own stated functionality rather than injected code.

The only noteworthy items are hygiene or trust choices, not threats: checksums are `SKIP` for the `.asc` files, and the AppArmor profile loosens user-namespace restrictions. Neither constitutes malicious behavior, and no evidence of supply-chain injection was found in this file.
</details>
<evidence></evidence>
<summary>Standard Mullvad split-package PKGBUILD; no malicious or suspicious behavior found.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Mullvad split-package PKGBUILD; no malicious or suspicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,856
  Completion Tokens: 11,814
  Total Tokens: 35,670
  Total Cost: $0.003550
  Execution Time: 331.83 seconds

Final Status: SAFE


No issues found.
