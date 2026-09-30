---
package: actual-server
pkgver: 26.9.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 20901
completion_tokens: 3018
total_tokens: 23919
cost: 0.00102576096
execution_time: 39.3
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-19T23:17:16Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata file, no executable or suspicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package repository.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; no security issues found.
  - file: actual-server.install
    status: safe
    summary: Benign install script with only informational messages.
  - file: actual-server.sysusers
    status: safe
    summary: Standard sysusers config for service user creation.
  - file: actual-server.service
    status: safe
    summary: Standard systemd service with proper sandboxing.
  - file: actual-server.tmpfiles
    status: safe
    summary: Standard systemd tmpfiles.d config, safe.
  - file: actual-server.conf
    status: safe
    summary: Standard configuration file, no malicious content.
---

Materializing actual-server from local mirror...
Materialized actual-server
Analyzing actual-server AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the global scope of this PKGBUILD. That scope contains only normal variable assignments (`_npmscope`, `_npmpkg`, `_npmver`, `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `makedepends`, `backup`, `options`, `install`, `source`, `noextract`, `sha256sums`). There are no top-level command substitutions, function calls, downloads, or data exfiltration that would execute during sourcing.

The `package()` function contains the actual install logic, including `npm install` with native module build scripts, but `makepkg --printsrcinfo` does not execute `package()`. That logic is out of scope for this narrow gate and will be evaluated in the full PKGBUILD audit. The tarball checksum is pinned to a specific SHA-256 value, and even a missing or SKIPped checksum would not affect this step since no sources are downloaded or verified during `--printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
Global scope contains only benign variable definitions; no code executes during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope contains only benign variable definitions; no code executes during printsrcinfo.
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a declarative metadata file for the Arch User Repository (AUR) package `actual-server`. It contains only package metadata: version, dependencies, source URLs, and checksums. All source URLs point to the official npm registry (`registry.npmjs.org`) and the package's own configuration files (service, sysusers, tmpfiles, conf). No obfuscated code, dangerous commands, or unexpected network hosts are present. The file is typical of legitimate AUR packaging and does not exhibit any signs of a supply-chain attack.
</details>
<evidence>

</evidence>
<summary>Declarative metadata file, no executable or suspicious content.</summary>
</security_assessment>

[0/8] Reviewing .SRCINFO, .gitignore, PKGBUILD, actual-server.conf...
[1/8] Reviewing .gitignore, PKGBUILD, actual-server.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata file, no executable or suspicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file is a standard configuration file for git repositories. It instructs git to ignore all files except the PKGBUILD, .SRCINFO, and files matching the pattern `actual-server.*`. This is typical practice for AUR package repositories, ensuring that only essential packaging files are tracked while ignoring build artifacts or other temporary files. No suspicious commands, obfuscation, network requests, or malicious behavior is present. The file is harmless and serves its intended purpose.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package repository.</summary>
</security_assessment>

[1/8] Reviewing .gitignore, PKGBUILD, actual-server.conf, actual-server.install...
[2/8] Reviewing PKGBUILD, actual-server.conf, actual-server.install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package repository.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices. All source entries have pinned SHA256 checksums (no SKIP). The npm install command only allows script execution for the specific native modules `argon2`, `bcrypt`, and `better-sqlite3`, which are legitimate dependencies for the Actual Budget sync server. The package fetches its main source from the official npm registry, and the auxiliary files (service, sysusers, tmpfiles, conf) are included with checksums. No obfuscated code, unexpected network destinations, backdoors, or data exfiltration mechanisms are present. The file is a clean, conventional AUR package.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD; no security issues found.</summary>
</security_assessment>

[2/8] Reviewing PKGBUILD, actual-server.conf, actual-server.install, actual-server.service...
[3/8] Reviewing actual-server.conf, actual-server.install, actual-server.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; no security issues found.
LLM auditresponse for actual-server.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `actual-server.install` contains only two functions (`post_install` and `post_upgrade`) that print a help message to the user using a heredoc. There are no commands that perform network requests, file modifications, code execution, or any other potentially dangerous operations. The content is entirely benign and follows standard Arch Linux packaging practices for `.install` files.
</details>
<evidence></evidence>
<summary>Benign install script with only informational messages.</summary>
</security_assessment>

[3/8] Reviewing actual-server.conf, actual-server.install, actual-server.service, actual-server.sysusers...
[4/8] Reviewing actual-server.conf, actual-server.service, actual-server.sysusers...
+ Reviewed actual-server.install. Status: SAFE -- Benign install script with only informational messages.
LLM auditresponse for actual-server.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd sysusers.d configuration snippet. It instructs `systemd-sysusers` to create a system user named `actual` with a comment description and a home directory. The syntax is exactly as documented for systemd sysusers files. There is no code execution, no network access, no file modification, and no obfuscation. The content is purely declarative and serves the legitimate purpose of provisioning an unprivileged service account. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard sysusers config for service user creation.</summary>
</security_assessment>

[4/8] Reviewing actual-server.conf, actual-server.service, actual-server.sysusers, actual-server.tmpfiles...
[5/8] Reviewing actual-server.conf, actual-server.service, actual-server.tmpfiles...
+ Reviewed actual-server.sysusers. Status: SAFE -- Standard sysusers config for service user creation.
LLM auditresponse for actual-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a well-structured systemd service unit for the Actual Server application. It includes standard security hardening directives such as `NoNewPrivileges=true`, `ProtectSystem=strict`, `ProtectHome=true`, `PrivateTmp`, `PrivateDevices`, and others. These are typical best practices for service confinement on Arch Linux. There are no suspicious commands, network requests, obfuscated content, or unexpected file operations. The service runs as a dedicated unprivileged user (`actual`) and restricts write access to only `/var/lib/actual`. Nothing in this file deviates from normal packaging practices or indicates a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard systemd service with proper sandboxing.</summary>
</security_assessment>

[6/8] Reviewing actual-server.conf, actual-server.tmpfiles...
+ Reviewed actual-server.service. Status: SAFE -- Standard systemd service with proper sandboxing.
LLM auditresponse for actual-server.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd tmpfiles.d configuration snippet. It instructs systemd-tmpfiles to create the directory `/var/lib/actual` with permissions 0750, owned by user `actual` and group `actual`. This is a common and expected packaging practice for services that require a persistent state directory. There is no obfuscation, network activity, or any behavior beyond creating a directory with specified ownership and permissions. No evidence of malicious or suspicious content.
</details>
<evidence></evidence>
<summary>Standard systemd tmpfiles.d config, safe.</summary>
</security_assessment>

[7/8] Reviewing actual-server.conf...
+ Reviewed actual-server.tmpfiles. Status: SAFE -- Standard systemd tmpfiles.d config, safe.
LLM auditresponse for actual-server.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration file for the Actual Budget server (actual-server). It contains only comments and commented-out configuration options. There is no executable code, no network requests, no obfuscated content, and no file operations. The content is entirely benign and follows normal packaging practices for a configuration file. The comment at the top points to the official documentation. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard configuration file, no malicious content.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed actual-server.conf. Status: SAFE -- Standard configuration file, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,901
  Completion Tokens: 3,018
  Total Tokens: 23,919
  Total Cost: $0.001026
  Execution Time: 39.30 seconds

Final Status: SAFE


No issues found.
