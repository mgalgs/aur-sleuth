---
package: prowlarr-bin
pkgver: 3.0.2.5780
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 31773
completion_tokens: 7603
total_tokens: 39376
cost: 0.00422811
execution_time: 47.11
files_reviewed: 12
files_skipped: 0
maintainer_files: 12
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-19T16:11:44Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign gitignore file; no security concerns.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version tracking
  - file: .SRCINFO
    status: safe
    summary: Legitimate package metadata; no security concerns.
  - file: LICENSE
    status: safe
    summary: License file, no security concerns.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: package_info
    status: safe
    summary: Metadata file, no executable content.
  - file: REUSE.toml
    status: safe
    summary: Declarative metadata file, no security concerns.
  - file: prowlarr.install
    status: safe
    summary: Only contains informational echo messages; no malicious code.
  - file: PKGBUILD
    status: safe
    summary: No malicious content; standard AUR PKGBUILD with pinned checksums.
  - file: prowlarr.sysusers
    status: safe
    summary: Standard sysusers configuration file for Prowlarr service.
  - file: prowlarr.tmpfiles
    status: safe
    summary: Standard tmpfiles configuration, no malicious content.
  - file: prowlarr.service
    status: safe
    summary: Standard systemd service unit, no threats found.
---

Materializing prowlarr-bin from local mirror...
Materialized prowlarr-bin
Analyzing prowlarr-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments (pkgname, pkgver, source arrays, checksums, etc.) and a package() function definition. No command substitutions, backticks, eval, curl, wget, or any other executable statements exist in the global/top-level scope. Running `makepkg --printsrcinfo` will safely source this file without executing any dangerous code. Source URLs point to the official Prowlarr update domain, which is expected for this package.
</details>
<evidence>
</evidence>
<summary>No malicious code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope.
Reviewing the 12 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/12] Reviewing .SRCINFO...
[0/12] Reviewing .SRCINFO, .gitignore...
[0/12] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It whitelists specific packaging files (PKGBUILD, .SRCINFO, service files, etc.) and ignores everything else. No executable code, network requests, or any potentially dangerous operations are present. The file is purely for version control configuration and poses no security risk.
</details>
<evidence></evidence>
<summary>Benign gitignore file; no security concerns.</summary>
</security_assessment>

[0/12] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, LICENSE...
[1/12] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
+ Reviewed .gitignore. Status: SAFE -- Benign gitignore file; no security concerns.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for `nvchecker`, a tool used to track upstream software versions. It defines how to fetch the latest version of `prowlarr-bin` from the official Prowlarr API (`prowlarr.servarr.com`). The file uses a standard JSON parsing filter and a regex to extract the version number. There is no command execution, obfuscation, or suspicious data exfiltration. This is a routine and expected use of `nvchecker` in AUR packaging.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config for version tracking</summary>
</security_assessment>

[2/12] Reviewing .SRCINFO, LICENSE...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version tracking
[2/12] Reviewing .SRCINFO, LICENSE, LICENSE...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard package metadata file for the prowlarr-bin AUR package. It declares the package name, version, dependencies, and sources. All source URLs point to the official upstream domain (`prowlarr.servarr.com`) with specific version tags and valid SHA256 checksums (none are set to `SKIP`). There are no embedded commands, obfuscated code, or suspicious network destinations. The file does not contain any executable instructions; it is purely declarative. No evidence of supply-chain compromise or malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>Legitimate package metadata; no security concerns.</summary>
</security_assessment>

[2/12] Reviewing .SRCINFO, LICENSE, LICENSE, PKGBUILD...
[3/12] Reviewing LICENSE, LICENSE, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Legitimate package metadata; no security concerns.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple license file, containing only a permissive license statement. It contains no executable code, no network operations, no file modifications, and no obfuscated content. There are no security concerns.
</details>
<evidence>
</evidence>
<summary>License file, no security concerns.</summary>
</security_assessment>

[3/12] Reviewing LICENSE, LICENSE, PKGBUILD, REUSE.toml...
[4/12] Reviewing LICENSE, PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- License file, no security concerns.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC license file, commonly used by Arch Linux contributors for packaging scripts. It contains no code, no executable instructions, no network requests, and no obfuscated content. It is purely a legal notice.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[4/12] Reviewing LICENSE, PKGBUILD, REUSE.toml, package_info...
[5/12] Reviewing PKGBUILD, REUSE.toml, package_info...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for package_info:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `package_info` contains only metadata for the AUR package `prowlarr-bin`. It defines the package author, update method, message, and branch. There are no executable scripts, no commands, no network requests, no obfuscation, and no file operations. The content is purely informational and follows standard AUR package metadata conventions. All referenced URLs point to expected Arch Linux or AUR resources. No security concerns are present.
</details>
<evidence></evidence>
<summary>Metadata file, no executable content.</summary>
</security_assessment>

[6/12] Reviewing PKGBUILD, REUSE.toml...
+ Reviewed package_info. Status: SAFE -- Metadata file, no executable content.
[6/12] Reviewing PKGBUILD, REUSE.toml, prowlarr.install...
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for the REUSE tool, which standardizes copyright and license annotations in source repositories. It lists several paths (PKGBUILD, README.md, .SRCINFO, etc.) and assigns them a copyright holder (&quot;Arch Linux contributors&quot;) and license (&quot;0BSD&quot;). There is no executable code, network requests, file operations, or any other behavior that could constitute a security threat. The file is purely declarative metadata and follows standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Declarative metadata file, no security concerns.</summary>
</security_assessment>

[6/12] Reviewing PKGBUILD, REUSE.toml, prowlarr.install, prowlarr.service...
[7/12] Reviewing PKGBUILD, prowlarr.install, prowlarr.service...
+ Reviewed REUSE.toml. Status: SAFE -- Declarative metadata file, no security concerns.
LLM auditresponse for prowlarr.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `prowlarr.install` contains only two functions, `post_install()` and `post_upgrade()`, each of which simply prints informational messages to the user via `echo -e`. There are no network requests, no file modifications, no command executions beyond benign echoes, no obfuscation, and no access to sensitive data. The content is purely advisory text about configuring the service, and does not exhibit any malicious behavior. It conforms to standard packaging practices for displaying post-install notes.
</details>
<evidence></evidence>
<summary>Only contains informational echo messages; no malicious code.</summary>
</security_assessment>

[7/12] Reviewing PKGBUILD, prowlarr.install, prowlarr.service, prowlarr.sysusers...
[8/12] Reviewing PKGBUILD, prowlarr.service, prowlarr.sysusers...
+ Reviewed prowlarr.install. Status: SAFE -- Only contains informational echo messages; no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. All external source tarballs are fetched over HTTPS from the project&#39;s own upstream update server (`prowlarr.servarr.com`) with pinned SHA-256 checksums, providing integrity verification and preventing undetected tampering. The `package()` function performs routine operations: extracting the tarball, removing unnecessary files (service helpers, update directory, license copying), installing systemd unit, sysusers, and tmpfiles configuration. There is no execution of fetched code (the tarball is a prebuilt binary), no attempts at exfiltration, no obfuscated commands, and no unexpected network requests beyond the declared sources. The built-in updater is disabled, which is a standard practice for distro packaging. No genuinely malicious behavior is present.
</details>
<evidence></evidence>
<summary>No malicious content; standard AUR PKGBUILD with pinned checksums.</summary>
</security_assessment>

[9/12] Reviewing prowlarr.service, prowlarr.sysusers...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious content; standard AUR PKGBUILD with pinned checksums.
[9/12] Reviewing prowlarr.service, prowlarr.sysusers, prowlarr.tmpfiles...
LLM auditresponse for prowlarr.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `prowlarr.sysusers` is a standard systemd sysusers.d configuration file. It defines a system user `prowlarr` with a home directory `/var/lib/prowlarr`, creates a group `media`, and adds the user to that group. This is normal and expected for a service daemon like Prowlarr, which may need to access media files. There is no obfuscation, network activity, or any deviation from routine system administration practices. No security issues are present.
</details>
<evidence>
</evidence>
<summary>Standard sysusers configuration file for Prowlarr service.</summary>
</security_assessment>

[10/12] Reviewing prowlarr.service, prowlarr.tmpfiles...
+ Reviewed prowlarr.sysusers. Status: SAFE -- Standard sysusers configuration file for Prowlarr service.
LLM auditresponse for prowlarr.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd-tmpfiles configuration snippet used by the prowlarr package. It creates the required directories and sets ownership, as well as establishing symbolic links for logs, PID file, and configuration. There is no suspicious network activity, obfuscation, or execution of untrusted code. The file follows normal packaging practices for setting up system state.
</details>
<evidence></evidence>
<summary>Standard tmpfiles configuration, no malicious content.</summary>
</security_assessment>

[11/12] Reviewing prowlarr.service...
+ Reviewed prowlarr.tmpfiles. Status: SAFE -- Standard tmpfiles configuration, no malicious content.
LLM auditresponse for prowlarr.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd service unit designed to manage the Prowlarr daemon. It contains standard service management directives (User, Group, ExecStart) and a comprehensive set of systemd security hardening options (NoNewPrivileges, PrivateTmp, ProtectHome, SystemCallFilter). The file does not contain any network requests, downloads, execution of remote code, obfuscated commands, or attempts to exfiltrate data. The ExecStart path refers strictly to a locally installed binary, and all other directives are typical Arch Linux packaging practices for well-sandboxed service units. No evidence of a supply chain attack or malicious intent is present.
</details>
<evidence>

</evidence>
<summary>Standard systemd service unit, no threats found.</summary>
</security_assessment>

[12/12] Reviewing ...
+ Reviewed prowlarr.service. Status: SAFE -- Standard systemd service unit, no threats found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 31,773
  Completion Tokens: 7,603
  Total Tokens: 39,376
  Total Cost: $0.004228
  Execution Time: 47.11 seconds

Final Status: SAFE


No issues found.
