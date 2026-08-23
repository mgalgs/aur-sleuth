---
package: netbird-bin
pkgver: 0.77.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 4fdfd87aaec54365f5eb3ea9cd4b5b3cd402f1d8
prompt_tokens: 31835
completion_tokens: 2582
total_tokens: 34417
cost: 0.00180777114
execution_time: 59.6
files_reviewed: 8
files_skipped: 0
files_unauditable: 2
unpinned_sources: 0
date: 2026-08-23T19:26:23Z
file_verdicts:
  - file: "netbird@.service"
    status: safe
    summary: Standard systemd service unit, no security issues
  - file: PKGBUILD
    status: safe
    summary: Standard binary package, no malicious code.
  - file: env
    status: safe
    summary: Simple environment placeholder, no malicious content.
  - file: src/LICENSE
    status: safe
    summary: Static license file, no executable or suspicious content.
  - file: src/README.md
    status: safe
    summary: README.md is documentation, no malicious content.
  - file: src/LICENSES/BSD-3-Clause.txt
    status: safe
    summary: Standard license file, no security concerns.
  - file: src/LICENSES/AGPL-3.0.txt
    status: safe
    summary: Standard license text, no security concerns.
  - file: src/LICENSES/REUSE.toml
    status: safe
    summary: Static license configuration file, no security issues.
---

Cloning https://aur.archlinux.org/netbird-bin.git...
Cloned netbird-bin
Analyzing netbird-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable definitions and source array entries in its global scope. All source URLs point to the official netbirdio GitHub repository (raw.githubusercontent.com and github.com/netbirdio/netbird), which is the legitimate upstream for the netbird-bin package. There are no command substitutions, no `eval`, no `curl|bash`, and no other code execution in the top-level scope or `pkgver()` (which is not defined). The `prepare()` and `package()` functions are not executed during `--nobuild --nodeps --noprepare` or `--printsrcinfo`. Therefore, running these commands poses no risk of malicious code execution.
</details>
<evidence></evidence>
<summary>No malicious code in global scope; sources from upstream.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope; sources from upstream.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, netbird@.service...
LLM auditresponse for netbird@.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit for the Netbird client (formerly Netbird). It follows normal packaging conventions for a VPN/client service: declares dependencies, runs the upstream binary with appropriate flags, and applies sensible sandboxing via systemd directives (LockPersonality, NoNewPrivileges, ProtectHome, ProtectSystem, etc.). There is no obfuscated code, no network requests from non-standard sources, no file operations outside the application scope, and no attempt to execute downloaded payloads. The service relies on the upstream binary `/usr/bin/netbird` which is part of the package; the `EnvironmentFile` and runtime directory references are standard for systemd units. No supply-chain attack indicators are present.</details>
<evidence></evidence>
<summary>Standard systemd service unit, no security issues</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed netbird@.service. Status: SAFE -- Standard systemd service unit, no security issues
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a binary package. It downloads the official upstream release tarballs and configuration files from the `netbirdio/netbird` GitHub repository, uses proper SHA256 checksums for all sources, and does not execute any unexpected commands. The `prepare()` function attempts to generate shell completions by running the binary locally (with stderr suppressed), which is a common and benign pattern. There are no obfuscated code, suspicious network requests, or file operations outside the package scope. The use of `$_base_raw` for downloading systemd files and environment files from the official upstream repository is expected and appropriate. All destinations (`$pkgdir`) are standard and no system modifications outside the package are performed.
</details>
<evidence></evidence>
<summary>Standard binary package, no malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package, no malicious code.
Reviewed all required files.
Deciding which files to review next...
Note: 2 compiled/archived file(s) cannot be audited as text and were not reviewed (netbird_0.77.1_linux_amd64.tar.gz, src/netbird). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Decided to review 6 additional files: env, src/LICENSE, src/README.md, src/LICENSES/AGPL-3.0.txt, src/LICENSES/BSD-3-Clause.txt, src/LICENSES/REUSE.toml
Reviewing additional files...
Reviewing additional files...
[0/6] Reviewing env...
[0/6] Reviewing env, src/LICENSE...
[0/6] Reviewing env, src/LICENSE, src/README.md...
LLM auditresponse for env:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a simple environment configuration file for the netbird daemon. It contains only a comment and a variable assignment (`FLAGS=""`). There are no commands, network requests, obfuscated code, or any operations that could be considered malicious. This is a standard placeholder for user-configurable daemon flags and poses no security risk.
</details>
<evidence></evidence>
<summary>Simple environment placeholder, no malicious content.</summary>
</security_assessment>

[1/6] Reviewing src/LICENSE, src/README.md...
+ Reviewed env. Status: SAFE -- Simple environment placeholder, no malicious content.
[1/6] Reviewing src/LICENSE, src/README.md, src/LICENSES/AGPL-3.0.txt...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard software license file (BSD 3-Clause with an additional note about AGPLv3 licensing for specific directories). It contains no executable code, no network requests, no file operations, and no obfuscated content. It is a static text file distributed as part of the package's legal documentation. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Static license file, no executable or suspicious content.</summary>
</security_assessment>

[1/6] Reviewing src/LICENSE, src/README.md, src/LICENSES/AGPL-3.0.txt, src/LICENSES/BSD-3-Clause.txt...
[2/6] Reviewing src/README.md, src/LICENSES/AGPL-3.0.txt, src/LICENSES/BSD-3-Clause.txt...
+ Reviewed src/LICENSE. Status: SAFE -- Static license file, no executable or suspicious content.
LLM auditresponse for README.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard README.md file for the NetBird project. It contains only documentation, links, images, and markdown formatting. There are no executable scripts, no obfuscated code, no network requests, and no file operations. The file is purely informational and poses no security risk.
</details>
<evidence></evidence>
<summary>README.md is documentation, no malicious content.</summary>
</security_assessment>

[3/6] Reviewing src/LICENSES/AGPL-3.0.txt, src/LICENSES/BSD-3-Clause.txt...
+ Reviewed src/README.md. Status: SAFE -- README.md is documentation, no malicious content.
[3/6] Reviewing src/LICENSES/AGPL-3.0.txt, src/LICENSES/BSD-3-Clause.txt, src/LICENSES/REUSE.toml...
LLM auditresponse for BSD-3-Clause.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a copy of the BSD 3-Clause License text. It contains no executable code, no network operations, no obfuscation, and no references to any malicious behavior. It is a standard open-source license file and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[4/6] Reviewing src/LICENSES/AGPL-3.0.txt, src/LICENSES/REUSE.toml...
+ Reviewed src/LICENSES/BSD-3-Clause.txt. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for AGPL-3.0.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a verbatim copy of the GNU Affero General Public License version 3. It contains no executable code, no scripts, no commands, and no embedded logic. It is a static text document provided as part of the upstream source to satisfy licensing requirements. There are no suspicious patterns, obfuscated content, network requests, or system operations of any kind. This file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license text, no security concerns.</summary>
</security_assessment>

[5/6] Reviewing src/LICENSES/REUSE.toml...
+ Reviewed src/LICENSES/AGPL-3.0.txt. Status: SAFE -- Standard license text, no security concerns.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a REUSE.toml configuration file used to specify licensing metadata for source directories. It contains only static TOML data with a default license and per-path license overrides. There is no executable code, no network requests, no obfuscation, and no system modifications. This is a standard, benign configuration file that poses no security risk.
</details>
<evidence></evidence>
<summary>Static license configuration file, no security issues.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed src/LICENSES/REUSE.toml. Status: SAFE -- Static license configuration file, no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 31,835
  Completion Tokens: 2,582
  Total Tokens: 34,417
  Total Cost: $0.001808
  Execution Time: 59.60 seconds

Final Status: SAFE


No issues found.
