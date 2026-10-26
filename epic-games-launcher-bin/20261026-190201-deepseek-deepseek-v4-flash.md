---
package: epic-games-launcher-bin
pkgver: 0.103.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9163
completion_tokens: 1600
total_tokens: 10763
cost: 0.001125033
execution_time: 30.9
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-26T19:02:01Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package with pinned hash, no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard pinned upstream source; no security issues.
---

Materializing epic-games-launcher-bin from local mirror...
Materialized epic-games-launcher-bin
Analyzing epic-games-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD file contains only standard variable definitions in its global/top-level scope. There are no command substitutions, backtick executions, `eval`, or other dynamic code that would execute during `makepkg --printsrcinfo`. The `source` array references an HTTPS URL from the official Epic Games domain, and a SHA-256 checksum is provided (not skipped). The `prepare()` and `package()` functions are defined but are not invoked at this stage. No suspicious or malicious activity is present in the parsable scope.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD fetches the Epic Games Launcher AppImage from the official Epic Games CDN using a pinned SHA-256 checksum, ensuring integrity. The `prepare()` function extracts the AppImage with 7z, and `package()` installs the binary, runtime library, desktop file, icons, and a simple wrapper script that sets `EGL_DISABLE_SELF_UPDATE` to 1 to prevent auto-updates and executes the launcher. No obfuscation, no external network requests during build, no use of dangerous commands like `eval`, `curl`, or `wget`. The wrapper script is a standard `/bin/sh` script with no embedded payloads or suspicious redirects. No unusual file operations or system modifications outside the package directory. The package follows standard AUR practices for distributing prebuilt binaries and shows no signs of supply-chain compromise.
</details>
<evidence></evidence>
<summary>Standard AUR package with pinned hash, no malicious behavior.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package with pinned hash, no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard metadata file for an Arch User Repository (AUR) package. It declares the package name, version, dependencies, source URL, and a pinned SHA256 checksum for the AppImage. The source is fetched from an official Epic Games distribution domain (`content-download-egs.distro.on.epicgames.com`), and the checksum is provided (not skipped), ensuring integrity. There are no executable commands, obfuscated code, suspicious network requests, or other indicators of malicious behavior. The file simply describes the package and its build/install configuration according to normal AUR practices.
</details>
<evidence></evidence>
<summary>Standard pinned upstream source; no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard pinned upstream source; no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,163
  Completion Tokens: 1,600
  Total Tokens: 10,763
  Total Cost: $0.001125
  Execution Time: 30.90 seconds

Final Status: SAFE


No issues found.
