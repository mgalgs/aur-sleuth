---
package: n8n
pkgver: 2.39.8
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 25405
completion_tokens: 3407
total_tokens: 28812
cost: 0.00160579496
execution_time: 42.9
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-18T15:18:23Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata file, no executable content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious code.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with whitelist patterns; no security issues found.
  - file: n8n.sysusers
    status: safe
    summary: Standard sysusers config for n8n service user.
  - file: n8n.env
    status: safe
    summary: Benign n8n environment config; no malicious or suspicious behavior found.
  - file: n8n.service
    status: safe
    summary: Standard systemd service file for n8n.
  - file: n8n.tmpfiles
    status: safe
    summary: Standard tmpfiles configuration; no security issues.
  - file: n8n.user.service
    status: safe
    summary: Standard systemd service unit; no security issues.
---

Materializing n8n from local mirror...
Materialized n8n
Analyzing n8n AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global (top-level) scope of this PKGBUILD only contains standard variable definitions (pkgname, pkgver, source, checksums, etc.) and function definitions (`latestver()`, `build()`, `package()`). No function calls, command substitutions, or any code that would execute at sourcing time are present. The `latestver()` function is defined but never invoked at top-level. The `build()` and `package()` functions are only executed later during `makepkg` phases not covered by `--printsrcinfo`. Therefore, running `makepkg --printsrcinfo` on this file poses no risk of executing malicious code.
</details>
<evidence></evidence>
<summary>No dangerous top-level code execution</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO file for the AUR package n8n, containing only metadata declarations. It lists the package name, version, description, URL, architecture, license, dependencies, and source files with their SHA256 checksums. All checksums are provided (none are SKIP). The file contains no executable code, no network requests, no obfuscation, and no system modifications. It is purely declarative and conforms to standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Declarative metadata file, no executable content.</summary>
</security_assessment>

[1/8] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata file, no executable content.
[1/8] Reviewing .gitignore, PKGBUILD, n8n.env...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for n8n is a standard Arch Linux package recipe. It downloads the n8n package from the official npm registry (`registry.npmjs.org`), installs it globally, rebuilds required native addons (sqlite3, kafka-javascript, ssh2) with `node-gyp`, and cleans up non-Linux artifacts. There is no obfuscated code, no unexpected network requests to non-standard hosts, no attempts to exfiltrate data, and no execution of attacker-controlled code. The file is transparent and well-documented, with comments explaining the need for rebuilding addons and cleaning up.

One hygiene note: the actual n8n tarball is downloaded via `curl` in `build()` rather than being listed in the `source` array with a checksum, which means its integrity is not verified by `makepkg`. This is a reproducibility concern, but it is not evidence of a supply‑chain attack—the download source is the official npm registry and the URL is pinned to a specific version.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious code.</summary>
</security_assessment>

[1/8] Reviewing .gitignore, PKGBUILD, n8n.env, n8n.service...
[2/8] Reviewing .gitignore, n8n.env, n8n.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious code.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in an AUR package repository. It ignores all files by default (`*`) and then whitelists essential files such as `.gitignore`, `.SRCINFO`, `PKGBUILD`, and auxiliary files like patches, services, icons, and documentation.

There is no executable content, no network access, no obfuscation, and no commands of any kind. The file contains only git ignore patterns and comments, which is completely normal packaging workflow for AUR repositories. No security concerns are present.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore with whitelist patterns; no security issues found.</summary>
</security_assessment>

[2/8] Reviewing .gitignore, n8n.env, n8n.service, n8n.sysusers...
[3/8] Reviewing n8n.env, n8n.service, n8n.sysusers...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with whitelist patterns; no security issues found.
LLM auditresponse for n8n.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd sysusers.d configuration file that creates a system user for the n8n service. It defines a user named "n8n" with a home directory at /var/lib/n8n and a non-login shell (/usr/bin/nologin). This is a normal and expected practice for AUR packages that run as a dedicated service user. There is no suspicious code, network operations, or obfuscation.
</details>
<evidence></evidence>
<summary>Standard sysusers config for n8n service user.</summary>
</security_assessment>

[3/8] Reviewing n8n.env, n8n.service, n8n.sysusers, n8n.tmpfiles...
[4/8] Reviewing n8n.env, n8n.service, n8n.tmpfiles...
+ Reviewed n8n.sysusers. Status: SAFE -- Standard sysusers config for n8n service user.
LLM auditresponse for n8n.env:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain environment-variable configuration template for the n8n service. It sets standard runtime paths, ports, and opt-out flags for upstream telemetry/notifications. No executable code, no network-fetching commands, no obfuscation, and no file operations are present. The comments reference official n8n documentation and simply describe the purpose of each variable, which is consistent with normal packaging practice.

The only point of note is that `N8N_HOST=localhost` and `N8N_PORT=5678` are runtime configuration values, not security issues. All settings are explicit and transparent, and the telemetry-disabling defaults align with privacy-conscious hosting. There is no evidence of malicious behavior or supply-chain tampering.
</details>
<evidence>
</evidence>
<summary>
Benign n8n environment config; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[4/8] Reviewing n8n.env, n8n.service, n8n.tmpfiles, n8n.user.service...
[5/8] Reviewing n8n.service, n8n.tmpfiles, n8n.user.service...
+ Reviewed n8n.env. Status: SAFE -- Benign n8n environment config; no malicious or suspicious behavior found.
LLM auditresponse for n8n.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the n8n application. It defines a service that runs `/usr/bin/n8n` as the `n8n` user, with automatic restart on failure and an optional environment file from `/etc/default/n8n`. There is no evidence of malicious activity such as obfuscated commands, network requests, file exfiltration, or unexpected operations. All directives are typical for packaging a daemon service.
</details>
<evidence>

</evidence>
<summary>Standard systemd service file for n8n.</summary>
</security_assessment>

[6/8] Reviewing n8n.tmpfiles, n8n.user.service...
+ Reviewed n8n.service. Status: SAFE -- Standard systemd service file for n8n.
LLM auditresponse for n8n.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `tmpfiles.d` configuration snippet used to ensure a persistent state directory (`/var/lib/n8n`) exists with the correct ownership and permissions for the `n8n` daemon. The `d` line creates the directory, and the `Z` line sets SELinux context and ownership. There is no code, no network operations, no obfuscation, and no deviation from normal packaging practices. It is entirely benign.
</details>
<evidence>
</evidence>
<summary>Standard tmpfiles configuration; no security issues.</summary>
</security_assessment>

[7/8] Reviewing n8n.user.service...
+ Reviewed n8n.tmpfiles. Status: SAFE -- Standard tmpfiles configuration; no security issues.
LLM auditresponse for n8n.user.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `n8n.user.service` is a standard systemd user service unit for the n8n application. It defines a service that runs `/usr/bin/n8n` with an optional environment file (`-` prefix means the file is not required). There are no unusual commands, no network requests, no obfuscation, and no operations beyond starting the application. This is exactly what is expected from a packaging perspective.
</details>
<evidence></evidence>
<summary>Standard systemd service unit; no security issues.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed n8n.user.service. Status: SAFE -- Standard systemd service unit; no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 25,405
  Completion Tokens: 3,407
  Total Tokens: 28,812
  Total Cost: $0.001606
  Execution Time: 42.90 seconds

Final Status: SAFE


No issues found.
