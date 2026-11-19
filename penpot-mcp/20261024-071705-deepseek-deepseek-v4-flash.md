---
package: penpot-mcp
pkgbase: penpot
pkgver: 2.18.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 36750
completion_tokens: 20897
total_tokens: 57647
cost: 0.007147504
execution_time: 142.83
files_reviewed: 12
files_skipped: 0
maintainer_files: 12
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-24T07:17:04Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no suspicious content.
  - file: penpot-exporter.conf.d
    status: safe
    summary: Plain configuration file, no security issues.
  - file: nginx.conf
    status: safe
    summary: Normal nginx config; no malicious code.
  - file: penpot-exporter.service
    status: safe
    summary: Standard systemd service unit; no security concerns.
  - file: penpot-update-flags.sh
    status: safe
    summary: Routine configuration script; no malicious behavior.
  - file: penpot-mcp.service
    status: safe
    summary: Standard service unit with no malicious indicators.
  - file: penpot.service
    status: safe
    summary: Standard systemd unit file; no malicious content.
  - file: penpot.conf.d
    status: safe
    summary: Standard config file, no malicious content.
  - file: penpot.tmpfiles.d
    status: safe
    summary: Standard tmpfiles.d config for Penpot; no security issues.
  - file: sysusers.conf
    status: safe
    summary: Declarative sysusers config; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no supply chain attack indicators.
---

penpot-mcp is built from penpot
Materializing penpot-mcp from local mirror...
Materialized penpot-mcp
Analyzing penpot-mcp AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable definitions (pkgname, pkgver, makedepends, source, sha256sums, etc.) and function definitions (build, package_penpot, etc.). There are no command substitutions, function calls, or other executable statements in the global scope. The `makepkg --printsrcinfo` command will only source the file, evaluate these variable assignments, and then parse the metadata without executing any of the package functions. No code execution that could be considered malicious occurs at this step.
</details>
<evidence></evidence>
<summary>No dangerous top-level code to execute.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code to execute.
Reviewing the 12 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/12] Reviewing .SRCINFO...
[0/12] Reviewing .SRCINFO, .gitignore...
[0/12] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in Arch User Repository (AUR) packages. It lists common build artifacts (`src`, `pkg`, `*.tar.gz`, `*.tar.xz`) that should be excluded from version control. There are no commands, network operations, obfuscated content, or any other indications of malicious activity.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no security issues.</summary>
</security_assessment>

[0/12] Reviewing .SRCINFO, .gitignore, PKGBUILD, nginx.conf...
[1/12] Reviewing .SRCINFO, PKGBUILD, nginx.conf...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR metadata file describing the build information for the penpot package. It declares sources from the official upstream GitHub repository with pinned version and sha256sums for verification. Dependencies are typical for a design tool (Java, Node.js, PostgreSQL, etc.). No commands, network requests, or obfuscated content are present. There is no evidence of malicious behavior such as data exfiltration, backdoors, or unauthorized code execution. The file is safe.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no suspicious content.</summary>
</security_assessment>

[2/12] Reviewing PKGBUILD, nginx.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no suspicious content.
[2/12] Reviewing PKGBUILD, nginx.conf, penpot-exporter.conf.d...
LLM auditresponse for penpot-exporter.conf.d:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for the Penpot exporter service. It contains environment variable definitions (port, host, URIs, tenant) used by the application at runtime. There are no executable commands, no obfuscation, no network requests, and no system modifications. The content is purely declarative and follows standard practice for application configuration. No security concerns are present.
</details>
<evidence>
</evidence>
<summary>Plain configuration file, no security issues.</summary>
</security_assessment>

[2/12] Reviewing PKGBUILD, nginx.conf, penpot-exporter.conf.d, penpot-exporter.service...
[3/12] Reviewing PKGBUILD, nginx.conf, penpot-exporter.service...
+ Reviewed penpot-exporter.conf.d. Status: SAFE -- Plain configuration file, no security issues.
LLM auditresponse for nginx.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nginx configuration file for the Penpot web application. It defines proxy rules to local backend services (ports 6060, 6061) and two external resources: Google Fonts (fonts.gstatic.com, fonts.googleapis.com) and the official Penpot template repository (raw.githubusercontent.com/penpot/penpot-files). These are expected upstream behaviors for providing application functionality. There is no obfuscated code, no execution of external scripts, no system commands, and no attempts to exfiltrate data. The file merely configures an HTTP reverse proxy and static file serving. No malicious code or supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Normal nginx config; no malicious code.</summary>
</security_assessment>

[3/12] Reviewing PKGBUILD, nginx.conf, penpot-exporter.service, penpot-mcp.service...
[4/12] Reviewing PKGBUILD, penpot-exporter.service, penpot-mcp.service...
+ Reviewed nginx.conf. Status: SAFE -- Normal nginx config; no malicious code.
LLM auditresponse for penpot-exporter.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the penpot-exporter application. It defines how the service runs under a dedicated user, with typical hardening options such as private /tmp, strict protection of system paths, and restriction of system calls. There are no network requests, file downloads, obfuscated commands, or suspicious operations. The use of `MemoryDenyWriteExecute=false` is not inherently malicious; it allows the Node.js runtime to create writable+executable memory mappings, which may be required by JIT compilation or native addons. All paths and executables reference standard locations under `/usr/bin` and `/var/lib/penpot`, aligned with Arch packaging conventions. No supply-chain attack indicators are present.
</details>
<evidence>

</evidence>
<summary>Standard systemd service unit; no security concerns.</summary>
</security_assessment>

[4/12] Reviewing PKGBUILD, penpot-exporter.service, penpot-mcp.service, penpot-update-flags.sh...
[5/12] Reviewing PKGBUILD, penpot-mcp.service, penpot-update-flags.sh...
+ Reviewed penpot-exporter.service. Status: SAFE -- Standard systemd service unit; no security concerns.
LLM auditresponse for penpot-update-flags.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script reads configuration from `/etc/conf.d/penpot` and conditionally writes a JavaScript variable assignment to `/usr/share/webapps/penpot/js/config.js`. There is no network activity, no execution of downloaded content, no obfuscation, and no manipulation of files outside the application's own directory. This is a standard helper script for setting frontend flags in a web application.
</details>
<evidence></evidence>
<summary>Routine configuration script; no malicious behavior.</summary>
</security_assessment>

[5/12] Reviewing PKGBUILD, penpot-mcp.service, penpot-update-flags.sh, penpot.conf.d...
[6/12] Reviewing PKGBUILD, penpot-mcp.service, penpot.conf.d...
+ Reviewed penpot-update-flags.sh. Status: SAFE -- Routine configuration script; no malicious behavior.
LLM auditresponse for penpot-mcp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This systemd service unit file defines a standard service for the penpot-mcp application. It runs a Node.js script as a dedicated user with reasonable security hardening options (e.g., NoNewPrivileges, ProtectHome, ProtectSystem=strict). There are no signs of malicious activity: no network requests, no obfuscated code, no unexpected system modifications. The configuration follows normal packaging practices for a service.
</details>
<evidence></evidence>
<summary>Standard service unit with no malicious indicators.</summary>
</security_assessment>

[6/12] Reviewing PKGBUILD, penpot-mcp.service, penpot.conf.d, penpot.service...
[7/12] Reviewing PKGBUILD, penpot.conf.d, penpot.service...
+ Reviewed penpot-mcp.service. Status: SAFE -- Standard service unit with no malicious indicators.
LLM auditresponse for penpot.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the Penpot backend application. It defines the service lifecycle (Type=exec, ExecStart, Restart behavior), specifies working directory and environment file, and applies common security hardening directives (NoNewPrivileges, PrivateDevices, ProtectHome, ProtectSystem, RestrictSUIDSGID, etc.). There is no embedded executable code, no network requests, no obfuscated content, and no deviation from expected service configuration practices. The file is benign and poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard systemd unit file; no malicious content.</summary>
</security_assessment>

[8/12] Reviewing PKGBUILD, penpot.conf.d...
+ Reviewed penpot.service. Status: SAFE -- Standard systemd unit file; no malicious content.
[8/12] Reviewing PKGBUILD, penpot.conf.d, penpot.tmpfiles.d...
LLM auditresponse for penpot.conf.d:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for the Penpot application. It contains environment variable definitions for backend and frontend flags, database connection strings, Redis URI, storage backend settings, and SMTP configuration. There is no executable code, no obfuscation, no network requests, and no unexpected file operations. The file follows standard packaging practices for providing application configuration in an AUR package. The only hardcoded default credentials (database password &quot;penpot&quot;) are development defaults and are not a supply chain threat. No malicious or suspicious behavior is present.
</details>
<evidence>
</evidence>
<summary>
Standard config file, no malicious content.</summary>
</security_assessment>

[8/12] Reviewing PKGBUILD, penpot.conf.d, penpot.tmpfiles.d, sysusers.conf...
[9/12] Reviewing PKGBUILD, penpot.tmpfiles.d, sysusers.conf...
+ Reviewed penpot.conf.d. Status: SAFE -- Standard config file, no malicious content.
LLM auditresponse for penpot.tmpfiles.d:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd tmpfiles.d configuration snippet for the Penpot application. It defines a directory under `/var/lib/penpot` with appropriate ownership (penpot:http) and permissions (0700 initially, then recursively set to 0750). Such configurations are standard for web applications to manage runtime data directories. There is no malicious content, no network activity, no code execution, and no exfiltration. The file is completely benign and follows normal packaging practices for AUR packages.
</details>
<evidence></evidence>
<summary>Standard tmpfiles.d config for Penpot; no security issues.</summary>
</security_assessment>

[10/12] Reviewing PKGBUILD, sysusers.conf...
+ Reviewed penpot.tmpfiles.d. Status: SAFE -- Standard tmpfiles.d config for Penpot; no security issues.
LLM auditresponse for sysusers.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd sysusers.d configuration that creates a system user for the Penpot application. It declares a user with automatic UID assignment, a description, and a home directory under /var/lib/penpot. There is no executable code, no network access, no obfuscation, and no deviation from normal packaging practices. The content is purely declarative and serves the intended purpose of creating an unprivileged user for the daemon.
</details>
<evidence>
</evidence>
<summary>Declarative sysusers config; no security issues.</summary>
</security_assessment>

[11/12] Reviewing PKGBUILD...
+ Reviewed sysusers.conf. Status: SAFE -- Declarative sysusers config; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD packages the Penpot design application from its official upstream source tarball. The build process applies numerous `sed` patches to adapt the upstream source to Arch Linux conventions (e.g., system Chromium, system emsdk, removing corepack/packageManager, fixing path resolution). These are standard packaging adaptations, not malicious code injection. The source is pinned to a specific version and authenticated with SHA256 checksums.

Network destinations are limited to the project's own GitHub repository, the npm registry (via pnpm), and the Rust toolchain (via rustup). All are expected for building this project. There is no obfuscation, data exfiltration, backdoor installation, or execution of code from unrelated hosts. A minor bash syntax issue exists (`$sha256sums[0]` instead of `${sha256sums[0]}`), which results in a slightly incorrect cache key passed to the upstream build script; this has no security impact. The file demonstrates thorough and legitimate packaging effort.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no supply chain attack indicators.</summary>
</security_assessment>

[12/12] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no supply chain attack indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,750
  Completion Tokens: 20,897
  Total Tokens: 57,647
  Total Cost: $0.007148
  Execution Time: 142.83 seconds

Final Status: SAFE


No issues found.
