---
package: n8n
pkgver: 2.38.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 24713
completion_tokens: 2896
total_tokens: 27609
cost: 0.002562420
execution_time: 81.71
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-08T19:11:29Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: A standard AUR metadata file with no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD without any malicious behavior.
  - file: n8n.env
    status: safe
    summary: Plain environment config, no security issues.
  - file: n8n.service
    status: safe
    summary: Standard systemd service file, no malicious content.
  - file: n8n.sysusers
    status: safe
    summary: Standard system user configuration, no malicious content.
  - file: n8n.tmpfiles
    status: safe
    summary: Benign tmpfiles configuration for n8n state directory.
  - file: n8n.user.service
    status: safe
    summary: Standard systemd service file for n8n, no malicious content.
---

Materializing n8n from local mirror...
Materialized n8n
Analyzing n8n AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
All top-level code consists only of variable definitions (pkgname, pkgver, etc.) and a function definition (`latestver()`). No command substitutions, invocations, or executable statements are present at global scope. The potentially dangerous operations (curl, npm, node-gyp, etc.) are confined to the `build()` and `package()` functions, which are not executed by `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD for metadata extraction is safe.
</details>
<evidence>
</evidence>
<summary>No dangerous code at top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code at top-level scope.
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .gitignore...
[0/8] Reviewing .gitignore, PKGBUILD...
[0/8] Reviewing .gitignore, PKGBUILD, .SRCINFO...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file is a standard Git exclusion configuration. It ignores all files by default and then whitelists specific file extensions and names that are commonly found in an AUR package repository (PKGBUILD, .SRCINFO, install scripts, patches, service files, etc.). There is no code execution, no network requests, no obfuscation, and no deviation from normal packaging practices. The file is benign and serves only to keep the repository clean.
</details>
<evidence></evidence>
<summary>Standard .gitignore file; no security concerns.</summary>
</security_assessment>

[0/8] Reviewing .gitignore, PKGBUILD, .SRCINFO, n8n.env...
[1/8] Reviewing PKGBUILD, .SRCINFO, n8n.env...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the n8n AUR package. It contains package description, version, dependencies, source file names, and their SHA-256 checksums. All checksums are provided (none are set to SKIP). There is no executable code, no network requests, no obfuscated content, and no suspicious operations of any kind. The file simply declares the package structure and build requirements. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>A standard AUR metadata file with no security issues.</summary>
</security_assessment>

[1/8] Reviewing PKGBUILD, .SRCINFO, n8n.env, n8n.service...
[2/8] Reviewing PKGBUILD, n8n.env, n8n.service...
+ Reviewed .SRCINFO. Status: SAFE -- A standard AUR metadata file with no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch Linux packaging script for n8n. It downloads the application's source tarball from the official npm registry (`registry.npmjs.org`) using `curl`, which is the expected and legitimate source for an npm-based package. The `package()` function installs system configuration files (systemd service, sysusers, tmpfiles) and then runs `npm install` followed by `node-gyp rebuild` for native addons — all normal packaging operations. The `latestver()` helper function queries GitHub releases using the `gh` CLI to determine the latest version for maintainer convenience; this is a standard AUR helper pattern and does not execute any untrusted code at build time. There is no obfuscation, no exfiltration of data, no unexpected network destinations, and no code that deviates from typical packaging practices. All file operations are confined to the package's own directories (`$srcdir`, `$pkgdir`). No evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD without any malicious behavior.</summary>
</security_assessment>

[2/8] Reviewing PKGBUILD, n8n.env, n8n.service, n8n.sysusers...
[3/8] Reviewing n8n.env, n8n.service, n8n.sysusers...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD without any malicious behavior.
LLM auditresponse for n8n.env:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `n8n.env` is a plain environment configuration file for the n8n application. It sets variables like `N8N_USER_FOLDER`, `N8N_HOST`, `N8N_PORT`, and disables diagnostic and notification features. There are no executable commands, obfuscated code, network requests, or any operations that could be considered malicious. It conforms to standard packaging practices for application configuration files. No security issues detected.
</details>
<evidence>
</evidence>
<summary>Plain environment config, no security issues.</summary>
</security_assessment>

[3/8] Reviewing n8n.env, n8n.service, n8n.sysusers, n8n.tmpfiles...
[4/8] Reviewing n8n.service, n8n.sysusers, n8n.tmpfiles...
+ Reviewed n8n.env. Status: SAFE -- Plain environment config, no security issues.
LLM auditresponse for n8n.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `n8n.service` is a standard systemd service unit for the n8n workflow automation tool. It defines the service as running under the `n8n` user, restarting on failure, loading environment variables from `/etc/default/n8n`, and executing `/usr/bin/n8n`. There are no suspicious commands, network requests, file operations, or obfuscated code. The file follows normal packaging practices and contains no evidence of malicious intent.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no malicious content.</summary>
</security_assessment>

[4/8] Reviewing n8n.service, n8n.sysusers, n8n.tmpfiles, n8n.user.service...
[5/8] Reviewing n8n.sysusers, n8n.tmpfiles, n8n.user.service...
+ Reviewed n8n.service. Status: SAFE -- Standard systemd service file, no malicious content.
LLM auditresponse for n8n.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard sysusers.d configuration snippet that creates a system user `n8n` with a home directory `/var/lib/n8n` and shell `/usr/bin/nologin`. This is a common and expected practice for systemd-managed services to run under a dedicated unprivileged user. No malicious or suspicious content is present.
</details>
<evidence></evidence>
<summary>Standard system user configuration, no malicious content.</summary>
</security_assessment>

[6/8] Reviewing n8n.tmpfiles, n8n.user.service...
+ Reviewed n8n.sysusers. Status: SAFE -- Standard system user configuration, no malicious content.
LLM auditresponse for n8n.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This is standard systemd tmpfiles.d configuration that creates `/var/lib/n8n` with owner `n8n:n8n` and permissions `0755`, plus a `Z` line to restore SELinux security context. No malicious or suspicious content. This is normal packaging practice for applications that require a dedicated state directory.
</details>
<evidence></evidence>
<summary>Benign tmpfiles configuration for n8n state directory.</summary>
</security_assessment>

[7/8] Reviewing n8n.user.service...
+ Reviewed n8n.tmpfiles. Status: SAFE -- Benign tmpfiles configuration for n8n state directory.
LLM auditresponse for n8n.user.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd user service unit for the n8n application. It defines basic service properties such as restart behavior, a dependency on network-online.target, an environment file sourced from a config directory, and the executable path. No suspicious commands, obfuscation, network requests, or file operations beyond normal service initialization are present. The content follows typical packaging practices for user services in Arch Linux.</details>
<evidence>
</evidence>
<summary>Standard systemd service file for n8n, no malicious content.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed n8n.user.service. Status: SAFE -- Standard systemd service file for n8n, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,713
  Completion Tokens: 2,896
  Total Tokens: 27,609
  Total Cost: $0.002562
  Execution Time: 81.71 seconds

Final Status: SAFE


No issues found.
