---
package: n8n
pkgver: 2.38.5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 24713
completion_tokens: 3777
total_tokens: 28490
cost: 0.00276011918
execution_time: 123.29
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-09T15:09:31Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: n8n.env
    status: safe
    summary: No security issues; benign configuration file.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious code found.
  - file: n8n.sysusers
    status: safe
    summary: Standard sysusers config for service user creation.
  - file: n8n.tmpfiles
    status: safe
    summary: Standard tmpfiles config for n8n service directory.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR packaging; no security concerns.
  - file: n8n.service
    status: safe
    summary: Standard service file, no security issues.
  - file: n8n.user.service
    status: safe
    summary: Standard systemd user service file; no malicious content.
---

Materializing n8n from local mirror...
Materialized n8n
Analyzing n8n AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable definitions (pkgname, pkgver, arch, depends, source, etc.) and one function definition (`latestver()`). No top-level command substitutions, backtick executions, eval, or direct downloads are present. Since `makepkg --printsrcinfo` only sources the PKGBUILD's global scope without executing any functions (including `pkgver()`, `prepare()`, `build()`, or `package()`), there is no mechanism for malicious code to run during this operation. The potentially suspicious operations (curl download, npm install, node-gyp rebuild) are confined to the `build()` and `package()` functions, which are out of scope for this gate.
</details>
<evidence>
</evidence>
<summary>No malicious top-level code; safe to run --printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to run --printsrcinfo.
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard Arch User Repository metadata file for the n8n package. It contains only declarative fields: package name, version, description, architecture, license, dependencies, source file names, and their SHA256 checksums. No executable code, obfuscated content, network requests, or system modification commands are present. The use of `&amp;gt;` as an HTML entity for `&gt;` is a formatting quirk but not a security concern. The file conforms to normal AUR packaging practices and shows no signs of malicious intent.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[0/8] Reviewing .SRCINFO, .gitignore, PKGBUILD, n8n.env...
[1/8] Reviewing .gitignore, PKGBUILD, n8n.env...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for n8n.env:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard environment configuration file for the n8n application. It contains only environment variable assignments and comments. There is no executable code, no network requests, no obfuscation, and no system modifications. The variables set paths, host, port, and privacy settings, all of which are normal and expected for a configuration file. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>No security issues; benign configuration file.</summary>
</security_assessment>

[1/8] Reviewing .gitignore, PKGBUILD, n8n.env, n8n.service...
[2/8] Reviewing .gitignore, PKGBUILD, n8n.service...
+ Reviewed n8n.env. Status: SAFE -- No security issues; benign configuration file.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for an npm-based application. The package fetches its upstream source from the official npm registry (registry.npmjs.org) using `curl` in the `build()` function, which is a common pattern when the tarball is not part of the `source` array and checksums are not provided. The `package()` function performs `npm install` with `--ignore-scripts` to disable install scripts, then manually rebuilds native addons (`sqlite3`, `kafka-javascript`, `ssh2`, `cpu-features`) using `node-gyp`, including a `sed` patch to work around an API removal in future Node.js versions. These operations are legitimate build-time steps and not indicative of a supply-chain attack.

The file contains no obfuscated code, no unexpected network destinations, no exfiltration of local data, no backdoors, and no execution of untrusted fetched code outside the package's own scope. The only trust-related concern is the absence of a checksum on the downloaded npm tarball, but per the assessment guidelines, an unpinned source without a checksum is not, by itself, a reason to mark the file UNSAFE. No genuinely malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious code found.</summary>
</security_assessment>

[2/8] Reviewing .gitignore, PKGBUILD, n8n.service, n8n.sysusers...
[3/8] Reviewing .gitignore, n8n.service, n8n.sysusers...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious code found.
LLM auditresponse for n8n.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd sysusers configuration snippet intended to create a dedicated unprivileged user (`n8n`) for running the n8n service. It specifies the user's group name (also `n8n`), home directory (`/var/lib/n8n`), and a nologin shell. This is an ordinary and expected packaging practice for service users in Arch Linux (and other distributions using systemd-sysusers). There is no evidence of malicious intent, obfuscation, or dangerous operations. The content is plain and declarative.
</details>
<evidence></evidence>
<summary>Standard sysusers config for service user creation.</summary>
</security_assessment>

[3/8] Reviewing .gitignore, n8n.service, n8n.sysusers, n8n.tmpfiles...
[4/8] Reviewing .gitignore, n8n.service, n8n.tmpfiles...
+ Reviewed n8n.sysusers. Status: SAFE -- Standard sysusers config for service user creation.
LLM auditresponse for n8n.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd-tmpfiles configuration file that creates the `/var/lib/n8n` directory with safe permissions (0755) and sets its ownership to the `n8n` user and group. The `Z` line applies default SELinux context restoration. Such files are normal for services that require a dedicated state directory. There is no obfuscation, network access, code execution, or any deviation from expected packaging practices. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard tmpfiles config for n8n service directory.</summary>
</security_assessment>

[4/8] Reviewing .gitignore, n8n.service, n8n.tmpfiles, n8n.user.service...
[5/8] Reviewing .gitignore, n8n.service, n8n.user.service...
+ Reviewed n8n.tmpfiles. Status: SAFE -- Standard tmpfiles config for n8n service directory.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file is a standard Git ignore configuration that hides all files by default and then selectively whitelists essential AUR packaging files (`.gitignore`, `.SRCINFO`, `PKGBUILD`, install scripts, patches, etc.). There is no executable code, no network requests, no obfuscation, and no system modification. The file simply defines version-control behavior for the repository, which is a normal and expected part of any AUR package.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR packaging; no security concerns.</summary>
</security_assessment>

[6/8] Reviewing n8n.service, n8n.user.service...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR packaging; no security concerns.
LLM auditresponse for n8n.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the n8n application. It defines a service that runs as the dedicated user `n8n`, with a restart policy, and optionally loads environment variables from `/etc/default/n8n`. The only executed command is `/usr/bin/n8n`, the application binary. There are no suspicious network requests, obfuscated code, file operations outside the application scope, or any other indicators of supply-chain attack. The file conforms to normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard service file, no security issues.</summary>
</security_assessment>

[7/8] Reviewing n8n.user.service...
+ Reviewed n8n.service. Status: SAFE -- Standard service file, no security issues.
LLM auditresponse for n8n.user.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd user service file for the n8n workflow automation tool. It defines a service that runs `/usr/bin/n8n` after the network is online, with an optional environment file. The file contains no obfuscation, no external network calls, no file manipulation beyond basic service setup, and no instructions that deviate from normal packaging practices. There is no evidence of malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>Standard systemd user service file; no malicious content.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed n8n.user.service. Status: SAFE -- Standard systemd user service file; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,713
  Completion Tokens: 3,777
  Total Tokens: 28,490
  Total Cost: $0.002760
  Execution Time: 123.29 seconds

Final Status: SAFE


No issues found.
