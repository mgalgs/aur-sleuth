---
package: n8n
pkgver: 2.39.9
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 25326
completion_tokens: 7706
total_tokens: 33032
cost: 0.00225851472
execution_time: 169.32
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-21T15:26:33Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious behavior; safe.
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no security concerns.
  - file: n8n.env
    status: safe
    summary: Standard configuration file, no malicious content.
  - file: n8n.sysusers
    status: safe
    summary: Standard sysusers config; no security issues.
  - file: n8n.service
    status: safe
    summary: Standard systemd unit for n8n; no malicious behavior found.
  - file: n8n.user.service
    status: safe
    summary: Standard systemd user service file, no malicious content.
  - file: n8n.tmpfiles
    status: safe
    summary: Standard tmpfiles configuration for service directory.
---

Materializing n8n from local mirror...
Materialized n8n
Analyzing n8n AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's top-level (global) scope. In this file, that scope contains only standard metadata assignments: pkgname, pkgver, pkgdesc, arch, url, license, backup, makedepends, source, and sha256sums. These are plain string and array values with no command substitution, no eval, no pipe-to-shell, no file writes, and no network access performed at source time.

The lines that do involve network access or command execution (the `gh api` release query, the `curl` download of the npm tarball, the npm/node-gyp/install steps) are inside the `pkgver()`, `build()`, and `package()` function bodies. None of those functions run during `makepkg --printsrcinfo`, so they are out of scope for this narrow gate and should be reviewed in the full PKGBUILD audit as planned. No sources are downloaded or verified during this step, so any missing or SKIPped checksum would not cause code execution here either.
</details>
<evidence></evidence>
<summary>Top-level sourcing consists only of conventional metadata assignments; no executable or network-touching payload runs when the PKGBUILD is sourced for `--printsrcinfo`.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level sourcing consists only of conventional metadata assignments; no executable or network-touching payload runs when the PKGBUILD is sourced for `--printsrcinfo`.
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the n8n AUR package. It defines package metadata (name, version, dependencies, sources) with SHA256 checksums for all local files. No external network sources, no VCS sources, no obfuscated code, and no dangerous operations are present. All dependencies (nodejs, sqlite, librdkafka) and makedepends (npm, curl, node-gyp, python) are typical for building and running an n8n package. The file contains no evidence of malicious or supply-chain attack behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata; no security concerns.</summary>
</security_assessment>

[0/8] Reviewing .SRCINFO, .gitignore, PKGBUILD, n8n.env...
[1/8] Reviewing .gitignore, PKGBUILD, n8n.env...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch package recipe for the n8n workflow automation tool. It fetches the upstream tarball from the official npm registry (`https://registry.npmjs.org/n8n/-/n8n-${pkgver}.tgz`) and installs it with `npm install --ignore-scripts`, which is a security-conscious practice that prevents arbitrary install-time scripts from running. Native addons (sqlite3, kafka-javascript, ssh2, cpu-features) are rebuilt manually via `node-gyp`, with appropriate warnings when a build fails. There is no obfuscated code, no unexpected network destinations, no attempts to exfiltrate data, and no execution of untrusted content from outside the official upstream source. The only network request in `build()` is to the official npm registry. All file operations are confined to the package installation directory (`$pkgdir`) and are necessary for proper installation (e.g., symlinks for license/doc, removal of cross-platform binaries, and a targeted `sed` patch to fix a Node.js API compatibility issue in a bundled addon). No genuinely malicious behavior is present.

As a hygiene note, the downloaded tarball is not checksum-verified (SHA-256 verification is only applied to the local configuration files listed in the `source` array). This is a common AUR practice for home-grown or continuously-released packages and does not, by itself, constitute a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious behavior; safe.</summary>
</security_assessment>

[1/8] Reviewing .gitignore, PKGBUILD, n8n.env, n8n.service...
[2/8] Reviewing .gitignore, n8n.env, n8n.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious behavior; safe.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file is a standard Git configuration file that specifies which files to ignore by default and then whitelists essential packaging files (e.g., PKGBUILD, .SRCINFO, patches, install scripts, service files, icons, README) for version control. It contains no executable code, no network requests, no obfuscated content, and no system modifications. This is typical and expected for an AUR package repository.
</details>
<evidence></evidence>
<summary>Standard gitignore file, no security concerns.</summary>
</security_assessment>

[2/8] Reviewing .gitignore, n8n.env, n8n.service, n8n.sysusers...
[3/8] Reviewing n8n.env, n8n.service, n8n.sysusers...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no security concerns.
LLM auditresponse for n8n.env:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard environment configuration file for n8n. It sets paths, ports, and disables telemetry features. There is no executable code, no network requests, no obfuscation, and no file operations. The content is purely declarative environment variables and comments. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard configuration file, no malicious content.</summary>
</security_assessment>

[3/8] Reviewing n8n.env, n8n.service, n8n.sysusers, n8n.tmpfiles...
[4/8] Reviewing n8n.service, n8n.sysusers, n8n.tmpfiles...
+ Reviewed n8n.env. Status: SAFE -- Standard configuration file, no malicious content.
LLM auditresponse for n8n.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd sysusers.d configuration file used to create a system user for the n8n service. It creates a user named `n8n` with a home directory of `/var/lib/n8n` and a shell of `/usr/bin/nologin`. This is a common and expected practice for AUR packages that run services as a dedicated user. There is no evidence of malicious behavior, obfuscated code, network requests, or any operations that deviate from standard packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard sysusers config; no security issues.</summary>
</security_assessment>

[4/8] Reviewing n8n.service, n8n.sysusers, n8n.tmpfiles, n8n.user.service...
[5/8] Reviewing n8n.service, n8n.tmpfiles, n8n.user.service...
+ Reviewed n8n.sysusers. Status: SAFE -- Standard sysusers config; no security issues.
LLM auditresponse for n8n.service:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit for the n8n application. It defines a service user (`n8n`), restarts the process on failure, loads an optional environment file from `/etc/default/n8n`, and starts the installed binary `/usr/bin/n8n`. There are no network requests, downloads, command execution beyond the normal application binary, obfuscated content, or modifications to system files. The unit is consistent with ordinary packaging practices and contains no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>
Standard systemd unit for n8n; no malicious behavior found.</summary>
</security_assessment>

[6/8] Reviewing n8n.tmpfiles, n8n.user.service...
+ Reviewed n8n.service. Status: SAFE -- Standard systemd unit for n8n; no malicious behavior found.
LLM auditresponse for n8n.user.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd user service file for the n8n application. It defines the service unit with normal fields: description, dependencies, restart policy, environment file location, and the executable to run. There are no suspicious commands, no obfuscation, no network requests, no file modification attempts, and no deviation from standard packaging practices. The use of %E to reference the user's home directory is a standard systemd specifier. The file content is benign and does not contain any malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard systemd user service file, no malicious content.</summary>
</security_assessment>

[7/8] Reviewing n8n.tmpfiles...
+ Reviewed n8n.user.service. Status: SAFE -- Standard systemd user service file, no malicious content.
LLM auditresponse for n8n.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd-tmpfiles configuration snippet. The `d` line creates the directory `/var/lib/n8n` with 0755 permissions owned by the `n8n` user and group. The `Z` line recursively sets ownership to `n8n:n8n` and resets SELinux contexts. Both operations are normal for a service that requires a dedicated data directory. There is no obfuscated code, no network requests, no suspicious commands, and no deviation from standard packaging practices.
</details>
<evidence></evidence>
<summary>Standard tmpfiles configuration for service directory.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed n8n.tmpfiles. Status: SAFE -- Standard tmpfiles configuration for service directory.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 25,326
  Completion Tokens: 7,706
  Total Tokens: 33,032
  Total Cost: $0.002259
  Execution Time: 169.32 seconds

Final Status: SAFE


No issues found.
