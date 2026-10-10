---
package: radarr-bin
pkgver: 6.4.4.10685
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 24534
completion_tokens: 3379
total_tokens: 27913
cost: 0.00506114
execution_time: 31.43
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-10T15:10:55Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues found.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package; no threats.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version checking, no security issues.
  - file: package_info
    status: safe
    summary: Informational metadata file, no executable content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious content.
  - file: radarr.install
    status: safe
    summary: Routine installation script, no malicious content.
  - file: radarr.service
    status: safe
    summary: Standard service file, no malicious content found.
  - file: radarr.sysusers
    status: safe
    summary: Standard sysusers.d config for radarr user and media group.
  - file: radarr.tmpfiles
    status: safe
    summary: Standard tmpfiles configuration; no malicious content.
---

Materializing radarr-bin from local mirror...
Materialized radarr-bin
Analyzing radarr-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and an `install` directive. There are no command substitutions, no function calls outside of `package()` (which is not executed during `makepkg --printsrcinfo`), and no other executable code in the global scope. Sourcing this file to obtain metadata poses no risk.
</details>
<evidence></evidence>
<summary>No executable code at top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code at top-level scope.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .gitignore...
[0/9] Reviewing .gitignore, .SRCINFO...
[0/9] Reviewing .gitignore, .SRCINFO, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the `radarr-bin` AUR package. It declares package metadata, dependencies, and sources. All binary tarballs are fetched from the official upstream domain `radarr.servarr.com` over HTTPS, with valid SHA-256 checksums provided for each architecture. The local source files (`package_info`, `radarr.service`, `radarr.sysusers`, `radarr.tmpfiles`) also have checksums. There is no obfuscated code, no dangerous commands, no unexpected network destinations, and no deviation from normal packaging practices. The file is perfectly normal and contains no evidence of a supply-chain attack.</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues found.</summary>
</security_assessment>

[1/9] Reviewing .gitignore, .nvchecker.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues found.
[1/9] Reviewing .gitignore, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file is a standard pattern used in AUR Git repositories. It ignores all files by default (the `*` line) and then explicitly whitelists only the files needed for the package (e.g., PKGBUILD, .SRCINFO, radarr.service, etc.). There is no executable code, no network access, no obfuscation, and no deviation from normal packaging practices. It is completely benign.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore for AUR package; no threats.</summary>
</security_assessment>

[2/9] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package; no threats.
[2/9] Reviewing .nvchecker.toml, PKGBUILD, package_info...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a configuration file for the `nvchecker` tool, which is used to check for new upstream versions of AUR packages. It defines a single source block for `radarr-bin` that queries the official Radarr update API (`radarr.servarr.com`) to retrieve the latest version number using `jq` and a regex filter. There is no executable code, no downloads or execution of external binaries, no obfuscation, and no deviation from standard packaging practices. The URL and filter are entirely consistent with the intended purpose of version checking for Radarr.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for version checking, no security issues.</summary>
</security_assessment>

[2/9] Reviewing .nvchecker.toml, PKGBUILD, package_info, radarr.install...
[3/9] Reviewing PKGBUILD, package_info, radarr.install...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version checking, no security issues.
LLM auditresponse for package_info:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `package_info` contains only static metadata fields (PackageAuthor, UpdateMethod, UpdateMethodMessage, Branch). There are no commands, scripts, or any executable content. No network requests, obfuscation, file operations, or system modifications are present. This is a purely informational configuration file used by AUR helpers to display package information. No security concerns.
</details>
<evidence></evidence>
<summary>Informational metadata file, no executable content.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, package_info, radarr.install, radarr.service...
[4/9] Reviewing PKGBUILD, radarr.install, radarr.service...
+ Reviewed package_info. Status: SAFE -- Informational metadata file, no executable content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard packaging file for the **radarr-bin** AUR package. It downloads a precompiled release archive from the official upstream domain (`radarr.servarr.com`), which is the legitimate distribution endpoint for Radarr. All source archives include valid SHA-256 checksums; no checksums are skipped.

The `package()` function performs routine installation steps: creating directories, copying binaries, placing license files, configuring systemd service files, sysusers, and tmpfiles. It also explicitly removes the built-in updater binaries (`Radarr.Update`, `ServiceInstall*`, `ServiceUninstall*`) and appends a `PackageVersion` line to disable automatic updates – this is a standard and security-conscious practice for binary AUR packages.

There is no obfuscated code, no unexpected network calls (e.g., `curl` or `wget`), no shell injection, and no file operations outside the intended install paths. The dependencies and optdepends are all legitimate for a media downloader application. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious content.</summary>
</security_assessment>

[4/9] Reviewing PKGBUILD, radarr.install, radarr.service, radarr.sysusers...
[5/9] Reviewing radarr.install, radarr.service, radarr.sysusers...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious content.
LLM auditresponse for radarr.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `radarr.install` contains only informational `echo` statements that print usage notes to the user during package installation or upgrade. The instructions cover common configuration advice (e.g., not storing media directories under /home, LXC override hints, and mentioning a shared group). There are no dangerous commands, network requests, file operations, or obfuscated code. The file performs no modifications to the system beyond standard post-install messaging. This is a normal and benign packaging script with no evidence of supply-chain attack.</details>
<evidence></evidence>
<summary>Routine installation script, no malicious content.</summary>
</security_assessment>

[5/9] Reviewing radarr.install, radarr.service, radarr.sysusers, radarr.tmpfiles...
[6/9] Reviewing radarr.service, radarr.sysusers, radarr.tmpfiles...
+ Reviewed radarr.install. Status: SAFE -- Routine installation script, no malicious content.
LLM auditresponse for radarr.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for Radarr. It defines service behavior, hardening options, and runtime directories. No malicious code is present—the file contains only configuration directives and comments. There are no network requests, obfuscated commands, or unexpected system modifications. The hardening options (e.g., PrivateTmp, ProtectSystem, NoNewPrivileges) are standard security best practices for service confinement. The file does not perform any actions beyond those expected for a packaging maintainer’s service file.
</details>
<evidence>
</evidence>
<summary>Standard service file, no malicious content found.</summary>
</security_assessment>

[7/9] Reviewing radarr.sysusers, radarr.tmpfiles...
+ Reviewed radarr.service. Status: SAFE -- Standard service file, no malicious content found.
LLM auditresponse for radarr.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd sysusers.d configuration snippet used to create the `radarr` system user and the `media` group, and to add the radarr user to the media group. Such configuration is typical for AUR packages that require a dedicated service user and shared group access. There is no obfuscation, no network or file operations, and no deviation from expected packaging practices. The `&amp;quot;` is simply an HTML entity encoding for a double quote character, likely an artifact of how the file was displayed; it poses no security risk.
</details>
<evidence></evidence>
<summary>Standard sysusers.d config for radarr user and media group.</summary>
</security_assessment>

[8/9] Reviewing radarr.tmpfiles...
+ Reviewed radarr.sysusers. Status: SAFE -- Standard sysusers.d config for radarr user and media group.
LLM auditresponse for radarr.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd tmpfiles.d configuration for the Radarr media server. It sets up runtime directories, symlinks for logs, PID file, and config file. All paths are standard for a service running under a dedicated user (`radarr`) and group (`media`). The operations (`d`, `Z`, `L`) are normal tmpfiles directives for creating directories, adjusting ownership, and creating symbolic links. There is no network activity, obfuscated code, or execution of untrusted content. The file follows standard packaging practices for configuring systemd tmpfiles.
</details>
<evidence></evidence>
<summary>Standard tmpfiles configuration; no malicious content.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed radarr.tmpfiles. Status: SAFE -- Standard tmpfiles configuration; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,534
  Completion Tokens: 3,379
  Total Tokens: 27,913
  Total Cost: $0.005061
  Execution Time: 31.43 seconds

Final Status: SAFE


No issues found.
