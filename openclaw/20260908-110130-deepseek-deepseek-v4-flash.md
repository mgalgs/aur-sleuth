---
package: openclaw
pkgver: 2026.9.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10326
completion_tokens: 2138
total_tokens: 12464
cost: 0.001293824812
execution_time: 41.74
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-08T11:01:29Z
file_verdicts:
  - file: openclaw.install
    status: safe
    summary: Standard install script, no malicious activity.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior.
---

Materializing openclaw from local mirror...
Materialized openclaw
Analyzing openclaw AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only variable definitions and function declarations. No command substitutions, `eval`, `curl`, `wget`, or other potentially dangerous constructs are present in the global scope. The `source` array references a standard npm registry URL with a fixed SHA256 checksum. Running `makepkg --printsrcinfo` will merely source these definitions and print metadata; no code that could exfiltrate data, download payloads, or perform other malicious actions executes at this stage. The `package()` function is defined but not invoked during `--printsrcinfo`, so its contents are out of scope for this gate.
</details>
<evidence></evidence>
<summary>No malicious code executes at top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes at top-level scope.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, openclaw.install...
LLM auditresponse for openclaw.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux package install script (`openclaw.install`). It contains two functions: `post_install` and `post_upgrade`. The `post_install` function prints informational messages guiding the user to install a gateway service and perform onboarding using commands from the same package (`openclaw`). The `post_upgrade` function checks if the package’s systemd service is active and restarts it if so, then prints further guidance messages. No network requests, obfuscated code, file operations outside the package’s scope, or execution of untrusted content are present. The activity is entirely consistent with normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard install script, no malicious activity.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed openclaw.install. Status: SAFE -- Standard install script, no malicious activity.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is standard AUR package metadata (`.SRCINFO`). It defines the package name, version, dependencies, and source location. The source tarball is fetched from the official npm registry (`registry.npmjs.org`) and includes a SHA-256 checksum for integrity verification. No scripts, commands, or executable content are present. There are no suspicious URLs, obfuscation, or operations that deviate from normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard package metadata, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It downloads the package source from the official npm registry (registry.npmjs.org), provides a SHA-256 checksum for integrity verification, and uses npm to install the package globally. The manual execution of the upstream postinstall script is a documented workaround for a known lifecycle issue and is part of the application's own code. All file operations (creating a wrapper script, installing licenses and documentation) are routine. There are no signs of obfuscated code, unexpected network requests, data exfiltration, or any deviation from the package's stated purpose. No supply-chain attack indicators were found.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,326
  Completion Tokens: 2,138
  Total Tokens: 12,464
  Total Cost: $0.001294
  Execution Time: 41.74 seconds

Final Status: SAFE


No issues found.
