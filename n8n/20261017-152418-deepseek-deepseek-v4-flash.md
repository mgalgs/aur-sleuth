---
package: n8n
pkgver: 2.43.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 26253
completion_tokens: 3669
total_tokens: 29922
cost: 0.003056781
execution_time: 50.4
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-17T15:24:18Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata only; no executable code or threats.
  - file: n8n.env
    status: safe
    summary: Standard environment config file, no security concerns.
  - file: n8n.service
    status: safe
    summary: Safe, standard systemd service file for n8n.
  - file: n8n.sysusers
    status: safe
    summary: Routine sysusers config for n8n service user, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Legitimate PKGBUILD with standard packaging practices, no malicious code.
  - file: n8n.user.service
    status: safe
    summary: Standard systemd user service for n8n, no security issues.
  - file: n8n.tmpfiles
    status: safe
    summary: Standard tmpfiles configuration, no malicious content.
---

Materializing n8n from local mirror...
Materialized n8n
Analyzing n8n AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function definitions at the top level. No command substitutions, backticks, or other executable operations exist in the global scope that would run during `makepkg --printsrcinfo`. The `latestver()`, `build()`, and `package()` functions are defined but not invoked at source time, so they cannot execute during this safety gate.
</details>
<evidence></evidence>
<summary>No top-level execution risk in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution risk in PKGBUILD.
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file is a standard configuration file used by Git to exclude files from version control. It follows a typical pattern: ignore everything (`*`), then un-ignore specific essential files and auxiliary file types. There are no executable commands, no network operations, no obfuscated content, and no references to external resources. The file serves only to manage which files are tracked in the repository, which is a normal and expected practice in AUR packaging. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard .gitignore file with no malicious content.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no malicious content.
[1/8] Reviewing .SRCINFO, PKGBUILD, n8n.env...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a metadata-only `.SRCINFO` file describing the n8n package for the AUR. It contains no executable code, no network requests, no obfuscation, and no dangerous operations. It lists the package name, version, description, dependencies, sources, and checksums. All five source files have explicit SHA-256 checksums (none are set to `SKIP`), which is good for integrity verification. The dependencies (`nodejs`, `sqlite`, `librdkafka`) are standard for a Node.js workflow automation tool. The file does nothing beyond defining package metadata; it cannot perform any actions on its own. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Declarative metadata only; no executable code or threats.</summary>
</security_assessment>

[2/8] Reviewing PKGBUILD, n8n.env...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata only; no executable code or threats.
[2/8] Reviewing PKGBUILD, n8n.env, n8n.service...
LLM auditresponse for n8n.env:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `n8n.env` is a standard environment variable configuration file for the n8n application. It sets the user data folder, host, port, and disables telemetry and template features. There are no commands, network requests, or any executable content. Nothing malicious or suspicious is present.
</details>
<evidence></evidence>
<summary>Standard environment config file, no security concerns.</summary>
</security_assessment>

[2/8] Reviewing PKGBUILD, n8n.env, n8n.service, n8n.sysusers...
[3/8] Reviewing PKGBUILD, n8n.service, n8n.sysusers...
+ Reviewed n8n.env. Status: SAFE -- Standard environment config file, no security concerns.
LLM auditresponse for n8n.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the n8n application. All directives are typical for packaging a service: it defines the unit description, sets dependencies (`After=network-online.target`), specifies a dedicated user (`n8n`), enables auto-restart, loads an optional environment file (`/etc/default/n8n`), and launches the application binary (`/usr/bin/n8n`). There are no unexpected commands, network calls, file operations, or encoded content. The file contains no obfuscation or suspicious behavior.
</details>
<evidence></evidence>
<summary>Safe, standard systemd service file for n8n.</summary>
</security_assessment>

[4/8] Reviewing PKGBUILD, n8n.sysusers...
+ Reviewed n8n.service. Status: SAFE -- Safe, standard systemd service file for n8n.
[4/8] Reviewing PKGBUILD, n8n.sysusers, n8n.tmpfiles...
LLM auditresponse for n8n.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
The 'n8n.sysusers' file is a standard systemd sysusers.d configuration that creates a dedicated system user for the n8n service. It defines a user 'n8n' with home directory '/var/lib/n8n' and shell '/usr/bin/nologin'. This is a routine and expected packaging practice for services that should run under a non-privileged system account. No malicious operations, data exfiltration, code execution, or suspicious behavior is present. The content is straightforward and matches normal AUR/service packaging patterns.
</details>
<evidence></evidence>
<summary>Routine sysusers config for n8n service user, no security issues.</summary>
</security_assessment>

[4/8] Reviewing PKGBUILD, n8n.sysusers, n8n.tmpfiles, n8n.user.service...
[5/8] Reviewing PKGBUILD, n8n.tmpfiles, n8n.user.service...
+ Reviewed n8n.sysusers. Status: SAFE -- Routine sysusers config for n8n service user, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a legitimate, well-documented packaging file for the n8n workflow automation tool. It downloads the upstream source from the official npm registry (`registry.npmjs.org`), installs it with npm (using `--ignore-scripts` to prevent arbitrary code execution during install), applies targeted patches to fix an upstream race condition in the shutdown path, and rebuilds only the required native addons (`sqlite3`, `kafka-javascript`, `ssh2`, `cpu-features`) with `node-gyp`. All operations are standard Arch Linux packaging practices: fetching from the project's own upstream, cleaning platform-specific binaries, removing build artifacts, and installing configuration files. No obfuscated code, unexpected network targets, backdoors, or data exfiltration is present. The long `latestver()` function is a maintainer helper (not invoked during the actual build), and the `curl` download in `build()` targets the package's own npm tarball, which is normal for packages that ship prebuilt `.tgz` from npm.
</details>
<evidence></evidence>
<summary>Legitimate PKGBUILD with standard packaging practices, no malicious code.</summary>
</security_assessment>

[6/8] Reviewing n8n.tmpfiles, n8n.user.service...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate PKGBUILD with standard packaging practices, no malicious code.
LLM auditresponse for n8n.user.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd user service unit for the n8n application. It defines a service that runs /usr/bin/n8n with a restart policy and an optional environment file. There are no signs of malicious behavior such as obfuscated code, network requests, file exfiltration, or unexpected system modifications. The environment file path uses the `%E` specifier (user config directory) with a leading dash to indicate it is optional, which is standard practice. No supply chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard systemd user service for n8n, no security issues.</summary>
</security_assessment>

[7/8] Reviewing n8n.tmpfiles...
+ Reviewed n8n.user.service. Status: SAFE -- Standard systemd user service for n8n, no security issues.
LLM auditresponse for n8n.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `tmpfiles.d` configuration used to create a persistent runtime data directory for the n8n service. The 'd' line creates `/var/lib/n8n` with 0755 permissions owned by user/group n8n. The 'Z' line sets the SELinux security context and ensures ownership is correct. Both operations are routine and expected for packaging an application that stores data in `/var/lib`. There is no obfuscation, network activity, or code execution. The file content is minimal and conforms to Arch Linux packaging conventions.
</details>
<evidence></evidence>
<summary>Standard tmpfiles configuration, no malicious content.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed n8n.tmpfiles. Status: SAFE -- Standard tmpfiles configuration, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 26,253
  Completion Tokens: 3,669
  Total Tokens: 29,922
  Total Cost: $0.003057
  Execution Time: 50.40 seconds

Final Status: SAFE


No issues found.
