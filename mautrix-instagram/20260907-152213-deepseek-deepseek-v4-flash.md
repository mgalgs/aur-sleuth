---
package: mautrix-instagram
pkgver: 0.2608.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 21306
completion_tokens: 3286
total_tokens: 24592
cost: 0.002470158068
execution_time: 74.97
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-07T15:22:13Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard version checker config, no issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security threats found.
  - file: log-path.diff
    status: safe
    summary: Benign config patch moving log output to /var/log. No malicious behavior found.
  - file: mautrix-instagram.service
    status: safe
    summary: Standard service file with security hardening; no risks.
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no security concerns.
  - file: mautrix-instagram.tmpfiles
    status: safe
    summary: Standard tmpfiles.d config; no malicious content.
  - file: sysusers-mautrix-instagram.conf
    status: safe
    summary: Normal system user creation file.
  - file: PKGBUILD
    status: safe
    summary: Standard Go package with verified sources, no malicious behavior.
---

Materializing mautrix-instagram from local mirror...
Materialized mautrix-instagram
Analyzing mautrix-instagram AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only standard variable assignments (pkgname, version, source array, checksums, etc.) with no command substitutions or external command executions. The source array uses string expansion to form a URL, but does not execute any commands. All function definitions (prepare, build, package) are inert during `makepkg --printsrcinfo` since that command only sources the PKGBUILD without calling those functions. There is no obfuscated code, no network requests, no file operations, and no data exfiltration at the global scope. Therefore, running `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to parse.
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .nvchecker.toml...
[0/8] Reviewing .SRCINFO, .nvchecker.toml, .gitignore...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
.nvchecker.toml is a configuration file for the nvchecker utility, which is commonly used in AUR packaging to check for new upstream releases. It specifies that the &quot;mautrix-instagram&quot; source should check the GitHub repository &quot;mautrix/meta&quot; for tags with a prefix &quot;v&quot;. There is no executable code, no network requests initiated by this file alone, and no obfuscation or suspicious directives. The content is purely declarative and follows standard usage.
</details>
<evidence>
</evidence>
<summary>Standard version checker config, no issues.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, .gitignore...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard version checker config, no issues.
[1/8] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR package metadata file. It declares the package name, version, dependencies, source files, and SHA-256 checksums. All sources point to the official mautrix/meta GitHub repository and accompanying config/service files, with no skipped checksums. There is no evidence of malicious or obfuscated code, unexpected network requests, or any deviation from normal packaging practices. The included diff file (`log-path.diff`) is a typical upstream patch and not inherently suspicious.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security threats found.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, .gitignore, PKGBUILD, log-path.diff...
[2/8] Reviewing .gitignore, PKGBUILD, log-path.diff...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security threats found.
LLM auditresponse for log-path.diff:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a patch to the mautrix-instagram configuration example. It changes the logging destination from a relative path (`./logs/bridge.log`) to an absolute system log path (`/var/log/mautrix-instagram/bridge.log`). This is a routine configuration change commonly made in Arch Linux packaging to keep logs in `/var/log` for a service. There is no code execution, no network activity, no obfuscation, no file tampering outside the application's own logging behavior, and no deviation from standard packaging practices. The change may require the service to have write access to that directory, but that is a normal operational consideration, not a security threat.
</details>
<evidence>
</evidence>
<summary>
Benign config patch moving log output to /var/log. No malicious behavior found.
</summary>
</security_assessment>

[2/8] Reviewing .gitignore, PKGBUILD, log-path.diff, mautrix-instagram.service...
[3/8] Reviewing .gitignore, PKGBUILD, mautrix-instagram.service...
+ Reviewed log-path.diff. Status: SAFE -- Benign config patch moving log output to /var/log. No malicious behavior found.
LLM auditresponse for mautrix-instagram.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the mautrix-instagram bridge. It defines a service that runs the mautrix-instagram binary as a dedicated user with extensive security hardening options (`NoNewPrivileges`, `ProtectHome`, `ProtectSystem=strict`, `PrivateDevices`, etc.). There are no network requests, obfuscated code, file operations outside the application's own directories, or any behavior that deviates from normal packaging practices. The file contains only service configuration directives and has no executable code that could perform malicious actions.
</details>
<evidence></evidence>
<summary>Standard service file with security hardening; no risks.</summary>
</security_assessment>

[3/8] Reviewing .gitignore, PKGBUILD, mautrix-instagram.service, mautrix-instagram.tmpfiles...
[4/8] Reviewing .gitignore, PKGBUILD, mautrix-instagram.tmpfiles...
+ Reviewed mautrix-instagram.service. Status: SAFE -- Standard service file with security hardening; no risks.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file for an AUR git repository. It ignores all files except those necessary for the package (PKGBUILD, .SRCINFO, service files, etc.). There is no executable code, no network requests, no obfuscation, and no deviation from normal packaging practices. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard gitignore file, no security concerns.</summary>
</security_assessment>

[4/8] Reviewing .gitignore, PKGBUILD, mautrix-instagram.tmpfiles, sysusers-mautrix-instagram.conf...
[5/8] Reviewing PKGBUILD, mautrix-instagram.tmpfiles, sysusers-mautrix-instagram.conf...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no security concerns.
LLM auditresponse for mautrix-instagram.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd-tmpfiles configuration file for the mautrix-instagram package. It defines directories and sets ownership/permissions for configuration, log, and data directories. No network requests, executable commands, obfuscation, or data exfiltration are present. The file is entirely benign and follows typical packaging practices.
</details>
<evidence></evidence>
<summary>Standard tmpfiles.d config; no malicious content.</summary>
</security_assessment>

[6/8] Reviewing PKGBUILD, sysusers-mautrix-instagram.conf...
+ Reviewed mautrix-instagram.tmpfiles. Status: SAFE -- Standard tmpfiles.d config; no malicious content.
LLM auditresponse for sysusers-mautrix-instagram.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd sysusers configuration file. It creates a system user `mautrix-instagram` with no login shell and a home directory at `/var/lib/mautrix-instagram`. This is a routine packaging practice for daemons that run as their own user. No suspicious commands, obfuscation, network requests, or file operations outside of normal user creation are present.
</details>
<evidence></evidence>
<summary>Normal system user creation file.</summary>
</security_assessment>

[7/8] Reviewing PKGBUILD...
+ Reviewed sysusers-mautrix-instagram.conf. Status: SAFE -- Normal system user creation file.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Go-based bridge. All source archives are fetched from the official GitHub repository (`mautrix/meta`) with verified checksums. The `go mod tidy` and `go build` commands are normal for Go packages. The only unusual step is running the just-built binary in `package()` to generate a default configuration file, which is then patched with a supplied diff. This is a legitimate packaging technique (common in Go projects) and does not introduce a supply-chain risk—the binary was built from the upstream source and is not downloading or executing any external content. No obfuscation, unexpected network requests, or dangerous operations are present. The patch file is also checksummed. The package is safe.
</details>
<evidence></evidence>
<summary>Standard Go package with verified sources, no malicious behavior.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Go package with verified sources, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 21,306
  Completion Tokens: 3,286
  Total Tokens: 24,592
  Total Cost: $0.002470
  Execution Time: 74.97 seconds

Final Status: SAFE


No issues found.
