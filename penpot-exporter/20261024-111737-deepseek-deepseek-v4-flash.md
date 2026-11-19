---
package: penpot-exporter
pkgbase: penpot
pkgver: 2.18.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 36671
completion_tokens: 6544
total_tokens: 43215
cost: 0.004528069
execution_time: 60.17
files_reviewed: 12
files_skipped: 0
maintainer_files: 12
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-24T11:17:36Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no security issues.
  - file: penpot-exporter.conf.d
    status: safe
    summary: Configuration file with no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious indicators.
  - file: penpot-exporter.service
    status: safe
    summary: Standard systemd service file; no malicious content.
  - file: nginx.conf
    status: safe
    summary: Standard nginx config for Penpot, no malicious code.
  - file: penpot.conf.d
    status: safe
    summary: Standard config file, no security issues.
  - file: penpot-mcp.service
    status: safe
    summary: Standard systemd service unit, no malicious content.
  - file: penpot.service
    status: safe
    summary: Standard systemd service file, no security issues.
  - file: penpot-update-flags.sh
    status: safe
    summary: Legitimate config helper script, no malicious behavior.
  - file: penpot.tmpfiles.d
    status: safe
    summary: Standard tmpfiles configuration for penpot application.
  - file: sysusers.conf
    status: safe
    summary: Standard system user creation.
---

penpot-exporter is built from penpot
Materializing penpot-exporter from local mirror...
Materialized penpot-exporter
Analyzing penpot-exporter AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable declarations and array definitions at the global scope. No command substitutions, backtick executions, `eval`, or any other code that would execute when the file is sourced by `makepkg --printsrcinfo`. The functions (`build()`, `package_*()`) are defined but not invoked during this step. Therefore, sourcing this file poses no immediate security risk.
</details>
<evidence></evidence>
<summary>No dangerous code at top level.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code at top level.
Reviewing the 12 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/12] Reviewing .SRCINFO...
[0/12] Reviewing .SRCINFO, .gitignore...
[0/12] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package build directory. It ignores the `src` and `pkg` directories (created by `makepkg`) and any `.tar.gz` or `.tar.xz` archives. There is no executable code, no network operations, and no obfuscation. The content is entirely benign and consistent with normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard .gitignore file with no security concerns.</summary>
</security_assessment>

[0/12] Reviewing .SRCINFO, .gitignore, PKGBUILD, nginx.conf...
[1/12] Reviewing .SRCINFO, PKGBUILD, nginx.conf...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata descriptor for the AUR package. It defines package name, version, dependencies, sources, and checksums. All source URLs point to the official Penpot GitHub repository. Checksums are provided for all source files; none are set to `SKIP`. There is no executable code, no obfuscation, no unexpected network destinations, and no file operations outside standard packaging conventions. The dependencies listed (Java, Node.js, Redis, PostgreSQL, etc.) are legitimate runtime requirements for the Penpot design tool and its exporter component. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard package metadata, no security issues.</summary>
</security_assessment>

[1/12] Reviewing .SRCINFO, PKGBUILD, nginx.conf, penpot-exporter.conf.d...
[2/12] Reviewing PKGBUILD, nginx.conf, penpot-exporter.conf.d...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no security issues.
LLM auditresponse for penpot-exporter.conf.d:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a simple configuration file for the penpot-exporter service. It contains only static key-value pairs defining localhost addresses, port numbers, and a tenant identifier. There is no executable code, no obfuscation, no network requests, no file operations, and no system modifications. The configuration is entirely standard and poses no security risk.
</details>
<evidence></evidence>
<summary>Configuration file with no security issues.</summary>
</security_assessment>

[2/12] Reviewing PKGBUILD, nginx.conf, penpot-exporter.conf.d, penpot-exporter.service...
[3/12] Reviewing PKGBUILD, nginx.conf, penpot-exporter.service...
+ Reviewed penpot-exporter.conf.d. Status: SAFE -- Configuration file with no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a complex multi-component project (Penpot). All source archives are pinned to specific version tags and verified with non-SKIP SHA-256 checksums. The build process downloads npm dependencies (via pnpm) and Rust toolchain components, which is normal for such projects and not a supply-chain injection vector. Patches applied via `sed` adapt the upstream build to Arch Linux (e.g., using system-provided emscripten, chromium, and Java), which is expected maintainer work. There are no obfuscated commands, no unexpected network requests (other than the declared sources and standard package manager fetches), and no exfiltration or backdoor mechanisms. The only minor issue is a likely typo in the `noextract` array (referencing a `.tgz` file that does not match the actual source), but this has no security impact and would simply be ignored during build.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD, no malicious indicators.</summary>
</security_assessment>

[3/12] Reviewing PKGBUILD, nginx.conf, penpot-exporter.service, penpot-mcp.service...
[4/12] Reviewing nginx.conf, penpot-exporter.service, penpot-mcp.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious indicators.
LLM auditresponse for penpot-exporter.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the penpot-exporter application. It runs a Node.js application (`/usr/bin/node /usr/bin/penpot-exporter`) as a dedicated user with typical hardening options (e.g., `NoNewPrivileges`, `PrivateDevices`, `ProtectHome`, `ProtectSystem`). There are no network requests, obfuscated code, file operations outside the expected scope, or any commands that deviate from normal service definition. The service follows best practices for security containment. No evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard systemd service file; no malicious content.</summary>
</security_assessment>

[5/12] Reviewing nginx.conf, penpot-mcp.service...
+ Reviewed penpot-exporter.service. Status: SAFE -- Standard systemd service file; no malicious content.
[5/12] Reviewing nginx.conf, penpot-mcp.service, penpot-update-flags.sh...
LLM auditresponse for nginx.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard nginx configuration for proxying the Penpot application. It defines reverse proxy rules to local services (localhost:6060, localhost:6061) and to external resources required by Penpot (raw.githubusercontent.com for template files, fonts.gstatic.com and fonts.googleapis.com for Google Fonts). These external proxies serve the application's stated functionality and are not evidence of a supply-chain attack. The configuration uses regex captures and variable interpolation for dynamic proxying, but the patterns are restricted (e.g., only alphanumeric characters, dashes, underscores, dots for template file names) and the targets are the project's own repositories or well-known CDNs. There are no obfuscated commands, unexpected file operations, backdoors, or data exfiltration attempts. The file is a static configuration artifact; it does not execute code directly. All network destinations are legitimate for the Penpot application.
</details>
<evidence>
</evidence>
<summary>Standard nginx config for Penpot, no malicious code.</summary>
</security_assessment>

[6/12] Reviewing penpot-mcp.service, penpot-update-flags.sh...
+ Reviewed nginx.conf. Status: SAFE -- Standard nginx config for Penpot, no malicious code.
[6/12] Reviewing penpot-mcp.service, penpot-update-flags.sh, penpot.conf.d...
LLM auditresponse for penpot.conf.d:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain configuration file for Penpot, an open-source design and prototyping platform. It contains only environment variable assignments and comments, with no executable code, network requests, obfuscation, or system-modifying commands. The settings configure typical server-side options (database URI, Redis URI, secret key, SMTP, telemetry, storage backend) and are standard for such applications. There is no evidence of malicious intent or supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard config file, no security issues.</summary>
</security_assessment>

[6/12] Reviewing penpot-mcp.service, penpot-update-flags.sh, penpot.conf.d, penpot.service...
[7/12] Reviewing penpot-mcp.service, penpot-update-flags.sh, penpot.service...
+ Reviewed penpot.conf.d. Status: SAFE -- Standard config file, no security issues.
LLM auditresponse for penpot-mcp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the penpot-mcp server. It launches `/usr/bin/node /usr/bin/penpot-mcp` under the `penpot` user, with typical hardening options (PrivateTmp, ProtectHome, ProtectSystem, etc.). No obfuscated commands, network requests, file exfiltration, or unexpected system modifications are present. The service only starts the application binary installed by the package itself. While `MemoryDenyWriteExecute=false` is a permissive security setting, it is a configuration choice rather than evidence of malice. The file conforms to normal packaging practices and contains no supply‑chain attack indicators.
</details>
<evidence>
</evidence>
<summary>Standard systemd service unit, no malicious content.</summary>
</security_assessment>

[7/12] Reviewing penpot-mcp.service, penpot-update-flags.sh, penpot.service, penpot.tmpfiles.d...
[8/12] Reviewing penpot-update-flags.sh, penpot.service, penpot.tmpfiles.d...
+ Reviewed penpot-mcp.service. Status: SAFE -- Standard systemd service unit, no malicious content.
LLM auditresponse for penpot.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the Penpot backend application. It defines the service to run as the `penpot` user with a working directory, environment file, and the executable `/usr/bin/penpot`. The included hardening options (e.g., `NoNewPrivileges=yes`, `PrivateTmp=yes`, `ProtectSystem=strict`) are standard security best practices and not indicative of malice. There are no network requests, code execution, or obfuscated content. The file is consistent with legitimate packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[8/12] Reviewing penpot-update-flags.sh, penpot.service, penpot.tmpfiles.d, sysusers.conf...
[9/12] Reviewing penpot-update-flags.sh, penpot.tmpfiles.d, sysusers.conf...
+ Reviewed penpot.service. Status: SAFE -- Standard systemd service file, no security issues.
LLM auditresponse for penpot-update-flags.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard configuration helper for the penpot-exporter package. It sources a configuration file from /etc/conf.d/penpot and writes a JavaScript variable assignment to the frontend configuration file if the environment variable PENPOT_FRONTEND_FLAGS is set. No network activity, obfuscation, or execution of untrusted code is present. The operation is limited to writing a config value into a predetermined file path, which aligns with normal packaging practices for injecting runtime flags. The lack of input sanitization is a minor hardening concern but does not constitute evidence of a supply-chain attack; an attacker would need control over the system configuration file to abuse this, which is outside the scope of the AUR package itself.
</details>
<evidence></evidence>
<summary>Legitimate config helper script, no malicious behavior.</summary>
</security_assessment>

[10/12] Reviewing penpot.tmpfiles.d, sysusers.conf...
+ Reviewed penpot-update-flags.sh. Status: SAFE -- Legitimate config helper script, no malicious behavior.
LLM auditresponse for penpot.tmpfiles.d:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd tmpfiles.d configuration snippet. It instructs systemd-tmpfiles to create the directory `/var/lib/penpot` with mode 0700, owned by user `penpot` and group `http`, and then recursively set mode 0750 on that same path. This is a routine packaging file used to ensure the application has the required state directory with correct permissions. No network requests, code execution, obfuscation, or any other malicious behavior is present. The content is entirely benign and conforms to normal packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard tmpfiles configuration for penpot application.</summary>
</security_assessment>

[11/12] Reviewing sysusers.conf...
+ Reviewed penpot.tmpfiles.d. Status: SAFE -- Standard tmpfiles configuration for penpot application.
LLM auditresponse for sysusers.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd sysusers configuration file. It defines a system user "penpot" with a home directory at /var/lib/penpot, intended for the penpot-exporter service to run with appropriate privileges. This is a common packaging practice for services that need a dedicated system user. No malicious or suspicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard system user creation.</summary>
</security_assessment>

[12/12] Reviewing ...
+ Reviewed sysusers.conf. Status: SAFE -- Standard system user creation.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,671
  Completion Tokens: 6,544
  Total Tokens: 43,215
  Total Cost: $0.004528
  Execution Time: 60.17 seconds

Final Status: SAFE


No issues found.
