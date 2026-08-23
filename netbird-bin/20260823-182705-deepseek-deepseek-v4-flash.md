---
package: netbird-bin
pkgver: 0.77.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: fe97f45c52ce35303ffaaa9e3aab59c432e69008
prompt_tokens: 31914
completion_tokens: 2494
total_tokens: 34408
cost: 0.00180303172
execution_time: 56.28
files_reviewed: 8
files_skipped: 0
files_unauditable: 2
unpinned_sources: 0
date: 2026-08-23T18:27:05Z
file_verdicts:
  - file: "netbird@.service"
    status: safe
    summary: Standard systemd service unit for netbird, no security issues.
  - file: PKGBUILD
    status: safe
    summary: A standard prebuilt binary PKGBUILD with no malicious indicators.
  - file: src/README.md
    status: safe
    summary: README.md contains only documentation, no malicious code.
  - file: src/LICENSE
    status: safe
    summary: Standard license file, no malicious content.
  - file: env
    status: safe
    summary: Benign configuration file, no security concerns.
  - file: src/LICENSES/AGPL-3.0.txt
    status: safe
    summary: Standard license text, no security concerns.
  - file: src/LICENSES/REUSE.toml
    status: safe
    summary: REUSE.toml contains only license metadata; no security issues found.
  - file: src/LICENSES/BSD-3-Clause.txt
    status: safe
    summary: Standard license file, no security concerns.
---

Cloning https://aur.archlinux.org/netbird-bin.git...
Cloned netbird-bin
Analyzing netbird-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and definitions of `prepare()` and `package()` functions. All source URLs point to the official netbird GitHub repository (github.com/netbirdio/netbird and raw.githubusercontent.com). No top-level command substitutions, external commands, or obfuscated code are present. The `pkgver()` function is absent, so no code runs during `makepkg --printsrcinfo`. Running `makepkg --nobuild --nodeps --noprepare` will safely download and extract the declared archives without executing any malicious payload.</details>
<evidence></evidence>
<summary>No dangerous top-level execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level execution.
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
This file is a systemd service unit for the Netbird VPN client. It uses standard service directives, including appropriate sandboxing options (e.g., `NoNewPrivileges`, `ProtectHome`, `PrivateTmp`, etc.) which are typical for hardening. The only relaxed protections (`ProtectKernelModules=no`, `ProtectKernelTunables=no`) are explicitly required for kernel-mode WireGuard functionality, as documented in the comments. The service executes the upstream binary `/usr/bin/netbird` with legitimate arguments and reads an environment file from `/etc/default/netbird`. There are no suspicious commands, network requests, or obfuscated content. The file follows standard packaging practices for systemd services and contains no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard systemd service unit for netbird, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed netbird@.service. Status: SAFE -- Standard systemd service unit for netbird, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard packaging practices for a prebuilt binary package from the netbirdio GitHub releases. All source URLs point to the official netbirdio repository with pinned version tags. Checksums are provided for every source file, ensuring integrity at build time. The `prepare()` function attempts to generate shell completions by running the extracted binary only if it is executable on the current architecture, which is a routine optimization. The `package()` function installs binaries, configuration, systemd service, license, and completions into the expected directories. There is no obfuscated code, no unexpected network requests, no attempts to exfiltrate data, and no deviation from normal AUR packaging patterns.
</details>
<evidence></evidence>
<summary>A standard prebuilt binary PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- A standard prebuilt binary PKGBUILD with no malicious indicators.
Reviewed all required files.
Deciding which files to review next...
Note: 2 compiled/archived file(s) cannot be audited as text and were not reviewed (netbird_0.77.1_linux_amd64.tar.gz, src/netbird). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Decided to review 6 additional files: env, src/LICENSE, src/README.md, src/LICENSES/AGPL-3.0.txt, src/LICENSES/BSD-3-Clause.txt, src/LICENSES/REUSE.toml
Reviewing additional files...
Reviewing additional files...
[0/6] Reviewing env...
[0/6] Reviewing env, src/LICENSE...
[0/6] Reviewing env, src/LICENSE, src/README.md...
LLM auditresponse for README.md:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard README.md for the NetBird project. It contains only documentation text, markdown formatting, links, badges, and a table of features. There are no executable commands, no obfuscated code, no network requests or downloads embedded in the file. The content is typical upstream project documentation and poses no security risk.
</details>
<evidence></evidence>
<summary>README.md contains only documentation, no malicious code.</summary>
</security_assessment>

[1/6] Reviewing env, src/LICENSE...
+ Reviewed src/README.md. Status: SAFE -- README.md contains only documentation, no malicious code.
[1/6] Reviewing env, src/LICENSE, src/LICENSES/AGPL-3.0.txt...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard BSD-3-Clause license document with a note that specific directories within the repository are licensed under AGPLv3. There is no executable code, network requests, obfuscation, or any other malicious behavior. This is a purely informational license file and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file, no malicious content.</summary>
</security_assessment>

[1/6] Reviewing env, src/LICENSE, src/LICENSES/AGPL-3.0.txt, src/LICENSES/BSD-3-Clause.txt...
[2/6] Reviewing env, src/LICENSES/AGPL-3.0.txt, src/LICENSES/BSD-3-Clause.txt...
+ Reviewed src/LICENSE. Status: SAFE -- Standard license file, no malicious content.
LLM auditresponse for env:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple configuration snippet for the netbird daemon. It contains only a comment and a single variable assignment (`FLAGS=""`). There is no code, no command execution, no network activity, and no obfuscation. It poses no security risk.
</details>
<evidence></evidence>
<summary>Benign configuration file, no security concerns.</summary>
</security_assessment>

[3/6] Reviewing src/LICENSES/AGPL-3.0.txt, src/LICENSES/BSD-3-Clause.txt...
+ Reviewed env. Status: SAFE -- Benign configuration file, no security concerns.
[3/6] Reviewing src/LICENSES/AGPL-3.0.txt, src/LICENSES/BSD-3-Clause.txt, src/LICENSES/REUSE.toml...
LLM auditresponse for AGPL-3.0.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a verbatim copy of the GNU Affero General Public License version 3 (AGPL-3.0). It contains no executable code, no network requests, no system modifications, and no obfuscated or encoded content. It is a standard license file commonly distributed with open-source software and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license text, no security concerns.</summary>
</security_assessment>

[4/6] Reviewing src/LICENSES/BSD-3-Clause.txt, src/LICENSES/REUSE.toml...
+ Reviewed src/LICENSES/AGPL-3.0.txt. Status: SAFE -- Standard license text, no security concerns.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE license configuration file (REUSE.toml). It only declares project metadata: a default license of BSD-3-Clause and a per-directory license override of AGPL-3.0-only for the management/, signal/, and relay/ directories. There is no executable code, no network access, no file manipulation, and no obfuscated content. This is a standard, benign packaging/legal metadata file.
</details>
<evidence>
</evidence>
<summary>
REUSE.toml contains only license metadata; no security issues found.</summary>
</security_assessment>

[5/6] Reviewing src/LICENSES/BSD-3-Clause.txt...
+ Reviewed src/LICENSES/REUSE.toml. Status: SAFE -- REUSE.toml contains only license metadata; no security issues found.
LLM auditresponse for BSD-3-Clause.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text copy of the BSD 3-Clause License. It contains no executable code, no network requests, no obfuscated content, no file operations, and no system modifications. It is a standard license file included for legal compliance and does not introduce any security risk.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed src/LICENSES/BSD-3-Clause.txt. Status: SAFE -- Standard license file, no security concerns.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 31,914
  Completion Tokens: 2,494
  Total Tokens: 34,408
  Total Cost: $0.001803
  Execution Time: 56.28 seconds

Final Status: SAFE


No issues found.
