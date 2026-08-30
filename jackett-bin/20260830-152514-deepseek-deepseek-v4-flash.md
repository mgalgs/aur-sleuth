---
package: jackett-bin
pkgver: 0.24.2492
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 19072
completion_tokens: 2631
total_tokens: 21703
cost: 0.00192141264
execution_time: 40.36
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: ok
upstream_files: 970
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-30T15:25:13Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for Jackett. No issues.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned checksums and no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file; no security issues.
  - file: jackett.sysusers
    status: safe
    summary: Standard sysusers.d user creation, no security issues.
  - file: jackett.service
    status: safe
    summary: Standard systemd service unit, no malicious content.
  - file: jackett.tmpfiles
    status: safe
    summary: Standard tmpfiles configuration, no security issues.
---

Cloning https://aur.archlinux.org/jackett-bin.git...
Cloned jackett-bin
Analyzing jackett-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines only static variables and arrays in its global scope. There are no command substitutions, no dangerous shell operations (e.g., `curl`, `eval`, `base64`), and no code execution that would run during `makepkg --nobuild --nodeps --noprepare` or `--printsrcinfo`. The `source` arrays point to GitHub release archives of the Jackett project, which is the expected upstream. Checksums are provided and not skipped. The `package()` function contains only file installation commands but is not executed during this gate. No suspicious or malicious behavior is present.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope; safe to fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 7 file(s) in the AUR repository. The 970 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .nvchecker.toml...
[0/7] Reviewing .SRCINFO, .nvchecker.toml, .gitignore...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration for nvchecker, a version-checking tool. It specifies that the source for the package `jackett-bin` is a git repository at the official upstream URL `https://github.com/Jackett/Jackett`, with a version prefix "v" and a regex to match version tags. No obfuscation, dangerous commands, or unexpected network destinations are present. This is a normal packaging utility file and contains no malicious behavior.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for Jackett. No issues.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, .gitignore...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for Jackett. No issues.
[1/7] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file that ignores common build artifacts (`pkg/`, `src/`, `*.tar.zst`, `*.tar.gz`). It contains no executable code, no network requests, no obfuscation, and no system modifications. There is no evidence of malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, .gitignore, PKGBUILD, jackett.service...
[2/7] Reviewing .SRCINFO, PKGBUILD, jackett.service...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package definition for `jackett-bin`, a pre-compiled binary package. It downloads the official upstream tarballs from the project's GitHub releases (`https://github.com/Jackett/Jackett/releases/download/v${pkgver}/...`), with explicit SHA-256 checksums for all sources (including per-architecture sources). The `package()` function performs routine installation: copying the extracted binaries to `/usr/lib/jackett/` and installing systemd service, sysusers, and tmpfiles configuration files. No suspicious commands, no obfuscation, no unexpected network requests, and no execution of fetched content beyond normal installation. The configuration files (sysusers, tmpfiles) are standard and used for creating the service user and temporary files. There is no evidence of malicious or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned checksums and no malicious content.</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, PKGBUILD, jackett.service, jackett.sysusers...
[3/7] Reviewing .SRCINFO, jackett.service, jackett.sysusers...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned checksums and no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR .SRCINFO metadata file for the jackett-bin package. It declares the package source URLs and checksums for three architecture-specific tarballs from the official Jackett GitHub releases page, along with local service/sysusers/tmpfiles config files. All URLs point to the legitimate upstream project. There are no executable commands, no obfuscated code, no unexpected network requests, and no attempts to fetch or run code from untrusted sources. Checksums are pinned (SHA256) and match expected upstream artifacts. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file; no security issues.</summary>
</security_assessment>

[3/7] Reviewing .SRCINFO, jackett.service, jackett.sysusers, jackett.tmpfiles...
[4/7] Reviewing jackett.service, jackett.sysusers, jackett.tmpfiles...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file; no security issues.
LLM auditresponse for jackett.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard sysusers.d configuration snippet that creates a system user for the Jackett daemon. It specifies a username, a description, and a home directory. This is a common and expected practice for daemon packages in Arch Linux to ensure the service runs under a dedicated, unprivileged system account. There is no malicious content, no obfuscation, no network requests, and no unexpected operations.
</details>
<evidence>

</evidence>
<summary>Standard sysusers.d user creation, no security issues.</summary>
</security_assessment>

[5/7] Reviewing jackett.service, jackett.tmpfiles...
+ Reviewed jackett.sysusers. Status: SAFE -- Standard sysusers.d user creation, no security issues.
LLM auditresponse for jackett.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd service unit for Jackett, an open-source torrent indexer aggregator. It defines the service to run as the `jackett` user and group, sets environment variables (`XDG_CONFIG_HOME`, `DOTNET_EnableDiagnostics`), specifies the working directory, and launches the Jackett binary with flags to disable restarts and updates. No code obfuscation, network requests, file operations, or unexpected commands are present. The content is typical for AUR packages distributing prebuilt binaries and does not exhibit any supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>Standard systemd service unit, no malicious content.</summary>
</security_assessment>

[6/7] Reviewing jackett.tmpfiles...
+ Reviewed jackett.service. Status: SAFE -- Standard systemd service unit, no malicious content.
LLM auditresponse for jackett.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd-tmpfiles configuration file for the Jackett service. It creates a runtime directory (`/var/lib/jackett`), ensures correct ownership and permissions on that directory and the application directory (`/usr/lib/jackett`), and sets up a symlink from a log file location to an actual log file. There is no executable code, no network requests, no obfuscation, and no deviation from normal packaging practices. The file is purely declarative configuration for file system management.
</details>
<evidence></evidence>
<summary>Standard tmpfiles configuration, no security issues.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed jackett.tmpfiles. Status: SAFE -- Standard tmpfiles configuration, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,072
  Completion Tokens: 2,631
  Total Tokens: 21,703
  Total Cost: $0.001921
  Execution Time: 40.36 seconds

Final Status: SAFE


No issues found.
