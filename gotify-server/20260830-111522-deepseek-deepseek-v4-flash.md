---
package: gotify-server
pkgver: 3.1.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 19677
completion_tokens: 3077
total_tokens: 22754
cost: 0.0020613138
execution_time: 45.69
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: ok
upstream_files: 277
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-30T11:15:21Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata, no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package repo.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious code.
  - file: gotify-server.install
    status: safe
    summary: Standard install script, no suspicious behavior.
  - file: config.patch
    status: safe
    summary: Routine config patch for packaging; no security issues.
  - file: sysusers.d
    status: safe
    summary: Standard sysusers configuration for service user.
  - file: gotify-server.service
    status: safe
    summary: Standard systemd service unit with no malicious content.
---

Cloning https://aur.archlinux.org/gotify-server.git...
Cloned gotify-server
Analyzing gotify-server AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines only variable assignments and array declarations at the global scope. No functions such as `pkgver()` are present. There are no command substitutions, `eval`, backticks, or other code executions in the top-level scope that would run when the PKGBUILD is sourced. All sources in the `source` array point to the upstream GitHub repository (`gotify/server`) with pinned checksums (not `SKIP`). The local files (`sysusers.d`, `gotify-server.service`, `config.patch`) are from the AUR repository itself and contain no suspicious content that would execute during source fetching. The commands `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only source this PKGBUILD and download the archives; no malicious action occurs in this scope.
</details>
<evidence></evidence>
<summary>No malicious code in global scope; sources are pinned and safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope; sources are pinned and safe.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 7 file(s) in the AUR repository. The 277 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard Arch Linux package metadata file. It defines the `gotify-server` package with a pinned upstream tarball from `github.com/gotify/server/archive/v3.1.0.tar.gz`, along with three auxiliary files (`sysusers.d`, `gotify-server.service`, `config.patch`). All four sources have explicit SHA256 checksums; none are set to `SKIP`. There are no encoded commands, no network requests beyond the declared sources, no obfuscation, and no unexpected file operations. The content is entirely declarative and consistent with normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard metadata, no malicious content.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD, config.patch...
[1/7] Reviewing .gitignore, PKGBUILD, config.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata, no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It contains only common ignore patterns: `/*.tar.*` (source tarballs), `/src` and `/pkg` (build artifacts), and `*.log` (log files). There is no embedded code, no network requests, no obfuscation, and no dangerous operations. The file is entirely benign and conforms to normal packaging practices.</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package repo.</summary>
</security_assessment>

[2/7] Reviewing PKGBUILD, config.patch...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package repo.
[2/7] Reviewing PKGBUILD, config.patch, gotify-server.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. All source files are fetched from the official upstream repository (github.com/gotify/server) with pinned checksums, ensuring integrity. The build process uses `yarn --frozen-lockfile` for reproducible JavaScript dependencies and `go build` with standard flags. A patch is applied from a checksummed file. No suspicious network requests, obfuscated code, or dangerous commands are present. The file contains no evidence of a supply chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious code.</summary>
</security_assessment>

[3/7] Reviewing config.patch, gotify-server.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious code.
[3/7] Reviewing config.patch, gotify-server.install, gotify-server.service...
LLM auditresponse for gotify-server.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux `.install` script used by the `gotify-server` package. It contains only `post_install()` and `post_upgrade()` functions that print informational messages to the user. There are no network requests, no file modifications, no execution of external code, and no obfuscation. The messages inform the user about default credentials, port changes, configuration migration, and logging changes. All behavior is consistent with normal packaging practices and serves only to display upgrade notices.
</details>
<evidence>
</evidence>
<summary>Standard install script, no suspicious behavior.</summary>
</security_assessment>

[3/7] Reviewing config.patch, gotify-server.install, gotify-server.service, sysusers.d...
[4/7] Reviewing config.patch, gotify-server.service, sysusers.d...
+ Reviewed gotify-server.install. Status: SAFE -- Standard install script, no suspicious behavior.
LLM auditresponse for config.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `config.patch` is a standard diff that adjusts paths and a port number in a Gotify server environment example file. All changes follow the Filesystem Hierarchy Standard for Arch Linux (e.g., `/var/lib/gotify/` for runtime data). There is no obfuscated code, no network requests, no file exfiltration, and no execution of untrusted content. The patch is purely a configuration tweak for packaging purposes and contains no malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Routine config patch for packaging; no security issues.</summary>
</security_assessment>

[5/7] Reviewing gotify-server.service, sysusers.d...
+ Reviewed config.patch. Status: SAFE -- Routine config patch for packaging; no security issues.
LLM auditresponse for sysusers.d:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a systemd sysusers.d configuration file. It defines a system user and group named "gotify" with no special settings (the dashes indicate default shell, home directory, and no GID/UID specified). This is a standard and expected practice for creating an unprivileged service account for the gotify-server package. There is no malicious content, obfuscation, or suspicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard sysusers configuration for service user.</summary>
</security_assessment>

[6/7] Reviewing gotify-server.service...
+ Reviewed sysusers.d. Status: SAFE -- Standard sysusers configuration for service user.
LLM auditresponse for gotify-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the Gotify server. It contains no obfuscated code, network requests, file modifications, or any other malicious elements. The directives used are all standard systemd service hardening options (e.g., `ProtectHome`, `ProtectSystem`, `RestrictAddressFamilies`, `SystemCallFilter`) and are typical for a securely configured service. There is no evidence of a supply chain attack or any dangerous behavior.
</details>
<evidence>
</evidence>
<summary>Standard systemd service unit with no malicious content.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed gotify-server.service. Status: SAFE -- Standard systemd service unit with no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,677
  Completion Tokens: 3,077
  Total Tokens: 22,754
  Total Cost: $0.002061
  Execution Time: 45.69 seconds

Final Status: SAFE


No issues found.
