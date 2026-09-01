---
package: actual-server
pkgver: 26.9.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 18771
completion_tokens: 3118
total_tokens: 21889
cost: 0.00202356644
execution_time: 44.32
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: ok
upstream_files: 5
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T11:23:05Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with no security concerns.
  - file: actual-server.conf
    status: safe
    summary: Pure config file, no executable or suspicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR packaging, no malicious code.
  - file: actual-server.sysusers
    status: safe
    summary: Standard system user definition file, no security concerns.
  - file: actual-server.service
    status: safe
    summary: Standard systemd service file, no security issues.
  - file: actual-server.tmpfiles
    status: safe
    summary: Standard tmpfiles configuration, no malicious content.
---

Cloning https://aur.archlinux.org/actual-server.git...
Cloned actual-server
Analyzing actual-server AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments, array definitions, and a `package()` function that is not executed by `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. There is no top-level code execution, no `pkgver()` function, and no obfuscated or suspicious commands in the global scope. The source array references a tarball from the official npm registry (registry.npmjs.org) with a pinned version, and four local configuration files. All checksums are provided (none are SKIP). Fetching these sources does not involve executing any untrusted payloads or exfiltrating data. The `noextract` directive prevents automatic extraction of the archive, so no code from the tarball can run during the fetch step. The specified commands are safe to execute.
</details>
<evidence></evidence>
<summary>No malicious code triggered by sourcing or fetching.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code triggered by sourcing or fetching.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 7 file(s) in the AUR repository. The 5 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file for the Arch User Repository (AUR) that declares package attributes, dependencies, sources, and checksums. It contains no executable code, commands, or encoded payloads. All sources are legitimate: the main tarball comes from the official npm registry (registry.npmjs.org), and the remaining sources are standard configuration files provided in the AUR repository (service file, sysusers, tmpfiles, conf). Each source has a specific SHA-256 checksum value, and none are set to `SKIP`. There is no evidence of malicious behavior such as obfuscation, data exfiltration, or unexpected network destinations.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with no security concerns.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD, actual-server.conf...
[1/7] Reviewing .gitignore, PKGBUILD, actual-server.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with no security concerns.
LLM auditresponse for actual-server.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a plain configuration file for the actual-server application. It contains only commented-out environment variable definitions and one uncommented setting (`ACTUAL_DATA_DIR=/var/lib/actual`). There are no executable commands, no network requests, no obfuscation, and no system modifications. All lines are either comments or standard configuration placeholders. No evidence of malicious behavior is present.
</details>
<evidence></evidence>
<summary>Pure config file, no executable or suspicious content.</summary>
</security_assessment>

[1/7] Reviewing .gitignore, PKGBUILD, actual-server.conf, actual-server.service...
[2/7] Reviewing .gitignore, PKGBUILD, actual-server.service...
+ Reviewed actual-server.conf. Status: SAFE -- Pure config file, no executable or suspicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` configuration that ignores all files except for `PKGBUILD`, `.SRCINFO`, and `actual-server.*`. This is typical for AUR package repositories, ensuring only essential packaging files are tracked. No executable code, network requests, or obfuscation is present.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no security concerns.</summary>
</security_assessment>

[2/7] Reviewing .gitignore, PKGBUILD, actual-server.service, actual-server.sysusers...
[3/7] Reviewing PKGBUILD, actual-server.service, actual-server.sysusers...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Node.js application. The source is pinned to a specific version from the official npm registry with a valid SHA256 checksum. The `npm install` command uses `--allow-scripts` to restrict lifecycle scripts to only three well-known native modules (argon2, bcrypt, better-sqlite3), which is a reasonable security measure. All configuration files (service, sysusers, tmpfiles, conf) are local files with pinned checksums. There is no obfuscated code, no unexpected network requests, and no operations that deviate from the intended packaging goals. No evidence of a supply-chain attack or malicious injection is present.
</details>
<evidence></evidence>
<summary>Standard AUR packaging, no malicious code.</summary>
</security_assessment>

[4/7] Reviewing actual-server.service, actual-server.sysusers...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR packaging, no malicious code.
[4/7] Reviewing actual-server.service, actual-server.sysusers, actual-server.tmpfiles...
LLM auditresponse for actual-server.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd sysusers.d configuration file that creates a system user `actual` for the Actual Budget Server. It specifies a descriptive comment and a home directory. There is no executable code, obfuscation, network requests, or any behavior that deviates from normal packaging practices. This file is purely declarative and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard system user definition file, no security concerns.</summary>
</security_assessment>

[5/7] Reviewing actual-server.service, actual-server.tmpfiles...
+ Reviewed actual-server.sysusers. Status: SAFE -- Standard system user definition file, no security concerns.
LLM auditresponse for actual-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for starting the Actual Server. It defines the service to run as user `actual`, loads environment variables from `/etc/conf.d/actual-server`, and executes `/usr/bin/actual-server` with restart behavior on watchdog. There is no network communication, code execution, file manipulation, or obfuscation present. The file follows typical AUR packaging practices for systemd services and contains no indications of a supply-chain attack or malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[6/7] Reviewing actual-server.tmpfiles...
+ Reviewed actual-server.service. Status: SAFE -- Standard systemd service file, no security issues.
LLM auditresponse for actual-server.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a systemd tmpfiles.d configuration that creates a directory `/var/lib/actual` with restricted permissions (0750) owned by user and group `actual`. This is standard packaging practice for applications that require a state or data directory at runtime. There is no code execution, network activity, or obfuscation. No security concerns.
</details>
<evidence></evidence>
<summary>Standard tmpfiles configuration, no malicious content.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed actual-server.tmpfiles. Status: SAFE -- Standard tmpfiles configuration, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,771
  Completion Tokens: 3,118
  Total Tokens: 21,889
  Total Cost: $0.002024
  Execution Time: 44.32 seconds

Final Status: SAFE


No issues found.
