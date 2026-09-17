---
package: whisparr-nightly-bin
pkgver: 2.2.0.develop.353
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 25334
completion_tokens: 6775
total_tokens: 32109
cost: 0.00272188
execution_time: 97.25
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-17T19:16:42Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard version checker configuration, no security issues.
  - file: .gitignore
    status: safe
    summary: Standard whitelist .gitignore; no malicious or suspicious content found.
  - file: .SRCINFO
    status: safe
    summary: Clean .SRCINFO; pinned checksums, official upstream sources, no malicious or suspicious content.
  - file: package_info
    status: safe
    summary: Plain metadata file; no executable or malicious content found.
  - file: whisparr.service
    status: safe
    summary: Standard hardened systemd unit for Whisparr daemon; no malicious behavior found.
  - file: whisparr.sysusers
    status: safe
    summary: Routine sysusers configuration for daemon user and group; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for pre-built nightly binaries, no malicious content.
  - file: whisparr.install
    status: safe
    summary: Benign .install script that only prints user guidance messages.
  - file: whisparr.tmpfiles
    status: safe
    summary: Standard tmpfiles configuration for application data and symlinks; no malicious behavior.
---

Materializing whisparr-nightly-bin from local mirror...
Materialized whisparr-nightly-bin
Analyzing whisparr-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable assignments, array definitions (source, sha256sums), and metadata declarations. No command substitutions, backticks, `eval`, or any other executable constructs appear in the global scope. Variable expansions in source URLs (e.g., `${pkgver}`, `${_pkgver}`) are purely string interpolation and do not execute commands. There is no top-level code that would perform network requests, file modifications, or run untrusted payloads during `makepkg --printsrcinfo`. The `package()` function is defined but not executed during this step; it will be audited separately. Therefore, sourcing this PKGBUILD for metadata extraction is safe.
</details>
<evidence></evidence>
<summary>Sourcing PKGBUILD is safe; no malicious top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing PKGBUILD is safe; no malicious top-level code.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, .gitignore...
[0/9] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard configuration file for nvchecker, a tool used to check for new upstream versions. It specifies a git source pointing to the official Whisparr repository on GitHub, with version pattern extraction rules. No malicious behavior is present — it contains only configuration data and does not execute any commands, fetch content from unexpected hosts, or perform system modifications. The file is consistent with normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard version checker configuration, no security issues.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/9] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard version checker configuration, no security issues.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package git repository. It uses a whitelist pattern (ignore everything, then un-ignore specific files) to ensure that only the packaging files — `PKGBUILD`, `.SRCINFO`, the service/sysusers/tmpfiles/install units, `.nvchecker.toml`, and `package_info` — are tracked in git. There are no commands, network operations, encoded data, or file-manipulation logic of any kind. The content is entirely passive and consistent with normal AUR maintenance practice.
</details>
<evidence>
</evidence>
<summary>
Standard whitelist .gitignore; no malicious or suspicious content found.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, .gitignore, PKGBUILD, package_info...
[2/9] Reviewing .SRCINFO, PKGBUILD, package_info...
+ Reviewed .gitignore. Status: SAFE -- Standard whitelist .gitignore; no malicious or suspicious content found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO is a clean package metadata file for `whisparr-nightly-bin`, a prebuilt binary package from the official Whisparr GitHub releases. All three sources (x86_64, aarch64, armv7h tarballs) point to the project's own upstream repository at `github.com/Whisparr/Whisparr/releases/download/...`, and all have pinned, non-SKIP sha256 checksums that guard against tampering.

The dependencies and optdepends (`nzbget`, `qbittorrent`, `prowlarr`, `jackett`, etc.) are standard integration tools for the Servarr-family of applications and serve the package's stated purpose as a download client manager/usenet-torrent organizer. The install file, sysusers, tmpfiles, and service file referenced are all standard packaging plumbing. There is no obfuscated content, no suspicious network endpoint, no encoded commands, and no file-system manipulation beyond what a normal `.SRCINFO` describes. The `nightly` versioning with a pinned release snapshot is ordinary practice for a `-bin` package.
</details>
<evidence>
</evidence>
<summary>Clean .SRCINFO; pinned checksums, official upstream sources, no malicious or suspicious content.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, PKGBUILD, package_info, whisparr.install...
[3/9] Reviewing PKGBUILD, package_info, whisparr.install...
+ Reviewed .SRCINFO. Status: SAFE -- Clean .SRCINFO; pinned checksums, official upstream sources, no malicious or suspicious content.
LLM auditresponse for package_info:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple metadata/configuration file for the whisparr-nightly-bin AUR package. It contains only plain-text key-value entries: a comment, a package author reference, an update method, a user-facing update message with standard AUR wiki links, and a branch name.

There is no executable code, no network-fetching logic, no obfuscation, no file manipulation, and no data exfiltration. All URLs point to official Arch Linux AUR/wiki domains for the package itself. This is a benign packaging metadata file with no security concerns.
</details>
<evidence>
</evidence>
<summary>
Plain metadata file; no executable or malicious content found.</summary>
</security_assessment>

[4/9] Reviewing PKGBUILD, whisparr.install...
+ Reviewed package_info. Status: SAFE -- Plain metadata file; no executable or malicious content found.
[4/9] Reviewing PKGBUILD, whisparr.install, whisparr.service...
LLM auditresponse for whisparr.service:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard, well-hardened systemd service unit for the Whisparr daemon (an "always-on" media management application in the same family as Sonarr/Radarr). The `ExecStart` line runs the installed binary with `-nobrowser -data=/var/lib/whisparr`, which is the normal invocation for this type of application. There are no network commands, no downloads, no obfuscated content, no shell constructs, and no file operations outside the application's own runtime/configuration directories. The `Wants=network-online.target` and `After=network-online.target` directives are routine for network services and do not indicate any exfiltration or remote code execution.

The service applies an extensive and genuinely security-hardening set of systemd directives: `NoNewPrivileges`, `PrivateTmp`, `PrivateUsers`, `ProtectSystem=full`, `ProtectHome=read-only` (via comments; the active alternative file uses `ProtectProc=invisible`), capability bounding, system call filtering, and socket restriction. These settings are recommended practice for isolating a service. The comments explaining user overrides for `/home` media directories and LXC are helpful and ordinary. Nothing in this file attempts to tamper with unrelated system files, collect credentials, or pull executable content from an untrusted source.
</details>
<evidence>
</evidence>
<summary>
Standard hardened systemd unit for Whisparr daemon; no malicious behavior found.
</summary>
</security_assessment>

[4/9] Reviewing PKGBUILD, whisparr.install, whisparr.service, whisparr.sysusers...
[5/9] Reviewing PKGBUILD, whisparr.install, whisparr.sysusers...
+ Reviewed whisparr.service. Status: SAFE -- Standard hardened systemd unit for Whisparr daemon; no malicious behavior found.
LLM auditresponse for whisparr.sysusers:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd-sysusers.d(5) configuration fragment. It declares a system user `whisparr` with a home directory of `/var/lib/whisparr`, ensures a group `media` exists, and adds the `whisparr` user to the `media` group. This is a routine and expected packaging practice for Arch Linux packages that run a daemon under a dedicated service account and need that account to access media files owned by a shared `media` group.

There is no executable code, no network activity, no file manipulation beyond the standard user/group database operations performed by systemd-sysusers, and no deviation from normal packaging conventions. Nothing in this file constitutes malicious behavior or a supply-chain risk.
</details>
<evidence></evidence>
<summary>Routine sysusers configuration for daemon user and group; no security concerns.</summary>
</security_assessment>

[5/9] Reviewing PKGBUILD, whisparr.install, whisparr.sysusers, whisparr.tmpfiles...
[6/9] Reviewing PKGBUILD, whisparr.install, whisparr.tmpfiles...
+ Reviewed whisparr.sysusers. Status: SAFE -- Routine sysusers configuration for daemon user and group; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard pre-built binary package for Whisparr (nightly builds). It fetches official tarballs from the upstream GitHub releases, with SHA256 checksums provided for all sources. The package function performs routine installation steps: copying binaries, removing the built-in updater (to delegate updates to pacman), and installing systemd service, sysusers, and tmpfiles configuration files.

There is no obfuscated code, no unexpected network requests outside the declared sources, no execution of fetched code at build time, and no exfiltration of local data. The only commands are standard file operations (cp, rm, install, echo) directed into the package directory ($pkgdir). The .install script is referenced but not shown; however, the PKGBUILD itself contains no indicators of malicious behavior and follows standard AUR packaging conventions for a -bin package.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for pre-built nightly binaries, no malicious content.</summary>
</security_assessment>

[7/9] Reviewing whisparr.install, whisparr.tmpfiles...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for pre-built nightly binaries, no malicious content.
LLM auditresponse for whisparr.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux package install script (`.install`) containing only two functions. `post_install` prints user-facing guidance messages to the terminal (advice about service overrides, media directories, and a shared `media` group), and `post_upgrade` simply calls `post_install`.

There is no network activity, no file writes, no code execution beyond the `echo -e` statements, and no obfuscation. The `systemctl edit whisparr` text is displayed with escaped backticks, so it is only printed as guidance and never executed at install time. This is entirely routine packaging practice with no sign of malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Benign .install script that only prints user guidance messages.</summary>
</security_assessment>

[8/9] Reviewing whisparr.tmpfiles...
+ Reviewed whisparr.install. Status: SAFE -- Benign .install script that only prints user guidance messages.
LLM auditresponse for whisparr.tmpfiles:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd-tmpfiles configuration file for the Whisparr application package. It defines expected runtime state: a writable logs directory owned by the `whisparr` user and `media` group, correct ownership/permissions on the application data directory, and symlinks that map conventional paths (e.g., `/var/log/whisparr`, PID file, and `/etc/whisparr/config.xml`) to locations under `/var/lib/whisparr`.

There are no network requests, no execution of downloaded content, no obfuscated commands, and no operations outside the application's own data or configuration directories. The symlinks and directory creation are normal packaging practice and do not modify unrelated system files or introduce a security risk.
</details>
<evidence>
</evidence>
<summary>
Standard tmpfiles configuration for application data and symlinks; no malicious behavior.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed whisparr.tmpfiles. Status: SAFE -- Standard tmpfiles configuration for application data and symlinks; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 25,334
  Completion Tokens: 6,775
  Total Tokens: 32,109
  Total Cost: $0.002722
  Execution Time: 97.25 seconds

Final Status: SAFE


No issues found.
