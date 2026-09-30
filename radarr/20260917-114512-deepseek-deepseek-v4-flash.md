---
package: radarr
pkgver: 6.4.4.10685
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 25208
completion_tokens: 9171
total_tokens: 34379
cost: 0.003858791300
execution_time: 308.09
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-17T11:45:12Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: .gitignore
    status: safe
    summary: A benign gitignore file for an AUR package.
  - file: package_info
    status: safe
    summary: Static metadata file with no security concerns.
  - file: radarr.install
    status: safe
    summary: Install script contains only informational messages.
  - file: radarr.service
    status: safe
    summary: Standard systemd service file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for Radarr, no malicious code.
  - file: radarr.tmpfiles
    status: safe
    summary: Standard tmpfiles config; no malicious behavior found.
  - file: .nvchecker.toml
    status: safe
    summary: Standard version-checking config; no security issues.
  - file: radarr.sysusers
    status: safe
    summary: Standard sysusers config; no security issues.
---

Materializing radarr from local mirror...
Materialized radarr
Analyzing radarr AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
`makepkg --printsrcinfo` sources the PKGBUILD and executes only its global/top-level scope. In this PKGBUILD that scope consists of variable assignments, a `source=(...)` array of URL strings with pinned `sha256sums`, a `case ${CARCH}` statement that only maps architecture names to strings (`x64`/`arm64`/`arm`), and the definitions of the `prepare()`, `build()`, and `package()` functions. None of the global statements perform command substitution, network fetches, file writes, or process execution.

The interesting commands (`sed`, `dotnet restore`, `dotnet build`, `yarn install`, `cp`, `chmod`, `install`) are all inside the function bodies, which are not invoked by `--printsrcinfo`. There is no `pkgver()` function, no `eval`, no `base64`, no `curl|bash` at global scope. The URLs in the `source` array are not downloaded during this step and point to the project's official upstream GitHub repository. Running this command is safe.
</details>
<evidence>
</evidence>
<summary>
Global scope only defines variables and functions; no code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope only defines variables and functions; no code executes during printsrcinfo.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .nvchecker.toml...
[0/9] Reviewing .nvchecker.toml, .gitignore...
[0/9] Reviewing .nvchecker.toml, .gitignore, .SRCINFO...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a declarative metadata file for the Radarr AUR package. It defines the package name, version, dependencies, sources, and checksums. All sources originate from the official Radarr GitHub repository (tagged release) or are local packaging files (service, sysusers, tmpfiles, etc.). Every source has a SHA-256 checksum provided (none are SKIP). There is no executable code, no obfuscation, no unexpected network requests, and no references to external untrusted hosts. The file conforms to standard AUR packaging practices and does not contain any malicious or suspicious content.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[1/9] Reviewing .nvchecker.toml, .gitignore...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
[1/9] Reviewing .nvchecker.toml, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It instructs Git to ignore all files by default and then un-ignore (track) only the specific files needed for the package: `PKGBUILD`, `.SRCINFO`, `.gitignore`, `.nvchecker.toml`, `radarr.service`, `radarr.sysusers`, `radarr.tmpfiles`, `radarr.install`, and `package_info`. There is no executable code, no network requests, no obfuscation, and no system-level operations. The file is purely a configuration file for version control and poses no security risk.
</details>
<evidence></evidence>
<summary>A benign gitignore file for an AUR package.</summary>
</security_assessment>

[1/9] Reviewing .nvchecker.toml, .gitignore, PKGBUILD, package_info...
[2/9] Reviewing .nvchecker.toml, PKGBUILD, package_info...
+ Reviewed .gitignore. Status: SAFE -- A benign gitignore file for an AUR package.
LLM auditresponse for package_info:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `package_info` contains only static metadata variables used by the AUR packaging system. There is no executable code, no network requests, no file operations, and no obfuscation. The content is purely declarative (PackageAuthor, UpdateMethod, Branch, etc.) and follows standard AUR conventions. No security issues are present.
</details>
<evidence></evidence>
<summary>Static metadata file with no security concerns.</summary>
</security_assessment>

[2/9] Reviewing .nvchecker.toml, PKGBUILD, package_info, radarr.install...
[3/9] Reviewing .nvchecker.toml, PKGBUILD, radarr.install...
+ Reviewed package_info. Status: SAFE -- Static metadata file with no security concerns.
LLM auditresponse for radarr.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script (`.install`). It contains only `post_install()` and `post_upgrade()` functions that print informational messages to the user via `echo -e`. There are no network requests, file modifications, obfuscated commands, or any other malicious behavior. The messages are benign instructions about using the service file and overrides. This is entirely normal for a packaging script.
</details>
<evidence></evidence>
<summary>Install script contains only informational messages.</summary>
</security_assessment>

[4/9] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed radarr.install. Status: SAFE -- Install script contains only informational messages.
[4/9] Reviewing .nvchecker.toml, PKGBUILD, radarr.service...
LLM auditresponse for radarr.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `radarr.service` is a standard systemd service unit for the Radarr daemon. It contains configuration directives for running the application with appropriate security hardening (e.g., `ProtectHome`, `PrivateTmp`, `SystemCallFilter`). No malicious code, obfuscated commands, unexpected network requests, or data exfiltration attempts are present. The file only defines the service behavior and does not execute any arbitrary or suspicious operations. It follows typical AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no malicious content.</summary>
</security_assessment>

[4/9] Reviewing .nvchecker.toml, PKGBUILD, radarr.service, radarr.sysusers...
[5/9] Reviewing .nvchecker.toml, PKGBUILD, radarr.sysusers...
+ Reviewed radarr.service. Status: SAFE -- Standard systemd service file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for radarr follows standard AUR packaging practices. The source is pinned to a specific version with a valid SHA256 checksum (not SKIP). All build steps (dotnet restore/build, yarn install/build) are typical for a .NET/Yarn application and use the project&apos;s own upstream repository. The prepare() function applies a CVE fix via sed, which is normal patching. The package() function installs files into the expected locations and disables the built-in updater via a package_info file. No obfuscated code, unexpected network requests, or exfiltration attempts are present. The file is safe.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for Radarr, no malicious code.</summary>
</security_assessment>

[6/9] Reviewing .nvchecker.toml, radarr.sysusers...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for Radarr, no malicious code.
[6/9] Reviewing .nvchecker.toml, radarr.sysusers, radarr.tmpfiles...
LLM auditresponse for radarr.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd-tmpfiles configuration file used by the Radarr AUR package. It defines directory creation (`d`), recursive ownership/restore (`Z`), and symlinks (`L`) for the Radarr application's runtime data (logs, PID, config). All paths are within standard system locations (`/var/lib/radarr`, `/var/log/radarr`, `/run/radarr`, `/etc/radarr`) and serve the application's intended purpose. There are no network requests, code execution, obfuscation, or any indicators of malicious activity. The file conforms to normal packaging practices for setting up application directories and symlinks.
</details>
<evidence></evidence>
<summary>Standard tmpfiles config; no malicious behavior found.</summary>
</security_assessment>

[7/9] Reviewing .nvchecker.toml, radarr.sysusers...
+ Reviewed radarr.tmpfiles. Status: SAFE -- Standard tmpfiles config; no malicious behavior found.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file for the Radarr package. It retrieves the latest version from Radarr's official update API (`radarr.servarr.com`) using a JSON query. There is no code execution, no obfuscation, no unexpected network destinations, and no system modifications. The file is purely declarative and serves only to automate version detection for packaging purposes.
</details>
<evidence></evidence>
<summary>Standard version-checking config; no security issues.</summary>
</security_assessment>

[8/9] Reviewing radarr.sysusers...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard version-checking config; no security issues.
LLM auditresponse for radarr.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd-sysusers configuration file. It creates a system user `radarr` with home directory `/var/lib/radarr`, a group `media`, and adds the user to the `media` group. Such user/group management is a normal and expected part of packaging daemons that need to run under a dedicated system account. There are no network requests, downloads, obfuscated commands, or any operations beyond the scope of routine package installation. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard sysusers config; no security issues.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed radarr.sysusers. Status: SAFE -- Standard sysusers config; no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 25,208
  Completion Tokens: 9,171
  Total Tokens: 34,379
  Total Cost: $0.003859
  Execution Time: 308.09 seconds

Final Status: SAFE


No issues found.
