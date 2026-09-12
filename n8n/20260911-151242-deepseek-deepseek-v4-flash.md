---
package: n8n
pkgver: 2.38.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 24794
completion_tokens: 3777
total_tokens: 28571
cost: 0.00279874896
execution_time: 42.82
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-11T15:12:41Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata file with no executable content; safe.
  - file: n8n.env
    status: safe
    summary: Standard config file with no security issues.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no malicious content.
  - file: n8n.service
    status: safe
    summary: Typical systemd service unit, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: No malicious code; standard AUR packaging with official source.
  - file: n8n.tmpfiles
    status: safe
    summary: Standard tmpfiles config, no security issues.
  - file: n8n.user.service
    status: safe
    summary: Standard service unit; no malicious content.
  - file: n8n.sysusers
    status: safe
    summary: Standard sysusers file for creating a service user.
---

Materializing n8n from local mirror...
Materialized n8n
Analyzing n8n AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function definitions in its global scope. No command substitutions, backtick executions, or dangerous operations (e.g., network requests, data exfiltration, code evaluation) occur at top-level. The `latestver`, `build`, and `package` functions are defined but not invoked during sourcing, so they do not pose a risk when running `makepkg --printsrcinfo`. The file conforms to expected AUR packaging conventions.</details>
<evidence></evidence>
<summary>No dangerous top-level code executed during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code executed during sourcing.
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata file that describes the package sources, dependencies, and checksums for the AUR package `n8n`. It contains no executable code, no network requests, no obfuscated strings, and no instructions that could perform any operations. All listed source files are local (relative paths) and have explicit SHA-256 checksums, which is standard practice. The dependencies (`nodejs`, `sqlite`, `librdkafka`) are appropriate for a Node.js workflow automation tool. There is no evidence of any supply-chain attack or malicious content in this file.
</details>
<evidence></evidence>
<summary>Metadata file with no executable content; safe.</summary>
</security_assessment>

[0/8] Reviewing .SRCINFO, .gitignore, PKGBUILD, n8n.env...
[1/8] Reviewing .gitignore, PKGBUILD, n8n.env...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file with no executable content; safe.
LLM auditresponse for n8n.env:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain environment variable configuration for the n8n application. It only sets standard application paths, host/port, and telemetry flags — all typical for a service configuration file. No executable content, no network requests, no data exfiltration, no obfuscation, and no system modifications are present. The file is entirely benign and follows normal packaging conventions.
</details>
<evidence></evidence>
<summary>Standard config file with no security issues.</summary>
</security_assessment>

[1/8] Reviewing .gitignore, PKGBUILD, n8n.env, n8n.service...
[2/8] Reviewing .gitignore, PKGBUILD, n8n.service...
+ Reviewed n8n.env. Status: SAFE -- Standard config file with no security issues.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files by default and then explicitly whitelists essential packaging files (PKGBUILD, .SRCINFO, install scripts, patches, etc.) along with auxiliary files like README and LICENSE. There is no code execution, network requests, obfuscation, or any malicious behavior. It follows common AUR repository practices to avoid committing unnecessary files.</details>
<evidence></evidence>
<summary>Standard .gitignore, no malicious content.</summary>
</security_assessment>

[3/8] Reviewing PKGBUILD, n8n.service...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no malicious content.
[3/8] Reviewing PKGBUILD, n8n.service, n8n.sysusers...
LLM auditresponse for n8n.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the n8n workflow automation tool. It runs the executable `/usr/bin/n8n` as a dedicated user, sets basic restart behavior, and optionally loads environment variables from `/etc/default/n8n`. There is no obfuscation, no suspicious network requests, no unexpected file operations, and nothing deviating from normal packaging practices. The file poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Typical systemd service unit, no malicious content.</summary>
</security_assessment>

[3/8] Reviewing PKGBUILD, n8n.service, n8n.sysusers, n8n.tmpfiles...
[4/8] Reviewing PKGBUILD, n8n.sysusers, n8n.tmpfiles...
+ Reviewed n8n.service. Status: SAFE -- Typical systemd service unit, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads the n8n tarball from the official npm registry (registry.npmjs.org) during the build phase, which is the legitimate upstream source. The package() routine installs the package globally via npm, rebuilds required native addons (sqlite3, kafka-javascript, ssh2 crypto) using node-gyp, and then removes development files, platform-specific binaries (macOS, Windows, ARM, musl, old ABI versions), and build artifacts to produce a clean x86_64 Linux package. There is no obfuscated code, no unexpected network destinations, no exfiltration of system data, no backdoors, and no manipulation of files outside the package's own installation path. The `latestver()` function uses the GitHub API via the official `gh` CLI to query the upstream repository for version bumping, but it is not invoked during the build. While the tarball is not checksummed in the source array (it is fetched dynamically in `build()`), this is a supply-chain hygiene concern rather than evidence of malice, and the instructions allow such patterns when the source is the project's own upstream.
</details>
<evidence>

</evidence>
<summary>No malicious code; standard AUR packaging with official source.</summary>
</security_assessment>

[4/8] Reviewing PKGBUILD, n8n.sysusers, n8n.tmpfiles, n8n.user.service...
[5/8] Reviewing n8n.sysusers, n8n.tmpfiles, n8n.user.service...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious code; standard AUR packaging with official source.
LLM auditresponse for n8n.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd-tmpfiles configuration file that creates a directory `/var/lib/n8n` with appropriate ownership and permissions, and sets SELinux context. Such files are commonly used by AUR packages to set up runtime directories for services. There is no obfuscated code, no network requests, no execution of arbitrary commands, and no exfiltration of data. The file is consistent with normal packaging practices and does not exhibit any signs of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard tmpfiles config, no security issues.</summary>
</security_assessment>

[6/8] Reviewing n8n.sysusers, n8n.user.service...
+ Reviewed n8n.tmpfiles. Status: SAFE -- Standard tmpfiles config, no security issues.
LLM auditresponse for n8n.user.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd user service file for the n8n package. It defines a service unit that starts the n8n binary after the network is online, loads environment variables from a configuration file, and restarts on failure. No embedded scripts, network requests, file manipulations, or obfuscated code are present. The directives are typical for packaging and pose no security threat.
</details>
<evidence></evidence>
<summary>Standard service unit; no malicious content.</summary>
</security_assessment>

[7/8] Reviewing n8n.sysusers...
+ Reviewed n8n.user.service. Status: SAFE -- Standard service unit; no malicious content.
LLM auditresponse for n8n.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `n8n.sysusers` is a standard systemd sysusers configuration file. It creates a system user `n8n` with a home directory of `/var/lib/n8n` and the shell `/usr/bin/nologin`, which is typical for service accounts that should not have login access. This is a normal and expected practice in Arch Linux packaging to run the application under a dedicated unprivileged user. No suspicious operations, network requests, or obfuscated code are present. The file is entirely benign.
</details>
<evidence></evidence>
<summary>Standard sysusers file for creating a service user.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed n8n.sysusers. Status: SAFE -- Standard sysusers file for creating a service user.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,794
  Completion Tokens: 3,777
  Total Tokens: 28,571
  Total Cost: $0.002799
  Execution Time: 42.82 seconds

Final Status: SAFE


No issues found.
