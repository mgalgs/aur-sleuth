---
package: prowlarr
pkgver: 2.6.5.5623
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 25705
completion_tokens: 3588
total_tokens: 29293
cost: 0.00536379
execution_time: 47.18
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-11T23:13:43Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard version-checker config for upstream release monitoring.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no malicious content.
  - file: package_info
    status: safe
    summary: Static metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious content detected.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file; no malicious or dangerous behavior found.
  - file: prowlarr.install
    status: safe
    summary: Standard AUR install script with only informational messages.
  - file: prowlarr.service
    status: safe
    summary: Standard systemd service with no malicious content.
  - file: prowlarr.sysusers
    status: safe
    summary: Standard sysusers config, no malicious content.
  - file: prowlarr.tmpfiles
    status: safe
    summary: Standard tmpfiles config for package runtime setup.
---

Materializing prowlarr from local mirror...
Materialized prowlarr
Analyzing prowlarr AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the global/top-level scope of this PKGBUILD. The top-level code consists entirely of standard metadata variable assignments (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.), a benign `case ${CARCH}` block that sets an architecture string, and definitions of `_framework`, `_runtime`, and related variables. There are no top-level command substitutions, network fetches, encoded payloads, or other executable statements that could download or run untrusted code during parsing.

The `prepare()`, `build()`, and `package()` functions contain the usual upstream build/install steps, but those functions are not executed by `makepkg --printsrcinfo` and are therefore outside the scope of this narrow gate. The source URL points to the project’s official GitHub repository, and checksums are provided. No malicious behavior is evident in the code that runs during this step.
</details>
<evidence>
</evidence>
<summary>
Top-level scope only defines variables; no dangerous execution during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope only defines variables; no dangerous execution during printsrcinfo.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .nvchecker.toml...
[0/9] Reviewing .nvchecker.toml, .gitignore...
[0/9] Reviewing .nvchecker.toml, .gitignore, .SRCINFO...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration file for `nvchecker`, a tool that checks for new upstream versions of software. It specifies the version-checking source for the `prowlarr` package using the official Servarr update API endpoint (`prowlarr.servarr.com`). The configuration is plain declarative TOML, containing no executable code, no obfuscation, and no suspicious network destinations. The URL points to the project&#x27;s own official server, and the query is a straightforward JSON path filter. There is nothing malicious or unexpected in this file.
</details>
<evidence></evidence>
<summary>Standard version-checker config for upstream release monitoring.</summary>
</security_assessment>

[0/9] Reviewing .nvchecker.toml, .gitignore, .SRCINFO, PKGBUILD...
[1/9] Reviewing .gitignore, .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard version-checker config for upstream release monitoring.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` configuration for an AUR package repository. It ignores all files by default (`*`) and then explicitly allows tracking of specific package-related files (PKGBUILD, .SRCINFO, service files, etc.). There is no executable code, no network requests, no obfuscation, and no system modifications. It poses no security threat.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no malicious content.</summary>
</security_assessment>

[1/9] Reviewing .gitignore, .SRCINFO, PKGBUILD, package_info...
[2/9] Reviewing .SRCINFO, PKGBUILD, package_info...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no malicious content.
LLM auditresponse for package_info:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains only package metadata for the AUR package `prowlarr`. It defines the package author, update method, a message instructing users on how to update, and the git branch to track. There are no commands, obfuscated strings, network requests, or any other potentially dangerous operations. The content is purely informational and follows standard AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Static metadata file, no malicious content.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, PKGBUILD, package_info, prowlarr.install...
[3/9] Reviewing .SRCINFO, PKGBUILD, prowlarr.install...
+ Reviewed package_info. Status: SAFE -- Static metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a .NET web application. The source tarball is downloaded from the official GitHub repository with a pinned SHA-256 checksum. The build process involves restoring dotnet dependencies and building both backend and frontend using `dotnet build` and `yarn run build`. There is a `sed` command to update a MailKit dependency version, which is a standard patching step for a CVE. The package disables the built-in updater via a `package_info` file, which is normal for AUR packages to let pacman manage updates. No suspicious network requests, obfuscated code, or unusual system modifications are present. All operations are confined to the build directory and intended installation paths.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious content detected.</summary>
</security_assessment>

[3/9] Reviewing .SRCINFO, PKGBUILD, prowlarr.install, prowlarr.service...
[4/9] Reviewing .SRCINFO, prowlarr.install, prowlarr.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious content detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file for the `prowlarr` package. It declares the package name, version, architecture, dependencies, optional dependencies, source URLs, and SHA-256 checksums. All sources point to the project's own upstream GitHub repository and local packaging files (`package_info`, `prowlarr.service`, `prowlarr.sysusers`, `prowlarr.tmpfiles`), which is normal AUR packaging practice.

No suspicious network destinations, encoded commands, file-manipulation logic, or executable content are present. The `.SRCINFO` file contains only declarative metadata and cannot execute anything on its own. Checksums are provided for every source, and the source archive is pinned to a specific release tag, which is a good supply-chain hygiene practice.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata file; no malicious or dangerous behavior found.
</summary>
</security_assessment>

[4/9] Reviewing .SRCINFO, prowlarr.install, prowlarr.service, prowlarr.sysusers...
[5/9] Reviewing prowlarr.install, prowlarr.service, prowlarr.sysusers...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file; no malicious or dangerous behavior found.
LLM auditresponse for prowlarr.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains only standard `echo` statements that print informational messages to the user during package installation and upgrade. There are no dangerous commands such as `curl`, `wget`, `eval`, `base64`, file operations, or any code that could exfiltrate data, modify system files, or execute untrusted content. The messages are typical AUR packaging instructions about systemd service overrides and group usage. No evidence of a supply-chain attack or malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard AUR install script with only informational messages.</summary>
</security_assessment>

[5/9] Reviewing prowlarr.install, prowlarr.service, prowlarr.sysusers, prowlarr.tmpfiles...
[6/9] Reviewing prowlarr.service, prowlarr.sysusers, prowlarr.tmpfiles...
+ Reviewed prowlarr.install. Status: SAFE -- Standard AUR install script with only informational messages.
LLM auditresponse for prowlarr.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the Prowlarr daemon. It includes numerous security hardening directives such as `NoNewPrivileges=true`, `PrivateTmp=true`, `ProtectSystem=full`, `ProtectHome=read-only`, and a restrictive system call filter. There are no commands that download or execute external code, no obfuscated or encoded strings, and no attempts to exfiltrate data. The comments about override configurations for LXC or shared group setups are normal documentation for such a service. The file follows standard packaging practices and contains no malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Standard systemd service with no malicious content.</summary>
</security_assessment>

[7/9] Reviewing prowlarr.sysusers, prowlarr.tmpfiles...
+ Reviewed prowlarr.service. Status: SAFE -- Standard systemd service with no malicious content.
LLM auditresponse for prowlarr.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd sysusers.d configuration file. It defines a system user &quot;prowlarr&quot; for the Prowlarr daemon, creates a &quot;media&quot; group, and adds the user to that group. These operations are routine for a service that needs restricted privileges and access to media files. There is no obfuscation, no network access, no dangerous commands, and no deviation from normal packaging practices. The file contains only static lines with predictable systemd syntax.
</details>
<evidence></evidence>
<summary>Standard sysusers config, no malicious content.</summary>
</security_assessment>

[8/9] Reviewing prowlarr.tmpfiles...
+ Reviewed prowlarr.sysusers. Status: SAFE -- Standard sysusers config, no malicious content.
LLM auditresponse for prowlarr.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd-tmpfiles configuration file. It creates a directory for logs, sets ownership/recursion on the prowlarr data directory, and establishes several symlinks (log directory, PID file, and config file) to standard locations under `/var/lib/prowlarr`. These operations are routine for packaging an application — they do not fetch, execute, or exfiltrate any data, nor do they modify unrelated system files. There is no obfuscation, no network access, and no deviation from normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard tmpfiles config for package runtime setup.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed prowlarr.tmpfiles. Status: SAFE -- Standard tmpfiles config for package runtime setup.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 25,705
  Completion Tokens: 3,588
  Total Tokens: 29,293
  Total Cost: $0.005364
  Execution Time: 47.18 seconds

Final Status: SAFE


No issues found.
