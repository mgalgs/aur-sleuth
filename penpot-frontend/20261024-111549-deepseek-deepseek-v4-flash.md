---
package: penpot-frontend
pkgbase: penpot
pkgver: 2.18.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 36750
completion_tokens: 6385
total_tokens: 43135
cost: 0.004506320
execution_time: 63.4
files_reviewed: 12
files_skipped: 0
maintainer_files: 12
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-24T11:15:49Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no security issues.
  - file: nginx.conf
    status: safe
    summary: Standard nginx config for Penpot, no security issues.
  - file: penpot-exporter.conf.d
    status: safe
    summary: Standard configuration file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious code found.
  - file: penpot-exporter.service
    status: safe
    summary: Standard systemd service unit, no malicious content.
  - file: penpot-mcp.service
    status: safe
    summary: Standard systemd service unit, no malicious content.
  - file: penpot.conf.d
    status: safe
    summary: Standard config file, no malicious code.
  - file: penpot-update-flags.sh
    status: safe
    summary: Benign configuration script; no malicious behavior.
  - file: penpot.service
    status: safe
    summary: Standard systemd service unit, no security issues.
  - file: sysusers.conf
    status: safe
    summary: Standard sysusers file for service user creation.
  - file: penpot.tmpfiles.d
    status: safe
    summary: Standard tmpfiles configuration; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with no malicious content.
---

penpot-frontend is built from penpot
Materializing penpot-frontend from local mirror...
Materialized penpot-frontend
Analyzing penpot-frontend AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's top-level scope, which consists entirely of static variable assignments (pkgver, pkgname, source, sha256sums, etc.) with no command substitutions, backticks, eval calls, or other executable constructs. No code outside the function definitions (build, package_*) can execute during this step. No dangerous top-level operations are present.
</details>
<evidence></evidence>
<summary>No executable top-level code; parsing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable top-level code; parsing is safe.
Reviewing the 12 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/12] Reviewing .SRCINFO...
[0/12] Reviewing .SRCINFO, .gitignore...
[0/12] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an Arch User Repository (AUR) package. It lists common build artifacts (`src`, `pkg`) and compressed tarballs (`*.tar.gz`, `*.tar.xz`) that should not be tracked in version control. There is no code execution, network activity, obfuscation, or any other security-relevant behavior. The file is benign and follows typical AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no security issues.</summary>
</security_assessment>

[0/12] Reviewing .SRCINFO, .gitignore, PKGBUILD, nginx.conf...
[1/12] Reviewing .SRCINFO, PKGBUILD, nginx.conf...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no security issues.
LLM auditresponse for nginx.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nginx configuration file for the Penpot web application. It sets up reverse proxy rules, serves static assets, and proxies requests for Google Fonts and GitHub-hosted template files. All proxied destinations (localhost:6060, localhost:6061, raw.githubusercontent.com, fonts.gstatic.com, fonts.googleapis.com) are legitimate and expected for the application's functionality. There are no dangerous commands, obfuscation, or signs of malicious intent. The configuration follows common patterns for a web application behind nginx.
</details>
<evidence></evidence>
<summary>Standard nginx config for Penpot, no security issues.</summary>
</security_assessment>

[1/12] Reviewing .SRCINFO, PKGBUILD, nginx.conf, penpot-exporter.conf.d...
[2/12] Reviewing .SRCINFO, PKGBUILD, penpot-exporter.conf.d...
+ Reviewed nginx.conf. Status: SAFE -- Standard nginx config for Penpot, no security issues.
LLM auditresponse for penpot-exporter.conf.d:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain configuration file for the Penpot exporter service. It defines environment variables such as HTTP server port, host, public URI, backend URI, Redis connection URI, and tenant name. There are no commands, scripts, obfuscated content, or any dynamic operations. The configuration appears standard and does not introduce any supply-chain attack vectors. All values reference localhost or local URIs, which is expected for a local deployment. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard configuration file, no security issues.</summary>
</security_assessment>

[2/12] Reviewing .SRCINFO, PKGBUILD, penpot-exporter.conf.d, penpot-exporter.service...
[3/12] Reviewing .SRCINFO, PKGBUILD, penpot-exporter.service...
+ Reviewed penpot-exporter.conf.d. Status: SAFE -- Standard configuration file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for the Penpot design tool. All source files are downloaded from the official GitHub repository via a versioned tarball with a valid SHA256 checksum. The build process invokes standard toolchains (pnpm, rustup, Clojure, etc.) to compile the project components, and the package functions install files into conventional system paths. There is no evidence of obfuscated code, unexpected network destinations, data exfiltration, backdoors, or any behavior that deviates from legitimate packaging. All modifications (sed commands) are adaptations to the Arch Linux environment, such as setting the correct emscripten path and disabling corepack—these are routine and not malicious.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious code found.</summary>
</security_assessment>

[3/12] Reviewing .SRCINFO, PKGBUILD, penpot-exporter.service, penpot-mcp.service...
[4/12] Reviewing .SRCINFO, penpot-exporter.service, penpot-mcp.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious code found.
LLM auditresponse for penpot-exporter.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the penpot-exporter component of the Penpot application. It defines the service to run a Node.js application with a set of security hardening options (e.g., NoNewPrivileges, ProtectHome, ProtectSystem=strict, etc.). There are no network requests, file downloads, code execution beyond the intended Node.js binary, or any obfuscated content. All directives are typical for packaging a service on Arch Linux. No malicious or suspicious behavior is present.
</details>
<evidence>

</evidence>
<summary>Standard systemd service unit, no malicious content.</summary>
</security_assessment>

[4/12] Reviewing .SRCINFO, penpot-exporter.service, penpot-mcp.service, penpot-update-flags.sh...
[5/12] Reviewing .SRCINFO, penpot-mcp.service, penpot-update-flags.sh...
+ Reviewed penpot-exporter.service. Status: SAFE -- Standard systemd service unit, no malicious content.
LLM auditresponse for penpot-mcp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the penpot-mcp server. It defines a service that runs a Node.js application (`/usr/bin/node /usr/bin/penpot-mcp`) with a set of security hardening options (e.g., `NoNewPrivileges=yes`, `ProtectSystem=strict`, `PrivateTmp=yes`). There are no suspicious network requests, obfuscated code, file operations outside of the service's working directory, or any commands that deviate from typical service unit configuration. The content is consistent with legitimate packaging practices.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no malicious content.</summary>
</security_assessment>

[5/12] Reviewing .SRCINFO, penpot-mcp.service, penpot-update-flags.sh, penpot.conf.d...
[6/12] Reviewing .SRCINFO, penpot-update-flags.sh, penpot.conf.d...
+ Reviewed penpot-mcp.service. Status: SAFE -- Standard systemd service unit, no malicious content.
LLM auditresponse for penpot.conf.d:
<security_assessment>
<decision>SAFE</decision>
<details>
The file "penpot.conf.d" is a configuration file for the Penpot application. It contains environment variable definitions and comments describing available flags and configuration options. There are no executable commands, no network requests, no obfuscated code, and no file operations beyond setting variables. The content is entirely consistent with standard packaging and application configuration practices. No signs of supply-chain attack or malicious behavior are present.
</details>
<evidence>
</evidence>
<summary>Standard config file, no malicious code.</summary>
</security_assessment>

[7/12] Reviewing .SRCINFO, penpot-update-flags.sh...
+ Reviewed penpot.conf.d. Status: SAFE -- Standard config file, no malicious code.
[7/12] Reviewing .SRCINFO, penpot-update-flags.sh, penpot.service...
LLM auditresponse for penpot-update-flags.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard configuration helper for the Penpot web application. It sources a system configuration file from `/etc/conf.d/penpot` (a normal Arch Linux location) and writes a JavaScript variable assignment to the application's config file if the relevant environment variable is set. There are no network requests, obfuscated code, dangerous commands (eval, base64, curl, wget), or unexpected file operations. The script only writes to a file within the package's own installation directory, which is typical for setting runtime flags. No evidence of malicious intent or supply-chain attack.
</details>
<evidence></evidence>
<summary>Benign configuration script; no malicious behavior.</summary>
</security_assessment>

[7/12] Reviewing .SRCINFO, penpot-update-flags.sh, penpot.service, penpot.tmpfiles.d...
[8/12] Reviewing .SRCINFO, penpot.service, penpot.tmpfiles.d...
+ Reviewed penpot-update-flags.sh. Status: SAFE -- Benign configuration script; no malicious behavior.
LLM auditresponse for penpot.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the penpot backend application. It defines the service execution, environment, and standard security hardening options (e.g., NoNewPrivileges, ProtectSystem, PrivateTmp). There is no embedded code, no network requests, no obfuscation, and no deviation from expected packaging practices. The file does not contain any supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>Standard systemd service unit, no security issues.</summary>
</security_assessment>

[9/12] Reviewing .SRCINFO, penpot.tmpfiles.d...
+ Reviewed penpot.service. Status: SAFE -- Standard systemd service unit, no security issues.
[9/12] Reviewing .SRCINFO, penpot.tmpfiles.d, sysusers.conf...
LLM auditresponse for sysusers.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd sysusers configuration file, used to create a system user for the Penpot application. It defines a user `penpot` with a home directory `/var/lib/penpot` and a comment. Such files are commonly included in packages to ensure the service runs under a dedicated unprivileged user. There is no obfuscation, network activity, or suspicious operations. The content is benign and follows expected packaging conventions.
</details>
<evidence></evidence>
<summary>Standard sysusers file for service user creation.</summary>
</security_assessment>

[10/12] Reviewing .SRCINFO, penpot.tmpfiles.d...
+ Reviewed sysusers.conf. Status: SAFE -- Standard sysusers file for service user creation.
LLM auditresponse for penpot.tmpfiles.d:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd-tmpfiles configuration snippet. It creates a directory `/var/lib/penpot` with restricted permissions and then applies ownership and permission restoration recursively. This is a common packaging practice to set up proper runtime directories for services. There is no obfuscation, network activity, or dangerous command execution. The contents are exactly as expected for a legitimate application data directory.
</details>
<evidence></evidence>
<summary>Standard tmpfiles configuration; no security concerns.</summary>
</security_assessment>

[11/12] Reviewing .SRCINFO...
+ Reviewed penpot.tmpfiles.d. Status: SAFE -- Standard tmpfiles configuration; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR package metadata file (`.SRCINFO`) describing the Penpot design tool. All sources point to the project&#39;s own GitHub release tarball or local supplementary files, with explicit SHA-256 checksums provided (none set to `SKIP`). Dependencies and build tools (git, curl, npm, etc.) are ordinary for a project of this nature. The presence of HTML entities (`&amp;gt;` and `&amp;lt;`) in version constraints (e.g., `java-environment&amp;gt;=27`) is an unusual formatting artifact but not malicious – it likely results from a script that over‑escaped the output. No obfuscated code, unexpected network destinations, dangerous commands, or exfiltration patterns are present. The file is purely declarative and contains no executable logic.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata with no malicious content.</summary>
</security_assessment>

[12/12] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,750
  Completion Tokens: 6,385
  Total Tokens: 43,135
  Total Cost: $0.004506
  Execution Time: 63.40 seconds

Final Status: SAFE


No issues found.
