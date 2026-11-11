---
package: vintagestory-server
pkgver: 1.22.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 18576
completion_tokens: 3762
total_tokens: 22338
cost: 0.00234900
execution_time: 41.79
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-11T16:07:18Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file with no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; all sources pinned and checksummed.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no security issues.
  - file: vintagestory-server.service
    status: safe
    summary: Standard systemd service unit, no security issues.
  - file: vintagestory-server.tmpfiles
    status: safe
    summary: Standard tmpfiles config, no malicious content.
  - file: vintagestory-server.sysusers
    status: safe
    summary: Standard sysusers config; no security issues.
  - file: vsserverd.sh
    status: safe
    summary: Safe launcher script for Vintage Story server.
---

Materializing vintagestory-server from local mirror...
Materialized vintagestory-server
Analyzing vintagestory-server AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function declarations at the top level. No command substitutions, function calls, or arbitrary code execution occurs when sourced. The `source` array uses expected upstream HTTPS URLs, and all checksums are provided (none are SKIPped). No obfuscated or encoded commands are present. The `prepare()` and `package()` functions are defined but will not execute during `--printsrcinfo`. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code found.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, LICENSE...
[0/7] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC license text commonly used for open-source software. It contains no executable code, no network requests, no obfuscation, and no system modifications. There is nothing in this file that could be considered a security risk or a supply-chain attack vector.
</details>
<evidence></evidence>
<summary>Standard license file with no security issues.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file with no security issues.
[1/7] Reviewing .SRCINFO, PKGBUILD, vintagestory-server.service...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard Arch Linux AUR metadata declaration. It defines the package name, version, dependencies (dotnet-runtime-10.0, screen, procps-ng), and five source files. All source URLs point to the official upstream domain (cdn.vintagestory.at) and a local service/tmpfiles/sysusers script. Every source has a valid SHA256 checksum (no SKIP). There are no commands, obfuscated content, or unexpected network destinations. The file is purely declarative and contains no executable or malicious logic.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata; all sources pinned and checksummed.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, PKGBUILD, vintagestory-server.service, vintagestory-server.sysusers...
[2/7] Reviewing PKGBUILD, vintagestory-server.service, vintagestory-server.sysusers...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; all sources pinned and checksummed.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. It downloads the server tarball from the official upstream CDN, pins all sources with SHA-256 checksums, and performs routine file operations (extraction, path substitution with sed, copying files to the package directory). No suspicious commands, obfuscation, unexpected network requests, or attempts to exfiltrate data are present. The script is entirely focused on building and installing the package normally.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no security issues.</summary>
</security_assessment>

[3/7] Reviewing vintagestory-server.service, vintagestory-server.sysusers...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no security issues.
[3/7] Reviewing vintagestory-server.service, vintagestory-server.sysusers, vintagestory-server.tmpfiles...
LLM auditresponse for vintagestory-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the Vintage Story server. It defines the service to run as a dedicated user and group (`vintagestory`), sets the working directory, and specifies start/stop commands using the package's own `server.sh` script. The file contains no network requests, obfuscated code, file modifications outside the package scope, or any other indicators of malicious activity. It follows normal packaging conventions for a forking daemon service.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no security issues.</summary>
</security_assessment>

[4/7] Reviewing vintagestory-server.sysusers, vintagestory-server.tmpfiles...
+ Reviewed vintagestory-server.service. Status: SAFE -- Standard systemd service unit, no security issues.
[4/7] Reviewing vintagestory-server.sysusers, vintagestory-server.tmpfiles, vsserverd.sh...
LLM auditresponse for vintagestory-server.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd-tmpfiles configuration (tmpfiles.d) used to recursively set ownership and permissions on two directories (/opt/vintagestory-server and /var/vintagestory-server) to the vintagestory user and group. There is no obfuscation, network access, or dangerous command execution. It follows normal AUR packaging practices for setting up application runtime paths.
</details>
<evidence></evidence>
<summary>Standard tmpfiles config, no malicious content.</summary>
</security_assessment>

[5/7] Reviewing vintagestory-server.sysusers, vsserverd.sh...
+ Reviewed vintagestory-server.tmpfiles. Status: SAFE -- Standard tmpfiles config, no malicious content.
LLM auditresponse for vintagestory-server.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard sysusers.d configuration snippet that defines a system user for the vintagestory-server package. It creates a user named "vintagestory" with no fixed UID, sets the GECOS field to "vintagestory Server", specifies a home directory of /var/vintagestory-server, and sets the shell to /bin/bash. There is no evidence of malicious behavior: no network requests, no obfuscated code, no dangerous commands, and no deviation from normal packaging practices for creating a dedicated service user. The encoded HTML entities (&amp;quot;) appear to be a presentation artifact and do not indicate any injection or obfuscation.
</details>
<evidence></evidence>
<summary>Standard sysusers config; no security issues.</summary>
</security_assessment>

[6/7] Reviewing vsserverd.sh...
+ Reviewed vintagestory-server.sysusers. Status: SAFE -- Standard sysusers config; no security issues.
LLM auditresponse for vsserverd.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher script for the Vintage Story server. It checks whether the current user is already `vintagestory` and, if not, uses `sudo -u vintagestory` to drop privileges before executing the server script or attaching to an existing `screen` session. There are no network requests, obfuscated code, dangerous commands (eval, base64, curl, wget), file exfiltration, or unexpected system modifications. The script follows the expected pattern of an AUR package helper script that runs the server with a dedicated low-privilege user.

The script does use bash-specific features (`[[ ]]`, arrays) despite having a `#!/bin/sh` shebang; this is a portability/best-practice concern but not a security issue. The arguments are properly quoted with `"$@"`, preserving safety when passing them to the downstream server script. No evidence of supply-chain attack or malicious intent is present.
</details>
<evidence></evidence>
<summary>Safe launcher script for Vintage Story server.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed vsserverd.sh. Status: SAFE -- Safe launcher script for Vintage Story server.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,576
  Completion Tokens: 3,762
  Total Tokens: 22,338
  Total Cost: $0.002349
  Execution Time: 41.79 seconds

Final Status: SAFE


No issues found.
